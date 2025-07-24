-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:42
-- Luau version 6, Types version 3
-- Time taken: 0.000935 seconds

local function defaultFilter_upvr(...) -- Line 5, Named "defaultFilter"
	return select(1, ...)
end
local Signals_upvr = require(script.Parent.Parent.Signals)
return function(arg1, arg2, arg3) -- Line 9, Named "createRBXEventSignal"
	--[[ Upvalues[2]:
		[1]: Signals_upvr (readonly)
		[2]: defaultFilter_upvr (readonly)
	]]
	local any_createSignal_result1, any_createSignal_result2_upvr = Signals_upvr.createSignal(arg2)
	local var4_upvr
	if arg3 ~= nil then
		var4_upvr = arg3
	else
		var4_upvr = defaultFilter_upvr
	end
	return any_createSignal_result1, arg1:Connect(function(...) -- Line 18
		--[[ Upvalues[2]:
			[1]: any_createSignal_result2_upvr (readonly)
			[2]: var4_upvr (readonly)
		]]
		any_createSignal_result2_upvr(var4_upvr(...))
	end)
end