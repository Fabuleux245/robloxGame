-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:03
-- Luau version 6, Types version 3
-- Time taken: 0.001914 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local any_extend_result1 = Roact_upvr.PureComponent:extend("BarOnTopScrollingFrame")
any_extend_result1.validateProps = t.strictInterface({
	Size = t.UDim2;
	Position = t.optional(t.UDim2);
	CanvasSize = t.UDim2;
	ScrollingEnabled = t.optional(t.boolean);
	[Roact_upvr.Children] = t.table;
	onCanvasPositionChanged = t.optional(t.callback);
	scrollingFrameRef = t.optional(t.table);
})
any_extend_result1.defaultProps = {
	ScrollingEnabled = true;
}
function any_extend_result1.init(arg1) -- Line 26
	arg1.state = {
		CanvasPosition = Vector2.new(0, 0);
	}
end
function any_extend_result1.render(arg1) -- Line 32
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		Size = arg1.props.Size;
		Position = arg1.props.Position;
		BackgroundTransparency = 1;
		ClipsDescendants = true;
	}, {
		DisplayScrollingFrame = Roact_upvr.createElement("ScrollingFrame", {
			CanvasPosition = arg1.state.CanvasPosition;
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 8, 1, 0);
			CanvasSize = arg1.props.CanvasSize - UDim2.new(0, 8, 0, 0);
			ScrollBarThickness = 8;
			BorderSizePixel = 0;
			ZIndex = 2;
			Position = UDim2.new(1, -8, 0, 0);
			ScrollingEnabled = arg1.props.ScrollingEnabled;
			ScrollingDirection = Enum.ScrollingDirection.Y;
			Selectable = false;
			[Roact_upvr.Ref] = arg1.props.scrollingFrameRef;
			[Roact_upvr.Change.CanvasPosition] = function(arg1_2) -- Line 52
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:setState({
					CanvasPosition = arg1_2.CanvasPosition;
				})
				if arg1.props.onCanvasPositionChanged then
					arg1.props.onCanvasPositionChanged(arg1_2)
				end
			end;
		});
		ContentsScrollingFrame = Roact_upvr.createElement("ScrollingFrame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, -8, 1, 0);
			CanvasSize = arg1.props.CanvasSize - UDim2.new(0, 8, 0, 0);
			CanvasPosition = arg1.state.CanvasPosition;
			ScrollBarThickness = 0;
			BorderSizePixel = 0;
			ClipsDescendants = false;
			ScrollingEnabled = arg1.props.ScrollingEnabled;
			ScrollingDirection = Enum.ScrollingDirection.Y;
			Selectable = false;
			[Roact_upvr.Change.CanvasPosition] = function(arg1_3) -- Line 73
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:setState({
					CanvasPosition = arg1_3.CanvasPosition;
				})
			end;
		}, {Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 8, 1, 0);
		}, arg1.props[Roact_upvr.Children])});
	})
end
return any_extend_result1