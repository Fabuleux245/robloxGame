-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:52
-- Luau version 6, Types version 3
-- Time taken: 0.000546 seconds

local dependencies = require(script.Parent.Parent.dependencies)
local llama_upvr = dependencies.llama
local any_installReducer_result1_upvr = dependencies.RoduxContacts.installReducer()
return function(arg1, arg2) -- Line 9
	--[[ Upvalues[2]:
		[1]: llama_upvr (readonly)
		[2]: any_installReducer_result1_upvr (readonly)
	]]
	local module = {}
	module[1] = arg2
	return llama_upvr.List.reduce(module, any_installReducer_result1_upvr, arg1)
end