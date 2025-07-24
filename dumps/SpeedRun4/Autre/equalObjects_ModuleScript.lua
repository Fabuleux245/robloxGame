-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:52:20
-- Luau version 6, Types version 3
-- Time taken: 0.000396 seconds

return function(...) -- Line 2, Named "equalObjects"
	for i = 1, select('#', ...) - 1 do
		if select(i, ...) ~= select(i + 1, ...) then
			return false
		end
	end
	return true
end