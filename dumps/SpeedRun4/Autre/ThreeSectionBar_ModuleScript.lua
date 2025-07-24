-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:54:00
-- Luau version 6, Types version 3
-- Time taken: 0.002388 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local RoactFitComponents_upvr = require(Parent.LuaSocialLibrariesDeps).RoactFitComponents
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ThreeSectionBar")
any_extend_result1.Rect = RoactFitComponents_upvr.Rect
any_extend_result1.defaultProps = {
	marginLeft = any_extend_result1.Rect.square(0);
	marginRight = any_extend_result1.Rect.square(0);
	contentPaddingLeft = UDim.new(0, 0);
	contentPaddingRight = UDim.new(0, 0);
	height = UDim.new(0, 0);
}
function any_extend_result1.init(arg1) -- Line 23
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	local any_createBinding_result1_3, any_createBinding_result2 = Roact_upvr.createBinding(0)
	arg1.leftWidth = any_createBinding_result1_3
	arg1.updateLeftWidth = any_createBinding_result2
	local any_createBinding_result1_2, any_createBinding_result2_2 = Roact_upvr.createBinding(0)
	arg1.rightWidth = any_createBinding_result1_2
	arg1.updateRightWidth = any_createBinding_result2_2
	local any_createBinding_result1, any_createBinding_result2_3 = Roact_upvr.createBinding(0)
	arg1.fullWidth = any_createBinding_result1
	arg1.updateFullWidth = any_createBinding_result2_3
end
function any_extend_result1.render(arg1) -- Line 30
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: RoactFitComponents_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(UDim.new(1, 0), arg1.props.height);
		LayoutOrder = arg1.props.LayoutOrder;
		[Roact_upvr.Change.AbsoluteSize] = function(arg1_2) -- Line 35
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.updateFullWidth(arg1_2.AbsoluteSize.X)
		end;
	}, {
		leftFrame = Roact_upvr.createElement(RoactFitComponents_upvr.FitFrameHorizontal, {
			Transparency = 1;
			AnchorPoint = Vector2.new(0, 0);
			Position = UDim2.fromScale(0, 0);
			minimumSize = UDim.new(0, 0);
			height = UDim.new(1, 0);
			FillDirection = Enum.FillDirection.Horizontal;
			contentPadding = arg1.props.contentPaddingLeft;
			margin = arg1.props.marginLeft;
			[Roact_upvr.Change.AbsoluteSize] = function(arg1_3) -- Line 49
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.updateLeftWidth(arg1_3.AbsoluteSize.X)
			end;
		}, {
			leftContent = arg1.props.renderLeft(arg1.props);
		});
		centerFrame = Roact_upvr.createElement("Frame", {
			AnchorPoint = Vector2.new(0.5, 0);
			Position = UDim2.fromScale(0.5, 0);
			Size = Roact_upvr.joinBindings({arg1.leftWidth, arg1.rightWidth, arg1.fullWidth}):map(function(arg1_4) -- Line 60
				return UDim2.new(0, (Vector2.new(arg1_4[3] / 2, 0) - Vector2.new(math.max(arg1_4[1], arg1_4[2]), 0)).Magnitude * 2, 1, 0)
			end);
		}, {
			["$layout"] = Roact_upvr.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			});
			centerContent = arg1.props.renderCenter(arg1.props);
		});
		rightFrame = Roact_upvr.createElement(RoactFitComponents_upvr.FitFrameHorizontal, {
			AnchorPoint = Vector2.new(1, 0);
			Position = UDim2.fromScale(1, 0);
			minimumSize = UDim.new(0, 0);
			height = UDim.new(1, 0);
			FillDirection = Enum.FillDirection.Horizontal;
			contentPadding = arg1.props.contentPaddingRight;
			margin = arg1.props.marginRight;
			[Roact_upvr.Change.AbsoluteSize] = function(arg1_5) -- Line 89
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.updateRightWidth(arg1_5.AbsoluteSize.X)
			end;
		}, {
			rightContent = arg1.props.renderRight(arg1.props);
		});
	})
end
return any_extend_result1