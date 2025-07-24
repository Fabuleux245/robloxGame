-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:19
-- Luau version 6, Types version 3
-- Time taken: 0.007631 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local LuauPolyfill = require(Parent_2.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local React_upvr = require(Parent_2.React)
local Otter_upvr = require(Parent_2.Otter)
local ScenesReducer_upvr = require(script.Parent.ScenesReducer)
local tbl_4_upvr = {
	frequency = 4;
}
local invariant_upvr = require(Parent.utils.invariant)
local function buildTransitionProps_upvr(arg1, arg2) -- Line 17, Named "buildTransitionProps"
	--[[ Upvalues[1]:
		[1]: invariant_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 15. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 15. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [20.13]
	-- KONSTANTERROR: [15] 11. Error Block 2 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 46, Named "filterStale"
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local any_filter_result1_2 = Array_upvr.filter(arg1, function(arg1_2) -- Line 47
		return not arg1_2.isStale
	end)
	if #any_filter_result1_2 == #arg1 then
		return arg1
	end
	return any_filter_result1_2
end
local any_extend_result1 = React_upvr.Component:extend("Transitioner")
function any_extend_result1.init(arg1) -- Line 60
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: Otter_upvr (readonly)
		[3]: ScenesReducer_upvr (readonly)
		[4]: buildTransitionProps_upvr (readonly)
	]]
	local state = arg1.props.navigation.state
	arg1._ref = React_upvr.createRef()
	arg1.state = {
		layout = {
			initWidth = 0;
			initHeight = 0;
			isMeasured = false;
		};
		position = Otter_upvr.createSingleMotor(state.index);
		scenes = ScenesReducer_upvr({}, state, nil, arg1.props.descriptors);
	}
	function arg1._doOnAbsoluteSizeChanged(...) -- Line 78
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:_onAbsoluteSizeChanged(...)
	end
	arg1._positionLastValue = state.index
	arg1._prevTransitionProps = nil
	arg1._transitionProps = buildTransitionProps_upvr(arg1.props, arg1.state)
	arg1._isMounted = false
	arg1._isTransitionRunning = false
	arg1._transitionQueue = {}
	arg1._completeSignalDisconnector = arg1.state.position:onComplete(function() -- Line 91
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1._isMounted then
			arg1:_onTransitionEnd()
		end
	end)
	arg1._stepSignalDisconnector = arg1.state.position:onStep(function(arg1_3) -- Line 97
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1._isMounted then
			arg1:_onPositionStep(arg1_3)
		end
	end)
end
function any_extend_result1.didMount(arg1) -- Line 104
	arg1._isMounted = true
end
function any_extend_result1.willUnmount(arg1) -- Line 108
	arg1._isMounted = false
	if arg1._completeSignalDisconnector then
		arg1._completeSignalDisconnector()
		arg1._completeSignalDisconnector = nil
	end
	if arg1._stepSignalDisconnector then
		arg1._stepSignalDisconnector()
		arg1._stepSignalDisconnector = nil
	end
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 122
	if not arg1.state.layout.isMeasured and arg1._ref.current then
		arg1:_onAbsoluteSizeChanged(arg1._ref.current)
	end
	if arg1.props ~= arg2 then
		if arg1._isTransitionRunning then
			local var20 = arg1._transitionQueue[#arg1._transitionQueue]
			if not var20 then
				var20 = {}
			end
			if var20.prevProps ~= arg2 then
				local tbl = {}
				tbl.prevProps = arg2
				table.insert(arg1._transitionQueue, tbl)
			end
			return
		end
		arg1:_startTransition(arg2, arg1.props)
	end
end
function any_extend_result1.render(arg1) -- Line 147
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		ClipsDescendants = false;
		[React_upvr.Change.AbsoluteSize] = arg1._doOnAbsoluteSizeChanged;
		ref = arg1._ref;
	}, {
		TransitionerScenes = arg1.props.render(arg1._transitionProps, arg1._prevTransitionProps, arg1);
	})
end
function any_extend_result1._onAbsoluteSizeChanged(arg1, arg2) -- Line 165
	--[[ Upvalues[2]:
		[1]: Object_upvr (readonly)
		[2]: buildTransitionProps_upvr (readonly)
	]]
	if not arg1._isMounted then
	else
		local X = arg2.AbsoluteSize.X
		if X == arg1.state.layout.initWidth and arg2.AbsoluteSize.Y == arg1.state.layout.initHeight then return end
		local tbl_3 = {
			initWidth = X;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_3.initHeight = arg2.AbsoluteSize.Y
		tbl_3.isMeasured = true
		local any_assign_result1_2 = Object_upvr.assign(table.clone(arg1.state.layout), tbl_3)
		arg1._transitionProps = buildTransitionProps_upvr(arg1.props, Object_upvr.assign(table.clone(arg1.state), {
			layout = any_assign_result1_2;
		}))
		arg1:setState({
			layout = any_assign_result1_2;
		})
	end
end
function any_extend_result1._computeScenes(arg1, arg2, arg3) -- Line 194
	--[[ Upvalues[2]:
		[1]: ScenesReducer_upvr (readonly)
		[2]: Array_upvr (readonly)
	]]
	local var8_result1 = ScenesReducer_upvr(arg1.state.scenes, arg3.navigation.state, arg2.navigation.state, arg3.descriptors)
	if not arg3.navigation.state.isTransitioning then
		local var30 = var8_result1
		local any_filter_result1_3 = Array_upvr.filter(var30, function(arg1_4) -- Line 47
			return not arg1_4.isStale
		end)
		if #any_filter_result1_3 == #var30 then
			var8_result1 = var30
		else
			var8_result1 = any_filter_result1_3
		end
	end
	if arg3.screenProps ~= arg1.props.screenProps then
		arg1:setState({
			scenes = var8_result1;
		})
	end
	if var8_result1 == arg1.state.scenes then
		return nil
	end
	return var8_result1
end
function any_extend_result1._startTransition(arg1, arg2, arg3) -- Line 213
	--[[ Upvalues[4]:
		[1]: Object_upvr (readonly)
		[2]: buildTransitionProps_upvr (readonly)
		[3]: tbl_4_upvr (readonly)
		[4]: Otter_upvr (readonly)
	]]
	local var34_upvr
	if arg2.navigation.state.index == arg3.navigation.state.index then
		var34_upvr = false
	else
		var34_upvr = true
	end
	local any__computeScenes_result1 = arg1:_computeScenes(arg2, arg3)
	if not any__computeScenes_result1 then
		arg1._prevTransitionProps = arg1._transitionProps
		if arg1._isTransitionRunning then
			arg1:_onTransitionEnd()
		end
	else
		local any_assign_result1_3 = Object_upvr.assign(table.clone(arg1.state), {
			scenes = any__computeScenes_result1;
		})
		arg1._prevTransitionProps = arg1._transitionProps
		arg1._transitionProps = buildTransitionProps_upvr(arg3, any_assign_result1_3)
		local isTransitioning_upvr = arg1._transitionProps.navigation.state.isTransitioning
		if isTransitioning_upvr and var34_upvr then
			arg1._isTransitionRunning = true
		end
		local index_upvr = arg3.navigation.state.index
		local position_upvr = any_assign_result1_3.position
		arg1:setState(any_assign_result1_3, function() -- Line 245
			--[[ Upvalues[9]:
				[1]: isTransitioning_upvr (readonly)
				[2]: var34_upvr (readonly)
				[3]: arg3 (readonly)
				[4]: arg1 (readonly)
				[5]: index_upvr (readonly)
				[6]: Object_upvr (copied, readonly)
				[7]: tbl_4_upvr (copied, readonly)
				[8]: position_upvr (readonly)
				[9]: Otter_upvr (copied, readonly)
			]]
			if isTransitioning_upvr then
				local var45
				if var45 then
					var45 = arg3.onTransitionStart
					if var45 then
						var45 = arg3.onTransitionStart
						var45(arg1._transitionProps, arg1._prevTransitionProps)
					end
					if arg1._positionLastValue == index_upvr then
						var45 = false
					else
						var45 = true
					end
					if var45 then
						local tbl_2 = {}
						if arg3.configureTransition then
							local any_configureTransition_result1 = arg3.configureTransition(arg1._transitionProps, arg1._prevTransitionProps)
							if not any_configureTransition_result1 then
								any_configureTransition_result1 = {}
							end
							tbl_2 = any_configureTransition_result1
						end
						position_upvr:setGoal(Otter_upvr.spring(arg3.navigation.state.index, Object_upvr.assign(table.clone(tbl_4_upvr), tbl_2)))
					else
						position_upvr:setGoal(Otter_upvr.instant(arg3.navigation.state.index))
					end
				end
			end
			if arg3.onTransitionStart then
				arg3.onTransitionStart(arg1._transitionProps, arg1._prevTransitionProps)
			end
			position_upvr:setGoal(Otter_upvr.instant(index_upvr))
		end)
	end
end
function any_extend_result1._onTransitionEnd(arg1) -- Line 284
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: buildTransitionProps_upvr (readonly)
	]]
	local var48
	arg1._prevTransitionProps = var48
	local scenes = arg1.state.scenes
	local any_filter_result1 = Array_upvr.filter(scenes, function(arg1_5) -- Line 47
		return not arg1_5.isStale
	end)
	if #any_filter_result1 == #scenes then
		var48 = scenes
	else
		var48 = any_filter_result1
	end
	local any_assign_result1 = Object_upvr.assign(table.clone(arg1.state), {
		scenes = var48;
	})
	arg1._transitionProps = buildTransitionProps_upvr(arg1.props, any_assign_result1)
	local _prevTransitionProps_upvr = arg1._prevTransitionProps
	arg1:setState(any_assign_result1, function() -- Line 296
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: _prevTransitionProps_upvr (readonly)
		]]
		if arg1.props.onTransitionEnd then
			arg1.props.onTransitionEnd(arg1._transitionProps, _prevTransitionProps_upvr)
		end
		local _1 = arg1._transitionQueue[1]
		if _1 then
			arg1._transitionQueue = table.clone(arg1._transitionQueue)
			table.remove(arg1._transitionQueue, 1)
			arg1:_startTransition(_1.prevProps, arg1.props)
		else
			arg1._isTransitionRunning = false
		end
	end)
end
function any_extend_result1._onPositionStep(arg1, arg2) -- Line 315
	arg1._positionLastValue = arg2
	local index = arg1._transitionProps.index
	local var58
	if arg1._prevTransitionProps then
		var58 = arg1._prevTransitionProps.index
	end
	if arg1.props.onTransitionStep and var58 ~= index then
		arg1.props.onTransitionStep(arg1._transitionProps, arg1._prevTransitionProps, (arg2 - var58) / (index - var58))
	end
end
return any_extend_result1