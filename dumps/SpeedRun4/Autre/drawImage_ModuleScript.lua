-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:27
-- Luau version 6, Types version 3
-- Time taken: 0.000944 seconds

return function(arg1, arg2, arg3, arg4, arg5) -- Line 1
	local buffer_create_result1 = buffer.create(arg2 * arg2 * 4)
	local const_number = 0
	for i = 1, arg2 do
		for i_2 = 1, arg2 do
			if 0 < arg3[math.floor((i - 1) / arg2 * #arg3) + 1][math.floor((i_2 - 1) / arg2 * #arg3) + 1] then
				buffer.writeu8(buffer_create_result1, const_number, arg4.R * 255)
				buffer.writeu8(buffer_create_result1, const_number + 1, arg4.G * 255)
				buffer.writeu8(buffer_create_result1, const_number + 2, arg4.B * 255)
				buffer.writeu8(buffer_create_result1, const_number + 3, (1 - arg5) * 255)
			else
				buffer.writeu8(buffer_create_result1, const_number, 255)
				buffer.writeu8(buffer_create_result1, const_number + 1, 255)
				buffer.writeu8(buffer_create_result1, const_number + 2, 255)
				buffer.writeu8(buffer_create_result1, const_number + 3, 0)
			end
		end
	end
	arg1:WritePixelsBuffer(Vector2.new(0, 0), Vector2.new(arg2, arg2), buffer_create_result1)
	return buffer_create_result1
end