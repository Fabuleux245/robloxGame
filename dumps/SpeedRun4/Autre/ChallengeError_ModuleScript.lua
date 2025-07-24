-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:23
-- Luau version 6, Types version 3
-- Time taken: 0.001189 seconds

local GenericChallenges = script:FindFirstAncestor("GenericChallenges")
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new(arg1, arg2) -- Line 25
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {}
	module.kind = arg1
	module.data = arg2
	return setmetatable(module, module_2_upvr)
end
local LuauPolyfill_upvr = require(GenericChallenges.Parent.LuauPolyfill)
function module_2_upvr.match(arg1) -- Line 32
	--[[ Upvalues[2]:
		[1]: LuauPolyfill_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	return LuauPolyfill_upvr.instanceof(arg1, module_2_upvr)
end
local ErrorKind_upvr = require(GenericChallenges.Types.ErrorKind)
function module_2_upvr.matchAbandoned(arg1) -- Line 36
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: ErrorKind_upvr (readonly)
	]]
	local any_match_result1 = module_2_upvr.match(arg1)
	if any_match_result1 then
		if arg1.kind ~= ErrorKind_upvr.Abandoned then
			any_match_result1 = false
		else
			any_match_result1 = true
		end
	end
	return any_match_result1
end
return module_2_upvr