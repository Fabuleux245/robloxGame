-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:34
-- Luau version 6, Types version 3
-- Time taken: 0.001266 seconds

local t = require(script:FindFirstAncestor("RoduxSquads").Parent.t)
local module_upvr = {}
function module_upvr.new(arg1) -- Line 8
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	assert(module_upvr.isValid(arg1))
	module_upvr.__index = module_upvr
	setmetatable(arg1, module_upvr)
	return arg1
end
function module_upvr.mock(arg1) -- Line 20
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var3 = arg1
	if not var3 then
		var3 = {}
	end
	local var4 = var3
	return module_upvr.new({
		userId = var4.userId or 1234;
		partyVoiceEligible = var4.partyVoiceEligible or false;
	})
end
function module_upvr.format(arg1) -- Line 31
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr.new({
		userId = arg1.userId;
		partyVoiceEligible = arg1.partyVoiceEligible;
	})
end
module_upvr.isValid = t.interface({
	userId = t.number;
	partyVoiceEligible = t.optional(t.boolean);
})
return module_upvr