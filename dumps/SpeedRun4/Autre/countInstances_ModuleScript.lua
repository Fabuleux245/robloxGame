-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:00
-- Luau version 6, Types version 3
-- Time taken: 0.000467 seconds

return function(arg1, arg2) -- Line 7
	local var9
	for _, v in pairs(arg1:GetChildren()) do
		if not arg2 or v:IsA(arg2) then
			var9 += 1
		end
	end
	return var9
end