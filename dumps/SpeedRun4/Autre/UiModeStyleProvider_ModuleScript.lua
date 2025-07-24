-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:46
-- Luau version 6, Types version 3
-- Time taken: 0.004011 seconds

local Parent = script:FindFirstAncestor("Style").Parent
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local Theme = Foundation.Enums.Theme
local tbl_upvr = {
	dark = Theme.Dark;
	light = Theme.Light;
}
local LoginStatus_upvr = require(Parent.RobloxAppEnums).LoginStatus
local function selectUserLoggedIn_upvr(arg1) -- Line 52, Named "selectUserLoggedIn"
	--[[ Upvalues[1]:
		[1]: LoginStatus_upvr (readonly)
	]]
	if arg1 == nil or arg1.AuthenticationStatus == nil then
		return true
	end
	if arg1.AuthenticationStatus.status ~= LoginStatus_upvr.LOGGED_IN then
	else
	end
	return true
end
local useDeviceType_upvr = require(Parent.RobloxAppHooks).useDeviceType
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("DebugLuaAppEnableTokenScale", false)
local useCurrentCamera_upvr = require(Parent.RobloxAppHooks).useCurrentCamera
local useProperty_upvr = require(Parent.GuiObjectUtils).useProperty
local game_DefineFastInt_result1_upvr = game:DefineFastInt("DebugLuaAppDesignScreenWidth", 960)
local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local FFlagLuaAppSignUpColorExperiment_upvr = require(Parent.SharedFlags).FFlagLuaAppSignUpColorExperiment
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local RoactAppExperiment_upvr = require(Parent.RoactAppExperiment)
local AppBtidLayers_upvr = require(Parent.ExperimentLayers).AppBtidLayers
local game_DefineFastString_result1_upvr = game:DefineFastString("LuaAppAuthenticationStylingExperimentKey", "FoundationColorsVariant")
local FoundationProvider_upvr = Foundation.FoundationProvider
local AppStyleProvider_upvr = require(Parent.UIBlox).App.Style.AppStyleProvider
local function UiModeStyleProvider_upvr(arg1) -- Line 59, Named "UiModeStyleProvider"
	--[[ Upvalues[18]:
		[1]: useDeviceType_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: useCurrentCamera_upvr (readonly)
		[4]: useProperty_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: game_DefineFastInt_result1_upvr (readonly)
		[7]: UserGameSettings_upvr (readonly)
		[8]: Cryo_upvr (readonly)
		[9]: dependencyArray_upvr (readonly)
		[10]: FFlagLuaAppSignUpColorExperiment_upvr (readonly)
		[11]: useSelector_upvr (readonly)
		[12]: selectUserLoggedIn_upvr (readonly)
		[13]: RoactAppExperiment_upvr (readonly)
		[14]: AppBtidLayers_upvr (readonly)
		[15]: game_DefineFastString_result1_upvr (readonly)
		[16]: FoundationProvider_upvr (readonly)
		[17]: tbl_upvr (readonly)
		[18]: AppStyleProvider_upvr (readonly)
	]]
	local var8_result1_upvr = useDeviceType_upvr()
	local var23_upvw
	local var24
	if game_DefineFastFlag_result1_upvr then
		local useProperty_upvr_result1_upvr = useProperty_upvr(useCurrentCamera_upvr(), "ViewportSize")
		local any_useState_result1, any_useState_result2_2_upvw = React_upvr.useState(1)
		var23_upvw = any_useState_result1
		React_upvr.useEffect(function() -- Line 68
			--[[ Upvalues[3]:
				[1]: useProperty_upvr_result1_upvr (readonly)
				[2]: game_DefineFastInt_result1_upvr (copied, readonly)
				[3]: any_useState_result2_2_upvw (read and write)
			]]
			if game_DefineFastInt_result1_upvr < useProperty_upvr_result1_upvr.X then
				any_useState_result2_2_upvw(useProperty_upvr_result1_upvr.X / game_DefineFastInt_result1_upvr)
			end
		end, {useProperty_upvr_result1_upvr})
	end
	useProperty_upvr_result1_upvr = React_upvr
	useProperty_upvr_result1_upvr = {}
	local var30 = useProperty_upvr_result1_upvr
	var30.preferredTransparency = UserGameSettings_upvr.PreferredTransparency
	var30.reducedMotion = UserGameSettings_upvr.ReducedMotion
	var30.preferredTextSize = UserGameSettings_upvr.PreferredTextSize
	local any_useState_result1_upvr, any_useState_result2_3_upvr = useProperty_upvr_result1_upvr.useState(var30)
	React_upvr.useEffect(function() -- Line 81
		--[[ Upvalues[2]:
			[1]: any_useState_result2_3_upvr (readonly)
			[2]: UserGameSettings_upvr (copied, readonly)
		]]
		local function updateSettings() -- Line 82
			--[[ Upvalues[2]:
				[1]: any_useState_result2_3_upvr (copied, readonly)
				[2]: UserGameSettings_upvr (copied, readonly)
			]]
			any_useState_result2_3_upvr({
				preferredTransparency = UserGameSettings_upvr.PreferredTransparency;
				reducedMotion = UserGameSettings_upvr.ReducedMotion;
				preferredTextSize = UserGameSettings_upvr.PreferredTextSize;
			})
		end
		local any_Connect_result1_upvr_3 = UserGameSettings_upvr:GetPropertyChangedSignal("PreferredTransparency"):Connect(updateSettings)
		local any_Connect_result1_upvr_2 = UserGameSettings_upvr:GetPropertyChangedSignal("ReducedMotion"):Connect(updateSettings)
		local any_Connect_result1_upvr = UserGameSettings_upvr:GetPropertyChangedSignal("PreferredTextSize"):Connect(updateSettings)
		return function() -- Line 96
			--[[ Upvalues[3]:
				[1]: any_Connect_result1_upvr_3 (readonly)
				[2]: any_Connect_result1_upvr_2 (readonly)
				[3]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr_3:Disconnect()
			any_Connect_result1_upvr_2:Disconnect()
			any_Connect_result1_upvr:Disconnect()
		end
	end, {})
	local style_upvr = arg1.style
	local function var40() -- Line 104
		--[[ Upvalues[6]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: style_upvr (readonly)
			[3]: var8_result1_upvr (readonly)
			[4]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[5]: any_useState_result1_upvr (readonly)
			[6]: var23_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local module_2 = {}
		local deviceType = style_upvr.deviceType
		if not deviceType then
			deviceType = var8_result1_upvr
		end
		module_2.deviceType = deviceType
		local module_3 = {}
		if game_DefineFastFlag_result1_upvr then
			local tbl = {
				scale = var23_upvw;
			}
		else
		end
		module_3.settings = any_useState_result1_upvr
		return Cryo_upvr.Dictionary.join(module_2, style_upvr, module_3)
	end
	local any_useMemo_result1 = React_upvr.useMemo(var40, dependencyArray_upvr(style_upvr, var8_result1_upvr, any_useState_result1_upvr, var23_upvw))
	var40 = nil
	local var46 = var40
	if FFlagLuaAppSignUpColorExperiment_upvr then
		if useSelector_upvr(selectUserLoggedIn_upvr) then
			var46 = false
		else
			var46 = RoactAppExperiment_upvr.useBrowserTrackerExperiment({AppBtidLayers_upvr.AuthenticationStylingLayer}, function(arg1_2) -- Line 125
				--[[ Upvalues[2]:
					[1]: AppBtidLayers_upvr (copied, readonly)
					[2]: game_DefineFastString_result1_upvr (copied, readonly)
				]]
				local var49 = arg1_2[AppBtidLayers_upvr.AuthenticationStylingLayer]
				if var49 == nil then
					return false
				end
				if tonumber(var49[game_DefineFastString_result1_upvr]) == 1 then
					return true
				end
				return false
			end)
		end
	end
	local module = {
		style = any_useMemo_result1;
	}
	if FFlagLuaAppSignUpColorExperiment_upvr then
		var24 = var46
	else
		var24 = nil
	end
	module.DONOTUSE_disableColorMapping = var24
	var24 = arg1.children
	return React_upvr.createElement(FoundationProvider_upvr, {
		device = any_useMemo_result1.deviceType;
		theme = tbl_upvr[any_useMemo_result1.themeName:lower()];
		preferences = any_useMemo_result1.settings;
		DONOTUSE_colorUpdate = true;
	}, React_upvr.createElement(AppStyleProvider_upvr, module, var24))
end
local ThemeContext_upvr = require(script.Parent.ThemeContext)
return function(arg1) -- Line 163, Named "ThemeProvider"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: ThemeContext_upvr (readonly)
		[4]: UiModeStyleProvider_upvr (readonly)
	]]
	local any_useState_result1_2, any_useState_result2 = React_upvr.useState(arg1.style.themeName)
	local clone = table.clone(arg1)
	clone.style = Cryo_upvr.Dictionary.join(clone.style, {
		themeName = any_useState_result1_2;
	})
	return React_upvr.createElement(ThemeContext_upvr.Provider, {
		value = {
			theme = any_useState_result1_2;
			setTheme = any_useState_result2;
		};
	}, React_upvr.createElement(UiModeStyleProvider_upvr, clone))
end