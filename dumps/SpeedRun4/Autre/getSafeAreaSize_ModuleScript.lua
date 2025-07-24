-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:20
-- Luau version 6, Types version 3
-- Time taken: 0.000957 seconds

local ArgCheck_upvr = require(script.Parent.Parent.ArgCheck)
return function(arg1, arg2) -- Line 6, Named "getSafeAreaSize"
	--[[ Upvalues[1]:
		[1]: ArgCheck_upvr (readonly)
	]]
	local var2
	if typeof(arg1) ~= "Vector2" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "getSafeAreaSize expects screenSize to be a Vector2")
	if type(arg2) ~= "table" then
		var2 = false
	else
		var2 = true
	end
	assert(var2, "getSafeAreaSize expects guiInset to be a table")
	var2 = ArgCheck_upvr
	var2 = arg2.left
	var2.isNonNegativeNumber(var2, "getSafeAreaSize: guiInset.left")
	var2 = ArgCheck_upvr
	var2 = arg2.right
	var2.isNonNegativeNumber(var2, "getSafeAreaSize: guiInset.right")
	var2 = ArgCheck_upvr
	var2 = arg2.top
	var2.isNonNegativeNumber(var2, "getSafeAreaSize: guiInset.top")
	var2 = ArgCheck_upvr
	var2 = arg2.bottom
	var2.isNonNegativeNumber(var2, "getSafeAreaSize: guiInset.bottom")
	var2 = arg1.X - arg2.left
	local var3 = var2 - arg2.right
	var2 = arg1.Y - arg2.top - arg2.bottom
	ArgCheck_upvr.isNonNegativeNumber(var3, "getSafeAreaSize: safeAreaWidth")
	ArgCheck_upvr.isNonNegativeNumber(var2, "getSafeAreaSize: safeAreaHeight")
	return UDim2.new(0, var3, 0, var2)
end