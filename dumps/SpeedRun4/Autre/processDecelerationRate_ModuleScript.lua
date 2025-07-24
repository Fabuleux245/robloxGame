-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:15:50
-- Luau version 6, Types version 3
-- Time taken: 0.000430 seconds

return function(arg1) -- Line 16, Named "processDecelerationRate"
	if arg1 == "normal" then
		return 0.985
	end
	if arg1 == "fast" then
		return 0.9
	end
	return arg1
end