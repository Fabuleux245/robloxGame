-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:28
-- Luau version 6, Types version 3
-- Time taken: 0.001466 seconds

local LuauPolyfill = require(script:FindFirstAncestor("GraphQLServer").Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local mergeDeep_upvr = require(script.Parent.mergeDeep)
local Boolean_upvr = LuauPolyfill.Boolean
local function mergeResolvers_upvr(arg1, arg2) -- Line 14, Named "mergeResolvers"
	--[[ Upvalues[4]:
		[1]: Array_upvr (readonly)
		[2]: mergeResolvers_upvr (readonly)
		[3]: mergeDeep_upvr (readonly)
		[4]: Boolean_upvr (readonly)
	]]
	if not arg1 or Array_upvr.isArray(arg1) and #arg1 == 0 then
		return {}
	end
	if not Array_upvr.isArray(arg1) then
		return arg1
	end
	if #arg1 == 1 then
		local _1 = arg1[1]
		if not _1 then
			_1 = {}
		end
		return _1
	end
	for i, v in arg1 do
		if Array_upvr.isArray(v) then
			v = mergeResolvers_upvr(v)
		end
		if type(v) == "table" and v then
			table.insert({}, v)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local mergeDeep_upvr_result1 = mergeDeep_upvr({}, true)
	if arg2 and arg2.exclusions then
		i = nil
		for _, v_2 in arg2.exclusions, nil, i do
			local unpacked_value_1, unpacked_value_2 = table.unpack(v_2:split('.'), 1, 2)
			if not unpacked_value_2 or unpacked_value_2 == '*' then
				mergeDeep_upvr_result1[tostring(unpacked_value_1)] = nil
			elseif Boolean_upvr.toJSBoolean(mergeDeep_upvr_result1[tostring(unpacked_value_1)]) then
				mergeDeep_upvr_result1[tostring(unpacked_value_1)][tostring(unpacked_value_2)] = nil
			end
		end
	end
	return mergeDeep_upvr_result1
end
return mergeResolvers_upvr