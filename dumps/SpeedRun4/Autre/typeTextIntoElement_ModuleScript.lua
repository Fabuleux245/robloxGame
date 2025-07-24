-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:02
-- Luau version 6, Types version 3
-- Time taken: 0.000466 seconds

return function(arg1, arg2) -- Line 2
	for i = 1, #arg2 do
		arg1:sendText(arg2:sub(i, i))
	end
	wait(0)
end