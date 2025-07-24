-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:56
-- Luau version 6, Types version 3
-- Time taken: 0.001320 seconds

local module = {}
local function _(arg1) -- Line 3, Named "countTable"
	local var6 = 0
	for _, _ in pairs(arg1) do
		var6 += 1
	end
	return var6
end
function module.combine(arg1) -- Line 13
	local type_result1 = type(require(arg1[1]))
	local var31
	if type_result1 == "string" then
		var31 = ""
		for _, v_2 in ipairs(arg1) do
			var31 = var31..require(v_2)
		end
		return var31
	end
	if type_result1 == "table" then
		for _, v_3 in ipairs(arg1) do
			local v_3_2 = require(v_3)
			local var39 = 0
			for _, v_4 in pairs(v_3_2) do
				var39 += 1
			end
			var39 = #v_3_2
			if var39 == var39 then
				var39 = ipairs(v_3_2)
				local ipairs_result1, ipairs_result2_2, ipairs_result3_3 = ipairs(v_3_2)
				for _, v_5 in ipairs_result1, ipairs_result2_2, ipairs_result3_3 do
					v_4 = table.insert
					v_4({}, v_5)
				end
			else
				ipairs_result1 = pairs(v_3_2)
				for i_6, v_6 in pairs(v_3_2) do
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					;({})[i_6] = v_6
				end
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
return module