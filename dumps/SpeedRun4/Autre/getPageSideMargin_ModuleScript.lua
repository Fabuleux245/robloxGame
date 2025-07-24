-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:32
-- Luau version 6, Types version 3
-- Time taken: 0.000413 seconds

return function(arg1) -- Line 1, Named "getPageSideMargin"
	if 600 < arg1 then
		return 48
	end
	if 320 < arg1 then
		return 24
	end
	return 12
end