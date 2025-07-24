-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:17
-- Luau version 6, Types version 3
-- Time taken: 0.001296 seconds

local Parent = script.Parent.Parent.Parent.Parent.Parent
local t = require(Parent.t)
local Otter_upvr = require(Parent.Otter)
local module_upvr = {
	dampingRatio = 1;
	frequency = 3.5;
}
local any_extend_result1 = require(Parent.Roact).PureComponent:extend("IntroScroll")
any_extend_result1.validateProps = t.strictInterface({
	childWidgetIndex = t.number;
	scrollingFrameRef = t.table;
	updateCanvasPosition = t.callback;
})
function any_extend_result1.init(arg1) -- Line 25
	--[[ Upvalues[1]:
		[1]: Otter_upvr (readonly)
	]]
	arg1.motor = Otter_upvr.createSingleMotor(0)
	arg1.motor:onStep(function(arg1_2) -- Line 27
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.updateCanvasPosition(Vector2.new(arg1_2, 0))
	end)
end
function any_extend_result1.didUpdate(arg1, arg2, arg3) -- Line 32
	--[[ Upvalues[1]:
		[1]: Otter_upvr (readonly)
	]]
	if arg1.props.childWidgetIndex and arg1.props.childWidgetIndex ~= arg2.childWidgetIndex then
		local current = arg1.props.scrollingFrameRef.current
		arg1.motor:setGoal(Otter_upvr.instant(math.clamp(current.AbsoluteCanvasSize.X - current.AbsoluteSize.X, 0, current.AbsoluteSize.X * 0.25)))
		arg1.motor:step(0)
		arg1.motor:setGoal(arg1:getGoal())
	end
end
function any_extend_result1.getGoal(arg1, arg2) -- Line 48
	--[[ Upvalues[2]:
		[1]: Otter_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	return Otter_upvr.spring(0, module_upvr)
end
function any_extend_result1.render(arg1) -- Line 52
	return nil
end
function any_extend_result1.willUnmount(arg1) -- Line 56
	if arg1.motor then
		arg1.motor:destroy()
		arg1.motor = nil
	end
end
return any_extend_result1