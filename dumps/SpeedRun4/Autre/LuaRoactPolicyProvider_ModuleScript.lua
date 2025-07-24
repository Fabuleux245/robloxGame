-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:50
-- Luau version 6, Types version 3
-- Time taken: 0.000620 seconds

local getPolicyImplementations = script.getPolicyImplementations
local module = {}
local connect_upvr = require(script.connect)
local Provider_upvr = require(script.Provider)
function module.withGetPolicyImplementation(arg1) -- Line 12
	--[[ Upvalues[2]:
		[1]: connect_upvr (readonly)
		[2]: Provider_upvr (readonly)
	]]
	assert(arg1.read, "expected getPolicyImpl to have `read` function")
	assert(arg1.onPolicyChanged, "expected getPolicyImpl to have `onPolicyChanged` function")
	return {
		connect = connect_upvr(arg1);
		Provider = Provider_upvr();
	}
end
module.GetPolicyImplementations = {
	MemStorageService = require(getPolicyImplementations.fromMemStorageService)();
	PolicyService = require(getPolicyImplementations.fromPolicyService)();
	Static = require(getPolicyImplementations.fromStaticSource)();
}
module.Logger = require(script.Logger)
module.AppPolicyContext = require(script.AppPolicyContext)
return module