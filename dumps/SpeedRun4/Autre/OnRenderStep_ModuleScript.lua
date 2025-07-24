-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:10
-- Luau version 6, Types version 3
-- Time taken: 0.016994 seconds

local Parent_2 = script.Parent
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixVirtualCursorOcclusionChecking", false)
local GuiService_upvr = game:GetService("GuiService")
local CoreGui_upvr = game:GetService("CoreGui")
local var5_upvw
local Input_upvr = require(Parent_2.Input)
local Interface_upvr = require(Parent_2.Interface)
local Properties_upvr = Parent_2.Properties
local Properties_upvr_2_upvr = require(Properties_upvr)
if game_DefineFastFlag_result1_upvr then
	Properties_upvr = require(Parent_2.isCircleContainedInGuiObject)
else
	Properties_upvr = nil
end
local var10_upvw = false
local tbl_upvr = {}
local var12_upvw
local var13_upvw
local var14_upvw = math.huge
local var15_upvw = (-math.huge)
local function _(arg1) -- Line 38, Named "isSelectableGuiObject"
	if not arg1:IsA("GuiButton") and not arg1:IsA("TextBox") then
		return false
	end
	if not arg1.Active or not arg1.Selectable then
		return false
	end
	if arg1.AbsoluteSize.Magnitude == 0 then
		return false
	end
	return true
end
local function _(arg1, arg2, arg3) -- Line 46, Named "contains"
	local var18 = false
	if arg2.x <= arg1.x then
		var18 = false
		if arg2.y <= arg1.y then
			var18 = false
			if arg1.x <= arg3.x then
				if arg1.y > arg3.y then
					var18 = false
				else
					var18 = true
				end
			end
		end
	end
	return var18
end
local abs_upvr = math.abs
local cos_upvr = math.cos
local sin_upvr = math.sin
local max_upvr = math.max
local min_upvr = math.min
local sign_upvr = math.sign
local function handleScrollingFrame_upvr(arg1, arg2, arg3) -- Line 50, Named "handleScrollingFrame"
	--[[ Upvalues[11]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: Input_upvr (readonly)
		[4]: Properties_upvr_2_upvr (readonly)
		[5]: abs_upvr (readonly)
		[6]: cos_upvr (readonly)
		[7]: sin_upvr (readonly)
		[8]: max_upvr (readonly)
		[9]: min_upvr (readonly)
		[10]: sign_upvr (readonly)
		[11]: Interface_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var48
	if not arg1:IsA("ScrollingFrame") then
		return false
	end
	if not arg1.ScrollingEnabled then
		return false
	end
	if game_DefineFastFlag_result1_upvr then
		if tbl_upvr[arg1] then
			return false
		end
		tbl_upvr[arg1] = true
	end
	local any_GetThumbstick2Vector_result1 = Input_upvr:GetThumbstick2Vector()
	local var50 = Properties_upvr_2_upvr.ScrollingSpeed * arg3
	local AbsoluteCanvasSize = arg1.AbsoluteCanvasSize
	local AbsoluteSize_6 = arg1.AbsoluteSize
	local ScrollingDirection_2 = arg1.ScrollingDirection
	var48 = false
	if AbsoluteSize_6.X < AbsoluteCanvasSize.X then
		var48 = true
		if ScrollingDirection_2 ~= Enum.ScrollingDirection.XY then
			if ScrollingDirection_2 ~= Enum.ScrollingDirection.X then
				var48 = false
			else
				var48 = true
			end
		end
	end
	if AbsoluteSize_6.Y < AbsoluteCanvasSize.Y then
		if ScrollingDirection_2 ~= Enum.ScrollingDirection.XY then
			if ScrollingDirection_2 ~= Enum.ScrollingDirection.Y then
			else
			end
		end
	end
	local AbsoluteSize = arg1.AbsoluteSize
	local var55 = arg1.Rotation / 180 * math.pi
	if Properties_upvr_2_upvr.ThumbstickDeadzone < abs_upvr(any_GetThumbstick2Vector_result1.x) and var48 then
		arg1.CanvasPosition += Vector2.new(any_GetThumbstick2Vector_result1.x * var50, 0)
	end
	if Properties_upvr_2_upvr.ThumbstickDeadzone < abs_upvr(any_GetThumbstick2Vector_result1.y) and true then
		arg1.CanvasPosition += Vector2.new(0, any_GetThumbstick2Vector_result1.y * var50)
	end
	local var56 = Vector2.new(arg2.X, arg2.Y) - arg1.AbsolutePosition
	local var57 = var56:Dot(Vector2.new(cos_upvr(var55), sin_upvr(var55))) - AbsoluteSize.X / 2
	local var58 = var56:Dot(Vector2.new(-sin_upvr(var55), cos_upvr(var55))) - AbsoluteSize.Y / 2
	local var59 = Vector2.new(abs_upvr(var57), abs_upvr(var58)) - AbsoluteSize / 2
	if abs_upvr(min_upvr(max_upvr(var59.x, var59.y), 0) + Vector2.new(max_upvr(var59.x, 0), max_upvr(var59.y, 0)).Magnitude) < Properties_upvr_2_upvr.ScrollingRadius then
		if abs_upvr(var59.x) < abs_upvr(var59.y) and var48 then
			arg1.CanvasPosition += Vector2.new(sign_upvr(var57) * var50, 0)
			Interface_upvr:SetArrow(sign_upvr(var57), 0)
			return true
		end
		if abs_upvr(var59.y) <= abs_upvr(var59.x) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if true then
				arg1.CanvasPosition += Vector2.new(0, sign_upvr(var58) * var50)
				Interface_upvr:SetArrow(0, sign_upvr(var58))
				return true
			end
		end
	end
	return false
end
local function findClosestOrOccludingGuiObject_upvr(arg1, arg2, arg3, arg4) -- Line 109, Named "findClosestOrOccludingGuiObject"
	--[[ Upvalues[8]:
		[1]: handleScrollingFrame_upvr (readonly)
		[2]: var10_upvw (read and write)
		[3]: var12_upvw (read and write)
		[4]: var14_upvw (read and write)
		[5]: var15_upvw (read and write)
		[6]: Properties_upvr (readonly)
		[7]: Properties_upvr_2_upvr (readonly)
		[8]: var13_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local ipairs_result1_2, ipairs_result2_4, ipairs_result3_4 = ipairs(arg2)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [42] 35. Error Block 66 start (CF ANALYSIS FAILED)
	if true and not var12_upvw then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [46.8]
		var12_upvw = nil
	end
	local var71
	if not nil:IsA("GuiButton") and not nil:IsA("TextBox") then
		var71 = false
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		if not nil.Active or not nil.Selectable then
			var71 = false
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil.AbsoluteSize.Magnitude == 0 then
				var71 = false
			else
				var71 = true
			end
		end
	end
	if var71 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		var71 = (nil.AbsolutePosition + nil.AbsoluteSize / 2 - arg3).Magnitude
		if var71 < var14_upvw then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if var15_upvw <= nil.ZIndex then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var12_upvw = nil
				var14_upvw = var71
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var15_upvw = nil.ZIndex
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var71 = nil.Visible
	if var71 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var71 = nil.Active
		if var71 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			var71 = nil.Interactable
			if var71 then
				var71 = Properties_upvr
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var71 = var71(arg3, Properties_upvr_2_upvr.CursorRadius * Properties_upvr_2_upvr.OcclusionRadiusScale, nil)
				if var71 then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					var13_upvw = nil
					return
				end
			end
		end
	end
	-- KONSTANTERROR: [42] 35. Error Block 66 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 64 start (CF ANALYSIS FAILED)
	if var71 then
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	if not arg3 and not arg3 then
		-- KONSTANTWARNING: GOTO [43] #36
	end
	-- KONSTANTERROR: [5] 5. Error Block 64 end (CF ANALYSIS FAILED)
end
local function handleScrollingInAncestors_upvr(arg1, arg2, arg3, arg4) -- Line 142, Named "handleScrollingInAncestors"
	--[[ Upvalues[2]:
		[1]: handleScrollingFrame_upvr (readonly)
		[2]: var10_upvw (read and write)
	]]
	local Parent = arg1.Parent
	while Parent and Parent ~= arg2 do
		if handleScrollingFrame_upvr(Parent, arg3, arg4) then
			var10_upvw = true
			return
		end
	end
end
local Players_upvr = game:GetService("Players")
local function processCursorPosition_upvr(arg1, arg2, arg3) -- Line 153, Named "processCursorPosition"
	--[[ Upvalues[14]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: var12_upvw (read and write)
		[4]: var13_upvw (read and write)
		[5]: var14_upvw (read and write)
		[6]: var15_upvw (read and write)
		[7]: GuiService_upvr (readonly)
		[8]: var5_upvw (read and write)
		[9]: Players_upvr (readonly)
		[10]: CoreGui_upvr (readonly)
		[11]: var10_upvw (read and write)
		[12]: findClosestOrOccludingGuiObject_upvr (readonly)
		[13]: handleScrollingInAncestors_upvr (readonly)
		[14]: handleScrollingFrame_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 133 start (CF ANALYSIS FAILED)
	local var82
	if game_DefineFastFlag_result1_upvr then
		var82 = tbl_upvr
		table.clear(var82)
		var12_upvw = nil
		var13_upvw = nil
		var14_upvw = math.huge
		var15_upvw = (-math.huge)
	end
	local var83 = arg1 - GuiService_upvr:GetGuiInset()
	var82 = var5_upvw
	if var82 == nil then
		var82 = Players_upvr.LocalPlayer:FindFirstChildOfClass("PlayerGui")
		var5_upvw = var82
	end
	if var5_upvw then
		var82 = var5_upvw:GetGuiObjectsInCircle(var83, arg2)
	else
		var82 = {}
	end
	var10_upvw = false
	if game_DefineFastFlag_result1_upvr then
		for _, v in ipairs({{CoreGui_upvr, CoreGui_upvr:GetGuiObjectsInCircle(var83, arg2)}, {var5_upvw, var82}}) do
			local _1 = v[1]
			local _2 = v[2]
			findClosestOrOccludingGuiObject_upvr(_1, _2, var83, arg3)
			if var10_upvw then
				return nil
			end
			if var12_upvw then
				handleScrollingInAncestors_upvr(var12_upvw, _1, var83, arg3)
			end
			if var10_upvw then
				return nil
			end
			if var13_upvw then
				if var13_upvw ~= var12_upvw then
					handleScrollingInAncestors_upvr(var13_upvw, _1, var83, arg3)
				end
			end
			if var10_upvw then
				return nil
			end
			if var13_upvw then
				return var12_upvw
			end
		end
		return var12_upvw
	end
	local ipairs_result1_3, ipairs_result2_2, ipairs_result3_3 = ipairs(var82)
	-- KONSTANTERROR: [0] 1. Error Block 133 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [190] 162. Error Block 139 start (CF ANALYSIS FAILED)
	if _2.AbsoluteSize.Magnitude == 0 then
	else
	end
	if true and _2.Parent == nil.Parent and (_2.AbsolutePosition + _2.AbsoluteSize / 2 - var83).Magnitude < math.huge and (-math.huge) <= _2.ZIndex then
	end
	-- KONSTANTERROR: [190] 162. Error Block 139 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [128] 111. Error Block 135 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if (_2.AbsolutePosition + _2.AbsoluteSize / 2 - var83).Magnitude then
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	if not _2.ZIndex and not _2.ZIndex then
		-- KONSTANTWARNING: GOTO [167] #143
	end
	-- KONSTANTERROR: [128] 111. Error Block 135 end (CF ANALYSIS FAILED)
end
local function _() -- Line 261, Named "getMaxSpeed"
	--[[ Upvalues[2]:
		[1]: GuiService_upvr (readonly)
		[2]: Properties_upvr_2_upvr (readonly)
	]]
	return GuiService_upvr:GetScreenResolution().Magnitude * Properties_upvr_2_upvr.MaxSpeedRelative
end
local GamepadService_upvr = game:GetService("GamepadService")
local var97_upvw = 1
return function(arg1, arg2) -- Line 266
	--[[ Upvalues[10]:
		[1]: GuiService_upvr (readonly)
		[2]: Input_upvr (readonly)
		[3]: GamepadService_upvr (readonly)
		[4]: var97_upvw (read and write)
		[5]: Interface_upvr (readonly)
		[6]: var10_upvw (read and write)
		[7]: Properties_upvr_2_upvr (readonly)
		[8]: processCursorPosition_upvr (readonly)
		[9]: CoreGui_upvr (readonly)
		[10]: var5_upvw (read and write)
	]]
	local var98 = GuiService_upvr:GetScreenResolution() + GuiService_upvr:GetGuiInset()
	local any_GetGamepadCursorPosition_result1 = GamepadService_upvr:GetGamepadCursorPosition()
	if arg1.SelectedObject == nil then
		var97_upvw = 1
		Interface_upvr:SetCursorHighlight(false)
	end
	if var10_upvw then
		var97_upvw = Properties_upvr_2_upvr.ScrollingSlowDown
	end
	local var100 = var97_upvw
	local var101 = (Input_upvr:GetThumbstickVector()) * (GuiService_upvr:GetScreenResolution().Magnitude * Properties_upvr_2_upvr.MaxSpeedRelative) * var100
	if 0 >= var101.Magnitude then
		var100 = false
	else
		var100 = true
	end
	if var100 then
		local var102 = any_GetGamepadCursorPosition_result1 + var101 * arg2
		any_GetGamepadCursorPosition_result1 = Vector2.new(math.clamp(var102.x, 0, var98.x), math.clamp(var102.y, 0, var98.y))
	end
	Interface_upvr:SetCursorPosition(any_GetGamepadCursorPosition_result1)
	GamepadService_upvr:SetGamepadCursorPosition(any_GetGamepadCursorPosition_result1)
	arg1.CursorPosition = any_GetGamepadCursorPosition_result1
	local var103 = arg2
	local processCursorPosition_upvr_result1 = processCursorPosition_upvr(any_GetGamepadCursorPosition_result1, Properties_upvr_2_upvr.SelectionRadius, var103)
	if processCursorPosition_upvr_result1 ~= arg1.PreviouslySelectedObject then
		arg1.PreviouslySelectedObject = processCursorPosition_upvr_result1
		if processCursorPosition_upvr_result1 == nil then
			var103 = false
		else
			var103 = true
		end
		Interface_upvr:SetCursorHighlight(var103)
		if processCursorPosition_upvr_result1 then
			if processCursorPosition_upvr_result1 ~= arg1.SelectedObject then
				arg1.SelectedObject = processCursorPosition_upvr_result1
				var97_upvw = Properties_upvr_2_upvr.SpeedAdjustmentTarget
				-- KONSTANTWARNING: GOTO [135] #101
			end
		else
			arg1.SelectedObject = nil
			var97_upvw = 1
		end
		if arg1.SelectedObject == nil then
			GuiService_upvr.SelectedObject = nil
			GuiService_upvr.SelectedCoreObject = nil
			return
		end
		var103 = CoreGui_upvr
		if arg1.SelectedObject:IsDescendantOf(var103) then
			GuiService_upvr.SelectedCoreObject = arg1.SelectedObject
			GuiService_upvr.SelectedObject = nil
			return
		end
		var103 = var5_upvw
		if arg1.SelectedObject:IsDescendantOf(var103) then
			GuiService_upvr.SelectedObject = arg1.SelectedObject
			GuiService_upvr.SelectedCoreObject = nil
		end
	end
end