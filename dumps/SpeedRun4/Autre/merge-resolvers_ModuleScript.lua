-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:11
-- Luau version 6, Types version 3
-- Time taken: 0.001689 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local module = {}
local Boolean_upvr = LuauPolyfill.Boolean
local Array_upvr = LuauPolyfill.Array
local mergeDeep_upvr = require(Parent.Utils).mergeDeep
local String_upvr = LuauPolyfill.String
local function mergeResolvers_upvr(arg1, arg2) -- Line 59, Named "mergeResolvers"
	--[[ Upvalues[5]:
		[1]: Boolean_upvr (readonly)
		[2]: Array_upvr (readonly)
		[3]: mergeResolvers_upvr (readonly)
		[4]: mergeDeep_upvr (readonly)
		[5]: String_upvr (readonly)
	]]
	local var16
	if not Boolean_upvr.toJSBoolean(arg1) or Array_upvr.isArray(arg1) and #arg1 == 0 then
		return {}
	end
	if not Boolean_upvr.toJSBoolean(Array_upvr.isArray(arg1)) then
		return arg1
	end
	if #arg1 == 1 then
		if Boolean_upvr.toJSBoolean(arg1[1]) then
			return arg1[1]
		end
		return {}
	end
	var16 = nil
	for _, v in arg1, nil, var16 do
		if Boolean_upvr.toJSBoolean(Array_upvr.isArray(v)) then
			v = mergeResolvers_upvr(v)
		end
		local var17 = false
		if typeof(v) == "table" then
			var17 = v
		end
		if Boolean_upvr.toJSBoolean(var17) then
			table.insert({}, v)
		end
	end
	var16 = true
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local var6_result1 = mergeDeep_upvr({}, var16)
	var16 = Boolean_upvr
	if typeof(arg2) == "table" then
		var16 = arg2.exclusions
	else
		var16 = nil
	end
	if var16.toJSBoolean(var16) then
		var16 = nil
		for _, v_2 in arg2.exclusions, var16 do
			local unpacked_value_1, unpacked_value_2 = table.unpack(String_upvr.split(v_2, '.'), 1, 2)
			if not Boolean_upvr.toJSBoolean(unpacked_value_2) or unpacked_value_2 == '*' then
				var6_result1[unpacked_value_1] = nil
			elseif Boolean_upvr.toJSBoolean(var6_result1[unpacked_value_1]) then
				var6_result1[unpacked_value_1][unpacked_value_2] = nil
			end
		end
	end
	return var6_result1
end
module.mergeResolvers = mergeResolvers_upvr
return module