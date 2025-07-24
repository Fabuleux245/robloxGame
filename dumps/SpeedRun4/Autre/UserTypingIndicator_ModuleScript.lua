-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:01
-- Luau version 6, Types version 3
-- Time taken: 0.005297 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Roact_upvr = require(Parent.Roact)
local UIBlox = require(Parent.UIBlox)
local any_extend_result1 = Roact_upvr.PureComponent:extend("UserTypingIndicator")
local tbl_upvr = {
	dampingRatio = 1.5;
	frequency = 1.6;
}
any_extend_result1.defaultProps = {
	AnchorPoint = Vector2.new(0, 0);
	LayoutOrder = 1;
	Position = UDim2.new(0, 0, 0, 0);
	ZIndex = 1;
	usersTyping = {};
	oneUserTyping = "PLACEHOLDER {DISPLAY_NAME} is typing...";
	twoUsersTyping = "PLACEHOLDER {DISPLAY_NAME_1} and {DISPLAY_NAME_2} are typing...";
	severalUsersTyping = "PLACEHOLDER Several users are typing...";
	maxCharacterLength = 160;
	height = 40;
}
local Otter_upvr = require(Parent.Otter)
function any_extend_result1.init(arg1) -- Line 32
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Otter_upvr (readonly)
		[3]: tbl_upvr (readonly)
	]]
	function arg1.getDisplayText() -- Line 33
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.usersTyping then
			if #arg1.props.usersTyping == 1 then
				return arg1.props.oneUserTyping
			end
			if #arg1.props.usersTyping == 2 then
				return arg1.props.twoUsersTyping
			end
			if 2 < #arg1.props.usersTyping then
				return arg1.props.severalUsersTyping
			end
		end
		return ""
	end
	local any_createBinding_result1, any_createBinding_result2 = Roact_upvr.createBinding(1)
	arg1.motor = Otter_upvr.createSingleMotor(1)
	arg1.motor:start()
	arg1.motor:onStep(any_createBinding_result2)
	arg1.animationProgress = any_createBinding_result1
	function arg1.updateAnimationGoal() -- Line 54
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Otter_upvr (copied, readonly)
			[3]: tbl_upvr (copied, readonly)
		]]
		local var12
		if 0 < #arg1.props.usersTyping then
			var12 = 0
		else
			var12 = 1
		end
		arg1.motor:setGoal(Otter_upvr.spring(var12, tbl_upvr))
	end
	arg1.updateAnimationGoal()
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 62
	if #arg2.usersTyping ~= #arg1.props.usersTyping then
		arg1.updateAnimationGoal()
	end
end
local withStyle_upvr = require(Parent.UIBlox).Style.withStyle
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
function any_extend_result1.render(arg1) -- Line 68
	--[[ Upvalues[4]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 69
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: ImageSetLabel_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
		]]
		local Font = arg1_2.Font
		return Roact_upvr.createElement("Frame", {
			AnchorPoint = arg1.props.AnchorPoint;
			BackgroundTransparency = 1;
			LayoutOrder = arg1.props.LayoutOrder;
			Position = arg1.props.Position;
			Size = UDim2.new(1, 0, 0, arg1.props.height);
			ZIndex = arg1.props.ZIndex;
		}, {
			Layout = Roact_upvr.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			});
			Padding = Roact_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, 4);
				PaddingBottom = UDim.new(0, 4);
			});
			ImageContainer = Roact_upvr.createElement(ImageSetLabel_upvr, {
				Size = UDim2.new(0.9, 0, 1, 0);
				BackgroundColor3 = arg1_2.Theme.NavigationBar.Color;
				BorderColor3 = arg1_2.Theme.Divider.Color;
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				ScaleType = Enum.ScaleType.Slice;
				SliceCenter = Rect.new(8, 8, 9, 9);
				Image = Images_upvr["component_assets/circle_17"];
				ImageColor3 = arg1_2.Theme.BackgroundUIDefault.Color;
				ImageTransparency = arg1.animationProgress:map(function(arg1_3) -- Line 104
					return arg1_3
				end);
				Position = arg1.animationProgress:map(function(arg1_4) -- Line 107
					return UDim2.new(0, 0, arg1_4, 0)
				end);
			}, {
				Layout = Roact_upvr.createElement("UIListLayout", {
					VerticalAlignment = Enum.VerticalAlignment.Center;
					HorizontalAlignment = Enum.HorizontalAlignment.Left;
					FillDirection = Enum.FillDirection.Horizontal;
					SortOrder = Enum.SortOrder.LayoutOrder;
				});
				Padding = Roact_upvr.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, 12);
					PaddingTop = UDim.new(0, 4);
					PaddingBottom = UDim.new(0, 4);
					PaddingRight = UDim.new(0, 12);
				});
				TextLabel = Roact_upvr.createElement("TextLabel", {
					Text = arg1.getDisplayText();
					TextSize = Font.BaseSize * Font.Footer.RelativeSize;
					Font = Font.Footer.Font;
					TextColor3 = arg1_2.Theme.TextMuted.Color;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextYAlignment = Enum.TextYAlignment.Center;
					BackgroundTransparency = 1;
					TextTransparency = arg1.animationProgress:map(function(arg1_5) -- Line 133
						return arg1_5
					end);
				});
			});
		})
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 142
	if arg1.motor then
		arg1.motor:destroy()
	end
end
return any_extend_result1