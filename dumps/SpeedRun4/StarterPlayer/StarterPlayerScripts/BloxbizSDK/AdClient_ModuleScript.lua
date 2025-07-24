-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:11
-- Luau version 6, Types version 3
-- Time taken: 0.014935 seconds

local module_upvr = {
	adPart = nil;
	adPartName = nil;
	streamedIn = false;
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
	viewabilityMetEvent = nil;
	updateAdEvent = nil;
	isClientPart = false;
	clientPartData = nil;
}
local LocalizationService_upvr = game:GetService("LocalizationService")
local Utils_upvr = require(script.Parent.Utils)
local CurrentCamera_2_upvr = workspace.CurrentCamera
local BloxbizRemotes_upvr = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes")
local ConfigReader_upvr = require(script.Parent.ConfigReader)
local InternalConfigDev = game.ReplicatedStorage:FindFirstChild("InternalConfigDev")
local var9
if InternalConfigDev then
	var9 = require(InternalConfigDev)
else
	var9 = require(script.Parent.InternalConfig)
end
local DETECT_IMPRESSION_WAIT_TIME_upvr = var9.DETECT_IMPRESSION_WAIT_TIME
function module_upvr.check_ad(arg1) -- Line 65
	if not arg1.adPart:FindFirstChild("AdSurfaceGui") then
		error("[Bloxbiz] Ad part must have a SurfaceGui attached to it with the name 'AdSurfaceGui'")
	end
end
function module_upvr.grid_of_rays(arg1) -- Line 71
	local adPart = arg1.adPart
	local tbl = {1, 1, -1}
	local _ = {-1, -1, -1}
	for _ = 1, 8 do
		tbl[1] -= 0.05
		for _ = 1, 4 do
			tbl[2] -= 0.1
			local _, _ = arg1:build_ray((adPart.CFrame * CFrame.new(adPart.size.X / 2 * tbl[1], adPart.size.Y / 2 * tbl[2], adPart.size.Z / 2 * tbl[3])).Position)
		end
		tbl[1] = tbl[1]
	end
end
function module_upvr.get_corner_screen_points(arg1) -- Line 102
	--[[ Upvalues[1]:
		[1]: CurrentCamera_2_upvr (readonly)
	]]
	local adPart_2 = arg1.adPart
	local module = {}
	for _, v in pairs(require(script.FaceToCorners)[adPart_2.AdSurfaceGui.Face]) do
		local any_WorldToViewportPoint_result1, any_WorldToViewportPoint_result2_2 = CurrentCamera_2_upvr:WorldToViewportPoint((adPart_2.CFrame * CFrame.new(adPart_2.size.X / 2 * v[1], adPart_2.size.Y / 2 * v[2], adPart_2.size.Z / 2 * v[3])).Position)
		if not any_WorldToViewportPoint_result2_2 then
			if any_WorldToViewportPoint_result1.X < 0 then
				any_WorldToViewportPoint_result1 = Vector3.new(0, any_WorldToViewportPoint_result1.Y, any_WorldToViewportPoint_result1.Z)
			elseif CurrentCamera_2_upvr.ViewportSize.X < any_WorldToViewportPoint_result1.X then
				any_WorldToViewportPoint_result1 = Vector3.new(CurrentCamera_2_upvr.ViewportSize.X, any_WorldToViewportPoint_result1.Y, any_WorldToViewportPoint_result1.Z)
			end
			if any_WorldToViewportPoint_result1.Y < 0 then
				any_WorldToViewportPoint_result1 = Vector3.new(any_WorldToViewportPoint_result1.X, 0, any_WorldToViewportPoint_result1.Z)
			elseif CurrentCamera_2_upvr.ViewportSize.Y < any_WorldToViewportPoint_result1.Y then
				any_WorldToViewportPoint_result1 = Vector3.new(any_WorldToViewportPoint_result1.X, CurrentCamera_2_upvr.ViewportSize.Y, any_WorldToViewportPoint_result1.Z)
			end
		end
		table.insert(module, any_WorldToViewportPoint_result1)
	end
	return module
end
function module_upvr.vector_from_camera_to_position(arg1, arg2) -- Line 140
	--[[ Upvalues[1]:
		[1]: CurrentCamera_2_upvr (readonly)
	]]
	return arg2 - CurrentCamera_2_upvr.CFrame.Position
end
function module_upvr.is_first_person(arg1, arg2) -- Line 148
	--[[ Upvalues[1]:
		[1]: CurrentCamera_2_upvr (readonly)
	]]
	local var31
	if (arg2.CFrame.p - CurrentCamera_2_upvr.CFrame.p).Magnitude >= 1.75 then
		var31 = false
	else
		var31 = true
	end
	return var31
end
local Raycast_upvr = require(script.Raycast)
local DRAW_RAYCAST_upvr = var9.DRAW_RAYCAST
function module_upvr.build_ray(arg1, arg2) -- Line 152
	--[[ Upvalues[4]:
		[1]: ConfigReader_upvr (readonly)
		[2]: Raycast_upvr (readonly)
		[3]: CurrentCamera_2_upvr (readonly)
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
			var40 = var40.LocalPlayer.CharacterAdded:wait()
		end
		local Head = var40:FindFirstChild("Head")
		if Head and arg1:is_first_person(Head) then
			for _, v_2 in ipairs(var40:GetDescendants()) do
				table.insert(var39, v_2)
			end
		end
	end
	RaycastParams_new_result1.FilterDescendantsInstances = var39
	local Position = CurrentCamera_2_upvr.CFrame.Position
	local var47 = arg2 - Position
	local Magnitude = var47.Magnitude
	if DRAW_RAYCAST_upvr then
		arg1:draw_raycast(Position, Magnitude, arg2)
	end
	return Raycast_upvr.new(RaycastParams_new_result1, 0, false, false, 0):Raycast(Position, var47.unit * Magnitude), var47
end
function module_upvr.area_of_triangle(arg1, arg2, arg3, arg4) -- Line 191
	return math.abs((arg2.x * (arg3.y - arg4.y) + arg3.x * (arg4.y - arg2.y) + arg4.x * (arg2.y - arg3.y)) / 2)
end
function module_upvr.get_size_at_distance(arg1) -- Line 196
	--[[ Upvalues[2]:
		[1]: CurrentCamera_2_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local ViewportSize = CurrentCamera_2_upvr.ViewportSize
	local any_get_corner_screen_points_result1 = module_upvr:get_corner_screen_points()
	local var51 = ViewportSize.y * ViewportSize.X
	return var51, (module_upvr:area_of_triangle(any_get_corner_screen_points_result1[1], any_get_corner_screen_points_result1[2], any_get_corner_screen_points_result1[3]) + module_upvr:area_of_triangle(any_get_corner_screen_points_result1[3], any_get_corner_screen_points_result1[4], any_get_corner_screen_points_result1[1])) / var51 * 100, math.abs(any_get_corner_screen_points_result1[2].x - any_get_corner_screen_points_result1[3].x), math.abs(any_get_corner_screen_points_result1[2].y - any_get_corner_screen_points_result1[1].y)
end
function module_upvr.draw_raycast(arg1, arg2, arg3, arg4) -- Line 215
	local Part = Instance.new("Part")
	Part.Name = "Raycast"
	Part.Anchored = true
	Part.CanCollide = false
	Part.Size = Vector3.new(0.1, 0.1, arg3)
	Part.CFrame = lookAt(arg4, arg2) * CFrame.new(0, 0, -arg3 / 2)
	Part.Parent = workspace
end
function module_upvr.detect_raycast(arg1) -- Line 225
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_build_ray_result1, any_build_ray_result2 = arg1:build_ray(arg1.adPart.Position)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 19. Error Block 4 start (CF ANALYSIS FAILED)
	do
		return any_build_ray_result2, 180 - math.deg(math.acos(any_build_ray_result2.Unit:Dot(any_build_ray_result1.Normal.Unit)))
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
function lookAt(arg1, arg2) -- Line 246
	local Unit = (arg1 - arg2).Unit
	local any_Cross_result1 = Unit:Cross(Vector3.new(0, 1, 0))
	return CFrame.fromMatrix(arg2, any_Cross_result1, any_Cross_result1:Cross(Unit))
end
function NormalToFace(arg1, arg2, arg3) -- Line 269
	for _, v_3 in pairs(arg3) do
		if 0.999 < GetNormalFromFace(arg2, v_3):Dot(arg1) then
			return true
		end
	end
	return false
end
function GetNormalFromFace(arg1, arg2) -- Line 293
	return arg1.CFrame:VectorToWorldSpace(Vector3.FromNormalId(arg2))
end
function module_upvr.detect_screenpoint(arg1) -- Line 297
	--[[ Upvalues[1]:
		[1]: CurrentCamera_2_upvr (readonly)
	]]
	local _, any_WorldToViewportPoint_result2 = CurrentCamera_2_upvr:WorldToViewportPoint(arg1.adPart.Position)
	if any_WorldToViewportPoint_result2 then
		return true
	end
	return false
end
local GuiService_upvr = game:GetService("GuiService")
local UserInputService_upvr = game:GetService("UserInputService")
function module_upvr.get_client_player_stats(arg1) -- Line 307
	--[[ Upvalues[3]:
		[1]: LocalizationService_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
	]]
	return {
		client_resolution = arg1:get_client_resolution();
		country_code = arg1:get_player_country_code();
		allowed_external_link_references = arg1:get_player_policy_info().AllowedExternalLinkReferences;
		player_membership_type = game.Players.LocalPlayer.MembershipType.Value;
		system_locale_id = LocalizationService_upvr.SystemLocaleId;
		is_ten_foot_interface = GuiService_upvr:IsTenFootInterface();
		accelerometer_enabled = UserInputService_upvr.AccelerometerEnabled;
		gamepad_enabled = UserInputService_upvr.GamepadEnabled;
		gyroscope_enabled = UserInputService_upvr.GyroscopeEnabled;
		keyboard_enabled = UserInputService_upvr.KeyboardEnabled;
		mouse_enabled = UserInputService_upvr.MouseEnabled;
		touch_enabled = UserInputService_upvr.TouchEnabled;
		vr_enabled = UserInputService_upvr.VREnabled;
	}
end
local Workspace_upvr = game:GetService("Workspace")
local LocalPlayer_upvr_2 = game:GetService("Players").LocalPlayer
function module_upvr.get_client_resolution(arg1) -- Line 327
	--[[ Upvalues[3]:
		[1]: Workspace_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: LocalPlayer_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local CurrentCamera = Workspace_upvr.CurrentCamera
	local _ = {
		client_resolution_x = 0;
		client_resolution_y = 0;
	}
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [61] 45. Error Block 19 start (CF ANALYSIS FAILED)
	local _ = {
		client_resolution_x = CurrentCamera.ViewportSize.X;
		client_resolution_y = CurrentCamera.ViewportSize.Y;
	}
	-- KONSTANTERROR: [61] 45. Error Block 19 end (CF ANALYSIS FAILED)
end
function module_upvr.get_player_country_code(arg1) -- Line 356
	--[[ Upvalues[1]:
		[1]: LocalizationService_upvr (readonly)
	]]
	local LocalPlayer_upvr = game.Players.LocalPlayer
	local _, pcall_result2_3 = pcall(function() -- Line 359
		--[[ Upvalues[2]:
			[1]: LocalizationService_upvr (copied, readonly)
			[2]: LocalPlayer_upvr (readonly)
		]]
		return LocalizationService_upvr:GetCountryRegionForPlayerAsync(LocalPlayer_upvr)
	end)
	return pcall_result2_3
end
local PolicyService_upvr = game:GetService("PolicyService")
function module_upvr.get_player_policy_info(arg1) -- Line 366
	--[[ Upvalues[1]:
		[1]: PolicyService_upvr (readonly)
	]]
	local LocalPlayer_upvr_3 = game.Players.LocalPlayer
	local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 369
		--[[ Upvalues[2]:
			[1]: PolicyService_upvr (copied, readonly)
			[2]: LocalPlayer_upvr_3 (readonly)
		]]
		return PolicyService_upvr:GetPolicyInfoForPlayerAsync(LocalPlayer_upvr_3)
	end)
	if not pcall_result1_2 then
		return {
			ArePaidRandomItemsRestricted = true;
			AllowedExternalLinkReferences = {};
			IsPaidItemTradingAllowed = false;
			IsSubjectToChinaPolicies = true;
		}
	end
	return pcall_result2_2
end
local HttpService_upvr = game:GetService("HttpService")
local ImpressionEvent_upvr = BloxbizRemotes_upvr:WaitForChild("ImpressionEvent")
function module_upvr.send_impression(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 385
	--[[ Upvalues[2]:
		[1]: HttpService_upvr (readonly)
		[2]: ImpressionEvent_upvr (readonly)
	]]
	local var84
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var84 = arg1.adPart
		return var84
	end
	if arg7 or not INLINED() then
		var84 = require(script.Parent.AdServer):get_part_stats(arg1.adPart)
	end
	ImpressionEvent_upvr:FireServer(arg1:get_client_player_stats(), arg2, arg3, var84, arg4, arg5, arg6, HttpService_upvr:GenerateGUID(false), arg7, arg1.currentAdFormat)
end
local AdInteractionEvent_upvr = BloxbizRemotes_upvr:WaitForChild("AdInteractionEvent")
function module_upvr.send_interaction(arg1, arg2, ...) -- Line 395
	--[[ Upvalues[1]:
		[1]: AdInteractionEvent_upvr (readonly)
	]]
	local any_get_client_player_stats_result1 = arg1:get_client_player_stats()
	local Image = arg1.adPart.AdSurfaceGui.ImageLabel.Image
	local currentBloxbizAdId = arg1.currentBloxbizAdId
	if arg2 == "hover" then
		local var89 = ...
		AdInteractionEvent_upvr:FireServer(arg2, any_get_client_player_stats_result1, Image, currentBloxbizAdId, arg1.adPart, os.time() - var89, var89)
	elseif arg2 == "click" then
		AdInteractionEvent_upvr:FireServer(arg2, any_get_client_player_stats_result1, Image, currentBloxbizAdId, arg1.adPart, os.time())
	end
end
local UserIdlingEvent_upvr = BloxbizRemotes_upvr:WaitForChild("UserIdlingEvent")
function module_upvr.send_user_idling(arg1, arg2) -- Line 410
	--[[ Upvalues[2]:
		[1]: Utils_upvr (readonly)
		[2]: UserIdlingEvent_upvr (readonly)
	]]
	Utils_upvr.pprint("[Bloxbiz] Player has been idle for "..arg2.." seconds")
	UserIdlingEvent_upvr:FireServer(arg2)
end
local NewPlayerEvent_upvr = BloxbizRemotes_upvr:WaitForChild("NewPlayerEvent")
function module_upvr.send_new_player(arg1) -- Line 415
	--[[ Upvalues[2]:
		[1]: NewPlayerEvent_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	NewPlayerEvent_upvr:FireServer(module_upvr:get_client_player_stats())
end
function module_upvr.requestAdRotation(arg1) -- Line 419
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1.updateAdEvent:FireServer(module_upvr:get_client_player_stats())
end
function module_upvr.wait_or_delete_part(arg1) -- Line 423
	--[[ Upvalues[3]:
		[1]: BloxbizRemotes_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	while not (arg1.adPart == nil or arg1.adPart.Parent ~= nil) do
		arg1.streamedIn = false
		if not BloxbizRemotes_upvr:WaitForChild("updateAdEvent-"..arg1.adPartName, 5) then
			Utils_upvr.pprint("[Bloxbiz] Ad client stopped!")
			arg1:cleanup_gif()
			arg1:cleanupVideo()
			script:Destroy()
			return false
		end
		arg1.adPart = module_upvr:wait_for_part(arg1.adPartName, 120)
	end
	return arg1.adPart
end
function module_upvr.background_process(arg1) -- Line 442
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: DETECT_IMPRESSION_WAIT_TIME_upvr (readonly)
	]]
	while true do
		if arg1.debugAPI and arg1.adPart and arg1.adPart.Parent then
			arg1.debugAPI.EndImpression(arg1.adPart.AdSurfaceGui)
		end
		if not arg1:wait_or_delete_part() then return end
		if not arg1.streamedIn and arg1.currentURL and not arg1.currentGIF and not arg1.currentVideo then
			arg1:display_ad(arg1.currentAdFormat, arg1.currentURL, arg1.currentBloxbizAdId, arg1.currentAdExternalLinkReferences, arg1.currentGIFFPS, arg1.currentGIFVersion, arg1.currentAudioUrl, arg1.showAdDisclaimer, arg1.ad_disclaimer_url, arg1.ad_disclaimer_scale_x, arg1.ad_disclaimer_scale_y, arg1.currentBillType)
		end
		arg1.streamedIn = true
		local pcall_result1, pcall_result2 = pcall(function() -- Line 464
			--[[ Upvalues[1]:
				[1]: module_upvr (copied, readonly)
			]]
			module_upvr:detect_and_measure_impression()
		end)
		if not pcall_result1 or arg1.adPart.Parent == nil then
			if pcall_result2 then
				Utils_upvr.pprint("[Bloxbiz] Error: "..pcall_result2)
			else
				Utils_upvr.pprint("[Bloxbiz] Warning: Ad part has no parent. Possibly due to streaming.")
			end
		end
		wait(DETECT_IMPRESSION_WAIT_TIME_upvr)
	end
end
function time_ms() -- Line 480
	return os.clock()
end
local any_read_result1_upvr = ConfigReader_upvr:read("Ad3DMaxRaycastDistance")
function module_upvr.detect_and_measure_impression(arg1) -- Line 484
	--[[ Upvalues[3]:
		[1]: CurrentCamera_2_upvr (readonly)
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
	local any_detect_impression_result1, _ = arg1:detect_impression()
	-- KONSTANTERROR: [21] 14. Error Block 4 end (CF ANALYSIS FAILED)
end
function module_upvr.detect_impression(arg1) -- Line 560
	if arg1:detect_screenpoint() then
		return arg1:detect_raycast()
	end
	return false
end
function module_upvr.set_disclaimer(arg1, arg2, arg3, arg4, arg5) -- Line 568
	local var99
	if arg1.isClientPart ~= true then
		var99 = false
	else
		var99 = true
	end
	if var99 then
	else
		local AdDisclaimerLabel = arg1.adPart.AdSurfaceGui.DisclaimerHolder.AdDisclaimerLabel
		AdDisclaimerLabel.Visible = arg2
		AdDisclaimerLabel.Image = arg3
		AdDisclaimerLabel.Size = UDim2.new(arg4, 0, arg5, 0)
	end
end
local ContentProvider_upvr = game:GetService("ContentProvider")
function module_upvr.preloadList(arg1, arg2) -- Line 581
	--[[ Upvalues[1]:
		[1]: ContentProvider_upvr (readonly)
	]]
	task.spawn(function() -- Line 582
		--[[ Upvalues[2]:
			[1]: ContentProvider_upvr (copied, readonly)
			[2]: arg2 (readonly)
		]]
		ContentProvider_upvr:PreloadAsync(arg2)
	end)
end
function table_to_dict(arg1) -- Line 587
	local module_2 = {}
	for _, v_4 in ipairs(arg1) do
		module_2[v_4] = true
	end
	return module_2
end
function module_upvr.cleanup_gif(arg1) -- Line 597
	if arg1.currentGIF then
		arg1.currentGIF:Cleanup()
		arg1.currentGIF = nil
	end
end
function module_upvr.cleanupVideo(arg1) -- Line 604
	if arg1.currentVideo then
		arg1.currentVideo:cleanup()
		arg1.currentVideo = nil
	end
end
function module_upvr.is_ad_compliant_with_policy(arg1, arg2) -- Line 611
	local var115
	if #arg2 == 0 then
		return true
	end
	var115 = arg1:get_player_policy_info()
	var115 = table_to_dict(var115.AllowedExternalLinkReferences)
	var115 = true
	for _, v_5 in ipairs(arg2) do
		if not var115[v_5] then
			var115 = false
			return var115
		end
	end
	return var115
end
local GIF_upvr = require(script.Parent.GIF)
local VideoPlayer_upvr = require(script.VideoPlayer)
function module_upvr.display_ad(arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13) -- Line 631
	--[[ Upvalues[2]:
		[1]: GIF_upvr (readonly)
		[2]: VideoPlayer_upvr (readonly)
	]]
	if not arg1:is_ad_compliant_with_policy(arg5) then
	else
		local var125 = arg3
		if arg2 == "gif" or arg2 == "video" or arg7 ~= 1 then
			var125 = {}
			for _, v_7 in ipairs(arg3) do
				table.insert(var125, v_7.ad_url)
			end
		end
		arg1.currentAdFormat = arg2
		arg1.currentURL = arg3
		arg1.currentURLsDict = table_to_dict(var125)
		arg1.currentBloxbizAdId = arg4
		arg1.currentBillType = arg13
		arg1.currentAdExternalLinkReferences = arg5
		arg1.currentGIFFPS = arg6
		arg1.currentGIFVersion = arg7
		arg1.currentAudioUrl = arg8
		arg1.showAdDisclaimer = arg9
		arg1.ad_disclaimer_url = arg10
		arg1.ad_disclaimer_scale_x = arg11
		arg1.ad_disclaimer_scale_y = arg12
		local _, _ = pcall(function() -- Line 664
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
			arg1:set_disclaimer(arg9, arg10, arg11, arg12)
			arg1:cleanup_gif()
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
function module_upvr.wait_for_part(arg1, arg2, arg3) -- Line 689
	local any_split_result1 = arg2:split('.')
	table.remove(any_split_result1, 1)
	local workspace = workspace
	for _, v_6 in ipairs(any_split_result1) do
		workspace = workspace:WaitForChild(v_6, arg3)
	end
	return workspace
end
function module_upvr.init_ad(arg1, arg2, arg3, arg4) -- Line 702
	--[[ Upvalues[4]:
		[1]: ConfigReader_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: BloxbizRemotes_upvr (readonly)
		[4]: Utils_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var141
	if ConfigReader_upvr:read("DebugMode") then
		arg1.debugAPI = require(ConfigReader_upvr:read("DebugAPI")())
	end
	if arg3 then
		var141 = arg3
		arg1.isClientPart = true
	else
		arg1.isClientPart = false
	end
	while var141 == nil do
		var141 = module_upvr:wait_for_part(arg2, 120)
		local SOME = BloxbizRemotes_upvr:WaitForChild("updateAdEvent-"..arg2, 5)
		if SOME == nil then
			Utils_upvr.pprint("[Bloxbiz] Ad client never started, possibly due to streaming.")
			script:Destroy()
			return
		end
	end
	Utils_upvr.pprint("[Bloxbiz] Ad client started!")
	arg1.adPart = var141
	arg1.adPartName = arg2
	arg1.viewabilityMetEvent = Instance.new("BindableEvent")
	arg1.updateAdEvent = SOME
	arg1:check_ad()
	if not arg1.isClientPart then
		SOME.OnClientEvent:Connect(function(arg1_2) -- Line 737
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:display_ad(arg1_2.ad_format, arg1_2.ad_url, arg1_2.bloxbiz_ad_id, arg1_2.external_link_references, arg1_2.gif_fps, arg1_2.gif_version, arg1_2.audio_url, arg1_2.show_ad_disclaimer, arg1_2.ad_disclaimer_url, arg1_2.ad_disclaimer_scale_x, arg1_2.ad_disclaimer_scale_y, arg1_2.bill_type)
		end)
	elseif arg1.isClientPart then
		if arg4 then
			arg1.clientPartData = arg4
			arg1.currentBloxbizAdId = arg4.bloxbiz_ad_id
		elseif arg1.adPart:FindFirstChild("BLOXBIZ_CONSTANT_ID") then
			arg1.currentBloxbizAdId = arg1.adPart.BLOXBIZ_CONSTANT_ID.Value
		end
	end
	spawn(function() -- Line 772
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:background_process()
	end)
end
return module_upvr