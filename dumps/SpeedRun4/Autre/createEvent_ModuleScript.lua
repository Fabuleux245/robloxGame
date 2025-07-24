-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:30
-- Luau version 6, Types version 3
-- Time taken: 0.000526 seconds

local bindableEventQueue_upvr = require(script.Parent.bindableEventQueue)
return function(arg1) -- Line 3
	--[[ Upvalues[1]:
		[1]: bindableEventQueue_upvr (readonly)
	]]
	return function(arg1_2) -- Line 4, Named "createEvent"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: bindableEventQueue_upvr (copied, readonly)
		]]
		return function(...) -- Line 5
			--[[ Upvalues[3]:
				[1]: arg1_2 (readonly)
				[2]: arg1 (copied, readonly)
				[3]: bindableEventQueue_upvr (copied, readonly)
			]]
			local arg1_2_result1 = arg1_2(...)
			if arg1:GetAttribute("isConnected") ~= true then
				bindableEventQueue_upvr:add(arg1_2_result1)
			else
				arg1:Fire(arg1_2_result1)
			end
		end
	end
end