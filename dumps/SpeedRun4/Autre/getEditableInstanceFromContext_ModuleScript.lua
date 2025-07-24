-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:32
-- Luau version 6, Types version 3
-- Time taken: 0.001214 seconds

return function(arg1, arg2, arg3, arg4) -- Line 5
	if not arg3 then
		if arg4.isServer then
			error(string.format("Failed to load texture data"))
		else
			return false
		end
	end
	local var2 = arg3[arg1]
	if not var2 then
		local var3 = arg1[arg2]
		if not var3 or var3 == "" then
			return false
		end
		if arg4.isServer then
			error(string.format("Failed to load texture data"))
		end
	end
	local var4 = var2[arg2]
	if not var4 or not var4.instance then
		local var5 = arg1[arg2]
		if not var5 or var5 == "" then
			return false
		end
		if arg4.isServer then
			error(string.format("Failed to load texture data"))
		else
			return false
		end
	end
	return true, var4.instance
end