-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:18
-- Luau version 6, Types version 3
-- Time taken: 0.001473 seconds

local Parent = script.Parent.Parent.Parent
local React_upvr = require(Parent.Parent.React)
local lerp_upvr = require(Parent.utils.lerp)
local any_extend_result1 = React_upvr.Component:extend("StackViewOverlayFrame")
function any_extend_result1.init(arg1) -- Line 10
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	arg1._signalDisconnect = nil
	arg1._ref = React_upvr.createRef()
end
function any_extend_result1.render(arg1) -- Line 16
	--[[ Upvalues[2]:
		[1]: lerp_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local navigationOptions = arg1.props.navigationOptions
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundColor3 = navigationOptions.overlayColor3;
		BackgroundTransparency = lerp_upvr(1, navigationOptions.overlayTransparency, arg1.props.initialTransitionValue);
		BorderSizePixel = 0;
		ref = arg1._ref;
	})
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 31
	local transitionChangedSignal = arg1.props.transitionChangedSignal
	if transitionChangedSignal ~= arg2.transitionChangedSignal then
		if arg1._signalDisconnect then
			arg1._signalDisconnect()
		end
		arg1._signalDisconnect = transitionChangedSignal(function(...) -- Line 39
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:_transitionChanged(...)
		end)
	end
end
function any_extend_result1.didMount(arg1) -- Line 45
	arg1._isMounted = true
	arg1._signalDisconnect = arg1.props.transitionChangedSignal(function(...) -- Line 47
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:_transitionChanged(...)
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 52
	arg1._isMounted = false
	if arg1._signalDisconnect then
		arg1._signalDisconnect()
		arg1._signalDisconnect = nil
	end
end
function any_extend_result1._transitionChanged(arg1, arg2) -- Line 60
	--[[ Upvalues[1]:
		[1]: lerp_upvr (readonly)
	]]
	if not arg1._isMounted then
	elseif arg1._ref.current then
		arg1._ref.current.BackgroundTransparency = lerp_upvr(1, arg1.props.navigationOptions.overlayTransparency, arg2)
	end
end
return any_extend_result1