-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:01
-- Luau version 6, Types version 3
-- Time taken: 0.002917 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local t = InGameMenuDependencies.t
local Roact_upvr = InGameMenuDependencies.Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("SystemMenuButton")
any_extend_result1.validateProps = t.strictInterface({
	on = t.optional(t.boolean);
	anchorPoint = t.optional(t.Vector2);
	position = t.optional(t.UDim2);
	layoutOrder = t.optional(t.integer);
	onActivated = t.callback;
	onClose = t.callback;
	canCaptureFocus = t.optional(t.boolean);
})
any_extend_result1.defaultProps = {
	on = false;
	canCaptureFocus = false;
}
local GuiService_upvr = game:GetService("GuiService")
function any_extend_result1.tryCaptureFocus(arg1, arg2) -- Line 28
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	if arg1.props.canCaptureFocus and not arg2.canCaptureFocus or arg1.props.canCaptureFocus and arg1.props.on ~= arg2.on and arg1.state.isIconFocused then
		GuiService_upvr.SelectedCoreObject = arg1.iconRef:getValue()
	end
end
function any_extend_result1.init(arg1) -- Line 37
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.iconRef = Roact_upvr.createRef()
	arg1:setState({
		isIconFocused = false;
	})
	function arg1.onIconSelectionGained() -- Line 44
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isIconFocused = true;
		})
	end
	function arg1.onIconSelectionLost() -- Line 50
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isIconFocused = false;
		})
	end
end
function any_extend_result1.didMount(arg1) -- Line 57
	arg1:tryCaptureFocus({
		canCaptureFocus = false;
	})
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 62
	arg1:tryCaptureFocus(arg2)
end
local CloseMenuButton_upvr = require(script.Parent.CloseMenuButton)
local GameIconButton_upvr = require(script.Parent.GameIconButton)
function any_extend_result1.render(arg1) -- Line 66
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: CloseMenuButton_upvr (readonly)
		[3]: GameIconButton_upvr (readonly)
	]]
	if arg1.props.on then
		return Roact_upvr.createElement(CloseMenuButton_upvr, {
			onActivated = arg1.props.onClose;
			layoutOrder = arg1.props.layoutOrder;
			AnchorPoint = arg1.props.anchorPoint;
			Position = arg1.props.position;
			onSelectionGained = arg1.onIconSelectionGained;
			onSelectionLost = arg1.onIconSelectionLost;
			[Roact_upvr.Ref] = arg1.iconRef;
		})
	end
	return Roact_upvr.createElement(GameIconButton_upvr, {
		onActivated = arg1.props.onActivated;
		layoutOrder = arg1.props.layoutOrder;
		anchorPoint = arg1.props.anchorPoint;
		position = arg1.props.position;
		onSelectionGained = arg1.onIconSelectionGained;
		onSelectionLost = arg1.onIconSelectionLost;
		[Roact_upvr.Ref] = arg1.iconRef;
	})
end
return any_extend_result1