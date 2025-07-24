-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:06
-- Luau version 6, Types version 3
-- Time taken: 0.009515 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local MenuDirection_upvr = require(script.Parent.MenuDirection)
local validateMotorOptionProps = require(script.Parent.validateMotorOptionProps)
local tbl_upvr = {
	open = {
		targetValue = 1;
		springParams = {
			frequency = 4;
			dampingRatio = 1;
		};
	};
	close = {
		targetValue = 0;
		springParams = {
			frequency = 2.6;
			dampingRatio = 1;
		};
	};
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("ContextualMenu")
any_extend_result1.validateProps = t.strictInterface({
	buttonProps = require(script.Parent.validateButtonProps);
	zIndex = t.optional(t.integer);
	open = t.boolean;
	menuDirection = t.optional(MenuDirection_upvr.isEnumValue);
	openPositionY = t.UDim;
	closeBackgroundVisible = t.optional(t.boolean);
	screenSize = t.Vector2;
	stayOnActivated = t.optional(t.boolean);
	onDismiss = t.optional(t.callback);
	setFrameRef = t.optional(t.union(t.callback, t.table));
	setFirstItemRef = t.optional(t.union(t.callback, t.table));
	motorOverrideOptions = t.optional(t.strictInterface({
		motorCallback = t.callback;
		open = validateMotorOptionProps;
		close = validateMotorOptionProps;
	}));
	horizontalAlignment = t.optional(t.enum(Enum.HorizontalAlignment));
	openPositionX = t.optional(t.UDim);
	contextMenuWidthOverride = t.optional(t.UDim);
	anchorPointOverride = t.optional(t.Vector2);
	topElementRounded = t.optional(t.boolean);
	bottomElementRounded = t.optional(t.boolean);
	isElementBackgroundVisible = t.optional(t.boolean);
	isElementDividerVisible = t.optional(t.boolean);
	elementHeight = t.optional(t.number);
	borderCornerRadius = t.optional(t.integer);
	background = t.optional(require(Parent.Core.Style.Validator.validateColorInfo));
	enableTokenOverride = t.optional(t.boolean);
	renderHeader = t.optional(t.callback);
	headerHeight = t.optional(t.number);
	showDropShadow = t.optional(t.boolean);
})
any_extend_result1.defaultProps = {
	menuDirection = MenuDirection_upvr.Up;
	zIndex = 2;
	closeBackgroundVisible = true;
	horizontalAlignment = Enum.HorizontalAlignment.Center;
	openPositionX = UDim.new(0, 0);
}
local Otter_upvr = require(Parent_2.Otter)
function any_extend_result1.init(arg1) -- Line 116
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	arg1.wasDismissed = false
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(0)
	arg1.positionPercentBinding = any_createBinding_result1
	arg1.positionPercentBindingUpdate = any_createBinding_result2
	arg1.motor = Otter_upvr.createSingleMotor(0)
	arg1.motor:onStep(arg1.positionPercentBindingUpdate)
	arg1.motor:onComplete(function() -- Line 123
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.wasDismissed then
			arg1.wasDismissed = false
			if arg1.props.onDismiss then
				arg1.props.onDismiss()
			end
		end
	end)
	arg1.motorType = Otter_upvr.spring
	arg1.motorOptions = tbl_upvr
	if arg1.props.motorOverrideOptions then
		arg1.motorType = arg1.props.motorOverrideOptions.motorCallback
		arg1.motorOptions = arg1.props.motorOverrideOptions
	end
	arg1.state = {
		absoluteSize = Vector2.new(0, 0);
		absolutePosition = Vector2.new(0, 0);
	}
	arg1.visibleBinding = arg1.positionPercentBinding:map(function(arg1_2) -- Line 143
		if arg1_2 == 0 then
		else
		end
		return true
	end)
end
local withStyle_upvr = require(Parent.Core.Style.withStyle)
local GuiService_upvr = game:GetService("GuiService")
local BaseMenu_upvr = require(script.Parent.BaseMenu)
function any_extend_result1.render(arg1) -- Line 148
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: MenuDirection_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: BaseMenu_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_3) -- Line 149
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: MenuDirection_upvr (copied, readonly)
			[3]: GuiService_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: BaseMenu_upvr (copied, readonly)
		]]
		local var26 = 0.5
		local udim_2 = UDim.new(1, -24)
		local var28_upvr = 0
		local udim = UDim.new(var28_upvr, 0)
		local var30
		if 640 >= var30 then
			var28_upvr = false
		else
			var28_upvr = true
		end
		if var28_upvr then
			var30 = UDim.new(0, 300)
			udim_2 = var30
			var30 = arg1.props
			udim = var30.openPositionX
			var30 = arg1.props.horizontalAlignment
			if var30 == Enum.HorizontalAlignment.Left then
				var26 = 0
			else
				var30 = arg1.props.horizontalAlignment
				if var30 == Enum.HorizontalAlignment.Right then
					var26 = 1
				end
			end
		end
		var30 = 0
		if arg1.props.menuDirection == MenuDirection_upvr.Up then
			var30 = 1
		end
		local Transparency = arg1_3.Theme.Overlay.Transparency
		if not arg1.props.closeBackgroundVisible then
			Transparency = 1
		end
		local anchorPointOverride = arg1.props.anchorPointOverride
		if not anchorPointOverride then
			anchorPointOverride = Vector2.new(var26, var30)
		end
		local any_GetGuiInset_result1, any_GetGuiInset_result2 = GuiService_upvr:GetGuiInset()
		local var35 = arg1.state.absolutePosition + any_GetGuiInset_result1
		return Roact_upvr.createElement("Frame", {
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
			Visible = arg1.visibleBinding;
			ZIndex = arg1.props.zIndex;
			[Roact_upvr.Change.AbsoluteSize] = function(arg1_4) -- Line 190
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setState({
					absoluteSize = arg1_4.AbsoluteSize;
				})
			end;
			[Roact_upvr.Change.AbsolutePosition] = function(arg1_5) -- Line 196
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				arg1:setState({
					absolutePosition = arg1_5.AbsolutePosition;
				})
			end;
		}, {
			Background = Roact_upvr.createElement("TextButton", {
				ZIndex = 1;
				Text = "";
				BorderSizePixel = 0;
				BackgroundColor3 = arg1_3.Theme.Overlay.Color;
				BackgroundTransparency = Transparency;
				AutoButtonColor = false;
				Selectable = false;
				Position = UDim2.fromOffset(-var35.X, -var35.Y);
				Size = UDim2.fromOffset(arg1.props.screenSize.X, arg1.props.screenSize.Y);
				[Roact_upvr.Event.Activated] = function() -- Line 214
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					if not arg1.wasDismissed then
						arg1.wasDismissed = true
						arg1.motor:setGoal(arg1.motorType(arg1.motorOptions.close.targetValue, arg1.motorOptions.close.springParams))
					end
				end;
			});
			PositionFrame = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(1, 1);
				Position = UDim2.new(udim.Scale, udim.Offset, arg1.props.openPositionY.Scale, arg1.props.openPositionY.Offset);
				ZIndex = 2;
			}, {
				BaseMenu = Roact_upvr.createElement(BaseMenu_upvr, {
					buttonProps = arg1.props.buttonProps;
					setFirstItemRef = arg1.props.setFirstItemRef;
					setFrameRef = arg1.props.setFrameRef;
					width = arg1.props.contextMenuWidthOverride or udim_2;
					position = arg1.positionPercentBinding:map(function(arg1_6) -- Line 241
						--[[ Upvalues[3]:
							[1]: var28_upvr (readonly)
							[2]: arg1 (copied, readonly)
							[3]: MenuDirection_upvr (copied, readonly)
						]]
						-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
						local var48
						-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
						-- KONSTANTERROR: [3] 4. Error Block 19 start (CF ANALYSIS FAILED)
						if arg1.props.anchorPointOverride then
							-- KONSTANTERROR: [9] 8. Error Block 17 start (CF ANALYSIS FAILED)
							if arg1.props.horizontalAlignment == Enum.HorizontalAlignment.Left then
								var48 = 0
							elseif arg1.props.horizontalAlignment == Enum.HorizontalAlignment.Right then
								var48 = 1
							end
							-- KONSTANTERROR: [9] 8. Error Block 17 end (CF ANALYSIS FAILED)
						end
						if arg1.props.menuDirection == MenuDirection_upvr.Down then
							return UDim2.fromScale(var48, arg1_6 - 1)
						end
						do
							return UDim2.fromScale(var48, 1 - arg1_6)
						end
						-- KONSTANTERROR: [3] 4. Error Block 19 end (CF ANALYSIS FAILED)
					end);
					anchorPoint = anchorPointOverride;
					topElementRounded = arg1.props.topElementRounded;
					bottomElementRounded = arg1.props.bottomElementRounded;
					isElementBackgroundVisible = arg1.props.isElementBackgroundVisible;
					isElementDividerVisible = arg1.props.isElementDividerVisible;
					elementHeight = arg1.props.elementHeight;
					borderCornerRadius = arg1.props.borderCornerRadius;
					background = arg1.props.background;
					enableTokenOverride = arg1.props.enableTokenOverride;
					renderHeader = arg1.props.renderHeader;
					headerHeight = arg1.props.headerHeight;
					showDropShadow = arg1.props.showDropShadow;
				});
			});
		})
	end)
end
function any_extend_result1.didMount(arg1) -- Line 275
	if arg1.props.open then
		arg1.wasDismissed = false
		arg1.motor:setGoal(arg1.motorType(arg1.motorOptions.open.targetValue, arg1.motorOptions.open.springParams))
	end
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 282
	if arg1.props.open ~= arg2.open then
		if arg1.props.open then
			arg1.wasDismissed = false
			arg1.motor:setGoal(arg1.motorType(arg1.motorOptions.open.targetValue, arg1.motorOptions.open.springParams))
			return
		end
		arg1.motor:setGoal(arg1.motorType(arg1.motorOptions.close.targetValue, arg1.motorOptions.close.springParams))
	end
end
function any_extend_result1.wilUnmount(arg1) -- Line 295
	arg1.motor:destroy()
end
return any_extend_result1