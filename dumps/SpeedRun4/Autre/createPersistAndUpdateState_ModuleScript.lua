-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:37
-- Luau version 6, Types version 3
-- Time taken: 0.000819 seconds

local Rodux_upvr = require(script:FindFirstAncestor("RoduxSquads").Parent.Rodux)
return function(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: Rodux_upvr (readonly)
	]]
	local var4
	if arg1.storage == nil then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "Persist storage is required")
	var4 = arg1.storage.memStorageKey
	var4 = Rodux_upvr.makeActionCreator
	var4 = var4((var4 or "").."PersistAndUpdateState", function() -- Line 10
		return {}
	end)
	return var4
end