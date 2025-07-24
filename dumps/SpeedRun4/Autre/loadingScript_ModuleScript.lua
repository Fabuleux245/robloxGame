-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:14
-- Luau version 6, Types version 3
-- Time taken: 0.008578 seconds

local ExperienceLoadingScript_upvr = script:FindFirstAncestor("ExperienceLoadingScript")
local Parent_upvr = ExperienceLoadingScript_upvr.Parent
local Players_upvr = require(Parent_upvr.MockableProxyServices).Players
local RunService_upvr = require(Parent_upvr.MockableProxyServices).RunService
local SplashScreenManager_upvr = require(Parent_upvr.SplashScreenManager).SplashScreenManager
local CoreGui_upvr = game:GetService("CoreGui")
local game_upvr = require(Parent_upvr.MockableProxyServices).game
local waitProxy_upvr = require(Parent_upvr.MockableProxyServices).waitProxy
game:DefineFastInt("FPSAwareSplashScreenTimeout", 30)
local UIBlox = require(Parent_upvr.UIBlox)
UIBlox.init(require(Parent_upvr.CoreScriptsInitializer).UIBloxInGameConfig)
local Constants_upvr = UIBlox.App.Style.Constants
local UiModeStyleProvider_upvr = require(Parent_upvr.Style).UiModeStyleProvider
local LoadingScreen_upvr = require(ExperienceLoadingScript_upvr.LoadingScreen)
local LoadingScreenReducer_upvr = require(ExperienceLoadingScript_upvr.Reducers.LoadingScreenReducer)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("PreventCreatingBlackoutCurtainOnRequire", false)
local Create_upvr = require(Parent_upvr.AppCommonLib).Create
local function GenerateDevGUIBlackoutCurtain_upvr() -- Line 39, Named "GenerateDevGUIBlackoutCurtain"
	--[[ Upvalues[2]:
		[1]: Create_upvr (readonly)
		[2]: CoreGui_upvr (readonly)
	]]
	local var17 = Create_upvr("ScreenGui")({
		Name = "DevGUIBlackoutCurtain";
		DisplayOrder = 8;
		IgnoreGuiInset = true;
	})
	Create_upvr("Frame")({
		Name = "BlackFrame";
		BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		BackgroundTransparency = 0;
		Size = UDim2.fromScale(10, 10);
		Position = UDim2.fromOffset(0, 0);
		Active = true;
		Parent = var17;
	})
	var17.Parent = CoreGui_upvr
	return var17
end
local var77_upvw
local var20_upvw
local var21_upvw
local var22_upvw
local var78_upvw
local var24_upvw
local var87_upvw
local var88_upvw
local var90_upvw
local var92_upvw
if not game_DefineFastFlag_result1_upvr then
	local GenerateDevGUIBlackoutCurtain_result1_upvw = GenerateDevGUIBlackoutCurtain_upvr()
	function var77_upvw() -- Line 84
		--[[ Upvalues[1]:
			[1]: GenerateDevGUIBlackoutCurtain_result1_upvw (read and write)
		]]
		if GenerateDevGUIBlackoutCurtain_result1_upvw then
			GenerateDevGUIBlackoutCurtain_result1_upvw.Enabled = false
			GenerateDevGUIBlackoutCurtain_result1_upvw:Destroy()
			GenerateDevGUIBlackoutCurtain_result1_upvw = nil
		end
	end
	var20_upvw = true
	var21_upvw = false
	var22_upvw = false
	local var96_upvw
	local var32_upvw
	function var78_upvw(arg1) -- Line 100
		--[[ Upvalues[9]:
			[1]: var32_upvw (read and write)
			[2]: Parent_upvr (readonly)
			[3]: LoadingScreenReducer_upvr (readonly)
			[4]: LoadingScreen_upvr (readonly)
			[5]: UiModeStyleProvider_upvr (readonly)
			[6]: Constants_upvr (readonly)
			[7]: CoreGui_upvr (readonly)
			[8]: RunService_upvr (readonly)
			[9]: GenerateDevGUIBlackoutCurtain_result1_upvw (read and write)
		]]
		var32_upvw = require(Parent_upvr.Roact)
		local Rodux_2 = require(Parent_upvr.Rodux)
		local tbl_6 = {}
		tbl_6.placeId = arg1
		RunService_upvr.Heartbeat:Wait()
		GenerateDevGUIBlackoutCurtain_result1_upvw.Enabled = false
		return var32_upvw.mount(var32_upvw.createElement(require(Parent_upvr.RoactRodux).StoreProvider, {
			store = Rodux_2.Store.new(LoadingScreenReducer_upvr, {}, {Rodux_2.thunkMiddleware});
		}, {var32_upvw.createElement(UiModeStyleProvider_upvr, {
			style = {
				themeName = Constants_upvr.ThemeName.Dark;
				fontName = Constants_upvr.FontName.Gotham;
			};
		}, {
			loadingScreenUI = var32_upvw.createElement(LoadingScreen_upvr, tbl_6);
		})}), CoreGui_upvr, "RobloxLoadingGUI")
	end
	function var87_upvw() -- Line 129
		--[[ Upvalues[3]:
			[1]: var32_upvw (read and write)
			[2]: waitProxy_upvr (readonly)
			[3]: var24_upvw (read and write)
		]]
		if var32_upvw then
			waitProxy_upvr(0.6)
			if var24_upvw ~= nil then
				var32_upvw.unmount(var24_upvw)
				var24_upvw = nil
			end
		end
	end
	function var88_upvw(arg1) -- Line 140
		--[[ Upvalues[6]:
			[1]: var20_upvw (read and write)
			[2]: var87_upvw (read and write)
			[3]: SplashScreenManager_upvr (readonly)
			[4]: var96_upvw (read and write)
			[5]: GenerateDevGUIBlackoutCurtain_result1_upvw (read and write)
			[6]: ExperienceLoadingScript_upvr (readonly)
		]]
		var20_upvw = false
		var87_upvw()
		SplashScreenManager_upvr.initialize(arg1 / 2, game:GetFastInt("FPSAwareSplashScreenTimeout"), arg1)
		SplashScreenManager_upvr.addStatusChangeListener(function(arg1_2) -- Line 146
			--[[ Upvalues[2]:
				[1]: var20_upvw (copied, read and write)
				[2]: var96_upvw (copied, read and write)
			]]
			var20_upvw = arg1_2
			if var20_upvw and var96_upvw then
				var96_upvw()
			end
		end)
		GenerateDevGUIBlackoutCurtain_result1_upvw.Enabled = true
		require(ExperienceLoadingScript_upvr.LoadingScreen3D).Parent = GenerateDevGUIBlackoutCurtain_result1_upvw
	end
	function var90_upvw() -- Line 159
		--[[ Upvalues[1]:
			[1]: Players_upvr (readonly)
		]]
		local var46
		if var46 then
			var46 = Players_upvr.LocalPlayer
			if not var46 then
				Players_upvr:GetPropertyChangedSignal("LocalPlayer"):Wait()
				var46 = Players_upvr.LocalPlayer
			end
			if not var46.Character then
				var46.CharacterAdded:Wait()
			end
		end
	end
	function var92_upvw() -- Line 172
		--[[ Upvalues[4]:
			[1]: game_upvr (readonly)
			[2]: var90_upvw (read and write)
			[3]: var21_upvw (read and write)
			[4]: var96_upvw (read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 11. Error Block 3 start (CF ANALYSIS FAILED)
		var96_upvw()
		do
			return
		end
		-- KONSTANTERROR: [11] 11. Error Block 3 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [14] 14. Error Block 4 start (CF ANALYSIS FAILED)
		local var49_upvw
		var49_upvw = game_upvr.Loaded:Connect(function() -- Line 181
			--[[ Upvalues[4]:
				[1]: var49_upvw (read and write)
				[2]: var90_upvw (copied, read and write)
				[3]: var21_upvw (copied, read and write)
				[4]: var96_upvw (copied, read and write)
			]]
			var49_upvw:Disconnect()
			var49_upvw = nil
			var90_upvw()
			var21_upvw = true
			if var96_upvw then
				var96_upvw()
			end
		end)
		-- KONSTANTERROR: [14] 14. Error Block 4 end (CF ANALYSIS FAILED)
	end
end
local VRService_upvr = require(Parent_upvr.MockableProxyServices).VRService
local IsVRAppBuild_upvr = require(Parent_upvr.AppCommonLib).IsVRAppBuild
local settingsProxy_upvr = require(Parent_upvr.MockableProxyServices).settingsProxy
local ReplicatedFirst_upvr = require(Parent_upvr.MockableProxyServices).ReplicatedFirst
local LoggingProtocol_upvr = require(Parent_upvr.LoggingProtocol)
return function(arg1, arg2) -- Line 195
	--[[ Upvalues[32]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: var20_upvw (read and write)
		[3]: var21_upvw (read and write)
		[4]: var22_upvw (read and write)
		[5]: var96_upvw (read and write)
		[6]: GenerateDevGUIBlackoutCurtain_result1_upvw (read and write)
		[7]: GenerateDevGUIBlackoutCurtain_upvr (readonly)
		[8]: var32_upvw (read and write)
		[9]: var77_upvw (read and write)
		[10]: var78_upvw (read and write)
		[11]: Parent_upvr (readonly)
		[12]: LoadingScreenReducer_upvr (readonly)
		[13]: LoadingScreen_upvr (readonly)
		[14]: UiModeStyleProvider_upvr (readonly)
		[15]: Constants_upvr (readonly)
		[16]: CoreGui_upvr (readonly)
		[17]: RunService_upvr (readonly)
		[18]: var87_upvw (read and write)
		[19]: waitProxy_upvr (readonly)
		[20]: var24_upvw (read and write)
		[21]: var88_upvw (read and write)
		[22]: SplashScreenManager_upvr (readonly)
		[23]: ExperienceLoadingScript_upvr (readonly)
		[24]: var90_upvw (read and write)
		[25]: Players_upvr (readonly)
		[26]: var92_upvw (read and write)
		[27]: game_upvr (readonly)
		[28]: VRService_upvr (readonly)
		[29]: IsVRAppBuild_upvr (readonly)
		[30]: settingsProxy_upvr (readonly)
		[31]: ReplicatedFirst_upvr (readonly)
		[32]: LoggingProtocol_upvr (readonly)
	]]
	if game_DefineFastFlag_result1_upvr then
		var20_upvw = true
		var21_upvw = false
		var22_upvw = false
		var96_upvw = nil
		GenerateDevGUIBlackoutCurtain_result1_upvw = GenerateDevGUIBlackoutCurtain_upvr()
		var32_upvw = nil
		function var77_upvw() -- Line 209
			--[[ Upvalues[1]:
				[1]: GenerateDevGUIBlackoutCurtain_result1_upvw (copied, read and write)
			]]
			if GenerateDevGUIBlackoutCurtain_result1_upvw then
				GenerateDevGUIBlackoutCurtain_result1_upvw.Enabled = false
				GenerateDevGUIBlackoutCurtain_result1_upvw:Destroy()
				GenerateDevGUIBlackoutCurtain_result1_upvw = nil
			end
		end
		function var78_upvw(arg1_6) -- Line 217
			--[[ Upvalues[9]:
				[1]: var32_upvw (copied, read and write)
				[2]: Parent_upvr (copied, readonly)
				[3]: LoadingScreenReducer_upvr (copied, readonly)
				[4]: LoadingScreen_upvr (copied, readonly)
				[5]: UiModeStyleProvider_upvr (copied, readonly)
				[6]: Constants_upvr (copied, readonly)
				[7]: CoreGui_upvr (copied, readonly)
				[8]: RunService_upvr (copied, readonly)
				[9]: GenerateDevGUIBlackoutCurtain_result1_upvw (copied, read and write)
			]]
			var32_upvw = require(Parent_upvr.Roact)
			local Rodux_3 = require(Parent_upvr.Rodux)
			local tbl_5 = {}
			tbl_5.placeId = arg1_6
			RunService_upvr.Heartbeat:Wait()
			GenerateDevGUIBlackoutCurtain_result1_upvw.Enabled = false
			return var32_upvw.mount(var32_upvw.createElement(require(Parent_upvr.RoactRodux).StoreProvider, {
				store = Rodux_3.Store.new(LoadingScreenReducer_upvr, {}, {Rodux_3.thunkMiddleware});
			}, {var32_upvw.createElement(UiModeStyleProvider_upvr, {
				style = {
					themeName = Constants_upvr.ThemeName.Dark;
					fontName = Constants_upvr.FontName.Gotham;
				};
			}, {
				loadingScreenUI = var32_upvw.createElement(LoadingScreen_upvr, tbl_5);
			})}), CoreGui_upvr, "RobloxLoadingGUI")
		end
		function var87_upvw() -- Line 245
			--[[ Upvalues[3]:
				[1]: var32_upvw (copied, read and write)
				[2]: waitProxy_upvr (copied, readonly)
				[3]: var24_upvw (copied, read and write)
			]]
			if var32_upvw then
				waitProxy_upvr(0.6)
				if var24_upvw ~= nil then
					var32_upvw.unmount(var24_upvw)
					var24_upvw = nil
				end
			end
		end
		function var88_upvw(arg1_7) -- Line 256
			--[[ Upvalues[6]:
				[1]: var20_upvw (copied, read and write)
				[2]: var87_upvw (copied, read and write)
				[3]: SplashScreenManager_upvr (copied, readonly)
				[4]: var96_upvw (copied, read and write)
				[5]: GenerateDevGUIBlackoutCurtain_result1_upvw (copied, read and write)
				[6]: ExperienceLoadingScript_upvr (copied, readonly)
			]]
			var20_upvw = false
			var87_upvw()
			SplashScreenManager_upvr.initialize(arg1_7 / 2, game:GetFastInt("FPSAwareSplashScreenTimeout"), arg1_7)
			SplashScreenManager_upvr.addStatusChangeListener(function(arg1_8) -- Line 262
				--[[ Upvalues[2]:
					[1]: var20_upvw (copied, read and write)
					[2]: var96_upvw (copied, read and write)
				]]
				var20_upvw = arg1_8
				if var20_upvw and var96_upvw then
					var96_upvw()
				end
			end)
			GenerateDevGUIBlackoutCurtain_result1_upvw.Enabled = true
			require(ExperienceLoadingScript_upvr.LoadingScreen3D).Parent = GenerateDevGUIBlackoutCurtain_result1_upvw
		end
		function var90_upvw() -- Line 275
			--[[ Upvalues[1]:
				[1]: Players_upvr (copied, readonly)
			]]
			local var91
			if var91 then
				var91 = Players_upvr.LocalPlayer
				if not var91 then
					Players_upvr:GetPropertyChangedSignal("LocalPlayer"):Wait()
					var91 = Players_upvr.LocalPlayer
				end
				if not var91.Character then
					var91.CharacterAdded:Wait()
				end
			end
		end
		function var92_upvw() -- Line 288
			--[[ Upvalues[4]:
				[1]: game_upvr (copied, readonly)
				[2]: var90_upvw (copied, read and write)
				[3]: var21_upvw (copied, read and write)
				[4]: var96_upvw (copied, read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [11] 11. Error Block 3 start (CF ANALYSIS FAILED)
			var96_upvw()
			do
				return
			end
			-- KONSTANTERROR: [11] 11. Error Block 3 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [14] 14. Error Block 4 start (CF ANALYSIS FAILED)
			local var94_upvw
			var94_upvw = game_upvr.Loaded:Connect(function() -- Line 297
				--[[ Upvalues[4]:
					[1]: var94_upvw (read and write)
					[2]: var90_upvw (copied, read and write)
					[3]: var21_upvw (copied, read and write)
					[4]: var96_upvw (copied, read and write)
				]]
				var94_upvw:Disconnect()
				var94_upvw = nil
				var90_upvw()
				var21_upvw = true
				if var96_upvw then
					var96_upvw()
				end
			end)
			-- KONSTANTERROR: [14] 14. Error Block 4 end (CF ANALYSIS FAILED)
		end
	end
	if VRService_upvr.VREnabled or IsVRAppBuild_upvr() then
		var88_upvw(arg2)
	else
		VRService_upvr:GetPropertyChangedSignal("VREnabled"):Connect(function() -- Line 314
			--[[ Upvalues[3]:
				[1]: VRService_upvr (copied, readonly)
				[2]: var88_upvw (copied, read and write)
				[3]: arg2 (readonly)
			]]
			if VRService_upvr.VREnabled then
				var88_upvw(arg2)
			end
		end)
		var24_upvw = var78_upvw(arg1)
	end
	function var96_upvw() -- Line 324
		--[[ Upvalues[9]:
			[1]: VRService_upvr (copied, readonly)
			[2]: var20_upvw (copied, read and write)
			[3]: settingsProxy_upvr (copied, readonly)
			[4]: var77_upvw (copied, read and write)
			[5]: ReplicatedFirst_upvr (copied, readonly)
			[6]: LoggingProtocol_upvr (copied, readonly)
			[7]: var21_upvw (copied, read and write)
			[8]: var22_upvw (copied, read and write)
			[9]: var87_upvw (copied, read and write)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [16] 12. Error Block 12 start (CF ANALYSIS FAILED)
		var77_upvw()
		ReplicatedFirst_upvr:SetDefaultLoadingGuiRemoved()
		LoggingProtocol_upvr.default:logEventOnce("first_experience_interactive")
		do
			return
		end
		-- KONSTANTERROR: [16] 12. Error Block 12 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [30] 23. Error Block 13 start (CF ANALYSIS FAILED)
		if var21_upvw or var22_upvw then
			var87_upvw()
			var77_upvw()
			ReplicatedFirst_upvr:SetDefaultLoadingGuiRemoved()
			LoggingProtocol_upvr.default:logEventOnce("first_experience_interactive")
		end
		-- KONSTANTERROR: [30] 23. Error Block 13 end (CF ANALYSIS FAILED)
	end
	ReplicatedFirst_upvr.FinishedReplicating:Connect(var92_upvw)
	if ReplicatedFirst_upvr:IsFinishedReplicating() then
		var92_upvw()
	end
	ReplicatedFirst_upvr.RemoveDefaultLoadingGuiSignal:Connect(function() -- Line 354
		--[[ Upvalues[2]:
			[1]: var22_upvw (copied, read and write)
			[2]: var96_upvw (copied, read and write)
		]]
		var22_upvw = true
		if var96_upvw then
			var96_upvw()
		end
	end)
	if ReplicatedFirst_upvr:IsDefaultLoadingGuiRemoved() then
		var22_upvw = true
		if var96_upvw then
			var96_upvw()
		end
	end
end