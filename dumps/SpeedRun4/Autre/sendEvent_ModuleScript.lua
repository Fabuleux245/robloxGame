-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:08
-- Luau version 6, Types version 3
-- Time taken: 0.000502 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Services.Analytics)
local module_upvr = {Analytics_upvr}
local Thunk_upvr = require(Parent.Thunk)
return function(arg1, arg2) -- Line 11, Named "sendEvent"
	--[[ Upvalues[3]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Analytics_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2_2) -- Line 12
		--[[ Upvalues[3]:
			[1]: Analytics_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		arg2_2[Analytics_upvr].signalEvent(arg1, arg2)
	end)
end