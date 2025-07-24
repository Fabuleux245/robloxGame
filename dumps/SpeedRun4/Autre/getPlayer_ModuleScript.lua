-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:12
-- Luau version 6, Types version 3
-- Time taken: 0.000505 seconds

return function(arg1, arg2) -- Line 11, Named "getPlayer"
	for _, v in pairs(arg1) do
		if v.userId == arg2 then
			return v
		end
	end
	return nil
end