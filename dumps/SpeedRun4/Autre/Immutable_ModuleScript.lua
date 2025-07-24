-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:55
-- Luau version 6, Types version 3
-- Time taken: 0.003498 seconds

return {
	JoinDictionaries = function(...) -- Line 10, Named "JoinDictionaries"
		local module_4 = {}
		for i = 1, select('#', ...) do
			for i_2, v in pairs(select(i, ...)) do
				module_4[i_2] = v
			end
		end
		return module_4
	end;
	JoinLists = function(...) -- Line 26, Named "JoinLists"
		local module_2 = {}
		for i_3 = 1, select('#', ...) do
			local selected_arg = select(i_3, ...)
			local len = #module_2
			for i_4 = 1, #selected_arg do
				module_2[len + i_4] = selected_arg[i_4]
			end
		end
		return module_2
	end;
	Set = function(arg1, arg2, arg3) -- Line 44, Named "Set"
		local module_3 = {}
		for i_5, v_2 in pairs(arg1) do
			module_3[i_5] = v_2
		end
		module_3[arg2] = arg3
		return module_3
	end;
	Append = function(arg1, ...) -- Line 59, Named "Append"
		local module = {}
		local len_2 = #arg1
		for i_6 = 1, len_2 do
			module[i_6] = arg1[i_6]
		end
		for i_7 = 1, select('#', ...) do
			module[len_2 + i_7] = select(i_7, ...)
		end
		return module
	end;
	RemoveFromDictionary = function(arg1, ...) -- Line 77, Named "RemoveFromDictionary"
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local _, _, _ = pairs(arg1)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 7. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 7. Error Block 2 end (CF ANALYSIS FAILED)
	end;
	RemoveFromList = function(arg1, arg2) -- Line 99, Named "RemoveFromList"
		for i_8 = 1, #arg1 do
			if i_8 ~= arg2 then
				table.insert({}, arg1[i_8])
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end;
	RemoveRangeFromList = function(arg1, arg2, arg3) -- Line 114, Named "RemoveRangeFromList"
		for i_9 = 1, #arg1 do
			if i_9 < arg2 or arg2 + arg3 <= i_9 then
				table.insert({}, arg1[i_9])
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end;
	RemoveValueFromList = function(arg1, arg2) -- Line 129, Named "RemoveValueFromList"
		for i_10 = 1, #arg1 do
			if arg1[i_10] ~= arg2 then
				table.insert({}, arg1[i_10])
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return {}
	end;
}