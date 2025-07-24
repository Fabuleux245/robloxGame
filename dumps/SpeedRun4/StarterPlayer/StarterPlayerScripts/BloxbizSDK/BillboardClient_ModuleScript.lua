-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:56
-- Luau version 6, Types version 3
-- Time taken: 0.015612 seconds

local module_2_upvr = {
	adPart = nil;
	adPartName = nil;
	isAdDisplaying = false;
	debugAPI = nil;
	currentAdFormat = nil;
	currentURL = nil;
	currentURLsDict = {
		blank = true;
	};
	currentBloxbizAdId = -1;
	currentBillType = nil;
	currentGIFFPS = nil;
	currentGIFVersion = nil;
	currentGIF = nil;
	currentVideo = nil;
	showAdDisclaimer = nil;
	aggregateImpressionTime = 0;
	viewabilityMetEvent = nil;
	updateAdEvent = nil;
	isClientPart = false;
	clientPartData = nil;
}
local Utils_upvr = require(script.Parent.Utils)
local AdRequestStats_upvr = require(script.Parent.AdRequestStats)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local CurrentCamera_upvr = workspace.CurrentCamera
local BloxbizRemotes_upvr = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes")
local ConfigReader_upvr = require(script.Parent.ConfigReader)
local InternalConfig = require(script.Parent.InternalConfig)
local DETECT_IMPRESSION_WAIT_TIME_upvr = InternalConfig.DETECT_IMPRESSION_WAIT_TIME
function module_2_upvr.checkAd(arg1) -- Line 60
	if not arg1.adPart:IsA("Part") then
		error("[SuperBiz] Don't modify the AdUnit's class, it has to be a Part")
	end
	if not arg1.adPart:FindFirstChild("AdSurfaceGui") then
		error("[SuperBiz] Ad part must have a SurfaceGui attached to it with the name 'AdSurfaceGui'")
	end
end
function module_2_upvr.gridOfRays(arg1) -- Line 70
	local adPart = arg1.adPart
	local tbl = {1, 1, -1}
	local _ = {-1, -1, -1}
	for _ = 1, 8 do
		tbl[1] -= 0.05
		for _ = 1, 4 do
			tbl[2] -= 0.1
			local _, _ = arg1:buildRay((adPart.CFrame * CFrame.new(adPart.size.X / 2 * tbl[1], adPart.size.Y / 2 * tbl[2], adPart.size.Z / 2 * tbl[3])).Position)
		end
		tbl[1] = tbl[1]
	end
end
function module_2_upvr.getCornerScreenPoints(arg1) -- Line 108
	--[[ Upvalues[1]:
		[1]: CurrentCamera_upvr (readonly)
	]]
	local adPart_2 = arg1.adPart
	local module_3 = {}
	for _, v in pairs(require(script.FaceToCorners)[adPart_2.AdSurfaceGui.Face]) do
		local any_WorldToViewportPoint_result1, any_WorldToViewportPoint_result2_2 = CurrentCamera_upvr:WorldToViewportPoint((adPart_2.CFrame * CFrame.new(adPart_2.size.X / 2 * v[1], adPart_2.size.Y / 2 * v[2], adPart_2.size.Z / 2 * v[3])).Position)
		if not any_WorldToViewportPoint_result2_2 then
			if any_WorldToViewportPoint_result1.X < 0 then
				any_WorldToViewportPoint_result1 = Vector3.new(0, any_WorldToViewportPoint_result1.Y, any_WorldToViewportPoint_result1.Z)
			elseif CurrentCamera_upvr.ViewportSize.X < any_WorldToViewportPoint_result1.X then
				any_WorldToViewportPoint_result1 = Vector3.new(CurrentCamera_upvr.ViewportSize.X, any_WorldToViewportPoint_result1.Y, any_WorldToViewportPoint_result1.Z)
			end
			if any_WorldToViewportPoint_result1.Y < 0 then
				any_WorldToViewportPoint_result1 = Vector3.new(any_WorldToViewportPoint_result1.X, 0, any_WorldToViewportPoint_result1.Z)
			elseif CurrentCamera_upvr.ViewportSize.Y < any_WorldToViewportPoint_result1.Y then
				any_WorldToViewportPoint_result1 = Vector3.new(any_WorldToViewportPoint_result1.X, CurrentCamera_upvr.ViewportSize.Y, any_WorldToViewportPoint_result1.Z)
			end
		end
		table.insert(module_3, any_WorldToViewportPoint_result1)
	end
	return module_3
end
function module_2_upvr.vectorFromCameraToPosition(arg1, arg2) -- Line 149
	--[[ Upvalues[1]:
		[1]: CurrentCamera_upvr (readonly)
	]]
	return arg2 - CurrentCamera_upvr.CFrame.Position
end
function module_2_upvr.isFirstPerson(arg1, arg2) -- Line 157
	--[[ Upvalues[1]:
		[1]: CurrentCamera_upvr (readonly)
	]]
	local var31
	if (arg2.CFrame.p - CurrentCamera_upvr.CFrame.p).Magnitude >= 1.75 then
		var31 = false
	else
		var31 = true
	end
	return var31
end
local Raycast_upvr = require(script.Raycast)
local DRAW_RAYCAST_upvr = InternalConfig.DRAW_RAYCAST
function module_2_upvr.buildRay(arg1, arg2) -- Line 161
	--[[ Upvalues[4]:
		[1]: ConfigReader_upvr (readonly)
		[2]: Raycast_upvr (readonly)
		[3]: CurrentCamera_upvr (readonly)
		[4]: DRAW_RAYCAST_upvr (readonly)
	]]
	local RaycastParams_new_result1 = RaycastParams.new()
	local var39 = ConfigReader_upvr:read("RaycastFilterList")()
	RaycastParams_new_result1.FilterType = ConfigReader_upvr:read("RaycastFilterType")
	local var40
	if RaycastParams_new_result1.FilterType == var40 then
		var40 = game.Players
		var40 = var40.LocalPlayer.Character
		if not var40 then
			var40 = var40.LocalPlayer.CharacterAdded:Wait()
		end
		local Head = var40:FindFirstChild("Head")
		if Head and arg1:isFirstPerson(Head) then
			for _, v_2 in ipairs(var40:GetDescendants()) do
				table.insert(var39, v_2)
			end
		end
	end
	RaycastParams_new_result1.FilterDescendantsInstances = var39
	local Position = CurrentCamera_upvr.CFrame.Position
	local var47 = arg2 - Position
	local Magnitude = var47.Magnitude
	if DRAW_RAYCAST_upvr then
		arg1:drawRaycast(Position, Magnitude, arg2)
	end
	return Raycast_upvr.new(RaycastParams_new_result1, 0, false, false, 0):Raycast(Position, var47.unit * Magnitude), var47
end
function module_2_upvr.areaOfTriangle(arg1, arg2, arg3, arg4) -- Line 200
	return math.abs((arg2.x * (arg3.y - arg4.y) + arg3.x * (arg4.y - arg2.y) + arg4.x * (arg2.y - arg3.y)) / 2)
end
function module_2_upvr.getSizeAtDistance(arg1) -- Line 205
	--[[ Upvalues[2]:
		[1]: CurrentCamera_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local ViewportSize = CurrentCamera_upvr.ViewportSize
	local any_getCornerScreenPoints_result1 = module_2_upvr:getCornerScreenPoints()
	local var51 = ViewportSize.Y * ViewportSize.X
	return var51, (module_2_upvr:areaOfTriangle(any_getCornerScreenPoints_result1[1], any_getCornerScreenPoints_result1[2], any_getCornerScreenPoints_result1[3]) + module_2_upvr:areaOfTriangle(any_getCornerScreenPoints_result1[3], any_getCornerScreenPoints_result1[4], any_getCornerScreenPoints_result1[1])) / var51 * 100, math.abs(any_getCornerScreenPoints_result1[2].x - any_getCornerScreenPoints_result1[3].x), math.abs(any_getCornerScreenPoints_result1[2].y - any_getCornerScreenPoints_result1[1].y)
end
function module_2_upvr.drawRaycast(arg1, arg2, arg3, arg4) -- Line 224
	local Part = Instance.new("Part")
	Part.Name = "Raycast"
	Part.Anchored = true
	Part.CanCollide = false
	Part.Size = Vector3.new(0.1, 0.1, arg3)
	Part.CFrame = lookAt(arg4, arg2) * CFrame.new(0, 0, -arg3 / 2)
	Part.Parent = workspace
end
function module_2_upvr.detectRaycast(arg1) -- Line 234
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_buildRay_result1, any_buildRay_result2 = arg1:buildRay(arg1.adPart.Position)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 19. Error Block 4 start (CF ANALYSIS FAILED)
	do
		return any_buildRay_result2, 180 - math.deg(math.acos(any_buildRay_result2.Unit:Dot(any_buildRay_result1.Normal.Unit)))
	end
	do
		return
	end
	-- KONSTANTERROR: [32] 19. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [52] 33. Error Block 5 start (CF ANALYSIS FAILED)
	do
		return false
	end
	-- KONSTANTERROR: [52] 33. Error Block 5 end (CF ANALYSIS FAILED)
end
function lookAt(arg1, arg2) -- Line 254
	local Unit = (arg1 - arg2).Unit
	local any_Cross_result1 = Unit:Cross(Vector3.new(0, 1, 0))
	return CFrame.fromMatrix(arg2, any_Cross_result1, any_Cross_result1:Cross(Unit))
end
function normalToFace(arg1, arg2, arg3) -- Line 277
	for _, v_3 in pairs(arg3) do
		if 0.999 < getNormalFromFace(arg2, v_3):Dot(arg1) then
			return true
		end
	end
	return false
end
function getNormalFromFace(arg1, arg2) -- Line 299
	return arg1.CFrame:VectorToWorldSpace(Vector3.FromNormalId(arg2))
end
function module_2_upvr.detectScreenpoint(arg1) -- Line 303
	--[[ Upvalues[1]:
		[1]: CurrentCamera_upvr (readonly)
	]]
	local _, any_WorldToViewportPoint_result2 = CurrentCamera_upvr:WorldToViewportPoint(arg1.adPart.Position)
	if any_WorldToViewportPoint_result2 then
		return true
	end
	return false
end
local HttpService_upvr = game:GetService("HttpService")
local ImpressionEvent_upvr = BloxbizRemotes_upvr:WaitForChild("ImpressionEvent")
function module_2_upvr.sendImpression(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 313
	--[[ Upvalues[4]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: ImpressionEvent_upvr (readonly)
	]]
	local var66
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var66 = arg1.adPart
		return var66
	end
	if arg7 or not INLINED() then
		var66 = AdRequestStats_upvr:getPartStats(arg1.adPart)
	end
	ImpressionEvent_upvr:FireServer(AdRequestStats_upvr:getClientPlayerStats(LocalPlayer_upvr), arg2, arg3, var66, arg4, arg5, arg6, HttpService_upvr:GenerateGUID(false), arg7, arg1.currentAdFormat)
end
local AdInteractionEvent_upvr = BloxbizRemotes_upvr:WaitForChild("AdInteractionEvent")
function module_2_upvr.sendInteraction(arg1, arg2, ...) -- Line 332
	--[[ Upvalues[3]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: AdInteractionEvent_upvr (readonly)
	]]
	local any_getClientPlayerStats_result1 = AdRequestStats_upvr:getClientPlayerStats(LocalPlayer_upvr)
	local Image = arg1.adPart.AdSurfaceGui.ImageLabel.Image
	local currentBloxbizAdId = arg1.currentBloxbizAdId
	if arg2 == "hover" then
		local var71 = ...
		AdInteractionEvent_upvr:FireServer(arg2, any_getClientPlayerStats_result1, Image, currentBloxbizAdId, arg1.adPart, os.time() - var71, var71)
	elseif arg2 == "click" then
		AdInteractionEvent_upvr:FireServer(arg2, any_getClientPlayerStats_result1, Image, currentBloxbizAdId, arg1.adPart, os.time())
	end
end
local UserIdlingEvent_upvr = BloxbizRemotes_upvr:WaitForChild("UserIdlingEvent")
function module_2_upvr.sendUserIdling(arg1, arg2) -- Line 355
	--[[ Upvalues[2]:
		[1]: Utils_upvr (readonly)
		[2]: UserIdlingEvent_upvr (readonly)
	]]
	Utils_upvr.pprint("[SuperBiz] Player has been idle for "..arg2.." seconds")
	UserIdlingEvent_upvr:FireServer(arg2)
end
local NewPlayerEvent_upvr = BloxbizRemotes_upvr:WaitForChild("NewPlayerEvent")
function module_2_upvr.sendNewPlayer(arg1) -- Line 360
	--[[ Upvalues[3]:
		[1]: NewPlayerEvent_upvr (readonly)
		[2]: AdRequestStats_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
	]]
	NewPlayerEvent_upvr:FireServer(AdRequestStats_upvr:getClientPlayerStats(LocalPlayer_upvr))
end
local IMPRESSION_TIME_UNTIL_IMG_GIF_ROTATION_upvr = InternalConfig.IMPRESSION_TIME_UNTIL_IMG_GIF_ROTATION
function module_2_upvr.needsAdRotationForImgOrGifAd(arg1) -- Line 364
	--[[ Upvalues[1]:
		[1]: IMPRESSION_TIME_UNTIL_IMG_GIF_ROTATION_upvr (readonly)
	]]
	local var75
	if IMPRESSION_TIME_UNTIL_IMG_GIF_ROTATION_upvr > arg1.aggregateImpressionTime then
		var75 = false
	else
		var75 = true
	end
	local var76 = not arg1.currentGIF
	if var76 then
		var76 = not arg1.currentVideo
	end
	local var77 = not var76
	if var77 then
		var77 = arg1.currentGIF
	end
	if var76 or var77 or var75 and not arg1.isClientPart then
		return true
	end
	return false
end
function module_2_upvr.requestAdRotation(arg1) -- Line 377
	--[[ Upvalues[2]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	arg1.updateAdEvent:FireServer(AdRequestStats_upvr:getClientPlayerStats(LocalPlayer_upvr))
end
function module_2_upvr.waitOrDeletePart(arg1) -- Line 381
	--[[ Upvalues[3]:
		[1]: BloxbizRemotes_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	while not (arg1.adPart == nil or arg1.adPart.Parent ~= nil) do
		arg1.isAdDisplaying = false
		if not BloxbizRemotes_upvr:WaitForChild("updateAdEvent-"..arg1.adPartName, 5) then
			Utils_upvr.pprint("[SuperBiz] Ad client stopped!")
			arg1:cleanupGif()
			arg1:cleanupVideo()
			script:Destroy()
			return false
		end
		arg1.adPart = module_2_upvr:waitForPart(arg1.adPartName, 120)
	end
	return arg1.adPart
end
function module_2_upvr.backgroundProcess(arg1) -- Line 403
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: DETECT_IMPRESSION_WAIT_TIME_upvr (readonly)
	]]
	while true do
		local var82
		if var82 then
			var82 = arg1.adPart
			if var82 then
				var82 = arg1.adPart.Parent
				if var82 then
					var82 = arg1.debugAPI.EndImpression
					var82(arg1.adPart.AdSurfaceGui)
				end
			end
		end
		var82 = arg1:waitOrDeletePart()
		if not var82 then return end
		var82 = not arg1.currentGIF
		if var82 then
			var82 = not arg1.currentVideo
		end
		if not arg1.isAdDisplaying and arg1.currentURL and var82 then
			arg1:displayAd(arg1.currentAdFormat, arg1.currentURL, arg1.currentBloxbizAdId, arg1.currentAdExternalLinkReferences, arg1.currentGIFFPS, arg1.currentGIFVersion, arg1.currentAudioUrl, arg1.showAdDisclaimer, arg1.ad_disclaimer_url, arg1.ad_disclaimer_scale_x, arg1.ad_disclaimer_scale_y, arg1.currentBillType)
		end
		arg1.isAdDisplaying = true
		local pcall_result1, pcall_result2_2 = pcall(function() -- Line 433
			--[[ Upvalues[1]:
				[1]: module_2_upvr (copied, readonly)
			]]
			module_2_upvr:detectAndMeasureImpression()
		end)
		if not pcall_result1 or arg1.adPart.Parent == nil then
			if pcall_result2_2 then
				Utils_upvr.pprint("[SuperBiz] Error: "..pcall_result2_2)
			else
				Utils_upvr.pprint("[SuperBiz] Warning: Ad part has no parent. Possibly due to streaming.")
			end
		end
		if arg1:needsAdRotationForImgOrGifAd() then
			arg1:requestAdRotation()
		end
		task.wait(DETECT_IMPRESSION_WAIT_TIME_upvr)
	end
end
function timeInMs() -- Line 453
	return os.clock()
end
local any_read_result1_upvr = ConfigReader_upvr:read("Ad3DMaxRaycastDistance")
function module_2_upvr.detectAndMeasureImpression(arg1) -- Line 457
	--[[ Upvalues[3]:
		[1]: CurrentCamera_upvr (readonly)
		[2]: any_read_result1_upvr (readonly)
		[3]: DETECT_IMPRESSION_WAIT_TIME_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 11. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 11. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 13. Error Block 3 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [20] 13. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 14. Error Block 4 start (CF ANALYSIS FAILED)
	local any_detectImpression_result1, _ = arg1:detectImpression()
	-- KONSTANTERROR: [21] 14. Error Block 4 end (CF ANALYSIS FAILED)
end
function module_2_upvr.detectImpression(arg1) -- Line 567
	if arg1:detectScreenpoint() then
		return arg1:detectRaycast()
	end
	return false
end
function module_2_upvr.setDisclaimer(arg1, arg2, arg3, arg4, arg5) -- Line 575
	local var90
	if arg1.isClientPart ~= true then
		var90 = false
	else
		var90 = true
	end
	if var90 then
	else
		local AdDisclaimerLabel = arg1.adPart.AdSurfaceGui.DisclaimerHolder.AdDisclaimerLabel
		AdDisclaimerLabel.Visible = arg2
		AdDisclaimerLabel.Image = arg3
		AdDisclaimerLabel.Size = UDim2.new(arg4, 0, arg5, 0)
	end
end
local ContentProvider_upvr = game:GetService("ContentProvider")
function module_2_upvr.preloadList(arg1, arg2) -- Line 588
	--[[ Upvalues[1]:
		[1]: ContentProvider_upvr (readonly)
	]]
	task.spawn(function() -- Line 589
		--[[ Upvalues[2]:
			[1]: ContentProvider_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		ContentProvider_upvr:PreloadAsync(arg2)
	end)
end
function tableToDict(arg1) -- Line 594
	local module = {}
	for _, v_4 in ipairs(arg1) do
		module[v_4] = true
	end
	return module
end
function module_2_upvr.cleanupGif(arg1) -- Line 604
	if arg1.currentGIF then
		arg1.currentGIF:cleanup()
		arg1.currentGIF = nil
	end
end
function module_2_upvr.cleanupVideo(arg1) -- Line 611
	if arg1.currentVideo then
		arg1.currentVideo:cleanup()
		arg1.currentVideo = nil
	end
end
function module_2_upvr.isAdCompliantWithPolicy(arg1, arg2) -- Line 618
	--[[ Upvalues[2]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	local var106
	if #arg2 == 0 then
		return true
	end
	var106 = AdRequestStats_upvr:getPlayerPolicyInfo(LocalPlayer_upvr)
	var106 = tableToDict(var106.AllowedExternalLinkReferences)
	var106 = true
	for _, v_5 in ipairs(arg2) do
		if not var106[v_5] then
			var106 = false
			return var106
		end
	end
	return var106
end
local GIF_upvr = require(script.Parent.GIF)
local VideoPlayer_upvr = require(script.VideoPlayer)
function module_2_upvr.displayAd(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13) -- Line 638
	--[[ Upvalues[2]:
		[1]: GIF_upvr (readonly)
		[2]: VideoPlayer_upvr (readonly)
	]]
	if not arg1:isAdCompliantWithPolicy(arg5) then
	else
		local var116 = arg3
		if arg2 == "gif" or arg2 == "video" or arg7 ~= 1 then
			var116 = {}
			for _, v_7 in ipairs(arg3) do
				table.insert(var116, v_7.ad_url)
			end
		end
		arg1.currentAdFormat = arg2
		arg1.currentURL = arg3
		arg1.currentURLsDict = tableToDict(var116)
		arg1.currentBloxbizAdId = arg4
		arg1.currentBillType = arg13
		arg1.currentAdExternalLinkReferences = arg5
		arg1.currentGIFFPS = arg6
		arg1.currentGIFVersion = arg7
		arg1.currentAudioUrl = arg8
		arg1.aggregateImpressionTime = 0
		arg1.showAdDisclaimer = arg9
		arg1.ad_disclaimer_url = arg10
		arg1.ad_disclaimer_scale_x = arg11
		arg1.ad_disclaimer_scale_y = arg12
		local _, _ = pcall(function() -- Line 684
			--[[ Upvalues[14]:
				[1]: arg1 (readonly)
				[2]: arg9 (readonly)
				[3]: arg10 (readonly)
				[4]: arg11 (readonly)
				[5]: arg12 (readonly)
				[6]: arg2 (readonly)
				[7]: arg3 (readonly)
				[8]: GIF_upvr (copied, readonly)
				[9]: arg6 (readonly)
				[10]: arg7 (readonly)
				[11]: VideoPlayer_upvr (copied, readonly)
				[12]: arg8 (readonly)
				[13]: arg4 (readonly)
				[14]: arg13 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			arg1:setDisclaimer(arg9, arg10, arg11, arg12)
			arg1:cleanupGif()
			arg1:cleanupVideo()
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [19] 16. Error Block 2 start (CF ANALYSIS FAILED)
			arg1.adPart.AdSurfaceGui.ImageLabel.Image = arg3[1]
			do
				return
			end
			-- KONSTANTERROR: [19] 16. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [31] 24. Error Block 3 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [31] 24. Error Block 3 end (CF ANALYSIS FAILED)
		end)
	end
end
function module_2_upvr.waitForPart(arg1, arg2, arg3) -- Line 705
	local any_split_result1 = arg2:split('.')
	table.remove(any_split_result1, 1)
	local workspace = workspace
	for _, v_6 in ipairs(any_split_result1) do
		workspace = workspace:WaitForChild(v_6, arg3)
	end
	return workspace
end
function module_2_upvr.initAd(arg1, arg2, arg3, arg4) -- Line 718
	--[[ Upvalues[4]:
		[1]: ConfigReader_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: BloxbizRemotes_upvr (readonly)
		[4]: Utils_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_read_result1 = ConfigReader_upvr:read("DebugMode")
	if not any_read_result1 then
		any_read_result1 = ConfigReader_upvr:read("DebugModeVideoAd")
	end
	if any_read_result1 then
		arg1.debugAPI = require(ConfigReader_upvr:read("DebugAPI")())
	end
	if arg3 then
		arg1.isClientPart = true
	else
		arg1.isClientPart = false
	end
	while arg3 == nil do
		local SOME = BloxbizRemotes_upvr:WaitForChild("updateAdEvent-"..arg2, 5)
		if SOME == nil then
			Utils_upvr.pprint("[SuperBiz] Ad client never started, possibly due to streaming.")
			script:Destroy()
			return
		end
	end
	Utils_upvr.pprint("[SuperBiz] Ad client started!")
	arg1.adPart = module_2_upvr:waitForPart(arg2, 120)
	arg1.adPartName = arg2
	arg1.viewabilityMetEvent = Instance.new("BindableEvent")
	arg1.updateAdEvent = SOME
	arg1:checkAd()
	if not arg1.isClientPart then
		SOME.OnClientEvent:Connect(function(arg1_2) -- Line 754
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:displayAd(arg1_2.ad_format, arg1_2.ad_url, arg1_2.bloxbiz_ad_id, arg1_2.external_link_references, arg1_2.gif_fps, arg1_2.gif_version, arg1_2.audio_url, arg1_2.show_ad_disclaimer, arg1_2.ad_disclaimer_url, arg1_2.ad_disclaimer_scale_x, arg1_2.ad_disclaimer_scale_y, arg1_2.bill_type)
		end)
	elseif arg1.isClientPart then
		if arg4 then
			arg1.clientPartData = arg4
			arg1.currentBloxbizAdId = arg4.bloxbiz_ad_id
		elseif arg1.adPart:FindFirstChild("BLOXBIZ_CONSTANT_ID") then
			arg1.currentBloxbizAdId = arg1.adPart.BLOXBIZ_CONSTANT_ID.Value
		end
	end
	spawn(function() -- Line 797
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:backgroundProcess()
	end)
end
return module_2_upvr