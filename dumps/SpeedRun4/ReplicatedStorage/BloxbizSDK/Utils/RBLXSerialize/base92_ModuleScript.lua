-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:52
-- Luau version 6, Types version 3
-- Time taken: 0.003339 seconds

local tbl_upvr_2 = {}
local tbl_upvr = {}
for i = 1, 91 do
	tbl_upvr_2[i - 1] = string.sub("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!#$%&()*+,./:;<=>?@[]^_`{|}~\"", i, i)
	tbl_upvr[string.sub("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!#$%&()*+,./:;<=>?@[]^_`{|}~\"", i, i)] = i - 1
end
return {
	encode = function(arg1) -- Line 18, Named "encodeBase91"
		--[[ Upvalues[1]:
			[1]: tbl_upvr_2 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local module = {}
		local var10 = 1
		local var11
		for i_2 = 1, #arg1 do
			local flags = bit32.bor(0, bit32.lshift(string.byte(arg1, i_2), var11))
			var11 += 8
			if 13 < var11 then
				local masked = bit32.band(flags, 8191)
				if 88 < masked then
					local rshifted = bit32.rshift(flags, 13)
					var11 -= 13
				else
					masked = bit32.band(rshifted, 16383)
					var11 -= 14
				end
				module[var10] = tbl_upvr_2[masked % 91]..tbl_upvr_2[math.floor(masked / 91)]
				local var15 = var10 + 1
			end
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			module[var15] = tbl_upvr_2[i_2]
			i_2 = bit32.rshift(rshifted, 14) % 91
			return 7 < var11
		end
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return 90 < bit32.rshift(rshifted, 14)
		end
		if 0 < var11 and (INLINED() or INLINED_2()) then
			i_2 = tbl_upvr_2
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module[var15 + 1] = i_2[math.floor(bit32.rshift(rshifted, 14) / 91)]
		end
		return table.concat(module)
	end;
	decode = function(arg1) -- Line 53, Named "decodeBase91"
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local const_number = 1
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [94] 76. Error Block 13 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [94] 76. Error Block 13 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [10] 10. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [94.9]
		-- KONSTANTERROR: [10] 10. Error Block 2 end (CF ANALYSIS FAILED)
	end;
}