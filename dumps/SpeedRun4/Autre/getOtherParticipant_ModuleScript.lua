-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:49
-- Luau version 6, Types version 3
-- Time taken: 0.000327 seconds

return function(arg1, arg2) -- Line 1
	for _, v in ipairs(arg2) do
		if v ~= arg1.LocalUserId then
			return v
		end
	end
end