-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:29:28
-- Luau version 6, Types version 3
-- Time taken: 0.000789 seconds

local useLoadingTimers_upvr = require(script.Parent.useLoadingTimers)
local React_upvr = require(script:FindFirstAncestor("SocialLuaAnalytics").Parent.React)
return function(arg1) -- Line 26, Named "useFetchTimeLogging"
	--[[ Upvalues[2]:
		[1]: useLoadingTimers_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local loading_upvr = arg1.loading
	local error_upvr = arg1.error
	local any_useRef_result1_upvr = React_upvr.useRef("")
	local var1_result1_upvr = useLoadingTimers_upvr({})
	React_upvr.useEffect(function() -- Line 33
		--[[ Upvalues[5]:
			[1]: loading_upvr (readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: var1_result1_upvr (readonly)
			[4]: arg1 (readonly)
			[5]: error_upvr (readonly)
		]]
		if loading_upvr then
			any_useRef_result1_upvr.current = var1_result1_upvr.start(arg1.timerKey)
		end
		if not loading_upvr and any_useRef_result1_upvr.current == arg1.timerKey then
			local any_stop_result1 = var1_result1_upvr.stop(arg1.timerKey)
			any_useRef_result1_upvr.current = ""
			if error_upvr then
				arg1.onError(any_stop_result1, arg1.timerKey)
				return
			end
			arg1.onSuccess(any_stop_result1, arg1.timerKey)
		end
	end, {arg1.timerKey, loading_upvr, error_upvr})
end