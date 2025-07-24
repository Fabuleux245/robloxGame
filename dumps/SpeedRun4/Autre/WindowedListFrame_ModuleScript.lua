-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:27
-- Luau version 6, Types version 3
-- Time taken: 0.002716 seconds

local Parent = script:FindFirstAncestor("AuthCommon").Parent
local Roact_upvr = require(Parent.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("WindowedListFrame")
function any_extend_result1.init(arg1) -- Line 17
	arg1.state = {
		windowStart = 1;
		windowSize = 5;
		topPadding = 0;
	}
	function arg1.updateWindow(arg1_2) -- Line 24
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var6 = arg1.props.ButtonSizeY + 1
		local Y = arg1_2.AbsoluteSize.Y
		local var8
		local function INLINED() -- Internal function, doesn't exist in bytecode
			local var9 = math.floor(Y / var6) + 2
			var8 = math.max(1, math.floor(arg1_2.CanvasPosition.Y / var6) + 1)
			return var8 ~= arg1.state.windowStart
		end
		if var8 < Y and (INLINED() or var9 ~= arg1.state.windowSize) then
			arg1:setState({
				windowStart = var8;
				windowSize = var9;
				topPadding = var6 * (var8 - 1);
			})
		end
	end
end
any_extend_result1.defaultProps = {
	List = {};
	ButtonSizeY = 20;
	ScrollingFrameOffset = 0;
	ListButtonProps = {};
}
local ArgCheck_upvr = require(Parent.ArgCheck)
local Graphite_upvr = require(Parent.Style).Colors.Graphite
function any_extend_result1.render(arg1) -- Line 52
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ArgCheck_upvr (readonly)
		[3]: Graphite_upvr (readonly)
	]]
	local ListButton = arg1.props.ListButton
	local ListButtonProps = arg1.props.ListButtonProps
	local List = arg1.props.List
	local tbl = {Roact_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Vertical;
	})}
	ArgCheck_upvr.isInTypes(ListButton, {"function", "table"}, "ListButton prop in WindowedListFrame")
	if ListButton then
		local windowStart = arg1.state.windowStart
		for i = windowStart, math.min(#List, windowStart + arg1.state.windowSize) do
			local var23 = i + i
			tbl[var23] = Roact_upvr.createElement(ListButton, {
				Size = UDim2.new(1, 0, 0, arg1.props.ButtonSizeY);
				LayoutOrder = var23;
				Data = List[i];
				ListButtonProps = ListButtonProps;
			})
			local var25 = var23 + 1
			tbl[var25] = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 0, 1);
				BackgroundColor3 = Graphite_upvr;
				LayoutOrder = var25;
				BorderSizePixel = 0;
			})
		end
	end
	return Roact_upvr.createElement("ScrollingFrame", {
		Position = UDim2.new(0, 0, 0, arg1.props.ScrollingFrameOffset);
		Size = UDim2.new(1, 8, 1, -arg1.props.ScrollingFrameOffset);
		ScrollBarThickness = 4;
		ScrollBarImageColor3 = Graphite_upvr;
		ScrollingDirection = Enum.ScrollingDirection.Y;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		CanvasSize = UDim2.new(0, 0, 0, #List * (arg1.props.ButtonSizeY + 1));
		[Roact_upvr.Change.CanvasPosition] = arg1.updateWindow;
		[Roact_upvr.Change.AbsoluteSize] = arg1.updateWindow;
	}, {
		ListHolder = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, -8, 0, 1);
			Position = UDim2.new(0, 0, 0, arg1.state.topPadding);
			BackgroundTransparency = 1;
		}, tbl);
	})
end
return any_extend_result1