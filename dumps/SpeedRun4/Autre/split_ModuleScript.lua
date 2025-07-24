-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:28
-- Luau version 6, Types version 3
-- Time taken: 0.002093 seconds

local Parent = script.Parent
local MAX_SAFE_INTEGER_upvr = require(Parent.Parent.Number).MAX_SAFE_INTEGER
local findOr_upvr = require(Parent.findOr)
local slice_upvr = require(Parent.slice)
return function(arg1, arg2, arg3) -- Line 27, Named "split"
	--[[ Upvalues[3]:
		[1]: MAX_SAFE_INTEGER_upvr (readonly)
		[2]: findOr_upvr (readonly)
		[3]: slice_upvr (readonly)
	]]
	if arg2 == nil then
		local module = {}
		module[1] = arg1
		return module
	end
	if arg3 == 0 then
		return {}
	end
	if arg3 == nil or arg3 < 0 then
	else
	end
	if typeof(arg2) == "string" then
		if arg2 == "" then
			for i in arg1:gmatch('.') do
				table.insert({}, i)
				local var13
			end
			return var13
		end
		;({})[1] = arg2
		-- KONSTANTWARNING: GOTO [56] #40
	end
	local utf8_len_result1_2, utf8_len_result2_2 = utf8.len(arg1)
	if utf8_len_result1_2 == nil then
	else
	end
	assert(true, "string `%s` has an invalid byte at position %s":format(arg1, tostring(utf8_len_result2_2)))
	while true do
		local findOr_upvr_result1 = findOr_upvr(arg1, arg2, 1)
		local var18
		if findOr_upvr_result1 ~= nil then
			table.insert({}, slice_upvr(arg1, var18, findOr_upvr_result1.index))
			var18 = findOr_upvr_result1.index + utf8.len(findOr_upvr_result1.match)
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, slice_upvr(arg1, var18, nil))
		end
		if findOr_upvr_result1 ~= nil then
			local var19 = findOr_upvr_result1
		end
		if findOr_upvr_result1 == nil then break end
		if utf8_len_result1_2 < var18 then break end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if arg3 <= #{} then break end
		local var20
	end
	if var19 ~= nil then
		local utf8_len_result1, utf8_len_result2 = utf8.len(var19.match)
		if utf8_len_result1 == nil then
			var20 = false
		else
			var20 = true
		end
		assert(var20, "string `%s` has an invalid byte at position %s":format(var19.match, tostring(utf8_len_result2)))
		var20 = var19.index
		var20 = utf8_len_result1_2 + 1
		if var20 + utf8_len_result1 == var20 then
			var20 = {}
			table.insert(var20, "")
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end