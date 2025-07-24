-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:14
-- Luau version 6, Types version 3
-- Time taken: 0.001710 seconds

local ArgCheck_upvr = require(script:FindFirstAncestor("Localization").Parent.ArgCheck)
return function(arg1, arg2) -- Line 6, Named "localizeStrings"
	--[[ Upvalues[1]:
		[1]: ArgCheck_upvr (readonly)
	]]
	for i, v_upvr in pairs(arg2) do
		if typeof(v_upvr) == "table" then
			if typeof(v_upvr[1]) == "string" then
				local pcall_result1, pcall_result2 = pcall(function() -- Line 12
					--[[ Upvalues[2]:
						[1]: arg1 (readonly)
						[2]: v_upvr (readonly)
					]]
					return arg1:Format(v_upvr[1], v_upvr)
				end)
				ArgCheck_upvr.isEqual(pcall_result1, true, string.format("LocalizationConsumer finding value for translation key[%s]: %s", i, v_upvr[1]))
				if not pcall_result1 or not pcall_result2 then
				end
				;({})[i] = ""
			else
				error(string.format("%s[1] in stringsToBeLocalized must be a string, got %s instead", i, typeof(v_upvr[1])))
			end
		else
			local var12
			if typeof(v_upvr) == "string" then
				local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 37
					--[[ Upvalues[2]:
						[1]: arg1 (readonly)
						[2]: v_upvr (readonly)
					]]
					return arg1:Format(v_upvr)
				end)
				var12 = ArgCheck_upvr.isEqual
				var12(pcall_result1_2, true, string.format("LocalizationConsumer finding value for translation key[%s]: %s", i, v_upvr))
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var12 = pcall_result2_2
					return var12
				end
				if not pcall_result1_2 or not INLINED() then
					var12 = ""
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				;({})[i] = var12
			else
				var12 = "%s in stringsToBeLocalized must be a string or table, got %s instead"
				error(string.format(var12, i, typeof(v_upvr)))
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end