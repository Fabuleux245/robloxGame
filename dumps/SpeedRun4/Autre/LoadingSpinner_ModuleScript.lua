-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:03
-- Luau version 6, Types version 3
-- Time taken: 0.000732 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local t = require(Parent.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("LoadingSpinner")
any_extend_result1.validateProps = t.strictInterface({
	size = t.optional(t.UDim2);
	position = t.optional(t.union(t.UDim2, t.table));
	anchorPoint = t.optional(t.Vector2);
	rotationRate = t.optional(t.number);
})
local SpinningImage_upvr = require(Parent_2.Core.Animation.SpinningImage)
local Images_upvr = require(Parent_2.App.ImageSet.Images)
function any_extend_result1.render(arg1) -- Line 26
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: SpinningImage_upvr (readonly)
		[3]: Images_upvr (readonly)
	]]
	return Roact_upvr.createElement(SpinningImage_upvr, {
		image = Images_upvr["icons/graphic/loadingspinner"];
		size = arg1.props.size;
		position = arg1.props.position;
		anchorPoint = arg1.props.anchorPoint;
		rotationRate = arg1.props.rotationRate;
	})
end
return any_extend_result1