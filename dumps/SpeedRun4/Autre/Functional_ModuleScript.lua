-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:39
-- Luau version 6, Types version 3
-- Time taken: 0.002127 seconds

return {
	Filter = function(arg1, arg2) -- Line 11, Named "Filter"
		for i = 1, #arg1 do
			local var3 = arg1[i]
			if arg2(var3, i) then
				table.insert({}, var3)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end;
	Map = function(arg1, arg2) -- Line 27, Named "Map"
		local module = {}
		for i_2 = 1, #arg1 do
			module[i_2] = arg2(arg1[i_2], i_2)
		end
		return module
	end;
	MapReverse = function(arg1, arg2) -- Line 40, Named "MapReverse"
		local module_2 = {}
		for i_3 = #arg1, 1, -1 do
			module_2[i_3] = arg2(arg1[i_3], i_3)
		end
		return module_2
	end;
	FilterMap = function(arg1, arg2) -- Line 56, Named "FilterMap"
		for i_4 = 1, #arg1 do
			local arg2_result1 = arg2(arg1[i_4], i_4)
			if arg2_result1 ~= nil then
				table.insert({}, arg2_result1)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end;
	Fold = function(arg1, arg2, arg3) -- Line 74, Named "Fold"
		local var14 = arg2
		for i_5 = 1, #arg1 do
			var14 = arg3(var14, arg1[i_5], i_5)
		end
		return var14
	end;
	FoldDictionary = function(arg1, arg2, arg3) -- Line 87, Named "FoldDictionary"
		local var19 = arg2
		for i_6, v in pairs(arg1) do
			var19 = arg3(var19, i_6, v)
		end
		return var19
	end;
	Take = function(arg1, arg2, arg3) -- Line 100, Named "Take"
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		arg3 = arg3 or 1
		local var27 = arg3
		local var28 = (arg2) + (var27 - 1)
		if #arg1 < var28 then
			var28 = #arg1
		end
		for i_7 = var27, var28 do
			({})[(i_7) - (var27 - 1)] = arg1[i_7]
			local var30
		end
		return var30
	end;
	Find = function(arg1, arg2) -- Line 122, Named "Find"
		for i_8, v_2 in ipairs(arg1) do
			if v_2 == arg2 then
				return i_8
			end
		end
		return nil
	end;
}