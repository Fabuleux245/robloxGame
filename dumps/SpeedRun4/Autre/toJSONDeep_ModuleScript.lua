-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:50:36
-- Luau version 6, Types version 3
-- Time taken: 0.000754 seconds

local Parent = script.Parent.Parent.Parent
local isObjectLike_upvr = require(Parent.jsutils.isObjectLike).isObjectLike
local Array_upvr = require(Parent.Parent.LuauPolyfill).Array
local function toJSONDeep_upvr(arg1) -- Line 18, Named "toJSONDeep"
	--[[ Upvalues[3]:
		[1]: isObjectLike_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: toJSONDeep_upvr (readonly)
	]]
	if not isObjectLike_upvr(arg1) then
		return arg1
	end
	if type(arg1.toJSON) == "function" then
		return arg1:toJSON()
	end
	if Array_upvr.isArray(arg1) then
		return Array_upvr.map(arg1, toJSONDeep_upvr)
	end
	for i, v in pairs(arg1) do
		({})[i] = toJSONDeep_upvr(v)
		local var12
	end
	return var12
end
return {
	toJSONDeep = toJSONDeep_upvr;
}