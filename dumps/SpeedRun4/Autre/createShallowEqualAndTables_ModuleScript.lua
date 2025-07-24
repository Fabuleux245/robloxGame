-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:25
-- Luau version 6, Types version 3
-- Time taken: 0.001547 seconds

return function(arg1) -- Line 2, Named "createShallowEqualAndTables"
	local tbl_upvr = {}
	for _, v in arg1 do
		tbl_upvr[v] = true
	end
	return function(arg1_2, arg2) -- Line 8
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		for i_2, v_2 in arg1_2 do
			local var15 = arg2[i_2]
			if tbl_upvr[i_2] then
				if typeof(v_2) ~= "table" or typeof(var15) ~= "table" then
					return false
				end
				for i_3, v_3 in v_2 do
					if v_3 ~= var15[i_3] then
						return false
					end
				end
				for i_4, _ in var15 do
					if v_2[i_4] == nil then
						return false
					end
				end
			elseif v_2 ~= var15 then
				return false
			end
		end
		for i_5, _ in arg2 do
			if arg1_2[i_5] == nil then
				return false
			end
		end
		return true
	end
end