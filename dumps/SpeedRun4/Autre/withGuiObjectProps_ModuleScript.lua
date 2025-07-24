-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:52
-- Luau version 6, Types version 3
-- Time taken: 0.003722 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local Parent = Foundation.Parent
local indexBindable_upvr = require(Foundation.Utility.indexBindable)
local ReactIs_upvr = require(Parent.ReactIs)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local React_upvr = require(Parent.React)
return function(arg1, arg2) -- Line 38, Named "withGuiObjectProps"
	--[[ Upvalues[4]:
		[1]: indexBindable_upvr (readonly)
		[2]: ReactIs_upvr (readonly)
		[3]: withCommonProps_upvr (readonly)
		[4]: React_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7
	if var7 == "table" then
		var7 = arg1.AutoLocalize
		arg2.AutoLocalize = var7
		var7 = arg1.AutomaticSize
		arg2.AutomaticSize = var7
		if arg1.backgroundStyle then
			var7 = indexBindable_upvr(arg1.backgroundStyle, "Color3")
		else
			var7 = nil
		end
		arg2.BackgroundColor3 = var7
		if arg1.backgroundStyle then
		else
		end
		arg2.BackgroundTransparency = nil
		arg2.BorderSizePixel = arg1.BorderSizePixel
		arg2.ClipsDescendants = arg1.ClipsDescendants
		arg2.Rotation = arg1.Rotation
		arg2.SizeConstraint = arg1.SizeConstraint
		if arg1.selection then
			arg2.Selectable = arg1.selection.Selectable
			arg2.SelectionImageObject = arg1.selection.SelectionImageObject
			arg2.SelectionOrder = arg1.selection.SelectionOrder
			arg2.NextSelectionDown = arg1.selection.NextSelectionDown
			arg2.NextSelectionLeft = arg1.selection.NextSelectionLeft
			arg2.NextSelectionRight = arg1.selection.NextSelectionRight
			arg2.NextSelectionUp = arg1.selection.NextSelectionUp
		end
		if arg1.selectionGroup ~= nil then
			if type(arg1.selectionGroup) == "boolean" or ReactIs_upvr.isBinding(arg1.selectionGroup) then
				arg2.SelectionGroup = arg1.selectionGroup
			else
				arg2.SelectionGroup = true
				arg2.SelectionBehaviorUp = arg1.selectionGroup.SelectionBehaviorUp
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg2.SelectionBehaviorDown = arg1.selectionGroup.SelectionBehaviorDown
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg2.SelectionBehaviorLeft = arg1.selectionGroup.SelectionBehaviorLeft
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				arg2.SelectionBehaviorRight = arg1.selectionGroup.SelectionBehaviorRight
			end
		end
		arg2.Size = arg1.Size
	end
	local var5_result1 = withCommonProps_upvr(arg1, arg2)
	var5_result1[React_upvr.Change.AbsoluteSize] = arg1.onAbsoluteSizeChanged
	var5_result1.onAbsoluteSizeChanged = nil
	var5_result1[React_upvr.Change.AbsolutePosition] = arg1.onAbsolutePositionChanged
	var5_result1.onAbsolutePositionChanged = nil
	if var5_result1.testId then
		local _ = "data-testid="..var5_result1.testId
	else
	end
	if var5_result1[React_upvr.Tag] and nil then
		local Tag = React_upvr.Tag
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var5_result1[Tag] ..= ' '..nil
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var5_result1[React_upvr.Tag] = var5_result1[React_upvr.Tag] or nil
	end
	var5_result1.testId = nil
	return var5_result1
end