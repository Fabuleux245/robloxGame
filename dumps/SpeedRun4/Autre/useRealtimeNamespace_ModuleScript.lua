-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:39
-- Luau version 6, Types version 3
-- Time taken: 0.000982 seconds

local Parent = script:FindFirstAncestor("RealtimeDelivery").Parent
local useRobloxEventReceiver_upvr = require(script.Parent.useRobloxEventReceiver)
local React_upvr = require(Parent.React)
local List_upvr = require(Parent.Cryo).List
return function(arg1, arg2, arg3) -- Line 11, Named "useRealtimeNamespace"
	--[[ Upvalues[3]:
		[1]: useRobloxEventReceiver_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: List_upvr (readonly)
	]]
	local useRobloxEventReceiver_upvr_result1_upvr = useRobloxEventReceiver_upvr()
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = useRobloxEventReceiver_upvr_result1_upvr
	React_upvr.useEffect(function() -- Line 14
		--[[ Upvalues[3]:
			[1]: useRobloxEventReceiver_upvr_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		local any_observeEvent_result1_upvr = useRobloxEventReceiver_upvr_result1_upvr:observeEvent(arg1, arg2)
		return function() -- Line 17
			--[[ Upvalues[1]:
				[1]: any_observeEvent_result1_upvr (readonly)
			]]
			any_observeEvent_result1_upvr:disconnect()
		end
	end, List_upvr.join(tbl, arg3))
end