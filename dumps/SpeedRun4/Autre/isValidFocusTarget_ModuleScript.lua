-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:46:58
-- Luau version 6, Types version 3
-- Time taken: 0.000753 seconds

return function(arg1) -- Line 1, Named "isValidFocusTarget"
	if not arg1 then
		return false, "`nil` value provided to isValidFocusTarget"
	end
	if not arg1:IsA("GuiBase2d") then
		return false, string.format("provided Instance is of class %s, which is not a GuiBase2d", arg1.ClassName)
	end
	if not arg1:FindFirstAncestorWhichIsA("LayerCollector") then
		return false, "provided Instance is not a descendant of a LayerCollector like a ScreenGui or SurfaceGui"
	end
	if not arg1:FindFirstAncestorWhichIsA("BasePlayerGui") then
		return false, "provided Instance is not a descendant of a BasePlayerGui like PlayerGui or CoreGui"
	end
	return true
end