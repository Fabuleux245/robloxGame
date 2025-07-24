-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:22
-- Luau version 6, Types version 3
-- Time taken: 0.000585 seconds

local UniversalAppGetPolicy_upvr = require(script.Parent.UniversalAppGetPolicy)
local AppFeaturePolicies_upvr = require(script.Parent.AppFeaturePolicies)
return function() -- Line 8
	--[[ Upvalues[2]:
		[1]: UniversalAppGetPolicy_upvr (readonly)
		[2]: AppFeaturePolicies_upvr (readonly)
	]]
	local any_read_result1 = UniversalAppGetPolicy_upvr.read()
	if not any_read_result1 then
		any_read_result1 = {}
	end
	return AppFeaturePolicies_upvr(any_read_result1)
end