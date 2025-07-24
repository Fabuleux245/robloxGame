-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:06
-- Luau version 6, Types version 3
-- Time taken: 0.011402 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local RunService_upvr = game:GetService("RunService")
local tbl_upvr = {3436386142, 1703679745, 3410520930, 1718501381, 1870858613, 675362022, 4303693665, 4312208708, 4312274403, 4312278663}
local ConfigReader_upvr = require(script.Parent.ConfigReader)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local BloxbizRemotes_upvr = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes")
local module_upvr = {
	TargetedAd = nil;
	TargetingUpdated = false;
	ValidClients = {};
	LatestAdsForRevert = {};
	MobileIcon = nil;
	DebugModeForceEnabled = false;
}
local function _() -- Line 42, Named "UserCanScreenshotTool"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	local var15
	for _, v in ipairs(tbl_upvr) do
		if v == LocalPlayer_upvr.UserId then
		end
	end
	return nil
end
local function _() -- Line 54, Named "UserIsMobile"
	--[[ Upvalues[1]:
		[1]: UserInputService_upvr (readonly)
	]]
	if not UserInputService_upvr.MouseEnabled and not UserInputService_upvr.KeyboardEnabled and UserInputService_upvr.TouchEnabled then
		return true
	end
	return false
end
local function WaitForAdPart_upvr(arg1) -- Line 66, Named "WaitForAdPart"
	--[[ Upvalues[1]:
		[1]: BloxbizRemotes_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var24
	while var24 == nil do
		var24 = require(script.Parent.BillboardClient):waitForPart(arg1, 5)
		if BloxbizRemotes_upvr:WaitForChild("updateAdEvent-"..arg1, 5) == nil then
			return false
		end
	end
	while nil == nil do
		for _, v_2 in pairs(script.Parent:GetChildren()) do
			if v_2.Name == "BillboardClient" and require(v_2).adPart == var24 then
			end
		end
		task.wait()
	end
	return var24, v_2
end
local function _(arg1, arg2) -- Line 101, Named "DisplayAd"
	arg1:displayAd(arg2.ad_format, arg2.ad_url, arg2.bloxbiz_ad_id, arg2.external_link_references, arg2.gif_fps, arg2.gif_version, arg2.audio_url, true, arg2.ad_disclaimer_url, arg2.ad_disclaimer_scale_x, arg2.ad_disclaimer_scale_y)
end
function module_upvr.UpdateClients() -- Line 131
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.ValidClients = {}
	for _, v_3 in pairs(script.Parent:GetChildren()) do
		if v_3.Name == "BillboardClient" then
			local v_3_2 = require(v_3)
			if v_3_2.adPart ~= nil and not v_3_2.isClientPart then
				table.insert(module_upvr.ValidClients, v_3)
			end
		end
	end
end
function module_upvr.RevertToLatestAds() -- Line 147
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for i_4, v_4 in pairs(module_upvr.LatestAdsForRevert) do
		require(i_4):displayAd(v_4.ad_format, v_4.ad_url, v_4.bloxbiz_ad_id, v_4.external_link_references, v_4.gif_fps, v_4.gif_version, v_4.audio_url, true, v_4.ad_disclaimer_url, v_4.ad_disclaimer_scale_x, v_4.ad_disclaimer_scale_y)
	end
end
local CreateDebugGui_upvr = require(script.Parent.CreateDebugGui)
function module_upvr.TurnOnDebugMode() -- Line 154
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: CreateDebugGui_upvr (readonly)
		[3]: ConfigReader_upvr (readonly)
	]]
	CreateDebugGui_upvr().Parent = LocalPlayer_upvr.PlayerGui
	for _, v_5 in pairs(script.Parent:GetChildren()) do
		if v_5.Name == "BillboardClient" and v_5.ClassName == "ModuleScript" then
			v_5 = require(v_5)
			v_5.debugAPI = require(ConfigReader_upvr:read("DebugAPI")())
		end
	end
end
function module_upvr.TurnOffDebugMode() -- Line 167
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	for _, v_6 in pairs(script.Parent:GetChildren()) do
		if v_6.Name == "BillboardClient" then
			local var67
			if var67 == "ModuleScript" then
				var67 = require(v_6)
				v_6 = var67
				var67 = nil
				v_6.debugAPI = var67
				var67 = v_6.adPart
				if var67 then
					var67 = v_6.adPart:FindFirstChild("AdSurfaceGui")
				end
				if var67 and var67:FindFirstChild("Colorize") then
					var67.Colorize:Destroy()
				end
			end
		end
	end
	local PlayerGui_4 = LocalPlayer_upvr.PlayerGui
	if PlayerGui_4:FindFirstChild("DebugGui") then
		PlayerGui_4.DebugGui:Destroy()
	end
end
local Request3dAdEvent_upvr = BloxbizRemotes_upvr:WaitForChild("Request3dAdEvent")
function module_upvr.Target3dAd(arg1) -- Line 186
	--[[ Upvalues[1]:
		[1]: Request3dAdEvent_upvr (readonly)
	]]
	Request3dAdEvent_upvr:FireServer(arg1)
end
local RequestPortalAdEvent_upvr = BloxbizRemotes_upvr:WaitForChild("RequestPortalAdEvent")
function module_upvr.TargetPortalAd(arg1) -- Line 190
	--[[ Upvalues[1]:
		[1]: RequestPortalAdEvent_upvr (readonly)
	]]
	RequestPortalAdEvent_upvr:FireServer(arg1)
end
function module_upvr.TurnOnTargeting(arg1) -- Line 194
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	module_upvr.TargetedAd = arg1
	module_upvr.TargetingUpdated = true
	module_upvr.UpdateClients()
	local bloxbiz_ad_id_upvr = module_upvr.TargetedAd.bloxbiz_ad_id
	RunService_upvr:BindToRenderStep("BLOXBIZ_SCREENSHOT_TOOL", Enum.RenderPriority.Last.Value, function() -- Line 200
		--[[ Upvalues[2]:
			[1]: module_upvr (copied, readonly)
			[2]: bloxbiz_ad_id_upvr (readonly)
		]]
		for _, v_7 in ipairs(module_upvr.ValidClients) do
			local var80 = v_7
			local var80_2 = require(var80)
			if tonumber(var80_2.currentBloxbizAdId) == tonumber(bloxbiz_ad_id_upvr) then
				var80 = false
			else
				var80 = true
			end
			if var80 or module_upvr.TargetingUpdated then
				local TargetedAd = module_upvr.TargetedAd
				var80_2:displayAd(TargetedAd.ad_format, TargetedAd.ad_url, TargetedAd.bloxbiz_ad_id, TargetedAd.external_link_references, TargetedAd.gif_fps, TargetedAd.gif_version, TargetedAd.audio_url, true, TargetedAd.ad_disclaimer_url, TargetedAd.ad_disclaimer_scale_x, TargetedAd.ad_disclaimer_scale_y)
			end
		end
		if module_upvr.TargetingUpdated then
			module_upvr.TargetingUpdated = false
		end
	end)
end
function module_upvr.TurnOffTargeting() -- Line 217
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	RunService_upvr:UnbindFromRenderStep("BLOXBIZ_SCREENSHOT_TOOL")
	module_upvr.TargetedAd = nil
	module_upvr.RevertToLatestAds()
end
local Utils_upvr = require(script.Parent.Utils)
function module_upvr.GetAdFromInput(arg1, arg2) -- Line 223
	--[[ Upvalues[1]:
		[1]: Utils_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local tbl = {
		ad_format = nil;
		ad_url = nil;
		bloxbiz_ad_id = -2;
		external_link_references = {};
	}
	tbl.gif_fps = arg2
	tbl.gif_version = nil
	tbl.audio_url = nil
	tbl.show_ad_disclaimer = true
	tbl.ad_disclaimer_url = "rbxassetid://7122215099"
	tbl.ad_disclaimer_scale_x = 0.117
	tbl.ad_disclaimer_scale_y = 0.08
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [41] 28. Error Block 40 start (CF ANALYSIS FAILED)
	for i_8 in string.gmatch(arg1, "([^,]+)") do
		table.insert({}, {
			ad_url = i_8;
			frames_per_sheet = 8;
		})
		local var94
	end
	tbl.ad_format = "gif"
	tbl.ad_url = var94
	tbl.gif_version = 2
	-- KONSTANTERROR: [41] 28. Error Block 40 end (CF ANALYSIS FAILED)
end
function module_upvr.ProcessInput() -- Line 281
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 37 start (CF ANALYSIS FAILED)
	local Main = LocalPlayer_upvr.PlayerGui.ScreenshotTool.Main
	local tonumber_result1 = tonumber(Main.FPS.TextBox.Text)
	local var97
	if tonumber_result1 ~= nil and 0 < tonumber_result1 then
		var97 = tonumber_result1
	end
	local any_GetAdFromInput_result1 = module_upvr.GetAdFromInput(Main.Ad.TextBox.Text, var97)
	local var99 = any_GetAdFromInput_result1
	if var99 then
		if any_GetAdFromInput_result1.ad_format ~= "3d" then
			var99 = false
		else
			var99 = true
		end
	end
	local var100 = any_GetAdFromInput_result1
	if var100 then
		if any_GetAdFromInput_result1.ad_format ~= "portal" then
		else
		end
	end
	if true then
		module_upvr.TargetPortalAd(any_GetAdFromInput_result1)
		-- KONSTANTWARNING: GOTO [81] #60
	end
	if var99 then
		module_upvr.Target3dAd(any_GetAdFromInput_result1)
		-- KONSTANTWARNING: GOTO [81] #60
	end
	-- KONSTANTERROR: [0] 1. Error Block 37 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [66] 48. Error Block 33 start (CF ANALYSIS FAILED)
	if any_GetAdFromInput_result1 then
		module_upvr.TurnOffTargeting()
		module_upvr.TurnOnTargeting(any_GetAdFromInput_result1)
	else
		module_upvr.TurnOffTargeting()
	end
	if module_upvr.DebugModeForceEnabled then
		module_upvr.TurnOffDebugMode()
	else
		module_upvr.TurnOnDebugMode()
		-- KONSTANTERROR: [66] 48. Error Block 33 end (CF ANALYSIS FAILED)
	end
end
function module_upvr.OnUpdateAdURL(arg1) -- Line 315
	--[[ Upvalues[3]:
		[1]: BloxbizRemotes_upvr (readonly)
		[2]: WaitForAdPart_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	BloxbizRemotes_upvr:WaitForChild("updateAdEvent-"..arg1).OnClientEvent:Connect(function(arg1_2) -- Line 318
		--[[ Upvalues[3]:
			[1]: WaitForAdPart_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: module_upvr (copied, readonly)
		]]
		local WaitForAdPart_result1, WaitForAdPart_result2 = WaitForAdPart_upvr(arg1)
		if not WaitForAdPart_result1 then
		else
			module_upvr.LatestAdsForRevert[WaitForAdPart_result2] = arg1_2
		end
	end)
end
function module_upvr.OnNewAdEvent(arg1) -- Line 329
	--[[ Upvalues[2]:
		[1]: WaitForAdPart_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if not WaitForAdPart_upvr(arg1) then
	else
		module_upvr.UpdateClients()
		module_upvr.OnUpdateAdURL(arg1)
	end
end
function module_upvr.UpdateDebugModeBtn() -- Line 340
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local Main_2 = LocalPlayer_upvr.PlayerGui.ScreenshotTool.Main
	if module_upvr.DebugModeForceEnabled then
		Main_2.DebugModeBtn.TextLabel.Text = "DebugMode: Off"
	else
		Main_2.DebugModeBtn.TextLabel.Text = "DebugMode: On"
	end
end
function module_upvr.OnUpdatePressed() -- Line 351
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.ProcessInput()
	module_upvr.DestroyGUI()
end
local CreateToolGui_upvr = require(script.CreateToolGui)
function module_upvr.OpenGUI() -- Line 356
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: CreateToolGui_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local PlayerGui_2 = LocalPlayer_upvr.PlayerGui
	if PlayerGui_2:FindFirstChild("ScreenshotTool") then
	else
		local var105_result1 = CreateToolGui_upvr()
		var105_result1.Parent = PlayerGui_2
		var105_result1.Main.UpdateBtn.MouseButton1Click:Connect(module_upvr.OnUpdatePressed)
		var105_result1.Main.DebugModeBtn.MouseButton1Click:Connect(function() -- Line 366
			--[[ Upvalues[1]:
				[1]: module_upvr (copied, readonly)
			]]
			module_upvr.DebugModeForceEnabled = not module_upvr.DebugModeForceEnabled
			module_upvr.UpdateDebugModeBtn()
		end)
		if module_upvr.MobileIcon and module_upvr.MobileIcon:getToggleState() == "deselected" then
			module_upvr.MobileIcon:select()
		end
		module_upvr.UpdateDebugModeBtn()
	end
end
function module_upvr.DestroyGUI() -- Line 378
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local PlayerGui_3 = LocalPlayer_upvr.PlayerGui
	if PlayerGui_3:FindFirstChild("ScreenshotTool") then
		PlayerGui_3.ScreenshotTool:Destroy()
	end
	if module_upvr.MobileIcon then
		if module_upvr.MobileIcon:getToggleState() == "selected" then
			module_upvr.MobileIcon:deselect()
		end
	end
end
function module_upvr.SetupMobileEntry() -- Line 390
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr.MobileIcon = require(script.Parent.Utils.Icon).new()
	local MobileIcon = module_upvr.MobileIcon
	MobileIcon:setImage(9792053373)
	MobileIcon:setProperty("deselectWhenOtherIconSelected", false)
	MobileIcon:setRight()
	MobileIcon:bindEvent("selected", function() -- Line 400
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		module_upvr.OpenGUI()
	end)
	MobileIcon:bindEvent("deselected", function() -- Line 404
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		module_upvr.DestroyGUI()
	end)
end
function module_upvr.SetupDesktopEntry() -- Line 409
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	local var113_upvw = false
	local var114_upvw = false
	local var115_upvw = false
	local function _() -- Line 415, Named "processState"
		--[[ Upvalues[4]:
			[1]: var113_upvw (read and write)
			[2]: var114_upvw (read and write)
			[3]: var115_upvw (read and write)
			[4]: module_upvr (copied, readonly)
		]]
		local var116 = var113_upvw
		if var116 then
			var116 = var114_upvw
		end
		if var116 then
			if not var115_upvw then
				module_upvr.OpenGUI()
			else
				module_upvr.DestroyGUI()
			end
			var115_upvw = not var115_upvw
			var113_upvw = false
			var114_upvw = false
		end
	end
	UserInputService_upvr.InputBegan:Connect(function(arg1) -- Line 432
		--[[ Upvalues[4]:
			[1]: var113_upvw (read and write)
			[2]: var114_upvw (read and write)
			[3]: var115_upvw (read and write)
			[4]: module_upvr (copied, readonly)
		]]
		if arg1.KeyCode == Enum.KeyCode.LeftControl then
			var113_upvw = true
		elseif arg1.KeyCode == Enum.KeyCode.U then
			var114_upvw = true
		end
		local var118 = var113_upvw
		if var118 then
			var118 = var114_upvw
		end
		if var118 then
			if not var115_upvw then
				module_upvr.OpenGUI()
			else
				module_upvr.DestroyGUI()
			end
			var115_upvw = not var115_upvw
			var113_upvw = false
			var114_upvw = false
		end
	end)
	UserInputService_upvr.InputEnded:Connect(function(arg1) -- Line 442
		--[[ Upvalues[4]:
			[1]: var113_upvw (read and write)
			[2]: var114_upvw (read and write)
			[3]: var115_upvw (read and write)
			[4]: module_upvr (copied, readonly)
		]]
		if arg1.KeyCode == Enum.KeyCode.LeftControl then
			var113_upvw = false
		elseif arg1.KeyCode == Enum.KeyCode.U then
			var114_upvw = false
		end
		local var120 = var113_upvw
		if var120 then
			var120 = var114_upvw
		end
		if var120 then
			if not var115_upvw then
				module_upvr.OpenGUI()
			else
				module_upvr.DestroyGUI()
			end
			var115_upvw = not var115_upvw
			var113_upvw = false
			var114_upvw = false
		end
	end)
end
local NewAdEvent_upvr = BloxbizRemotes_upvr:WaitForChild("NewAdEvent")
function module_upvr.init() -- Line 453
	--[[ Upvalues[6]:
		[1]: NewAdEvent_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: ConfigReader_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: LocalPlayer_upvr (readonly)
		[6]: UserInputService_upvr (readonly)
	]]
	NewAdEvent_upvr.OnClientEvent:Connect(module_upvr.OnNewAdEvent)
	local ipairs_result1_2, _, ipairs_result3_3 = ipairs(ConfigReader_upvr:read("Ads"))
	local var133
	for _, v_8 in ipairs_result1_2, var133, ipairs_result3_3 do
		if type(v_8) == "table" then
			v_8 = v_8.partInstance
		end
		module_upvr.OnUpdateAdURL(v_8:GetFullName())
	end
	var133 = false
	for _, v_9 in ipairs(tbl_upvr) do
		if v_9 == LocalPlayer_upvr.UserId then
			var133 = true
		end
	end
	if not var133 then
	else
		var133 = module_upvr
		local SetupMobileEntry_2 = var133.SetupMobileEntry
		SetupMobileEntry_2()
		var133 = UserInputService_upvr.MouseEnabled
		if not var133 and not UserInputService_upvr.KeyboardEnabled and UserInputService_upvr.TouchEnabled then
			SetupMobileEntry_2 = true
		else
			SetupMobileEntry_2 = false
		end
		if not SetupMobileEntry_2 then
			var133 = module_upvr
			SetupMobileEntry_2 = var133.SetupDesktopEntry
			SetupMobileEntry_2()
		end
	end
end
return module_upvr