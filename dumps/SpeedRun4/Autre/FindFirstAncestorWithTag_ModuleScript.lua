-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:04
-- Luau version 6, Types version 3
-- Time taken: 0.000322 seconds

function FindFirstAncestorWithTag(arg1, arg2) -- Line 1
	if arg1 == nil then
		return nil
	end
	if arg1:HasTag(arg2) then
		return arg1
	end
	return FindFirstAncestorWithTag(arg1.Parent, arg2)
end
return FindFirstAncestorWithTag