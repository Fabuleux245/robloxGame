-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:50
-- Luau version 6, Types version 3
-- Time taken: 0.005879 seconds

local module = {}
local buffer_create_result1_upvr = buffer.create(64)
local buffer_create_result1_2_upvr = buffer.create(256)
module.Array = table.create(63)
module.Lookup = {}
for i, v in {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'} do
	i -= 1
	local string_byte_result1 = string.byte(v)
	buffer.writeu8(buffer_create_result1_upvr, i, string_byte_result1)
	buffer.writeu8(buffer_create_result1_2_upvr, string_byte_result1, i)
	module.Array[i] = v
	module.Lookup[v] = i
end
function module.Encode(arg1, arg2) -- Line 53
	--[[ Upvalues[1]:
		[1]: buffer_create_result1_upvr (readonly)
	]]
	local buffer_len_result1_2 = buffer.len(arg1)
	local var29 = -1
	local buffer_create_result1 = buffer.create(math.ceil(buffer_len_result1_2 * 1.3333333333333333))
	for i_2 = 0, buffer_len_result1_2 // 3 * 3 - 1, 3 do
		local var31 = buffer.readu8(arg1, i_2) * 65536 + buffer.readu8(arg1, i_2 + 1) * 256 + buffer.readu8(arg1, i_2 + 2)
		for i_3 = 18, 0, -6 do
			var29 += 1
			buffer.writeu8(buffer_create_result1, var29, buffer.readu8(buffer_create_result1_upvr, bit32.extract(var31, i_3, 6)))
		end
	end
	local var32 = buffer_len_result1_2 // 3 * 3
	local var33 = buffer_len_result1_2 - var32
	if var33 ~= 0 then
		if var33 == 2 then
			i_3 = var32
			var31 = buffer.readu8(arg1, i_3) * 1024
			i_3 = arg1
			i_2 = var31 + buffer.readu8(i_3, var32 + 1) * 4
			var31 = 0
			for i_4 = 12, var31, -6 do
				var29 += 1
				i_3 = buffer.writeu8
				i_3(buffer_create_result1, var29, buffer.readu8(buffer_create_result1_upvr, bit32.extract(i_2, i_4, 6)))
			end
		else
			i_4 = var32
			var31 = buffer.readu8(arg1, i_4)
			i_2 = var31 * 16
			var29 += 1
			i_3 = buffer.readu8(buffer_create_result1_upvr, bit32.extract(i_2, 6, 6))
			i_4 = var29
			var31 = buffer.writeu8
			var31(buffer_create_result1, i_4, i_3)
			var29 += 1
			i_3 = buffer.readu8(buffer_create_result1_upvr, bit32.extract(i_2, 0, 6))
			i_4 = var29
			var31 = buffer.writeu8
			var31(buffer_create_result1, i_4, i_3)
		end
		if arg2 then
			while true do
				i_2 = var29 % 4
				if i_2 == 0 then break end
				i_4 = 61
				var31 = buffer_create_result1
				i_2 = buffer.writeu8
				i_2(var31, var29 + 1, i_4)
			end
		end
	end
	return buffer_create_result1
end
function module.Decode(arg1) -- Line 124
	--[[ Upvalues[1]:
		[1]: buffer_create_result1_2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var42
	while buffer.readu8(arg1, var42 - 1) == 61 do
		var42 -= 1
	end
	for i_5 = 0, (var42 - 1) // 4 * 4 - 1, 4 do
		local var44 = buffer.readu8(buffer_create_result1_2_upvr, buffer.readu8(arg1, i_5)) * 262144 + buffer.readu8(buffer_create_result1_2_upvr, buffer.readu8(arg1, i_5 + 1)) * 4096 + buffer.readu8(buffer_create_result1_2_upvr, buffer.readu8(arg1, i_5 + 2)) * 64 + buffer.readu8(buffer_create_result1_2_upvr, buffer.readu8(arg1, i_5 + 3))
		for i_6 = 16, 0, -8 do
			buffer.writeu8(buffer.create(var42 * 0.75 // 1), -1 + 1, bit32.extract(var44, i_6, 8))
			local var45
		end
	end
	local var46 = var42 // 4 * 4
	if var42 - var46 == 3 then
		i_5 = buffer.readu8(buffer_create_result1_2_upvr, buffer.readu8(arg1, var46)) * 4096 + buffer.readu8(buffer_create_result1_2_upvr, buffer.readu8(arg1, var46 + 1)) * 64 + buffer.readu8(buffer_create_result1_2_upvr, buffer.readu8(arg1, var46 + 2))
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		local var47 = -1 + 1 + 1
		buffer.writeu8(var45, var47, bit32.extract(i_5, 10, 8))
		local var48 = var47 + 1
		buffer.writeu8(var45, var48, bit32.extract(i_5, 2, 8))
		return var45
	end
	buffer.writeu8(var45, var48 + 1, (buffer.readu8(buffer_create_result1_2_upvr, buffer.readu8(arg1, var46)) * 64 + buffer.readu8(buffer_create_result1_2_upvr, buffer.readu8(arg1, var46 + 1))) * 0.0625)
	return var45
end
return module