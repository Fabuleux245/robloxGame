-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:16
-- Luau version 6, Types version 3
-- Time taken: 0.003276 seconds

local Parent = script.Parent.Parent.Parent
local React_upvr = require(Parent.Parent.React)
local any_extend_result1 = React_upvr.Component:extend("StackViewCard")
function any_extend_result1.init(arg1) -- Line 29
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	arg1._isMounted = false
	arg1._positionLastValue = arg1.props.navigation.state.index
	arg1._ref = React_upvr.createRef()
end
local invariant_upvr = require(Parent.utils.invariant)
function any_extend_result1.render(arg1) -- Line 38
	--[[ Upvalues[2]:
		[1]: invariant_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local cardColor3 = arg1.props.cardColor3
	local renderScene = arg1.props.renderScene
	local var7
	if type(renderScene) ~= "function" then
		var7 = false
	else
		var7 = true
	end
	invariant_upvr(var7, "renderScene must be a function")
	var7 = React_upvr
	var7 = "Frame"
	local module = {
		Position = arg1.props.initialPosition;
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundColor3 = cardColor3;
	}
	if cardColor3 == nil then
	else
	end
	module.BackgroundTransparency = nil
	module.BorderSizePixel = 0
	module.ClipsDescendants = false
	module.Visible = not arg1.props.forceHidden
	module.ref = arg1._ref
	return var7.createElement(var7, module, {
		Content = renderScene(arg1.props.scene);
	})
end
function any_extend_result1.didMount(arg1) -- Line 61
	arg1._isMounted = true
	arg1._positionDisconnector = arg1.props.position:onStep(function(...) -- Line 65
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:_onPositionStep(...)
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 70
	arg1._isMounted = false
	if arg1._positionDisconnector then
		arg1._positionDisconnector()
		arg1._positionDisconnector = nil
	end
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 79
	local position = arg1.props.position
	if position ~= arg2.position then
		arg1._positionDisconnector()
		arg1._positionDisconnector = position:onStep(function(...) -- Line 85
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:_onPositionStep(...)
		end)
	end
	if arg1.props.positionStep ~= arg2.positionStep then
		arg1:_onPositionStep(arg1._positionLastValue)
	end
end
function any_extend_result1._onPositionStep(arg1, arg2) -- Line 97
	if not arg1._isMounted then
	else
		local positionStep = arg1.props.positionStep
		if positionStep then
			positionStep(arg1._ref, arg2)
		end
		arg1._positionLastValue = arg2
	end
end
return any_extend_result1