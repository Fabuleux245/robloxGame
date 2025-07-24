-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:30
-- Luau version 6, Types version 3
-- Time taken: 0.000442 seconds

return function(arg1, arg2) -- Line 1, Named "getAttachment"
	for _, v in pairs(arg2) do
		local SOME = arg1:FindFirstChild(v)
		if SOME then
			if SOME:IsA("Attachment") then
				return SOME
			end
			return SOME
		end
	end
	return nil
end