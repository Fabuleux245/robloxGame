-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:47
-- Luau version 6, Types version 3
-- Time taken: 0.001727 seconds

local function deepEqual_upvr(arg1, arg2, arg3) -- Line 7, Named "deepEqual"
	--[[ Upvalues[1]:
		[1]: deepEqual_upvr (readonly)
	]]
	if arg1 == arg2 then
		return true
	end
	local type_result1_2 = type(arg1)
	if type_result1_2 ~= type(arg2) then
		return false
	end
	if type_result1_2 ~= "table" then
		return false
	end
	if not arg3 then
		local getmetatable_result1 = getmetatable(arg1)
		if getmetatable_result1 then
			local __eq = getmetatable_result1.__eq
			if __eq then
				if arg1 ~= arg2 then
					__eq = false
				else
					__eq = true
				end
				return __eq
			end
		end
	end
	local tbl_2 = {}
	for i, v in pairs(arg1) do
		local var35 = arg2[i]
		if var35 == nil or not deepEqual_upvr(v, var35, arg3) then
			return false
		end
		tbl_2[i] = true
	end
	for i_2, _ in pairs(arg2) do
		if not tbl_2[i_2] then
			return false
		end
	end
	return true
end
return deepEqual_upvr