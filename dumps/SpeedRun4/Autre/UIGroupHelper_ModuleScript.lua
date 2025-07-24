-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:32
-- Luau version 6, Types version 3
-- Time taken: 0.009233 seconds

local VrSpatialUi = script:FindFirstAncestor("VrSpatialUi")
local Parent = VrSpatialUi.Parent
local Constants_upvr = require(VrSpatialUi.Constants)
local UIGroupState_upvr = require(VrSpatialUi.UIGroupState)
function getUIGroupTypeForPanel(arg1, arg2) -- Line 44
	if arg2 then
		local _ = arg1[arg2]
	else
	end
	if nil == nil then
		return nil
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local panelPositionProps = nil.panelPositionProps
	if panelPositionProps then
		return panelPositionProps.uiGroup
	end
	return nil
end
function getDragBarSafely(arg1) -- Line 60
	if arg1 and arg1.dragBar and arg1.draggable then
		return arg1.dragBar
	end
	return nil
end
function isTempPanel(arg1) -- Line 68
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local var7
	if arg1 ~= Constants_upvr.PanelType.ToolTipsContainer then
		var7 = false
	else
		var7 = true
	end
	return var7
end
function visitAllPanels(arg1, arg2) -- Line 72
	for i, v in pairs(arg1) do
		arg2(i, v)
	end
end
function visitDraggablePanels(arg1, arg2, arg3) -- Line 81
	visitAllPanels(arg1, function(arg1_2, arg2_2) -- Line 89
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
		]]
		local panelPositionProps_2 = arg2_2.panelPositionProps
		if panelPositionProps_2 and not isTempPanel(arg1_2) and panelPositionProps_2.cameraFixedPanelProp and panelPositionProps_2.uiGroup == arg2 then
			arg3(arg1_2, panelPositionProps_2.cameraFixedPanelProp)
		end
	end)
end
function connect(arg1, arg2) -- Line 102
	local module_2 = {}
	module_2.value = arg1
	module_2.connection = arg1:connect(arg2)
	return module_2
end
function disconnect(arg1) -- Line 110
	if arg1.connection then
		arg1.connection:disconnect()
		arg1.connection = nil
	end
end
function setPanelParent(arg1, arg2) -- Line 117
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	if arg2 == nil then
	else
	end
	if arg1.uiType == Constants_upvr.SpatialUIType.SpatialUI or arg1.uiType == Constants_upvr.SpatialUIType.SpatialUIRoact then
		local panelObject = arg1.panelObject
		panelObject.Enabled = true
		local Adornee = panelObject.Adornee
		Adornee.CanCollide = false
		Adornee.CanTouch = false
		Adornee.Anchored = true
		Adornee.Parent = arg2
	elseif arg1.uiType == Constants_upvr.SpatialUIType.SpatialUIPartOnly then
		arg1.panelObject.Parent = arg2
	end
end
local module_upvr = {}
module_upvr.__index = module_upvr
function module_upvr.setTopBarVisible(arg1, arg2, arg3) -- Line 153
	arg1.topBarVisibleValue = connect(arg2, arg3)
end
function module_upvr.isTopBarVisible(arg1) -- Line 157
	return arg1.topBarVisibleValue.value:get()
end
function module_upvr.prepareGuiToggleAnimationState(arg1, arg2) -- Line 161
	--[[ Upvalues[1]:
		[1]: UIGroupState_upvr (readonly)
	]]
	arg1:setUIGroupState(UIGroupState_upvr.GuiToggleAnimation)
end
function module_upvr.setUIGroupState(arg1, arg2) -- Line 168
	arg1.uiGroupState = arg2
end
local radians_upvr = math.rad(game:DefineFastInt("SpatialUIRepositionDeviationAngle", 10))
function module_upvr.animateBottomBarOnHeadMoveIfNeeded(arg1, arg2, arg3, arg4) -- Line 172
	--[[ Upvalues[2]:
		[1]: UIGroupState_upvr (readonly)
		[2]: radians_upvr (readonly)
	]]
	local var20
	if arg1.uiGroupState ~= UIGroupState_upvr.GuiToggleAnimation or arg1.currentBottomBarAnimatable == nil then
	else
		var20 = arg3.Y - arg4.Y
		var20 = true
		if radians_upvr >= math.abs(arg3.X - arg4.X) then
			if radians_upvr >= math.abs(var20) then
				var20 = false
			else
				var20 = true
			end
		end
		if var20 then
			arg1.currentBottomBarAnimatable:animateHideIfNeeded(false)
			return
		end
		arg1.currentBottomBarAnimatable:animateShowIfNeeded()
	end
end
local PanelManagedAnimatable_upvr = require(VrSpatialUi.PanelManagedAnimatable)
function module_upvr.updateAllElements(arg1, arg2, arg3) -- Line 193
	--[[ Upvalues[3]:
		[1]: UIGroupState_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: PanelManagedAnimatable_upvr (readonly)
	]]
	local any_isTopBarVisible_result1_upvr = arg1:isTopBarVisible()
	if any_isTopBarVisible_result1_upvr then
		arg1:setUIGroupState(UIGroupState_upvr.Default)
		if arg1.currentBottomBarAnimatable then
			arg1.currentBottomBarAnimatable:reset()
			arg1.currentBottomBarAnimatable = nil
		end
	end
	arg1:updateAllDragBar(arg2, arg3)
	visitAllPanels(arg2, function(arg1_4, arg2_4) -- Line 207
		--[[ Upvalues[5]:
			[1]: Constants_upvr (copied, readonly)
			[2]: any_isTopBarVisible_result1_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: UIGroupState_upvr (copied, readonly)
			[5]: PanelManagedAnimatable_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
		if arg1_4 ~= Constants_upvr.PanelType.BottomBar then
		else
		end
		-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 9. Error Block 6 start (CF ANALYSIS FAILED)
		setPanelParent(arg2_4, workspace)
		do
			return
		end
		-- KONSTANTERROR: [11] 9. Error Block 6 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 14. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 14. Error Block 7 end (CF ANALYSIS FAILED)
	end)
end
function module_upvr.connectPanelVisibility(arg1, arg2, arg3, arg4, arg5) -- Line 227
	if isTempPanel(arg2) then
	else
		arg1:disconnectPanelVisibility(arg2, arg4, arg5)
		local getUIGroupTypeForPanel_result1_5 = getUIGroupTypeForPanel(arg4, arg2)
		if not getUIGroupTypeForPanel_result1_5 then return end
		arg1.uiGroupVisibilityMap[getUIGroupTypeForPanel_result1_5] = connect(arg3, function() -- Line 242
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
				[3]: arg4 (readonly)
				[4]: arg5 (readonly)
			]]
			arg1:updateDragBar(arg2, arg4, arg5)
		end)
		arg1:updateDragBar(arg2, arg4, arg5)
	end
end
function module_upvr.disconnectPanelVisibility(arg1, arg2, arg3, arg4) -- Line 248
	local var28
	if isTempPanel(arg2) then
	else
		var28 = arg3
		local getUIGroupTypeForPanel_result1_4 = getUIGroupTypeForPanel(var28, arg2)
		if getUIGroupTypeForPanel_result1_4 then
			var28 = arg1.uiGroupVisibilityMap[getUIGroupTypeForPanel_result1_4]
		else
			var28 = nil
		end
		if var28 then
			disconnect(var28)
			arg1.uiGroupVisibilityMap[getUIGroupTypeForPanel_result1_4] = nil
			arg1:updateDragBar(arg2, arg3, arg4)
		end
	end
end
function module_upvr.updateDragBar(arg1, arg2, arg3, arg4) -- Line 268
	local var30 = arg3
	local getUIGroupTypeForPanel_result1 = getUIGroupTypeForPanel(var30, arg2)
	local var32
	if getUIGroupTypeForPanel_result1 then
		var30 = arg4[getUIGroupTypeForPanel_result1]
	else
		var30 = nil
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var32 = var30.dragBar
		return var32
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var32 = var30.draggable
		return var32
	end
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var32 = isTempPanel(arg2)
		return var32
	end
	if not var30 or not INLINED() or not INLINED_2() or INLINED_3() then
	else
		var32 = arg1:isTopBarVisible()
		if arg1.uiGroupVisibilityMap[getUIGroupTypeForPanel_result1] then
			local var34 = var32
			if var34 then
				var34 = arg1.uiGroupVisibilityMap[getUIGroupTypeForPanel_result1].value:get()
			end
			var32 = var34
		else
			var32 = false
		end
		if var32 then
			var30.dragBar:show()
			return
		end
		var30.dragBar:hide()
	end
end
function module_upvr.updateAllDragBar(arg1, arg2, arg3) -- Line 293
	for i_2, _ in pairs(arg2) do
		arg1:updateDragBar(i_2, arg2, arg3)
	end
end
local createUIGroupDragBar_upvr = require(VrSpatialUi.createUIGroupDragBar)
local InExperienceUIVRIXP_upvr = require(Parent.SharedExperimentDefinition).InExperienceUIVRIXP
function module_upvr.createUIGroup(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 303
	--[[ Upvalues[3]:
		[1]: Constants_upvr (readonly)
		[2]: createUIGroupDragBar_upvr (readonly)
		[3]: InExperienceUIVRIXP_upvr (readonly)
	]]
	local var42_upvr = Constants_upvr.UIGROUP_INITITIAL_ROTATION_MAP[arg3]
	local var43_upvr = arg1.uiGroups[arg3]
	local getDragBarSafely_result1 = getDragBarSafely(var43_upvr)
	if arg7 and var42_upvr and getDragBarSafely_result1 and getDragBarSafely_result1:isEverDragged() then
		visitDraggablePanels(arg6, arg3, function(arg1_5, arg2_5) -- Line 319
			--[[ Upvalues[2]:
				[1]: var43_upvr (readonly)
				[2]: var42_upvr (readonly)
			]]
			var43_upvr.dragBarOffset *= var42_upvr
			arg2_5.uiGroupElementOffset *= var42_upvr
		end)
	end
	local tbl = {}
	tbl.name = arg3
	function tbl.dragFunction(arg1_6, arg2_6, arg3_2, arg4_2, arg5_2) -- Line 328
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
		]]
		arg2:dragUiGroupStep(arg3)
	end
	local var47_upvw
	local var48_upvw
	function tbl.dragStartFunction(arg1_7, arg2_7, arg3_3, arg4_3, arg5_3, arg6_2, arg7_2) -- Line 331
		--[[ Upvalues[6]:
			[1]: var42_upvr (readonly)
			[2]: var47_upvw (read and write)
			[3]: var48_upvw (read and write)
			[4]: arg6 (readonly)
			[5]: arg3 (readonly)
			[6]: arg2 (readonly)
		]]
		if var42_upvr and var47_upvw and var48_upvw and not var48_upvw:isEverDragged() then
			var48_upvw:setCFrame(var48_upvw:getCFrame() * var42_upvr:Inverse())
			var47_upvw.dragBarOffset *= var42_upvr:Inverse()
			visitDraggablePanels(arg6, arg3, function(arg1_8, arg2_8) -- Line 340
				--[[ Upvalues[1]:
					[1]: var42_upvr (copied, readonly)
				]]
				arg2_8.uiGroupElementOffset *= var42_upvr:Inverse()
			end)
		end
		arg2:dragUiGroupStart(arg3)
	end
	function tbl.dragEndFunction(arg1_9) -- Line 348
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: arg3 (readonly)
		]]
		arg2:dragUiGroupEnd(arg3)
	end
	tbl.dragBarPartSize = Constants_upvr.DRAG_BAR_SIZE
	var48_upvw = createUIGroupDragBar_upvr(tbl)
	local var50 = var48_upvw
	var50:hide()
	local tbl_2 = {}
	tbl_2.positionProps = arg5
	tbl_2.uiContainerSize = arg4
	tbl_2.draggable = InExperienceUIVRIXP_upvr:isDraggingAllowed()
	tbl_2.dragBar = var50
	tbl_2.dragBarOffset = Constants_upvr.UIGROUP_DRAGBAR_OFFSET_MAP[arg3]
	tbl_2.headScale = 1
	var47_upvw = tbl_2
	local var52 = var47_upvw
	arg1.uiGroups[arg3] = var52
	return var52
end
function module_upvr.checkAndGetUIGroupTypeForTempPanel(arg1, arg2, arg3) -- Line 366
	if isTempPanel(arg2) then
		return getUIGroupTypeForPanel(arg3, arg2)
	end
	return nil
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("SpatialUIEnableCameraCacheFix", false)
function module_upvr.getGroupCameraCFrameIfPossible(arg1, arg2, arg3) -- Line 377
	--[[ Upvalues[1]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local var56
	if game_DefineFastFlag_result1_upvr and isTempPanel(arg2) then
		local getUIGroupTypeForPanel_result1_2 = getUIGroupTypeForPanel(arg3, arg2)
		if getUIGroupTypeForPanel_result1_2 ~= nil and arg1.uiGroups[getUIGroupTypeForPanel_result1_2].lastCameraCFrame then
			var56 = arg1.uiGroups[getUIGroupTypeForPanel_result1_2].lastCameraCFrame
		end
	end
	return var56
end
function module_upvr.getBottomBarVisibility(arg1) -- Line 393
	return arg1.bottomBarVisibility
end
local Observable_upvr = require(Parent.Observable)
function module_upvr.new(arg1) -- Line 397
	--[[ Upvalues[3]:
		[1]: Observable_upvr (readonly)
		[2]: UIGroupState_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local module = {
		uiGroupVisibilityMap = {};
		topBarVisibleValue = {
			value = Observable_upvr.ObservableValue.new(arg1);
		};
		uiGroups = {};
		uiGroupState = UIGroupState_upvr.Default;
		bottomBarVisibility = Observable_upvr.ObservableValue.new(true);
		currentBottomBarAnimatable = nil;
	}
	setmetatable(module, module_upvr)
	return module
end
return module_upvr