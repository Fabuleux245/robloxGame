-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:08:17
-- Luau version 6, Types version 3
-- Time taken: 0.002182 seconds

return function(arg1) -- Line 17, Named "updateAll"
	local tbl_3 = {}
	local tbl_6 = {}
	local tbl = {}
	local var27 = 0
	local const_number_3 = 1
	for i in arg1.dependentSet do
		var27 += 1
		tbl[var27] = i
		tbl_6[i] = true
		local var29
	end
	while const_number_3 <= var27 do
		local var30 = tbl[const_number_3]
		local var31 = tbl_3[var30]
		if var31 == nil then
			var29 = 1
		else
			var29 = var31 + 1
		end
		tbl_3[var30] = var29
		var29 = var30.dependentSet
		if var29 ~= nil then
			var29 = var30.dependentSet
			i = nil
			for i_2 in var29, i do
				var27 += 1
				tbl[var27] = i_2
			end
		end
	end
	local const_number_4 = 1
	while const_number_4 <= var27 do
		local var33 = tbl[const_number_4]
		var29 = tbl_3[var33]
		local var34 = var29 - 1
		tbl_3[var33] = var34
		if var34 == 0 then
			var29 = tbl_6[var33]
			if var29 then
				var29 = var33:update()
				if var29 then
					var29 = var33.dependentSet
					if var29 ~= nil then
						var29 = var33.dependentSet
						i = nil
						for i_3 in var29, i do
							tbl_6[i_3] = true
						end
					end
				end
			end
		end
	end
end