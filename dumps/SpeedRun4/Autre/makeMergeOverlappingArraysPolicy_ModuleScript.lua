-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:17
-- Luau version 6, Types version 3
-- Time taken: 0.001071 seconds

return function(arg1) -- Line 1, Named "makeMergeOverlappingArraysPolicy"
	return function(arg1_2, arg2, arg3, arg4) -- Line 2, Named "mergeOverlappingArraysPolicy"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var9 = arg2
		if not var9 then
			var9 = {}
		end
		local var10 = var9
		var9 = arg3
		local var11 = var9
		if not var11 then
			var11 = {}
		end
		local var12 = var11
		if #var12 == 0 then
			return var10
		end
		if #var10 == 0 then
			return var12
		end
		local tbl = {}
		local clone = table.clone(var10)
		for i, v in clone do
			local any_readField_result1_2 = arg4:readField(arg1, v)
			if any_readField_result1_2 then
				tbl[any_readField_result1_2] = i
			end
		end
		for _, v_2 in var12 do
			local any_readField_result1 = arg4:readField(arg1, v_2)
			if any_readField_result1 and tbl[any_readField_result1] then
				local var17 = tbl[any_readField_result1]
				clone[var17] = arg4:mergeObjects(clone[var17], v_2)
			else
				table.insert(clone, v_2)
			end
		end
		return clone
	end
end