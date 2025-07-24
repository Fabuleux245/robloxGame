-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:52
-- Luau version 6, Types version 3
-- Time taken: 0.000623 seconds

return function(arg1) -- Line 1, Named "getFirstFocusableDescendant"
	for _, v in arg1:GetDescendants() do
		if v:IsA("GuiObject") and v.Selectable and v.Visible then
			return v
		end
	end
	return nil
end