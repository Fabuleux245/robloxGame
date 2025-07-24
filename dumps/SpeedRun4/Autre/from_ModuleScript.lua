-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:54:05
-- Luau version 6, Types version 3
-- Time taken: 0.001373 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent
local isArray_upvr = require(Parent_2.isArray)
local fromArray_upvr = require(script.fromArray)
local instanceof_upvr = require(Parent.instanceof)
local Set_upvr = require(Parent.Set)
local fromSet_upvr = require(script.fromSet)
local Map_upvr = require(Parent.Map)
local fromMap_upvr = require(script.fromMap)
local fromString_upvr = require(script.fromString)
return function(arg1, arg2, arg3) -- Line 23
	--[[ Upvalues[8]:
		[1]: isArray_upvr (readonly)
		[2]: fromArray_upvr (readonly)
		[3]: instanceof_upvr (readonly)
		[4]: Set_upvr (readonly)
		[5]: fromSet_upvr (readonly)
		[6]: Map_upvr (readonly)
		[7]: fromMap_upvr (readonly)
		[8]: fromString_upvr (readonly)
	]]
	if arg1 == nil then
		error("cannot create array from a nil value")
	end
	local typeof_result1 = typeof(arg1)
	if typeof_result1 == "table" and isArray_upvr(arg1) then
		return fromArray_upvr(arg1, arg2, arg3)
	end
	if instanceof_upvr(arg1, Set_upvr) then
		return fromSet_upvr(arg1, arg2, arg3)
	end
	if instanceof_upvr(arg1, Map_upvr) then
		return fromMap_upvr(arg1, arg2, arg3)
	end
	if typeof_result1 == "string" then
		return fromString_upvr(arg1, arg2, arg3)
	end
	return {}
end