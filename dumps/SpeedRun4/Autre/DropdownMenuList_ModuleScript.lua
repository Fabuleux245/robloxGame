-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:07
-- Luau version 6, Types version 3
-- Time taken: 0.005236 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("DropdownMenuList")
any_extend_result1.validateProps = t.strictInterface({
	buttonProps = require(script.Parent.validateButtonProps);
	zIndex = t.optional(t.integer);
	open = t.boolean;
	showDropShadow = t.boolean;
	fixedListHeight = t.optional(t.number);
	openPositionY = t.UDim;
	closeBackgroundVisible = t.optional(t.boolean);
	screenSize = t.Vector2;
	onDismiss = t.optional(t.callback);
	buttonSize = t.UDim2;
	menuListBackground = t.optional(require(Parent.Core.Style.Validator.validateColorInfo));
	enableTokenOverride = t.optional(t.boolean);
	selectionOrder = t.optional(t.number);
	menuPositionFixed = t.optional(t.boolean);
})
any_extend_result1.defaultProps = {
	zIndex = 2;
	closeBackgroundVisible = false;
	showDropShadow = false;
	fixedListHeight = nil;
	menuListBackground = nil;
	enableTokenOverride = false;
	menuPositionFixed = false;
}
function any_extend_result1.init(arg1) -- Line 50
	arg1:setState({
		absolutePosition = Vector2.new(0, 0);
		visible = false;
	})
	function arg1.setAbsolutePosition(arg1_2) -- Line 56
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			absolutePosition = arg1_2.AbsolutePosition;
		})
	end
	function arg1.dismissMenu() -- Line 62
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.state.visible then
			arg1:setState({
				visible = false;
			})
			arg1.props.onDismiss()
		end
	end
end
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local GuiService_upvr = game:GetService("GuiService")
local BaseMenu_upvr = require(script.Parent.BaseMenu)
function any_extend_result1.render(arg1) -- Line 72
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: GuiService_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: BaseMenu_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_3) -- Line 73
		--[[ Upvalues[4]:
			[1]: GuiService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: BaseMenu_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local any_GetGuiInset_result1, any_GetGuiInset_result2 = GuiService_upvr:GetGuiInset()
		local var19 = arg1.state.absolutePosition + any_GetGuiInset_result1
		local var20 = 1
		local var21
		if arg1.props.screenSize.Y / 2 < arg1.state.absolutePosition.Y then
			var20 = -1
			var21 = UDim.new(0, 0)
		end
		if var20 == 1 then
			local _ = var21 + arg1.props.openPositionY
		else
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local var23
		if arg1.props.screenSize.X < 640 and not arg1.props.menuPositionFixed then
			var23 = UDim2.new(-arg1.props.buttonSize.X.Scale / 2, -var19.X + arg1.props.screenSize.X / 2 - arg1.props.buttonSize.X.Offset / 2, 0, arg1.props.screenSize.Y - var19.Y - any_GetGuiInset_result2.Y - 24)
		end
		local Transparency = arg1_3.Theme.Overlay.Transparency
		if not arg1.props.closeBackgroundVisible then
			Transparency = 1
		end
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
			Visible = arg1.state.visible;
			ZIndex = arg1.props.zIndex;
			[Roact_upvr.Change.AbsolutePosition] = arg1.setAbsolutePosition;
		}, {
			Background = Roact_upvr.createElement("TextButton", {
				ZIndex = 1;
				Text = "";
				BorderSizePixel = 0;
				BackgroundColor3 = arg1_3.Theme.Overlay.Color;
				BackgroundTransparency = Transparency;
				AutoButtonColor = false;
				Selectable = false;
				Position = UDim2.fromOffset(-var19.X, -var19.Y);
				Size = UDim2.fromOffset(arg1.props.screenSize.X, arg1.props.screenSize.Y);
				[Roact_upvr.Event.Activated] = arg1.dismissMenu;
			});
			PositionFrame = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(1, 1);
				Position = var23;
				ZIndex = 2;
			}, {
				BaseMenu = Roact_upvr.createElement(BaseMenu_upvr, {
					buttonProps = arg1.props.buttonProps;
					showDropShadow = arg1.props.showDropShadow;
					fixedListHeight = arg1.props.fixedListHeight;
					width = arg1.props.buttonSize.X;
					position = UDim2.fromScale(0, 0);
					anchorPoint = Vector2.new(0, 1);
					background = arg1.props.menuListBackground;
					enableTokenOverride = arg1.props.enableTokenOverride;
					selectionOrder = arg1.props.selectionOrder;
				});
			});
		})
	end)
end
function any_extend_result1.didMount(arg1) -- Line 155
	if arg1.props.open then
		arg1:setState({
			visible = true;
		})
	end
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 163
	if arg1.props.open ~= arg2.open then
		if arg1.props.open then
			arg1:setState({
				visible = true;
			})
			return
		end
		arg1:setState({
			visible = false;
		})
	end
end
return any_extend_result1