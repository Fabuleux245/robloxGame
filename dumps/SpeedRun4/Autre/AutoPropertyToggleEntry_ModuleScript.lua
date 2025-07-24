-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:21
-- Luau version 6, Types version 3
-- Time taken: 0.002077 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("AutoPropertyToggleEntry")
any_extend_result1.validateProps = t.strictInterface({
	instance = t.Instance;
	valueKey = t.string;
	lockedToOff = t.optional(t.boolean);
	onValue = t.optional(t.any);
	offValue = t.optional(t.any);
	labelKey = t.string;
	LayoutOrder = t.integer;
	subtextEnabled = t.optional(t.boolean);
	subtextKey = t.optional(t.string);
})
any_extend_result1.defaultProps = {
	onValue = true;
	offValue = false;
	lockedToOff = false;
	subtextEnabled = false;
	subtextKey = "";
}
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local Constants_upvr = require(Parent.Resources.Constants)
function any_extend_result1.init(arg1, arg2) -- Line 37
	--[[ Upvalues[2]:
		[1]: SendAnalytics_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	arg1.changeEvent = arg2.instance:GetPropertyChangedSignal(arg2.valueKey)
	local tbl_2 = {}
	local var11 = not arg2.lockedToOff
	if var11 then
		if arg2.instance[arg2.valueKey] ~= arg2.onValue then
			var11 = false
		else
			var11 = true
		end
	end
	tbl_2.checked = var11
	arg1:setState(tbl_2)
	function arg1.onExternalChange() -- Line 45
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg1 (readonly)
		]]
		local tbl = {}
		local var14
		if arg2.instance[arg2.valueKey] ~= arg2.onValue then
			var14 = false
		else
			var14 = true
		end
		tbl.checked = var14
		arg1:setState(tbl)
	end
	function arg1.onToggled() -- Line 52
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: SendAnalytics_upvr (copied, readonly)
			[4]: Constants_upvr (copied, readonly)
		]]
		local var16
		if var16 then
		else
			if arg2.instance[arg2.valueKey] ~= arg2.onValue then
				var16 = false
			else
				var16 = true
			end
			if var16 then
				arg2.instance[arg2.valueKey] = arg2.offValue
			else
				arg2.instance[arg2.valueKey] = arg2.onValue
			end
			SendAnalytics_upvr(Constants_upvr.AnalyticsSettingsChangeName, nil, {}, true)
		end
	end
end
local ToggleEntry_upvr = require(script.Parent.ToggleEntry)
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
function any_extend_result1.render(arg1) -- Line 69
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ToggleEntry_upvr (readonly)
		[3]: ExternalEventConnection_upvr (readonly)
	]]
	local props = arg1.props
	return Roact_upvr.createFragment({
		Toggle = Roact_upvr.createElement(ToggleEntry_upvr, {
			checked = arg1.state.checked;
			lockedToOff = props.lockedToOff;
			labelKey = props.labelKey;
			LayoutOrder = props.LayoutOrder;
			onToggled = arg1.onToggled;
			subtextEnabled = props.subtextEnabled;
			subtextKey = props.subtextKey;
		});
		Listener = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = arg1.changeEvent;
			callback = arg1.onExternalChange;
		});
	})
end
return any_extend_result1