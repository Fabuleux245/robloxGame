-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:47
-- Luau version 6, Types version 3
-- Time taken: 0.002451 seconds

local React_upvr = require(script:FindFirstAncestor("RoactUtils").Parent.React)
local any_createContext_result1_upvr = React_upvr.createContext(nil)
local ReactProfilerContext_upvr = require(script.Parent.ReactProfilerContext)
local function ReactProfiler_upvr(arg1) -- Line 20, Named "ReactProfiler"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: any_createContext_result1_upvr (readonly)
		[3]: ReactProfilerContext_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(0)
	local any_useRef_result1_upvr_2 = React_upvr.useRef(0)
	local any_useContext_result1_upvr = React_upvr.useContext(any_createContext_result1_upvr)
	local any_useContext_result1_upvr_2 = React_upvr.useContext(ReactProfilerContext_upvr)
	return React_upvr.createElement(React_upvr.Profiler, {
		id = arg1.id;
		onRender = React_upvr.useCallback(function(arg1_2, arg2, arg3, arg4, arg5, arg6) -- Line 30
			--[[ Upvalues[3]:
				[1]: any_useContext_result1_upvr (readonly)
				[2]: any_useRef_result1_upvr (readonly)
				[3]: any_useContext_result1_upvr_2 (readonly)
			]]
			if any_useContext_result1_upvr ~= nil then
				local exclusiveRenderDurationRef = any_useContext_result1_upvr.exclusiveRenderDurationRef
				exclusiveRenderDurationRef.current -= arg3
			end
			local var10 = any_useRef_result1_upvr
			var10.current += arg3
			if any_useContext_result1_upvr_2 ~= nil then
				local tbl_2 = {}
				tbl_2.profilerId = arg1_2
				tbl_2.startTime = arg5
				tbl_2.commitTime = arg6
				tbl_2.duration = arg3
				tbl_2.exclusiveDuration = any_useRef_result1_upvr.current
				any_useContext_result1_upvr_2.onRender:fire(tbl_2)
			end
			any_useRef_result1_upvr.current = 0
		end, {});
		onCommit = React_upvr.useCallback(function(arg1_3, arg2, arg3, arg4) -- Line 61
			--[[ Upvalues[3]:
				[1]: any_useContext_result1_upvr (readonly)
				[2]: any_useRef_result1_upvr_2 (readonly)
				[3]: any_useContext_result1_upvr_2 (readonly)
			]]
			if any_useContext_result1_upvr ~= nil then
				local exclusiveEffectDurationRef = any_useContext_result1_upvr.exclusiveEffectDurationRef
				exclusiveEffectDurationRef.current -= arg3
			end
			local var14 = any_useRef_result1_upvr_2
			var14.current += arg3
			if any_useContext_result1_upvr_2 ~= nil then
				local tbl = {}
				tbl.profilerId = arg1_3
				tbl.commitTime = arg4
				tbl.duration = arg3
				tbl.exclusiveDuration = any_useRef_result1_upvr_2.current
				any_useContext_result1_upvr_2.onCommit:fire(tbl)
			end
			any_useRef_result1_upvr_2.current = 0
		end, {});
	}, React_upvr.createElement(any_createContext_result1_upvr.Provider, {
		key = "ExclusiveDurationsContext";
		value = React_upvr.useMemo(function() -- Line 83
			--[[ Upvalues[2]:
				[1]: any_useRef_result1_upvr (readonly)
				[2]: any_useRef_result1_upvr_2 (readonly)
			]]
			return {
				exclusiveRenderDurationRef = any_useRef_result1_upvr;
				exclusiveEffectDurationRef = any_useRef_result1_upvr_2;
			}
		end, {});
	}, arg1.children))
end
local isReactProfilingEnabled_upvr = require(script.Parent.isReactProfilingEnabled)
return function(arg1) -- Line 104
	--[[ Upvalues[3]:
		[1]: isReactProfilingEnabled_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ReactProfiler_upvr (readonly)
	]]
	if isReactProfilingEnabled_upvr then
		return React_upvr.createElement(ReactProfiler_upvr, {
			id = arg1.id;
		}, arg1.children)
	end
	return React_upvr.createElement(React_upvr.Fragment, nil, arg1.children)
end