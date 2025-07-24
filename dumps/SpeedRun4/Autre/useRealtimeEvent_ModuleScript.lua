-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:39
-- Luau version 6, Types version 3
-- Time taken: 0.000660 seconds

local useRealtimeNamespace_upvr = require(script.Parent.useRealtimeNamespace)
return function(arg1, arg2, arg3, arg4) -- Line 8, Named "useRealtimeEvent"
	--[[ Upvalues[1]:
		[1]: useRealtimeNamespace_upvr (readonly)
	]]
	useRealtimeNamespace_upvr(arg1, function(arg1_2) -- Line 14
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
		]]
		if arg1_2.Type == arg2 then
			arg3(arg1_2)
		end
	end, arg4)
end