-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:35
-- Luau version 6, Types version 3
-- Time taken: 0.001728 seconds

local App = script:FindFirstAncestor("App")
local Parent = App.Parent
local Parent_2 = Parent.Parent
local t = require(Parent_2.t)
local Roact_upvr = require(Parent_2.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("PlayerTileButton")
any_extend_result1.validateProps = t.strictInterface({
	buttonHeight = t.optional(t.number);
	buttonWidth = t.optional(t.number);
	outerButtonPadding = t.optional(t.number);
	icon = t.union(t.string, t.table);
	onActivated = t.optional(t.callback);
	isSecondary = t.optional(t.boolean);
	isDisabled = t.optional(t.boolean);
	tileSize = t.optional(t.UDim2);
	mouseEnter = t.optional(t.callback);
	mouseLeave = t.optional(t.callback);
})
any_extend_result1.defaultProps = {
	isSecondary = false;
	isDisabled = false;
	buttonHeight = 36;
	outerButtonPadding = 10;
	tileSize = UDim2.new(0, 150, 0, 150);
}
local ButtonType_upvr = require(App.Button.Enum.ButtonType)
local Button_upvr = require(App.Button.Button)
local ControlState_upvr = require(Parent.Core.Control.Enum.ControlState)
function any_extend_result1.render(arg1) -- Line 39
	--[[ Upvalues[4]:
		[1]: ButtonType_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Button_upvr (readonly)
		[4]: ControlState_upvr (readonly)
	]]
	local var12
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var12 = ButtonType_upvr.Secondary
		return var12
	end
	if not arg1.props.isSecondary or not INLINED() then
		var12 = ButtonType_upvr.PrimarySystem
	end
	local module = {
		buttonType = var12;
		automaticSize = Enum.AutomaticSize.XY;
		position = UDim2.new(1, 0, 1, 0);
		size = UDim2.new(0, arg1.props.tileSize.X.Offset / 2 - arg1.props.outerButtonPadding * 1.5, 0, arg1.props.buttonHeight);
		anchorPoint = Vector2.new(1, 1);
	}
	local onActivated = arg1.props.onActivated
	if not onActivated then
		function onActivated() -- Line 59
		end
	end
	module.onActivated = onActivated
	module.isDisabled = arg1.props.isDisabled
	module.icon = arg1.props.icon
	function module.onStateChanged(arg1_2, arg2) -- Line 62
		--[[ Upvalues[2]:
			[1]: ControlState_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if arg1_2 == ControlState_upvr.Hover then
			arg1.props.mouseEnter()
		elseif arg2 == ControlState_upvr.Hover then
			arg1.props.mouseLeave()
		end
	end
	return Roact_upvr.createElement(Button_upvr, module)
end
return any_extend_result1