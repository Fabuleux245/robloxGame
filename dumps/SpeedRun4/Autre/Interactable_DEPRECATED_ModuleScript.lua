-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:57
-- Luau version 6, Types version 3
-- Time taken: 0.001033 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1_upvr = Roact_upvr.PureComponent:extend("Interactable")
any_extend_result1_upvr.validateProps = t.interface({
	isDisabled = t.optional(t.boolean);
	onStateChanged = t.callback;
})
local ImageSetComponent_upvr = require(Parent_2.Core.ImageSet.ImageSetComponent)
local Controllable_upvr = require(Parent_2.Core.Control.Controllable)
function any_extend_result1_upvr.render(arg1) -- Line 33
	--[[ Upvalues[3]:
		[1]: ImageSetComponent_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Controllable_upvr (readonly)
	]]
	local module = {
		onStateChanged = arg1.props.onStateChanged;
		isDisabled = arg1.props.isDisabled;
		userInteractionEnabled = arg1.props.userInteractionEnabled;
	}
	local tbl = {
		component = ImageSetComponent_upvr.Button;
		props = arg1.props;
	}
	local var11 = arg1.props[Roact_upvr.Children]
	if not var11 then
		var11 = {}
	end
	tbl.children = var11
	module.controlComponent = tbl
	return Roact_upvr.createElement(Controllable_upvr, module)
end
local Cryo_upvr = require(Parent.Cryo)
return Roact_upvr.forwardRef(function(arg1, arg2) -- Line 48
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: any_extend_result1_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local module_2 = {}
	module_2.forwardedRef = arg2
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, module_2))
end)