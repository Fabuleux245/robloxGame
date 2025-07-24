-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:15
-- Luau version 6, Types version 3
-- Time taken: 0.001960 seconds

local Parent_3 = script.Parent.Parent
local Parent = Parent_3.Parent
local Parent_2 = Parent.Parent.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local Images = require(Parent.ImageSet.Images)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ArrowFrame")
any_extend_result1.validateProps = t.strictInterface({
	ZIndex = t.optional(t.number);
	isVisibleLeft = t.optional(t.union(t.boolean, t.table));
	isVisibleRight = t.optional(t.union(t.boolean, t.table));
	onPressHoldInputBegan = t.optional(t.callback);
	onPressHoldInputEnded = t.optional(t.callback);
	defaultUseProps = t.optional(t.strictInterface({
		scrollingFrameRef = t.table;
		buttonRefs = t.optional(t.table);
		buttonWidth = t.optional(t.number);
		padOutsideEdges = t.optional(t.boolean);
		numButtons = t.optional(t.number);
		buttonPadding = t.number;
		updateCanvasPosition = t.callback;
	}));
})
any_extend_result1.defaultProps = {
	ZIndex = 1;
	isVisibleRight = true;
	isVisibleLeft = true;
}
function any_extend_result1.init(arg1) -- Line 52
	arg1.state = {
		isHovered = false;
	}
	function arg1.onMouseEnter() -- Line 57
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isHovered = true;
		})
	end
	function arg1.onMouseLeave() -- Line 63
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			isHovered = false;
		})
	end
end
local ArrowNav_upvr = require(Parent_3.HorizontalNav.ArrowNav)
local icons_actions_cycleLeft_upvr = Images["icons/actions/cycleLeft"]
local NavigationDirection_upvr = require(Parent_3.HorizontalNav.NavigationDirection)
local icons_actions_cycleRight_upvr = Images["icons/actions/cycleRight"]
function any_extend_result1.render(arg1) -- Line 70
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: ArrowNav_upvr (readonly)
		[3]: icons_actions_cycleLeft_upvr (readonly)
		[4]: NavigationDirection_upvr (readonly)
		[5]: icons_actions_cycleRight_upvr (readonly)
	]]
	local defaultUseProps = arg1.props.defaultUseProps
	local onPressHoldInputBegan = arg1.props.onPressHoldInputBegan
	local onPressHoldInputEnded = arg1.props.onPressHoldInputEnded
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		ZIndex = arg1.props.ZIndex;
		[Roact_upvr.Event.MouseEnter] = arg1.onMouseEnter;
		[Roact_upvr.Event.MouseLeave] = arg1.onMouseLeave;
	}, {
		ArrowLeft = Roact_upvr.createElement(ArrowNav_upvr, {
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.new(0, -6, 0.5, 0);
			Image = icons_actions_cycleLeft_upvr;
			Visible = arg1.state.isHovered and arg1.props.isVisibleLeft;
			navDirection = NavigationDirection_upvr.IsLeft;
			defaultUseProps = defaultUseProps;
			onPressHoldInputBegan = onPressHoldInputBegan;
			onPressHoldInputEnded = onPressHoldInputEnded;
		});
		ArrowRight = Roact_upvr.createElement(ArrowNav_upvr, {
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.new(1, -30, 0.5, 0);
			Image = icons_actions_cycleRight_upvr;
			Visible = arg1.state.isHovered and arg1.props.isVisibleRight;
			navDirection = NavigationDirection_upvr.IsRight;
			defaultUseProps = defaultUseProps;
			onPressHoldInputBegan = onPressHoldInputBegan;
			onPressHoldInputEnded = onPressHoldInputEnded;
		});
	})
end
return any_extend_result1