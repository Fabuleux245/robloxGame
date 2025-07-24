-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:45
-- Luau version 6, Types version 3
-- Time taken: 0.001800 seconds

local Parent = script.Parent.Parent.Parent
local Roact_upvr = require(Parent.Parent.Roact)
local t = require(Parent.Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("SpinningImage")
any_extend_result1.validateProps = t.strictInterface({
	image = t.table;
	size = t.optional(t.UDim2);
	anchorPoint = t.optional(t.Vector2);
	position = t.optional(t.union(t.UDim2, t.table));
	rotationRate = t.optional(t.number);
})
any_extend_result1.defaultProps = {
	rotationRate = 360;
}
function any_extend_result1.init(arg1) -- Line 25
	arg1.state = {
		angle = 0;
	}
end
local RunService_upvr = game:GetService("RunService")
function any_extend_result1.didMount(arg1) -- Line 31
	--[[ Upvalues[1]:
		[1]: RunService_upvr (readonly)
	]]
	arg1.heartbeatConnection = RunService_upvr.Heartbeat:Connect(function(arg1_2) -- Line 32
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var10 = arg1.state.angle + arg1.props.rotationRate * arg1_2
		if 360 < var10 then
			var10 -= 360
		elseif var10 < 0 then
			var10 += 360
		end
		arg1:setState({
			angle = var10;
		})
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 45
	arg1.heartbeatConnection:Disconnect()
end
function any_extend_result1.getDerivedStateFromProps(arg1, arg2) -- Line 49
	local ImageRectSize = arg1.image.ImageRectSize
	local module = {}
	local size = arg1.size
	if not size then
		size = UDim2.fromOffset(ImageRectSize.X, ImageRectSize.Y)
	end
	module.size = size
	return module
end
local Label_upvr = require(Parent.Core.ImageSet.ImageSetComponent).Label
function any_extend_result1.render(arg1) -- Line 56
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Label_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		Size = arg1.state.size;
		AnchorPoint = arg1.props.anchorPoint;
		Position = arg1.props.position;
		BackgroundTransparency = 1;
	}, {
		inner = Roact_upvr.createElement(Label_upvr, {
			Size = arg1.state.size;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Image = arg1.props.image;
			Rotation = arg1.state.angle;
			BackgroundTransparency = 1;
		});
	})
end
return any_extend_result1