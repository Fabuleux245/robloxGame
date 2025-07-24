-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:08
-- Luau version 6, Types version 3
-- Time taken: 0.000887 seconds

return {
	encodeKey = function(arg1, arg2, arg3, arg4) -- Line 6, Named "encodeKey"
		local var1 = arg2
		if not var1 then
			var1 = UDim.new(0, 0)
		end
		local var2 = arg4
		if not var2 then
			var2 = arg1.Stroke.Thick
		end
		local var3 = arg3
		if not var3 then
			var3 = arg1.Size.Size_150
		end
		return var1.Scale..' '..var1.Offset..' '..(var3 - var2)..' '..var2
	end;
	decodeKey = function(arg1) -- Line 14
		local string_split_result1 = string.split(arg1, ' ')
		local tonumber_result1 = tonumber(string_split_result1[3])
		return UDim.new(tonumber(string_split_result1[1]), math.max(0, tonumber(string_split_result1[2]) + tonumber_result1)), tonumber_result1, tonumber(string_split_result1[4])
	end;
}