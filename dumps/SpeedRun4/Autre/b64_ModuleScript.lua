-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:29
-- Luau version 6, Types version 3
-- Time taken: 0.002803 seconds

function enc(arg1) -- Line 6
	return arg1:gsub('.', function(arg1_2) -- Line 7
		local any_byte_result1 = arg1_2:byte()
		local var5
		for i = 8, 1, -1 do
			local var6
			if 0 < any_byte_result1 % 2 ^ i - any_byte_result1 % 2 ^ (i - 1) then
				var6 = '1'
			else
				var6 = '0'
			end
			var5 = var5..var6
		end
		return var5
	end).."0000":gsub("%d%d%d?%d?%d?%d?", function(arg1_3) -- Line 11
		local var10
		if var10 < 6 then
			var10 = ""
			return var10
		end
		var10 = 0
		for i_2 = 1, 6 do
			local var11
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var11 = 2 ^ (6 - i_2)
				return var11
			end
			if arg1_3:sub(i_2, i_2) ~= '1' or not INLINED() then
				var11 = 0
			end
			var10 += var11
		end
		return "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/":sub(var10 + 1, var10 + 1)
	end)..({"", "==", '='})[#arg1 % 3 + 1]
end
function dec(arg1) -- Line 20
	return string.gsub(arg1, "[^".."ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".."=]", ""):gsub('.', function(arg1_4) -- Line 22
		if arg1_4 == '=' then
			return ""
		end
		local var16 = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/":find(arg1_4) - 1
		for i_3 = 6, 1, -1 do
			local var17
			if 0 < var16 % 2 ^ i_3 - var16 % 2 ^ (i_3 - 1) then
				var17 = '1'
			else
				var17 = '0'
			end
		end
		return ""..var17
	end):gsub("%d%d%d?%d?%d?%d?%d?%d?", function(arg1_5) -- Line 27
		local var21
		if var21 ~= 8 then
			var21 = ""
			return var21
		end
		var21 = 0
		for i_4 = 1, 8 do
			local var22
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var22 = 2 ^ (7 - i_4)
				return var22
			end
			if arg1_5:sub(i_4, i_4) ~= '1' or not INLINED_2() then
				var22 = 0
			end
			var21 += var22
		end
		return string.char(var21)
	end)
end
function safe_enc(arg1, arg2) -- Line 35
	if arg2 == nil then
	end
	local tbl = {}
	while 0 < #arg1 do
		table.insert(tbl, arg1:sub(1, 204798))
	end
	for i_5, v in ipairs(tbl) do
		if true then
			print("[http] Encoding B64 chunk %s/%s":format(i_5, #tbl))
		end
		wait()
	end
	return ""..enc(v)
end
return {
	encode = safe_enc;
	decode = dec;
}