-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:22
-- Luau version 6, Types version 3
-- Time taken: 0.002543 seconds

local function validateInterface_upvr(arg1, arg2, arg3) -- Line 3, Named "validateInterface"
	--[[ Upvalues[1]:
		[1]: validateInterface_upvr (readonly)
	]]
	if arg1 == nil then
		return true, ""
	end
	local type_result1_8 = type(arg1)
	local type_result1_5 = type(arg2)
	if type_result1_8 ~= type_result1_5 then
		return false, `interface types did not match; required {type_result1_8} ~= given {type_result1_5}`
	end
	if type_result1_8 == "table" then
		for i, v in arg1 do
			if i ~= "__index" and i ~= "jest.config" then
				local var17 = arg2[i]
				if var17 == nil then
					return false, `missing required value for interface {i}`
				end
				local type_result1_3 = type(v)
				local type_result1_2 = type(var17)
				if type_result1_2 ~= type_result1_3 then
					return false, `interface {i} types did not match; required {type_result1_3} ~= given {type_result1_2}`
				end
				if arg3 and type_result1_3 == "table" then
					if not v.isReactComponent then
						local validateInterface_result1_2, validateInterface_result2 = validateInterface_upvr(v, var17, arg3)
						if not validateInterface_result1_2 then
							return validateInterface_result1_2, validateInterface_result2
						end
					end
				end
			end
		end
	end
	return true, ""
end
return validateInterface_upvr