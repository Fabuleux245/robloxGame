-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:30
-- Luau version 6, Types version 3
-- Time taken: 0.000788 seconds

local Parent = script.Parent.Parent
local module = {}
local GraphQL = require(Parent.GraphQL)
local Boolean_upvr = require(Parent.LuauPolyfill).Boolean
local isCompositeType_upvr = GraphQL.isCompositeType
local doTypesOverlap_upvr = GraphQL.doTypesOverlap
function module.implementsAbstractType(arg1, arg2, arg3) -- Line 20
	--[[ Upvalues[3]:
		[1]: Boolean_upvr (readonly)
		[2]: isCompositeType_upvr (readonly)
		[3]: doTypesOverlap_upvr (readonly)
	]]
	if arg3 == nil or arg2 == nil then
		return false
	end
	if arg2 == arg3 then
		return true
	end
	local var7 = Boolean_upvr
	local var5_result1 = isCompositeType_upvr(arg2)
	if Boolean_upvr.toJSBoolean(var5_result1) then
		var7 = isCompositeType_upvr(arg3)
	else
		var7 = var5_result1
	end
	if var7.toJSBoolean(var7) then
		return doTypesOverlap_upvr(arg1, arg2, arg3)
	end
	return false
end
return module