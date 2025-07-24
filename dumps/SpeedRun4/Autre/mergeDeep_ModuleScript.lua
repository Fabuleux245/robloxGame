-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:28
-- Luau version 6, Types version 3
-- Time taken: 0.001714 seconds

local LuauPolyfill = require(script:FindFirstAncestor("GraphQLServer").Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local function _(arg1) -- Line 9, Named "isObject"
	--[[ Upvalues[1]:
		[1]: Array_upvr (readonly)
	]]
	local var3 = false
	if typeof(arg1) == "table" then
		local any_isArray_result1 = Array_upvr.isArray(arg1)
		if any_isArray_result1 then
			if 0 >= #arg1 then
				any_isArray_result1 = false
			else
				any_isArray_result1 = true
			end
		end
		var3 = not any_isArray_result1
	end
	return var3
end
local Object_upvr = LuauPolyfill.Object
local function mergeDeep_upvr(arg1, arg2) -- Line 13, Named "mergeDeep"
	--[[ Upvalues[3]:
		[1]: Array_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: mergeDeep_upvr (readonly)
	]]
	local var14
	if not var14 then
		var14 = {}
	end
	local module = {}
	for _, v in arg1 do
		local var16 = false
		if typeof(var14) == "table" then
			local any_isArray_result1_3 = Array_upvr.isArray(var14)
			if any_isArray_result1_3 then
				if 0 >= #var14 then
					any_isArray_result1_3 = false
				else
					any_isArray_result1_3 = true
				end
			end
			var16 = not any_isArray_result1_3
		end
		if var16 then
			var16 = false
			local var18 = var16
			if typeof(v) == "table" then
				local any_isArray_result1_2 = Array_upvr.isArray(v)
				if any_isArray_result1_2 then
					if 0 >= #v then
						any_isArray_result1_2 = false
					else
						any_isArray_result1_2 = true
					end
				end
				var18 = not any_isArray_result1_2
			end
			if var18 then
				for i_2, v_2 in v do
					if type(v_2) == "table" then
						if module[i_2] == nil then
							Object_upvr.assign(module, {
								[i_2] = v_2;
							})
						else
							module[i_2] = mergeDeep_upvr({module[i_2], v_2}, arg2)
						end
					else
						Object_upvr.assign(module, {
							[i_2] = v_2;
						})
					end
				end
			end
		end
	end
	return module
end
return mergeDeep_upvr