-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:45
-- Luau version 6, Types version 3
-- Time taken: 0.001634 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent
local Roact_upvr = require(Parent.Parent.Roact)
local t = require(Parent.Parent.t)
local SlidingDirection = require(Parent_2.Enum.SlidingDirection)
local any_extend_result1 = Roact_upvr.PureComponent:extend("SlidingContainer")
local tbl_2_upvr = {
	[SlidingDirection.Up] = UDim2.new(0, 0, 1, 0);
	[SlidingDirection.Down] = UDim2.new(0, 0, -1, 0);
	[SlidingDirection.Left] = UDim2.new(1, 0, 0, 0);
	[SlidingDirection.Right] = UDim2.new(-1, 0, 0, 0);
}
any_extend_result1.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.integer);
	onComplete = t.optional(t.callback);
	show = t.optional(t.boolean);
	slidingDirection = SlidingDirection.isEnumValue;
	springOptions = t.optional(t.table);
	[Roact_upvr.Children] = t.optional(t.table);
})
any_extend_result1.defaultProps = {
	springOptions = {
		dampingRatio = 1;
		frequency = 4;
	};
}
local SpringAnimatedItem_upvr = require(Parent.Utility.SpringAnimatedItem)
function any_extend_result1.render(arg1) -- Line 45
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: SpringAnimatedItem_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
	]]
	local show = arg1.props.show
	local slidingDirection_upvr = arg1.props.slidingDirection
	local module = {}
	local props = arg1.props
	module.springOptions = props.springOptions
	local tbl_3 = {}
	if show then
		props = 0
	else
		props = 1
	end
	tbl_3.step = props
	module.animatedValues = tbl_3
	function module.mapValuesToProps(arg1_2) -- Line 54
		--[[ Upvalues[2]:
			[1]: tbl_2_upvr (copied, readonly)
			[2]: slidingDirection_upvr (readonly)
		]]
		local var17 = tbl_2_upvr[slidingDirection_upvr]
		return {
			Position = UDim2.new(var17.X.Scale * arg1_2.step, 0, var17.Y.Scale * arg1_2.step, 0);
		}
	end
	local tbl = {}
	props = 1
	tbl.BackgroundTransparency = props
	props = arg1.props.layoutOrder
	tbl.LayoutOrder = props
	local function INLINED() -- Internal function, doesn't exist in bytecode
		props = tbl_2_upvr[slidingDirection_upvr]
		return props
	end
	if not show or not INLINED() then
		props = UDim2.new(0, 0, 0, 0)
	end
	tbl.Position = props
	props = UDim2.new(1, 0, 1, 0)
	tbl.Size = props
	module.regularProps = tbl
	props = arg1.props
	module.onComplete = props.onComplete
	props = Roact_upvr
	props = arg1.props[Roact_upvr.Children]
	module[props.Children] = props
	return Roact_upvr.createElement(SpringAnimatedItem_upvr.AnimatedFrame, module)
end
return any_extend_result1