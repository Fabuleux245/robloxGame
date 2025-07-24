-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:40
-- Luau version 6, Types version 3
-- Time taken: 0.000499 seconds

return {
	Color3FromString = function(arg1) -- Line 4
		local unpack_result1, unpack_result2, unpack_result3 = unpack(arg1:split('/'))
		return Color3.fromRGB(tonumber(unpack_result1), tonumber(unpack_result2), tonumber(unpack_result3))
	end;
}