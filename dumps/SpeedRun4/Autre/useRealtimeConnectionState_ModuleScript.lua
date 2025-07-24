-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:38
-- Luau version 6, Types version 3
-- Time taken: 0.000680 seconds

local useRobloxEventReceiver_upvr = require(script.Parent.useRobloxEventReceiver)
local React_upvr = require(script:FindFirstAncestor("RealtimeDelivery").Parent.React)
return function() -- Line 7, Named "useRealtimeConnectionState"
	--[[ Upvalues[2]:
		[1]: useRobloxEventReceiver_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local var1_result1_upvr = useRobloxEventReceiver_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(Enum.ConnectionState.Connected)
	React_upvr.useEffect(function() -- Line 11
		--[[ Upvalues[2]:
			[1]: var1_result1_upvr (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		local any_observeEvent_result1_upvr = var1_result1_upvr:observeEvent("signalR", function(arg1) -- Line 12
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr(arg1)
		end)
		return function() -- Line 16
			--[[ Upvalues[1]:
				[1]: any_observeEvent_result1_upvr (readonly)
			]]
			any_observeEvent_result1_upvr:disconnect()
		end
	end, {var1_result1_upvr})
	return any_useState_result1
end