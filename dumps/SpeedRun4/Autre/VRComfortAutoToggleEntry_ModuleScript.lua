-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:30
-- Luau version 6, Types version 3
-- Time taken: 0.003905 seconds

local UserGameSettings_upvr = UserSettings():GetService("UserGameSettings")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("VRComfortAutoToggleEntry")
any_extend_result1.validateProps = t.strictInterface({
	customValueKey = t.string;
	derivedValueKey = t.string;
	labelKey = t.string;
	LayoutOrder = t.integer;
	checkedValue = t.optional(t.any);
})
any_extend_result1.defaultProps = {
	checkedValue = true;
}
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local Constants_upvr = require(Parent.Resources.Constants)
function any_extend_result1.init(arg1, arg2) -- Line 45
	--[[ Upvalues[3]:
		[1]: UserGameSettings_upvr (readonly)
		[2]: SendAnalytics_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	arg1.derivedValueChangeEvent = UserGameSettings_upvr:GetPropertyChangedSignal(arg2.derivedValueKey)
	local tbl = {}
	local var12
	if UserGameSettings_upvr[arg2.derivedValueKey] ~= arg2.checkedValue then
		var12 = false
	else
		var12 = true
	end
	tbl.checked = var12
	var12 = UserGameSettings_upvr.VRComfortSetting
	tbl.vrComfortSetting = var12
	arg1:setState(tbl)
	function arg1.onExternalChange() -- Line 53
		--[[ Upvalues[3]:
			[1]: UserGameSettings_upvr (copied, readonly)
			[2]: arg2 (readonly)
			[3]: arg1 (readonly)
		]]
		local tbl_2 = {}
		local var15
		if UserGameSettings_upvr[arg2.derivedValueKey] ~= arg2.checkedValue then
			var15 = false
		else
			var15 = true
		end
		tbl_2.checked = var15
		arg1:setState(tbl_2)
	end
	function arg1.onToggled() -- Line 60
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: UserGameSettings_upvr (copied, readonly)
			[3]: arg2 (readonly)
			[4]: SendAnalytics_upvr (copied, readonly)
			[5]: Constants_upvr (copied, readonly)
		]]
		local vrComfortSetting = arg1.state.vrComfortSetting
		if vrComfortSetting == Enum.VRComfortSetting.Custom then
			if UserGameSettings_upvr[arg2.customValueKey] ~= arg2.checkedValue then
				vrComfortSetting = false
			else
				vrComfortSetting = true
			end
			if vrComfortSetting then
				UserGameSettings_upvr[arg2.customValueKey] = not arg2.checkedValue
			else
				UserGameSettings_upvr[arg2.customValueKey] = arg2.checkedValue
			end
			SendAnalytics_upvr(Constants_upvr.AnalyticsSettingsChangeName, nil, {}, true)
		end
	end
end
local ToggleEntry_upvr = require(script.Parent.ToggleEntry)
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
local VRComfortSetting_changed_signal_upvr = UserGameSettings_upvr:GetPropertyChangedSignal("VRComfortSetting")
function any_extend_result1.render(arg1) -- Line 73
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: ToggleEntry_upvr (readonly)
		[3]: ExternalEventConnection_upvr (readonly)
		[4]: VRComfortSetting_changed_signal_upvr (readonly)
		[5]: UserGameSettings_upvr (readonly)
	]]
	local props = arg1.props
	local module = {}
	local tbl_3 = {
		checked = arg1.state.checked;
		labelKey = props.labelKey;
		LayoutOrder = props.LayoutOrder;
	}
	local onToggled_2 = arg1.onToggled
	tbl_3.onToggled = onToggled_2
	if arg1.state.vrComfortSetting == Enum.VRComfortSetting.Custom then
		onToggled_2 = false
	else
		onToggled_2 = true
	end
	tbl_3.isDisabled = onToggled_2
	module.Toggle = Roact_upvr.createElement(ToggleEntry_upvr, tbl_3)
	module.DerivedValueListener = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = arg1.derivedValueChangeEvent;
		callback = arg1.onExternalChange;
	})
	module.VRComfortSettingListener = Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = VRComfortSetting_changed_signal_upvr;
		callback = function() -- Line 91, Named "callback"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: UserGameSettings_upvr (copied, readonly)
			]]
			arg1:setState({
				vrComfortSetting = UserGameSettings_upvr.VRComfortSetting;
			})
		end;
	})
	return Roact_upvr.createFragment(module)
end
return any_extend_result1