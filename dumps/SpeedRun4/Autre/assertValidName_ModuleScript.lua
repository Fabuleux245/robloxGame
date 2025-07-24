-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:51:04
-- Luau version 6, Types version 3
-- Time taken: 0.002027 seconds

local Parent = script.Parent.Parent
local isValidNameError_upvw
local devAssert_upvr = require(Parent.jsutils.devAssert).devAssert
local GraphQLError_upvr = require(Parent.error.GraphQLError).GraphQLError
function isValidNameError_upvw(arg1) -- Line 34, Named "isValidNameError"
	--[[ Upvalues[2]:
		[1]: devAssert_upvr (readonly)
		[2]: GraphQLError_upvr (readonly)
	]]
	local var6
	if type(arg1) ~= "string" then
		var6 = false
	else
		var6 = true
	end
	devAssert_upvr(var6, "Expected name to be a string.")
	var6 = arg1
	var6 = 1
	if var6 < string.len(var6) and arg1:sub(1, 1) == '_' and arg1:sub(2, 2) == '_' then
		var6 = GraphQLError_upvr
		var6 = "Name \""..arg1.."\" must not begin with \"__\", which is reserved by GraphQL introspection."
		return var6.new(var6)
	end
	var6 = arg1
	local string_find_result1, string_find_result2 = string.find(var6, "[_%a][_%a%d]*")
	local var9 = false
	if string_find_result1 == 1 then
		if string.len(arg1) ~= string_find_result2 then
			var9 = false
		else
			var9 = true
		end
	end
	if not var9 then
		return GraphQLError_upvr.new("Names must match [_%a][_%a%d]* but \""..arg1.."\" does not.")
	end
	return nil
end
return {
	assertValidName = function(arg1) -- Line 23, Named "assertValidName"
		--[[ Upvalues[1]:
			[1]: isValidNameError_upvw (read and write)
		]]
		local isValidNameError_upvw_result1 = isValidNameError_upvw(arg1)
		if isValidNameError_upvw_result1 then
			error(isValidNameError_upvw_result1)
		end
		return arg1
	end;
	isValidNameError = isValidNameError_upvw;
}