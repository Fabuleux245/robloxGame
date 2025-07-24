-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:01
-- Luau version 6, Types version 3
-- Time taken: 0.001864 seconds

local NextDataExpirationTimeRodux = script:FindFirstAncestor("NextDataExpirationTimeRodux")
local ExpirationTimeNamespace_upvr = require(NextDataExpirationTimeRodux.ExpirationTimeNamespace)
local function initializeExpirationTimes_upvr() -- Line 8, Named "initializeExpirationTimes"
	--[[ Upvalues[1]:
		[1]: ExpirationTimeNamespace_upvr (readonly)
	]]
	local module = {}
	for _, v in ExpirationTimeNamespace_upvr do
		module[v] = {}
	end
	return module
end
local SetNextDataExpirationTime_upvr = require(NextDataExpirationTimeRodux.SetNextDataExpirationTime)
return {
	key = "NextDataExpirationTimeKey";
	reducer = function(arg1, arg2) -- Line 17
		--[[ Upvalues[2]:
			[1]: initializeExpirationTimes_upvr (readonly)
			[2]: SetNextDataExpirationTime_upvr (readonly)
		]]
		local var10 = arg1
		if not var10 then
			var10 = initializeExpirationTimes_upvr()
		end
		local var11 = var10
		if arg2.type == SetNextDataExpirationTime_upvr.name then
			assert(var11, "state should always exist, assert for linter")
			local namespace = arg2.namespace
			local key = arg2.key
			assert(namespace, "SetNextDataExpirationTime does not have a valid namespace")
			assert(key, `SetNextDataExpirationTime does not have a valid key for namespace {namespace}`)
			local var14 = var11[namespace]
			if not var14 then
				warn(`No namespace {namespace} defined in NextDataExpirationTimeReducer for action`)
				return var11
			end
			assert(var14, "namespaceState should always exist, assert for linter")
			local clone_2 = table.clone(var14)
			clone_2[key] = arg2.nextDataExpirationTime
			local clone = table.clone(var11)
			clone[namespace] = clone_2
			return clone
		end
		return var11
	end;
}