-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:23
-- Luau version 6, Types version 3
-- Time taken: 0.004627 seconds

local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local tbl_upvr = {UserGameSettings_upvr:GetPropertyChangedSignal("GamepadCameraSensitivity"), UserGameSettings_upvr:GetPropertyChangedSignal("MouseSensitivity"), UserGameSettings_upvr:GetPropertyChangedSignal("MouseSensitivityFirstPerson"), UserGameSettings_upvr:GetPropertyChangedSignal("MouseSensitivityThirdPerson")}
local Parent = script.Parent.Parent.Parent
local function _(arg1) -- Line 30, Named "guiToEngineSensitivity"
	local var7
	if arg1 <= 5 then
		var7 = 0.198 * arg1 + 0.01
	else
		var7 = 0.6 * arg1 - 2
	end
	return math.clamp(var7, 0, 10)
end
local function _(arg1) -- Line 41, Named "engineToGuiSensitivity"
	local var8
	if arg1 <= 1 then
		var8 = (arg1 - 0.01) / 0.198
	else
		var8 = (arg1 + 2) / 0.6
	end
	return math.clamp(math.floor(var8 / 0.01 + 0.5) * 0.01, 0, 10)
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("CameraSensitivityEntry")
any_extend_result1.validateProps = t.strictInterface({
	LayoutOrder = t.integer;
	canCaptureFocus = t.optional(t.boolean);
	isMenuOpen = t.optional(t.boolean);
})
function any_extend_result1.init(arg1) -- Line 62
	--[[ Upvalues[1]:
		[1]: UserGameSettings_upvr (readonly)
	]]
	function arg1.onSensitivityChanged() -- Line 63
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: UserGameSettings_upvr (copied, readonly)
		]]
		arg1:setState({
			engineSensitivity = UserGameSettings_upvr.MouseSensitivityFirstPerson.X;
		})
	end
	arg1.onSensitivityChanged()
end
local SliderEntry_upvr = require(script.Parent.SliderEntry)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local Constants_upvr = require(Parent.Resources.Constants)
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
function any_extend_result1.render(arg1) -- Line 73
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: SliderEntry_upvr (readonly)
		[3]: UserGameSettings_upvr (readonly)
		[4]: SendAnalytics_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: tbl_upvr (readonly)
		[7]: ExternalEventConnection_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	local tbl = {
		LayoutOrder = arg1.props.LayoutOrder;
		labelKey = "CoreScripts.InGameMenu.GameSettings.CameraSensitivity";
	}
	local engineSensitivity = arg1.state.engineSensitivity
	local var28
	if engineSensitivity <= 1 then
		var28 = (engineSensitivity - 0.01) / 0.198
	else
		var28 = (engineSensitivity + 2) / 0.6
	end
	tbl.value = math.clamp(math.floor(var28 / 0.01 + 0.5) * 0.01, 0, 10)
	tbl.min = 0
	tbl.max = 10
	tbl.stepInterval = 1
	tbl.keyboardInputStepInterval = 0.01
	function tbl.valueChanged(arg1_2) -- Line 84
		--[[ Upvalues[3]:
			[1]: UserGameSettings_upvr (copied, readonly)
			[2]: SendAnalytics_upvr (copied, readonly)
			[3]: Constants_upvr (copied, readonly)
		]]
		local var29
		if arg1_2 <= 5 then
			var29 = 0.198 * arg1_2 + 0.01
		else
			var29 = 0.6 * arg1_2 - 2
		end
		local clamped = math.clamp(var29, 0, 10)
		local vector2 = Vector2.new(clamped, clamped)
		UserGameSettings_upvr.MouseSensitivityFirstPerson = vector2
		UserGameSettings_upvr.MouseSensitivityThirdPerson = vector2
		SendAnalytics_upvr(Constants_upvr.AnalyticsSettingsChangeName, nil, {}, true)
	end
	tbl.canCaptureFocus = arg1.props.canCaptureFocus
	tbl.isMenuOpen = arg1.props.isMenuOpen
	module.CameraSensitivityMouseSlider = Roact_upvr.createElement(SliderEntry_upvr, tbl)
	for _, v in ipairs(tbl_upvr) do
		module[tostring(v).."CameraSensitivityControlConnection"] = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = v;
			callback = arg1.onSensitivityChanged;
		})
	end
	return Roact_upvr.createFragment(module)
end
return any_extend_result1