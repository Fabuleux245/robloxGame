-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:29
-- Luau version 6, Types version 3
-- Time taken: 0.002264 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("FitFrameVertical")
any_extend_result1.defaultProps = {
	AnchorPoint = Vector2.new(0, 0);
	Position = UDim2.new(0, 0, 0, 0);
	width = UDim.new(0, 0);
	contentPadding = UDim.new(0, 0);
	FillDirection = Enum.FillDirection.Vertical;
	HorizontalAlignment = Enum.HorizontalAlignment.Left;
	VerticalAlignment = Enum.VerticalAlignment.Top;
	marginTop = 0;
	marginBottom = 0;
	marginLeft = 0;
	marginRight = 0;
}
function any_extend_result1.init(arg1) -- Line 22
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.layoutRef = Roact_upvr.createRef()
	arg1.frameRef = Roact_upvr.createRef()
	function arg1.onResize() -- Line 26
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local current = arg1.layoutRef.current
		local current_2 = arg1.frameRef.current
		if not current_2 or not current then
		else
			current_2.Size = UDim2.new(arg1.props.width, UDim.new(0, current.AbsoluteContentSize.Y + arg1.props.marginTop + arg1.props.marginBottom))
		end
	end
end
local Immutable_upvr = require(Parent.AppCommonLib).Immutable
function any_extend_result1.render(arg1) -- Line 41
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Immutable_upvr (readonly)
	]]
	local var9 = arg1.props[Roact_upvr.Children]
	if not var9 then
		var9 = {}
	end
	local width = arg1.props.width
	local var11 = 0
	if arg1.layoutRef.current then
		var11 = arg1.layoutRef.current.AbsoluteContentSize.Y
	end
	return Roact_upvr.createElement("Frame", {
		AnchorPoint = arg1.props.AnchorPoint;
		Position = arg1.props.Position;
		BackgroundColor3 = arg1.props.BackgroundColor3;
		BackgroundTransparency = arg1.props.BackgroundTransparency;
		Size = UDim2.new(width.Scale, width.Offset, 0, var11);
		LayoutOrder = arg1.props.LayoutOrder;
		[Roact_upvr.Ref] = arg1.frameRef;
		Visible = arg1.props.Visible;
		BorderSizePixel = 0;
	}, Immutable_upvr.JoinDictionaries(var9, {
		layout = Roact_upvr.createElement("UIListLayout", {
			Padding = arg1.props.contentPadding;
			FillDirection = arg1.props.FillDirection;
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = arg1.props.HorizontalAlignment;
			VerticalAlignment = arg1.props.VerticalAlignment;
			[Roact_upvr.Ref] = arg1.layoutRef;
			[Roact_upvr.Change.AbsoluteContentSize] = arg1.onResize;
		});
		padding = Roact_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, arg1.props.marginLeft);
			PaddingRight = UDim.new(0, arg1.props.marginRight);
			PaddingTop = UDim.new(0, arg1.props.marginTop);
			PaddingBottom = UDim.new(0, arg1.props.marginBottom);
		});
	}))
end
function any_extend_result1.didMount(arg1) -- Line 90
	arg1.onResize()
end
function any_extend_result1.didUpdate(arg1) -- Line 94
	arg1.onResize()
end
return any_extend_result1