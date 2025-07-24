-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:39:58
-- Luau version 6, Types version 3
-- Time taken: 0.035386 seconds

local StarterGui_upvr = game:GetService("StarterGui")
local GuiService_upvr = game:GetService("GuiService")
local RunService_upvr = game:GetService("RunService")
local UserInputService_upvr = game:GetService("UserInputService")
local Players_upvr = game:GetService("Players")
local VRService_upvr = game:GetService("VRService")
local LocalizationService_upvr = game:GetService("LocalizationService")
local Parent_upvr = script.Parent
local TopbarPlusReference = require(Parent_upvr.TopbarPlusReference)
local any_getObject_result1 = TopbarPlusReference.getObject()
local var11
if var11 then
	var11 = any_getObject_result1.Value
end
if var11 and var11.IconController ~= script then
	return require(var11.IconController)
end
if not any_getObject_result1 then
	TopbarPlusReference.addToReplicatedStorage()
end
local module_2_upvr = {}
local Signal = require(Parent_upvr.Signal)
local TopbarPlusGui_upvr = require(Parent_upvr.TopbarPlusGui)
local tbl_2_upvr = {}
local var16_upvw
local var17_upvw
local var18_upvw
local var19_upvw = false
local function _() -- Line 40, Named "checkTopbarEnabled"
	--[[ Upvalues[1]:
		[1]: StarterGui_upvr (readonly)
	]]
	local xpcall_result1_5, xpcall_result2 = xpcall(function() -- Line 41
		--[[ Upvalues[1]:
			[1]: StarterGui_upvr (copied, readonly)
		]]
		return StarterGui_upvr:GetCore("TopbarEnabled")
	end, function(arg1) -- Line 43
		return true
	end)
	return xpcall_result1_5 and xpcall_result2
end
local function _() -- Line 50, Named "checkTopbarEnabledAccountingForMimic"
	--[[ Upvalues[2]:
		[1]: StarterGui_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local xpcall_result1, xpcall_result2_2 = xpcall(function() -- Line 41
		--[[ Upvalues[1]:
			[1]: StarterGui_upvr (copied, readonly)
		]]
		return StarterGui_upvr:GetCore("TopbarEnabled")
	end, function(arg1) -- Line 43
		return true
	end)
	local var28 = xpcall_result1 and xpcall_result2_2
	if not var28 then
		var28 = not module_2_upvr.mimicCoreGui
	end
	return var28
end
local tbl_4_upvr = {}
local tbl_5 = {
	startScale = 0;
}
local function getOffset() -- Line 68
	--[[ Upvalues[2]:
		[1]: GuiService_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	return GuiService_upvr.TopbarInset.Min.X + module_2_upvr.leftOffset
end
tbl_5.getOffset = getOffset
local function getStartOffset() -- Line 73
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
	]]
	return tbl_4_upvr.left.getOffset() + module_2_upvr.leftGap
end
tbl_5.getStartOffset = getStartOffset
tbl_5.records = {}
tbl_4_upvr.left = tbl_5
local tbl = {
	startScale = 0.5;
}
local function getOffset() -- Line 82
	return 0
end
tbl.getOffset = getOffset
local function getStartOffset(arg1) -- Line 85
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return -arg1 / 2 + module_2_upvr.midGap / 2
end
tbl.getStartOffset = getStartOffset
tbl.records = {}
tbl_4_upvr.mid = tbl
tbl_4_upvr.right = {
	startScale = 1;
	getOffset = function() -- Line 93, Named "getOffset"
		--[[ Upvalues[2]:
			[1]: GuiService_upvr (readonly)
			[2]: module_2_upvr (readonly)
		]]
		local TopbarInset = GuiService_upvr.TopbarInset
		return workspace.CurrentCamera.ViewportSize.X - TopbarInset.Width - TopbarInset.Min.X + module_2_upvr.rightOffset
	end;
	getStartOffset = function(arg1) -- Line 100, Named "getStartOffset"
		--[[ Upvalues[1]:
			[1]: tbl_4_upvr (readonly)
		]]
		return -arg1 - tbl_4_upvr.right.getOffset()
	end;
	records = {};
}
module_2_upvr.topbarEnabled = true
module_2_upvr.controllerModeEnabled = false
local xpcall_result1_2, xpcall_result2_4 = xpcall(function() -- Line 41
	--[[ Upvalues[1]:
		[1]: StarterGui_upvr (readonly)
	]]
	return StarterGui_upvr:GetCore("TopbarEnabled")
end, function(arg1) -- Line 43
	return true
end)
module_2_upvr.previousTopbarEnabled = xpcall_result1_2 and xpcall_result2_4
module_2_upvr.leftGap = 12
module_2_upvr.midGap = 12
module_2_upvr.rightGap = 12
module_2_upvr.leftOffset = 0
module_2_upvr.rightOffset = 0
module_2_upvr.voiceChatEnabled = nil
module_2_upvr.mimicCoreGui = true
module_2_upvr.healthbarDisabled = false
module_2_upvr.activeButtonBCallbacks = 0
module_2_upvr.disableButtonB = false
module_2_upvr.translator = LocalizationService_upvr:GetTranslatorForPlayer(Players_upvr.LocalPlayer)
module_2_upvr.iconAdded = Signal.new()
module_2_upvr.iconRemoved = Signal.new()
module_2_upvr.controllerModeStarted = Signal.new()
module_2_upvr.controllerModeEnded = Signal.new()
module_2_upvr.healthbarDisabledSignal = Signal.new()
local var39_upvw = 0
module_2_upvr.iconAdded:Connect(function(arg1) -- Line 139
	--[[ Upvalues[3]:
		[1]: tbl_2_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: var39_upvw (read and write)
	]]
	tbl_2_upvr[arg1] = true
	if module_2_upvr.gameTheme then
		arg1:setTheme(module_2_upvr.gameTheme)
	end
	arg1.updated:Connect(function() -- Line 144
		--[[ Upvalues[1]:
			[1]: module_2_upvr (copied, readonly)
		]]
		module_2_upvr.updateTopbar()
	end)
	arg1.selected:Connect(function() -- Line 148
		--[[ Upvalues[2]:
			[1]: module_2_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		for _, v in pairs(module_2_upvr.getIcons()) do
			if arg1.deselectWhenOtherIconSelected and v ~= arg1 and v.deselectWhenOtherIconSelected and v:getToggleState() == "selected" then
				v:deselect(arg1)
			end
		end
	end)
	var39_upvw += 1
	arg1:setOrder(var39_upvw)
	if module_2_upvr.controllerModeEnabled then
		module_2_upvr._enableControllerModeForIcon(arg1, true)
	end
	module_2_upvr:_updateSelectionGroup()
	module_2_upvr.updateTopbar()
end)
module_2_upvr.iconRemoved:Connect(function(arg1) -- Line 167
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	tbl_2_upvr[arg1] = nil
	arg1:setEnabled(false)
	arg1:deselect()
	arg1.updated:Fire()
	module_2_upvr:_updateSelectionGroup()
end)
workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function() -- Line 56, Named "bindCamera"
	--[[ Upvalues[2]:
		[1]: var17_upvw (read and write)
		[2]: module_2_upvr (readonly)
	]]
	if not workspace.CurrentCamera then
	else
		if var17_upvw and var17_upvw.Connected then
			var17_upvw:Disconnect()
		end
		var17_upvw = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(module_2_upvr.updateTopbar)
	end
end)
function module_2_upvr.setGameTheme(arg1) -- Line 179
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	module_2_upvr.gameTheme = arg1
	for _, v_2 in pairs(module_2_upvr.getIcons()) do
		v_2:setTheme(arg1)
	end
end
function module_2_upvr.setDisplayOrder(arg1) -- Line 187
	--[[ Upvalues[1]:
		[1]: TopbarPlusGui_upvr (readonly)
	]]
	local tonumber_result1 = tonumber(arg1)
	if not tonumber_result1 then
		tonumber_result1 = TopbarPlusGui_upvr.DisplayOrder
	end
	TopbarPlusGui_upvr.DisplayOrder = tonumber_result1
end
module_2_upvr.setDisplayOrder(10)
function module_2_upvr.getIcons() -- Line 193
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	local module = {}
	for i_3, _ in pairs(tbl_2_upvr) do
		table.insert(module, i_3)
	end
	return module
end
function module_2_upvr.getIcon(arg1) -- Line 201
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	for i_4, _ in pairs(tbl_2_upvr) do
		if i_4.name == arg1 then
			return i_4
		end
	end
	return false
end
function module_2_upvr.disableHealthbar(arg1) -- Line 210
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var67 = true
	if arg1 ~= nil then
		var67 = arg1
	end
	module_2_upvr.healthbarDisabled = var67
	module_2_upvr.healthbarDisabledSignal:Fire(var67)
end
function module_2_upvr.disableControllerOption(arg1) -- Line 216
	--[[ Upvalues[2]:
		[1]: var19_upvw (read and write)
		[2]: module_2_upvr (readonly)
	]]
	local var68 = true
	if arg1 ~= nil then
		var68 = arg1
	end
	var19_upvw = var68
	if module_2_upvr.getIcon("_TopbarControllerOption") then
		module_2_upvr._determineControllerDisplay()
	end
end
function module_2_upvr.canShowIconOnTopbar(arg1) -- Line 224
	if arg1.enabled == true or arg1.accountForWhenDisabled then
		if arg1.presentOnTopbar then
			return true
		end
	end
	return false
end
function module_2_upvr.getMenuOffset(arg1) -- Line 231
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var69 = module_2_upvr[arg1:get("alignment").."Gap"]
	local var70 = 0
	local var71 = 0
	local var72 = 0
	if arg1.menuOpen then
		local Offset = arg1:get("menuSize").X.Offset
		local any__getMenuDirection_result1 = arg1:_getMenuDirection()
		if any__getMenuDirection_result1 == "right" then
			var71 += Offset + var69 / 6
			return var70, var71, var72
		end
		if any__getMenuDirection_result1 == "left" then
			var70 = Offset + 4
			var71 += var69 / 3
			var72 = Offset
		end
	end
	return var70, var71, var72
end
local var75_upvw = false
local var76_upvw = false
local TweenService_upvr = game:GetService("TweenService")
function module_2_upvr.updateTopbar() -- Line 254
	--[[ Upvalues[8]:
		[1]: module_2_upvr (readonly)
		[2]: var75_upvw (read and write)
		[3]: var76_upvw (read and write)
		[4]: RunService_upvr (readonly)
		[5]: tbl_4_upvr (readonly)
		[6]: tbl_2_upvr (readonly)
		[7]: TopbarPlusGui_upvr (readonly)
		[8]: TweenService_upvr (readonly)
	]]
	local function getIncrement_upvr(arg1, arg2) -- Line 255, Named "getIncrement"
		--[[ Upvalues[1]:
			[1]: module_2_upvr (copied, readonly)
		]]
		local any_get_result1_4 = arg1:get("iconSize", arg1:getIconState())
		if not any_get_result1_4 then
			any_get_result1_4 = UDim2.new(0, 32, 0, 32)
		end
		local var79 = any_get_result1_4.X.Offset + module_2_upvr[arg2.."Gap"]
		local var80 = 0
		if arg1._parentIcon == nil then
			local any_getMenuOffset_result1, any_getMenuOffset_result2, any_getMenuOffset_result3 = module_2_upvr.getMenuOffset(arg1)
			var80 += any_getMenuOffset_result1
			var79 += any_getMenuOffset_result2 + any_getMenuOffset_result3
		end
		return var79, var80
	end
	if var75_upvw then
		var76_upvw = true
		return false
	end
	task.defer(function() -- Line 275
		--[[ Upvalues[9]:
			[1]: var75_upvw (copied, read and write)
			[2]: RunService_upvr (copied, readonly)
			[3]: tbl_4_upvr (copied, readonly)
			[4]: tbl_2_upvr (copied, readonly)
			[5]: module_2_upvr (copied, readonly)
			[6]: getIncrement_upvr (readonly)
			[7]: TopbarPlusGui_upvr (copied, readonly)
			[8]: TweenService_upvr (copied, readonly)
			[9]: var76_upvw (copied, read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 168 start (CF ANALYSIS FAILED)
		var75_upvw = true
		RunService_upvr.Heartbeat:Wait()
		var75_upvw = false
		local var136
		for _, v_5 in pairs(tbl_4_upvr) do
			v_5.records = {}
		end
		for i_6, _ in pairs(tbl_2_upvr) do
			if module_2_upvr.canShowIconOnTopbar(i_6) then
				var136 = "alignment"
				var136 = tbl_4_upvr[i_6:get(var136)].records
				table.insert(var136, i_6)
			end
		end
		local ViewportSize = workspace.CurrentCamera.ViewportSize
		for i_7, v_7 in pairs(tbl_4_upvr) do
			local records = v_7.records
			var136 = #records
			if 1 < var136 then
				var136 = v_7.reverseSort
				if var136 then
					var136 = table.sort
					var136(records, function(arg1, arg2) -- Line 295
						local var146
						if arg2:get("order") >= arg1:get("order") then
							var146 = false
						else
							var146 = true
						end
						return var146
					end)
				else
					var136 = table.sort
					var136(records, function(arg1, arg2) -- Line 297
						local var148
						if arg1:get("order") >= arg2:get("order") then
							var148 = false
						else
							var148 = true
						end
						return var148
					end)
				end
			end
			var136 = 0
			for _, v_8 in pairs(records) do
				var136 += getIncrement_upvr(v_8, i_7)
			end
			local any_getStartOffset_result1 = v_7.getStartOffset(var136, i_7)
			local _ = any_getStartOffset_result1
			for _, v_9 in pairs(records) do
				local _, _ = getIncrement_upvr(v_9, i_7)
				local var159
			end
			for _, v_10 in pairs(records) do
				local getIncrement_upvr_result1, getIncrement_upvr_result2 = getIncrement_upvr(v_10, i_7)
				local topPadding = v_10.topPadding
				local udim2 = UDim2.new(v_7.startScale, any_getStartOffset_result1 + getIncrement_upvr_result2, topPadding.Scale, topPadding.Offset)
				local any_get_result1_2 = v_10:get("repositionInfo")
				if any_get_result1_2 then
					TweenService_upvr:Create(v_10.instances.iconContainer, any_get_result1_2, {
						Position = udim2;
					}):Play()
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					v_10.instances.iconContainer.Position = udim2
				end
				v_10.targetPosition = UDim2.new(0, udim2.X.Scale * ViewportSize.X + udim2.X.Offset, 0, udim2.Y.Scale * ViewportSize.Y + udim2.Y.Offset)
			end
		end
		local function _(arg1, arg2, arg3) -- Line 333, Named "getBoundaryX"
			--[[ Upvalues[1]:
				[1]: module_2_upvr (copied, readonly)
			]]
			local var169 = arg3 or 0
			local any_getMenuOffset_result1_3, any_getMenuOffset_result2_4 = module_2_upvr.getMenuOffset(arg1)
			local var172
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var172 = -var169 - any_getMenuOffset_result1_3
				return var172
			end
			if arg2 ~= "left" or not INLINED() then
				var172 = false
				if arg2 == "right" then
					var172 = arg1:get("iconSize", arg1:getIconState()).X.Offset + var169 + any_getMenuOffset_result2_4
				end
			end
			return arg1.targetPosition.X.Offset + var172
		end
		local function _(arg1, arg2) -- Line 342, Named "getSizeX"
			--[[ Upvalues[1]:
				[1]: module_2_upvr (copied, readonly)
			]]
			local any_get_result1, any_get_result2 = arg1:get("iconSize", arg1:getIconState(), "beforeDropdown")
			local any_get_result1_6 = arg1:get("iconSize", "hovering")
			local var182
			if var182 and any_get_result2 and any_get_result1_6 then
				var182 = any_get_result1_6.X.Offset
				if any_get_result2.X.Offset < var182 then
					any_get_result2 = any_get_result1_6
				end
			end
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				var182 = any_get_result2
				return var182
			end
			if not arg2 or not INLINED_3() then
				var182 = any_get_result1
			end
			local any_getMenuOffset_result1_4, any_getMenuOffset_result2_2 = module_2_upvr.getMenuOffset(arg1)
			return var182.X.Offset + any_getMenuOffset_result1_4 + any_getMenuOffset_result2_2
		end
		local pairs_result1_5, pairs_result2_6, pairs_result3 = pairs(tbl_4_upvr)
		-- KONSTANTERROR: [0] 1. Error Block 168 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [700] 505. Error Block 128 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [700] 505. Error Block 128 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [218] 158. Error Block 25 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [218] 158. Error Block 25 end (CF ANALYSIS FAILED)
	end)
end
local var188_upvw = false
local HapticService_upvr = game:GetService("HapticService")
function module_2_upvr.setTopbarEnabled(arg1, arg2) -- Line 520
	--[[ Upvalues[10]:
		[1]: TopbarPlusGui_upvr (readonly)
		[2]: var188_upvw (read and write)
		[3]: StarterGui_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: var16_upvw (read and write)
		[6]: var18_upvw (read and write)
		[7]: HapticService_upvr (readonly)
		[8]: RunService_upvr (readonly)
		[9]: tbl_2_upvr (readonly)
		[10]: GuiService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [2] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 3 end (CF ANALYSIS FAILED)
end
function module_2_upvr.setGap(arg1, arg2) -- Line 638
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var190 = tonumber(arg1) or 12
	local any_lower_result1 = tostring(arg2):lower()
	if any_lower_result1 == "left" or any_lower_result1 == "mid" or any_lower_result1 == "right" then
		module_2_upvr[any_lower_result1.."Gap"] = var190
		module_2_upvr.updateTopbar()
	else
		module_2_upvr.leftGap = var190
		module_2_upvr.midGap = var190
		module_2_upvr.rightGap = var190
		module_2_upvr.updateTopbar()
	end
end
function module_2_upvr.setLeftOffset(arg1) -- Line 652
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	module_2_upvr.leftOffset = tonumber(arg1) or 0
	module_2_upvr.updateTopbar()
end
function module_2_upvr.setRightOffset(arg1) -- Line 657
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	module_2_upvr.rightOffset = tonumber(arg1) or 0
	module_2_upvr.updateTopbar()
end
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local tbl_upvw = {}
LocalPlayer_upvr.CharacterAdded:Connect(function() -- Line 664
	--[[ Upvalues[1]:
		[1]: tbl_upvw (read and write)
	]]
	for _, v_11 in pairs(tbl_upvw) do
		v_11:destroy()
	end
	tbl_upvw = {}
end)
function module_2_upvr.clearIconOnSpawn(arg1) -- Line 670
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: tbl_upvw (read and write)
	]]
	coroutine.wrap(function() -- Line 671
		--[[ Upvalues[3]:
			[1]: LocalPlayer_upvr (copied, readonly)
			[2]: tbl_upvw (copied, read and write)
			[3]: arg1 (readonly)
		]]
		if not LocalPlayer_upvr.Character then
		end
		table.insert(tbl_upvw, arg1)
	end)()
end
function module_2_upvr._updateSelectionGroup(arg1, arg2) -- Line 680
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	if module_2_upvr._navigationEnabled then
		GuiService_upvr:RemoveSelectionGroup("TopbarPlusIcons")
	end
	if arg2 then
		GuiService_upvr.CoreGuiNavigationEnabled = module_2_upvr._originalCoreGuiNavigationEnabled
		GuiService_upvr.GuiNavigationEnabled = module_2_upvr._originalGuiNavigationEnabled
		module_2_upvr._navigationEnabled = nil
	elseif module_2_upvr.controllerModeEnabled then
		for _, v_15 in pairs(module_2_upvr.getIcons()) do
			if not v_15.joinedFeatureName or v_15._parentIcon[v_15.joinedFeatureName.."Open"] == true then
				table.insert({}, v_15.instances.iconButton)
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		GuiService_upvr:AddSelectionTuple("TopbarPlusIcons", table.unpack({}))
		if not module_2_upvr._navigationEnabled then
			module_2_upvr._originalCoreGuiNavigationEnabled = GuiService_upvr.CoreGuiNavigationEnabled
			module_2_upvr._originalGuiNavigationEnabled = GuiService_upvr.GuiNavigationEnabled
			GuiService_upvr.CoreGuiNavigationEnabled = false
			GuiService_upvr.GuiNavigationEnabled = true
			module_2_upvr._navigationEnabled = true
		end
	end
end
local function _() -- Line 708, Named "getScaleMultiplier"
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	if GuiService_upvr:IsTenFootInterface() then
		return 3
	end
	return 1.3
end
local function SetSelectedObject_upvr(arg1) -- Line 716, Named "SetSelectedObject"
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	GuiService_upvr.SelectedObject = arg1
end
function module_2_upvr._setControllerSelectedObject(arg1) -- Line 720
	--[[ Upvalues[2]:
		[1]: module_2_upvr (readonly)
		[2]: SetSelectedObject_upvr (readonly)
	]]
	local var206_upvr
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var206_upvr = module_2_upvr._controllerSetCount + 1
		return var206_upvr
	end
	if not module_2_upvr._controllerSetCount or not INLINED_4() then
		var206_upvr = 0
	end
	module_2_upvr._controllerSetCount = var206_upvr
	pcall(SetSelectedObject_upvr, arg1)
	task.delay(0.1, function() -- Line 724
		--[[ Upvalues[4]:
			[1]: module_2_upvr (copied, readonly)
			[2]: var206_upvr (readonly)
			[3]: SetSelectedObject_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		if var206_upvr == module_2_upvr._controllerSetCountS then
			pcall(SetSelectedObject_upvr, arg1)
		end
	end)
end
function module_2_upvr._enableControllerMode(arg1) -- Line 732
	--[[ Upvalues[6]:
		[1]: TopbarPlusGui_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: StarterGui_upvr (readonly)
		[5]: var18_upvw (read and write)
		[6]: tbl_2_upvr (readonly)
	]]
	local Indicator = TopbarPlusGui_upvr.Indicator
	if module_2_upvr.controllerModeEnabled == arg1 then
	else
		module_2_upvr.controllerModeEnabled = arg1
		if arg1 then
			TopbarPlusGui_upvr.TopbarContainer.Position = UDim2.new(0, 0, 0, 5)
			local TopbarContainer = TopbarPlusGui_upvr.TopbarContainer
			TopbarContainer.Visible = false
			if GuiService_upvr:IsTenFootInterface() then
				TopbarContainer = 3
			else
				TopbarContainer = 1.3
			end
			Indicator.Position = UDim2.new(0.5, 0, 0, 5)
			Indicator.Size = UDim2.new(0, 18 * TopbarContainer, 0, 18 * TopbarContainer)
			Indicator.Image = "rbxassetid://5278151556"
			local xpcall_result1_3, xpcall_result2_7 = xpcall(function() -- Line 41
				--[[ Upvalues[1]:
					[1]: StarterGui_upvr (copied, readonly)
				]]
				return StarterGui_upvr:GetCore("TopbarEnabled")
			end, function(arg1_2) -- Line 43
				return true
			end)
			local var218 = xpcall_result1_3 and xpcall_result2_7
			if not var218 then
				var218 = not module_2_upvr.mimicCoreGui
			end
			Indicator.Visible = var218
			Indicator.Position = UDim2.new(0.5, 0, 0, 5)
			Indicator.Active = true
			var18_upvw = Indicator.InputBegan:Connect(function(arg1_3) -- Line 749
				--[[ Upvalues[1]:
					[1]: module_2_upvr (copied, readonly)
				]]
				if arg1_3.UserInputType == Enum.UserInputType.MouseButton1 then
					module_2_upvr.setTopbarEnabled(true, false)
				end
			end)
		else
			TopbarPlusGui_upvr.TopbarContainer.Position = UDim2.new(0, 0, 0, 0)
			local xpcall_result1_7, xpcall_result2_8 = xpcall(function() -- Line 41
				--[[ Upvalues[1]:
					[1]: StarterGui_upvr (copied, readonly)
				]]
				return StarterGui_upvr:GetCore("TopbarEnabled")
			end, function(arg1_4) -- Line 43
				return true
			end)
			local var224 = xpcall_result1_7 and xpcall_result2_8
			if not var224 then
				var224 = not module_2_upvr.mimicCoreGui
			end
			TopbarPlusGui_upvr.TopbarContainer.Visible = var224
			Indicator.Visible = false
			module_2_upvr._setControllerSelectedObject(nil)
		end
		for i_14, _ in pairs(tbl_2_upvr) do
			module_2_upvr._enableControllerModeForIcon(i_14, arg1)
		end
	end
end
function module_2_upvr._enableControllerModeForIcon(arg1, arg2) -- Line 765
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 2 start (CF ANALYSIS FAILED)
	arg1:leave()
	-- KONSTANTERROR: [5] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 3 end (CF ANALYSIS FAILED)
end
local var228_upvw = false
function module_2_upvr.setupHealthbar() -- Line 802
	--[[ Upvalues[6]:
		[1]: var228_upvw (read and write)
		[2]: RunService_upvr (readonly)
		[3]: Parent_upvr (readonly)
		[4]: StarterGui_upvr (readonly)
		[5]: module_2_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
	]]
	if var228_upvw then
	else
		var228_upvw = true
		task.defer(function() -- Line 810
			--[[ Upvalues[5]:
				[1]: RunService_upvr (copied, readonly)
				[2]: Parent_upvr (copied, readonly)
				[3]: StarterGui_upvr (copied, readonly)
				[4]: module_2_upvr (copied, readonly)
				[5]: LocalPlayer_upvr (copied, readonly)
			]]
			RunService_upvr.Heartbeat:Wait()
			require(Parent_upvr).new():setProperty("internalIcon", true):setName("_FakeHealthbar"):setRight():setOrder(-420):setSize(80, 32):lock():set("iconBackgroundTransparency", 1):give(function(arg1) -- Line 822
				--[[ Upvalues[3]:
					[1]: StarterGui_upvr (copied, readonly)
					[2]: module_2_upvr (copied, readonly)
					[3]: LocalPlayer_upvr (copied, readonly)
				]]
				local Frame = Instance.new("Frame")
				Frame.Name = "HealthContainer"
				Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				Frame.BorderSizePixel = 0
				Frame.AnchorPoint = Vector2.new(0, 0.5)
				Frame.Position = UDim2.new(0, 0, 0.5, 0)
				Frame.Size = UDim2.new(1, 0, 0.2, 0)
				Frame.Visible = true
				Frame.ZIndex = 11
				Frame.Parent = arg1.instances.iconButton
				local UICorner = Instance.new("UICorner")
				UICorner.CornerRadius = UDim.new(1, 0)
				UICorner.Parent = Frame
				local clone = Frame:Clone()
				clone.Name = "HealthFrame"
				clone.BackgroundColor3 = Color3.fromRGB(167, 167, 167)
				clone.BorderSizePixel = 0
				clone.AnchorPoint = Vector2.new(0.5, 0.5)
				clone.Position = UDim2.new(0.5, 0, 0.5, 0)
				clone.Size = UDim2.new(1, -2, 1, -2)
				clone.Visible = true
				clone.ZIndex = 12
				clone.Parent = Frame
				local clone_2_upvr = clone:Clone()
				clone_2_upvr.Name = "HealthBar"
				clone_2_upvr.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				clone_2_upvr.BorderSizePixel = 0
				clone_2_upvr.AnchorPoint = Vector2.new(0, 0.5)
				clone_2_upvr.Position = UDim2.new(0, 0, 0.5, 0)
				clone_2_upvr.Size = UDim2.new(0.5, 0, 1, 0)
				clone_2_upvr.Visible = true
				clone_2_upvr.ZIndex = 13
				clone_2_upvr.Parent = clone
				local function powColor3_upvr(arg1_5, arg2) -- Line 865, Named "powColor3"
					return Color3.new(math.pow(arg1_5.R, arg2), math.pow(arg1_5.G, arg2), math.pow(arg1_5.B, arg2))
				end
				local function _(arg1_6, arg2, arg3, arg4) -- Line 873, Named "lerpColor"
					--[[ Upvalues[1]:
						[1]: powColor3_upvr (readonly)
					]]
					local var235 = arg4 or 2
					local var236 = var235
					local var237 = var235
					return powColor3_upvr(Color3.new(math.pow(arg1_6.R, var236), math.pow(arg1_6.G, var236), math.pow(arg1_6.B, var236)):Lerp(Color3.new(math.pow(arg2.R, var237), math.pow(arg2.G, var237), math.pow(arg2.B, var237)), arg3), 1 / var235)
				end
				local var238_upvw = true
				local Color3_fromRGB_result1_upvr_3 = Color3.fromRGB(27, 252, 107)
				local Color3_fromRGB_result1_upvr = Color3.fromRGB(250, 235, 0)
				local Color3_fromRGB_result1_upvr_2 = Color3.fromRGB(255, 28, 0)
				local function listenToHealth_upvr(arg1_7) -- Line 881, Named "listenToHealth"
					--[[ Upvalues[8]:
						[1]: StarterGui_upvr (copied, readonly)
						[2]: module_2_upvr (copied, readonly)
						[3]: var238_upvw (read and write)
						[4]: arg1 (readonly)
						[5]: Color3_fromRGB_result1_upvr_3 (readonly)
						[6]: Color3_fromRGB_result1_upvr (readonly)
						[7]: Color3_fromRGB_result1_upvr_2 (readonly)
						[8]: clone_2_upvr (readonly)
					]]
					if not arg1_7 then
					else
						local Humanoid_upvr = arg1_7:WaitForChild("Humanoid", 10)
						if not Humanoid_upvr then return end
						local function updateHealthBar() -- Line 890
							--[[ Upvalues[9]:
								[1]: StarterGui_upvr (copied, readonly)
								[2]: Humanoid_upvr (readonly)
								[3]: module_2_upvr (copied, readonly)
								[4]: var238_upvw (copied, read and write)
								[5]: arg1 (copied, readonly)
								[6]: Color3_fromRGB_result1_upvr_3 (copied, readonly)
								[7]: Color3_fromRGB_result1_upvr (copied, readonly)
								[8]: Color3_fromRGB_result1_upvr_2 (copied, readonly)
								[9]: clone_2_upvr (copied, readonly)
							]]
							-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
							local var243 = Humanoid_upvr.Health / Humanoid_upvr.MaxHealth
							local var244
							if var243 == 1 or module_2_upvr.healthbarDisabled or var238_upvw and StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.Health) == false then
								if arg1.enabled then
									arg1:setEnabled(false)
								end
							else
								if var243 < 1 then
									if not arg1.enabled then
										arg1:setEnabled(true)
									end
									var238_upvw = false
									-- KONSTANTERROR: Expression was reused, decompilation is incorrect
									if StarterGui_upvr:GetCoreGuiEnabled(Enum.CoreGuiType.Health) then
										var244 = false
										StarterGui_upvr:SetCoreGuiEnabled(Enum.CoreGuiType.Health, var244)
									end
								end
								local var245 = 1.25 * var243
								local var246 = var245 + -0.125
								if 1 < var246 then
									var245 = 1
								elseif var246 < 0 then
									var245 = 0
								else
									var245 = var246
								end
								var244 = 0.5
								if var244 >= var243 or not Color3_fromRGB_result1_upvr_3 then
									local var247 = Color3_fromRGB_result1_upvr
								end
								local function INLINED_5() -- Internal function, doesn't exist in bytecode
									var244 = Color3_fromRGB_result1_upvr
									return var244
								end
								if 0.5 >= var243 or not INLINED_5() then
									var244 = Color3_fromRGB_result1_upvr_2
								end
								local var248 = (1 - var245) * 2
								if 0.5 >= var243 or not (1 - var248) then
								end
								local var249 = nil or 2
								local var250 = var249
								local var251 = var249
								local any_Lerp_result1 = Color3.new(math.pow(var244.R, var250), math.pow(var244.G, var250), math.pow(var244.B, var250)):Lerp(Color3.new(math.pow(var247.R, var251), math.pow(var247.G, var251), math.pow(var247.B, var251)), 2 - var248)
								local var253 = 1 / var249
								clone_2_upvr.BackgroundColor3 = Color3.new(math.pow(any_Lerp_result1.R, var253), math.pow(any_Lerp_result1.G, var253), math.pow(any_Lerp_result1.B, var253))
								clone_2_upvr.Size = UDim2.new(var243, 0, 1, 0)
							end
						end
						Humanoid_upvr.HealthChanged:Connect(updateHealthBar)
						module_2_upvr.healthbarDisabledSignal:Connect(updateHealthBar)
						updateHealthBar()
					end
				end
				LocalPlayer_upvr.CharacterAdded:Connect(function(arg1_8) -- Line 927
					--[[ Upvalues[1]:
						[1]: listenToHealth_upvr (readonly)
					]]
					listenToHealth_upvr(arg1_8)
				end)
				task.spawn(listenToHealth_upvr, LocalPlayer_upvr.Character)
			end)
		end)
	end
end
function module_2_upvr._determineControllerDisplay() -- Line 935
	--[[ Upvalues[3]:
		[1]: UserInputService_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: var19_upvw (read and write)
	]]
	local MouseEnabled = UserInputService_upvr.MouseEnabled
	local GamepadEnabled = UserInputService_upvr.GamepadEnabled
	local any_getIcon_result1_2 = module_2_upvr.getIcon("_TopbarControllerOption")
	if MouseEnabled and GamepadEnabled then
		if not var19_upvw then
			any_getIcon_result1_2:setEnabled(true)
		else
			any_getIcon_result1_2:setEnabled(false)
		end
	end
	if MouseEnabled then
		if not GamepadEnabled then
			any_getIcon_result1_2:setEnabled(false)
			module_2_upvr._enableControllerMode(false)
			any_getIcon_result1_2:deselect()
			return
		end
	end
	if not MouseEnabled then
		if GamepadEnabled then
			any_getIcon_result1_2:setEnabled(false)
			module_2_upvr._enableControllerMode(true)
		end
	end
end
local VoiceChatService_upvr = game:GetService("VoiceChatService")
local var262_upvw = false
local any_IsStudio_result1_upvr = RunService_upvr:IsStudio()
coroutine.wrap(function() -- Line 962
	--[[ Upvalues[12]:
		[1]: RunService_upvr (readonly)
		[2]: Parent_upvr (readonly)
		[3]: UserInputService_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: GuiService_upvr (readonly)
		[6]: StarterGui_upvr (readonly)
		[7]: TopbarPlusGui_upvr (readonly)
		[8]: tbl_4_upvr (readonly)
		[9]: VoiceChatService_upvr (readonly)
		[10]: LocalPlayer_upvr (readonly)
		[11]: var262_upvw (read and write)
		[12]: any_IsStudio_result1_upvr (readonly)
	]]
	RunService_upvr.Heartbeat:Wait()
	local var8_3 = require(Parent_upvr)
	local any_setProperty_result1_upvr = var8_3.new():setProperty("internalIcon", true):setName("_TopbarControllerOption"):setOrder(100):setImage(11162828670):setRight():setEnabled(false):setTip("Controller mode"):setProperty("deselectWhenOtherIconSelected", false)
	UserInputService_upvr:GetPropertyChangedSignal("MouseEnabled"):Connect(module_2_upvr._determineControllerDisplay)
	UserInputService_upvr.GamepadConnected:Connect(module_2_upvr._determineControllerDisplay)
	UserInputService_upvr.GamepadDisconnected:Connect(module_2_upvr._determineControllerDisplay)
	module_2_upvr._determineControllerDisplay()
	local function iconClicked() -- Line 986
		--[[ Upvalues[2]:
			[1]: any_setProperty_result1_upvr (readonly)
			[2]: module_2_upvr (copied, readonly)
		]]
		local var304 = any_setProperty_result1_upvr
		local isSelected_2 = var304.isSelected
		if isSelected_2 then
			var304 = "Normal mode"
		else
			var304 = "Controller mode"
		end
		any_setProperty_result1_upvr:setTip(var304)
		module_2_upvr._enableControllerMode(isSelected_2)
	end
	any_setProperty_result1_upvr.selected:Connect(iconClicked)
	any_setProperty_result1_upvr.deselected:Connect(iconClicked)
	UserInputService_upvr.InputBegan:Connect(function(arg1, arg2) -- Line 996
		--[[ Upvalues[4]:
			[1]: module_2_upvr (copied, readonly)
			[2]: GuiService_upvr (copied, readonly)
			[3]: StarterGui_upvr (copied, readonly)
			[4]: TopbarPlusGui_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 29 start (CF ANALYSIS FAILED)
		if not module_2_upvr.controllerModeEnabled then
		else
			if arg1.KeyCode == Enum.KeyCode.DPadDown then
				if not GuiService_upvr.SelectedObject then
					local xpcall_result1_6, xpcall_result2_5 = xpcall(function() -- Line 41
						--[[ Upvalues[1]:
							[1]: StarterGui_upvr (copied, readonly)
						]]
						return StarterGui_upvr:GetCore("TopbarEnabled")
					end, function(arg1_10) -- Line 43
						return true
					end)
					local var311 = xpcall_result1_6 and xpcall_result2_5
					if not var311 then
						var311 = not module_2_upvr.mimicCoreGui
					end
					if var311 then
						module_2_upvr.setTopbarEnabled(true, false)
						-- KONSTANTWARNING: GOTO [88] #64
					end
					-- KONSTANTWARNING: GOTO [88] #64
				end
			elseif arg1.KeyCode == Enum.KeyCode.ButtonB and not module_2_upvr.disableButtonB then
				if module_2_upvr.activeButtonBCallbacks == 1 and TopbarPlusGui_upvr.Indicator.Image == "rbxassetid://5278151556" then
					module_2_upvr.activeButtonBCallbacks = 0
					GuiService_upvr.SelectedObject = nil
				end
				if module_2_upvr.activeButtonBCallbacks == 0 then
					module_2_upvr._previousSelectedObject = GuiService_upvr.SelectedObject
					module_2_upvr._setControllerSelectedObject(nil)
					module_2_upvr.setTopbarEnabled(false, false)
				end
			end
			-- KONSTANTERROR: [0] 1. Error Block 29 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [88] 64. Error Block 17 start (CF ANALYSIS FAILED)
			arg1:Destroy()
			-- KONSTANTERROR: [88] 64. Error Block 17 end (CF ANALYSIS FAILED)
		end
	end)
	for var325, v_12 in pairs(tbl_4_upvr) do
		if var325 ~= "mid" then
			local any_setEnabled_result1 = var8_3.new():setProperty("internalIcon", true):setImage(6069276526):setName("_overflowIcon-"..var325):setEnabled(false)
			v_12.overflowIcon = any_setEnabled_result1
			any_setEnabled_result1.accountForWhenDisabled = true
			if var325 == "left" then
				any_setEnabled_result1:setOrder(math.huge)
				any_setEnabled_result1:setLeft()
				any_setEnabled_result1:set("dropdownAlignment", "right")
			elseif var325 == "right" then
				any_setEnabled_result1:setOrder((-math.huge))
				any_setEnabled_result1:setRight()
				any_setEnabled_result1:set("dropdownAlignment", "left")
			end
			any_setEnabled_result1.lockedSettings = {
				iconImage = true;
				order = true;
				alignment = true;
			}
		end
	end
	task.defer(function() -- Line 1049
		--[[ Upvalues[5]:
			[1]: VoiceChatService_upvr (copied, readonly)
			[2]: LocalPlayer_upvr (copied, readonly)
			[3]: module_2_upvr (copied, readonly)
			[4]: var262_upvw (copied, read and write)
			[5]: any_IsStudio_result1_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var318_upvw
		while true do
			local pcall_result1_2, pcall_result2_5 = pcall(function() -- Line 1052
				--[[ Upvalues[2]:
					[1]: VoiceChatService_upvr (copied, readonly)
					[2]: LocalPlayer_upvr (copied, readonly)
				]]
				return VoiceChatService_upvr:IsVoiceEnabledForUserIdAsync(LocalPlayer_upvr.UserId)
			end)
			var318_upvw = pcall_result1_2
			local var322_upvw = pcall_result2_5
			if var318_upvw then break end
			task.wait(1)
		end
		local function _() -- Line 1058, Named "checkVoiceChatManuallyEnabled"
			--[[ Upvalues[4]:
				[1]: module_2_upvr (copied, readonly)
				[2]: var318_upvw (read and write)
				[3]: var322_upvw (read and write)
				[4]: var262_upvw (copied, read and write)
			]]
			if module_2_upvr.voiceChatEnabled and var318_upvw and var322_upvw then
				var262_upvw = true
				module_2_upvr.updateTopbar()
			end
		end
		if module_2_upvr.voiceChatEnabled and var318_upvw and var322_upvw then
			var262_upvw = true
			module_2_upvr.updateTopbar()
		end
		LocalPlayer_upvr.PlayerGui:WaitForChild("TopbarPlus", 999)
		task.delay(10, function() -- Line 1070
			--[[ Upvalues[5]:
				[1]: module_2_upvr (copied, readonly)
				[2]: var318_upvw (read and write)
				[3]: var322_upvw (read and write)
				[4]: var262_upvw (copied, read and write)
				[5]: any_IsStudio_result1_upvr (copied, readonly)
			]]
			if module_2_upvr.voiceChatEnabled and var318_upvw and var322_upvw then
				var262_upvw = true
				module_2_upvr.updateTopbar()
			end
			if module_2_upvr.voiceChatEnabled == nil and var318_upvw and var322_upvw and any_IsStudio_result1_upvr then
				warn("⚠️TopbarPlus Action Required⚠️ If VoiceChat is enabled within your experience it's vital you set IconController.voiceChatEnabled to true ``require(game.ReplicatedStorage.Icon.IconController).voiceChatEnabled = true`` otherwise the BETA label will not be accounted for within your live servers. This warning will disappear after doing so. Feel free to delete this warning or to set to false if you don't have VoiceChat enabled within your experience.")
			end
		end)
	end)
	if not any_IsStudio_result1_upvr then
		local CreatorId = game.CreatorId
		var325 = "GroupService"
		var325 = game
		var325 = Enum.CreatorType.Group
		if var325.CreatorType == var325 then
			local service_upvr = game:GetService(var325)
			function var325() -- Line 1088
				--[[ Upvalues[1]:
					[1]: service_upvr (readonly)
				]]
				return service_upvr:GetGroupInfoAsync(game.CreatorId).Owner
			end
			local pcall_result1_5, pcall_result2_3_upvr = pcall(var325)
			if pcall_result1_5 then
				CreatorId = pcall_result2_3_upvr.Id
			end
		end
		v_12 = Parent_upvr
		pcall_result2_3_upvr = v_12.VERSION
		v_12 = LocalPlayer_upvr
		pcall_result2_3_upvr = v_12.UserId
		if pcall_result2_3_upvr ~= CreatorId then
			pcall_result2_3_upvr = game:GetService("MarketplaceService")
			v_12 = pcall
			local function var329() -- Line 1096
				--[[ Upvalues[1]:
					[1]: pcall_result2_3_upvr (readonly)
				]]
				return pcall_result2_3_upvr:GetProductInfo(game.PlaceId)
			end
			v_12 = v_12(var329)
			local v_12_result1, v_12_result2 = v_12(var329)
			if v_12_result1 and v_12_result2 then
				print("\n\n\n⚽ %s uses TopbarPlus-Forked %s\n🍍 TopbarPlus-Forked was originally developed by ForeverHD and the Nanoblox Team, forked by iamEvanRBLX.\n🚀 You can learn more and take a free copy by searching for 'TopbarPlus' on the DevForum\n\n":format(v_12_result2.Name, require(pcall_result2_3_upvr)))
			end
		end
	end
end)()
coroutine.wrap(function() -- Line 1109
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: StarterGui_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	local ChatScript = Players_upvr.LocalPlayer.PlayerScripts:WaitForChild("ChatScript", 4)
	if not ChatScript then
		ChatScript = game:GetService("Chat"):WaitForChild("ChatScript", 4)
	end
	if not ChatScript then
	else
		local ChatMain = ChatScript:FindFirstChild("ChatMain")
		if not ChatMain then return end
		require(ChatMain).CoreGuiEnabled:connect(function() -- Line 1115
			--[[ Upvalues[2]:
				[1]: StarterGui_upvr (copied, readonly)
				[2]: module_2_upvr (copied, readonly)
			]]
			local xpcall_result1_4, xpcall_result2_6 = xpcall(function() -- Line 41
				--[[ Upvalues[1]:
					[1]: StarterGui_upvr (copied, readonly)
				]]
				return StarterGui_upvr:GetCore("TopbarEnabled")
			end, function(arg1) -- Line 43
				return true
			end)
			local var340 = xpcall_result1_4 and xpcall_result2_6
			if var340 == module_2_upvr.previousTopbarEnabled then
				module_2_upvr.updateTopbar()
				return "SetCoreGuiEnabled was called instead of SetCore"
			end
			if module_2_upvr.mimicCoreGui then
				module_2_upvr.previousTopbarEnabled = var340
				if module_2_upvr.controllerModeEnabled then
					module_2_upvr.setTopbarEnabled(false, false)
				else
					module_2_upvr.setTopbarEnabled(var340, false)
				end
			end
			module_2_upvr.updateTopbar()
		end)
		local _, _ = xpcall(function() -- Line 41
			--[[ Upvalues[1]:
				[1]: StarterGui_upvr (copied, readonly)
			]]
			return StarterGui_upvr:GetCore("TopbarEnabled")
		end, function(arg1) -- Line 43
			return true
		end)
		local var345
		if not var345 and not module_2_upvr.mimicCoreGui then
			var345 = true
		end
		module_2_upvr.setTopbarEnabled(var345, false)
	end
end)()
GuiService_upvr.MenuClosed:Connect(function() -- Line 1139
	--[[ Upvalues[3]:
		[1]: VRService_upvr (readonly)
		[2]: var16_upvw (read and write)
		[3]: module_2_upvr (readonly)
	]]
	if VRService_upvr.VREnabled then
	else
		var16_upvw = false
		if not module_2_upvr.controllerModeEnabled then
			module_2_upvr.setTopbarEnabled(module_2_upvr.topbarEnabled, false)
		end
	end
end)
GuiService_upvr.MenuOpened:Connect(function() -- Line 1148
	--[[ Upvalues[3]:
		[1]: VRService_upvr (readonly)
		[2]: var16_upvw (read and write)
		[3]: module_2_upvr (readonly)
	]]
	if VRService_upvr.VREnabled then
	else
		var16_upvw = true
		module_2_upvr.setTopbarEnabled(false, false)
	end
end)
if not workspace.CurrentCamera then
else
	if var17_upvw and var17_upvw.Connected then
		var17_upvw:Disconnect()
	end
	var17_upvw = workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(module_2_upvr.updateTopbar)
end
task.spawn(function() -- Line 1159
	--[[ Upvalues[3]:
		[1]: LocalizationService_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: module_2_upvr (readonly)
	]]
	local pcall_result1_3, pcall_result2_2 = pcall(function() -- Line 1160
		--[[ Upvalues[2]:
			[1]: LocalizationService_upvr (copied, readonly)
			[2]: LocalPlayer_upvr (copied, readonly)
		]]
		return LocalizationService_upvr:GetTranslatorForPlayerAsync(LocalPlayer_upvr)
	end)
	local function updateAllIcons() -- Line 1161
		--[[ Upvalues[1]:
			[1]: module_2_upvr (copied, readonly)
		]]
		for _, v_13 in pairs(module_2_upvr.getIcons()) do
			v_13:_updateAll()
		end
	end
	if pcall_result1_3 then
		module_2_upvr.translator = pcall_result2_2
		pcall_result2_2:GetPropertyChangedSignal("LocaleId"):Connect(updateAllIcons)
		task.spawn(updateAllIcons)
		task.delay(1, updateAllIcons)
		task.delay(10, updateAllIcons)
	end
end)
local function topbarInsetChanged() -- Line 1176
	--[[ Upvalues[2]:
		[1]: GuiService_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	module_2_upvr.updateTopbar()
end
pcall(topbarInsetChanged)
GuiService_upvr:GetPropertyChangedSignal("TopbarInset"):Connect(topbarInsetChanged)
return module_2_upvr