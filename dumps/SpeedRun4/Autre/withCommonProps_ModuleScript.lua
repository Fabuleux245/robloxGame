-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:51
-- Luau version 6, Types version 3
-- Time taken: 0.000639 seconds

return function(arg1, arg2) -- Line 6, Named "withCommonProps"
	if type(arg2) == "table" then
		arg2.AnchorPoint = arg1.AnchorPoint
		arg2.LayoutOrder = arg1.LayoutOrder
		arg2.Position = arg1.Position
		arg2.Visible = arg1.Visible
		arg2.ZIndex = arg1.ZIndex
		arg2.onAbsoluteSizeChanged = arg1.onAbsoluteSizeChanged
		arg2.onAbsolutePositionChanged = arg1.onAbsolutePositionChanged
		arg2.testId = arg1.testId
	end
	return arg2
end