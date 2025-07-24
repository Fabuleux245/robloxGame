-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:05:58
-- Luau version 6, Types version 3
-- Time taken: 0.012141 seconds

local RunService_upvr = game:GetService("RunService")
local FocusNavigationUtils = script:FindFirstAncestor("FocusNavigationUtils")
local Parent = FocusNavigationUtils.Parent
local ReactFocusNavigation = require(Parent.ReactFocusNavigation)
local MessageBus_upvr = require(Parent.MessageBus).MessageBus
local var6_upvw
if require(Parent.SharedFlags).GetFFlagEnableAppCommonInputHooks() then
	var6_upvw = require(FocusNavigationUtils.useLastInputMethod)
else
	var6_upvw = ReactFocusNavigation.useLastInputMethod
end
local game_DefineFastInt_result1_upvr = game:DefineFastInt("AutoFocusFailsafeThreshold", 5)
local tbl_5_upvr = {
	[Enum.UserInputType.MouseButton1] = true;
	[Enum.UserInputType.MouseButton2] = true;
	[Enum.UserInputType.MouseButton3] = true;
	[Enum.UserInputType.Touch] = true;
}
local function gameLeaveMessageValidator_upvr(arg1) -- Line 49, Named "gameLeaveMessageValidator"
	if typeof(arg1) == "table" then
		return true
	end
	return false
end
local function _(arg1) -- Line 57, Named "createGlobalFocusFailureDetection"
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: game_DefineFastInt_result1_upvr (readonly)
	]]
	local var10_upvw = 0
	return RunService_upvr.Heartbeat:Connect(function(arg1_2) -- Line 59
		--[[ Upvalues[3]:
			[1]: var10_upvw (read and write)
			[2]: game_DefineFastInt_result1_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		var10_upvw += arg1_2
		if game_DefineFastInt_result1_upvr < var10_upvw then
			arg1()
			var10_upvw = 0
		end
	end)
end
local any_new_result1_upvr = MessageBus_upvr.Subscriber.new()
local function createGameLeaveSubscription_upvr(arg1) -- Line 73, Named "createGameLeaveSubscription"
	--[[ Upvalues[4]:
		[1]: MessageBus_upvr (readonly)
		[2]: any_new_result1_upvr (readonly)
		[3]: gameLeaveMessageValidator_upvr (readonly)
		[4]: game_DefineFastInt_result1_upvr (readonly)
	]]
	local any_getMessageId_result1_upvr = MessageBus_upvr.getMessageId("Game", "onGameLeave")
	local var13_upvw
	any_new_result1_upvr:subscribe({
		mid = any_getMessageId_result1_upvr;
		validateParams = gameLeaveMessageValidator_upvr;
	}, function(arg1_3) -- Line 80
		--[[ Upvalues[3]:
			[1]: var13_upvw (read and write)
			[2]: game_DefineFastInt_result1_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		var13_upvw = task.delay(game_DefineFastInt_result1_upvr, function() -- Line 81
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			arg1()
		end)
	end)
	return {
		unsubscribe = function() -- Line 86, Named "unsubscribe"
			--[[ Upvalues[3]:
				[1]: any_new_result1_upvr (copied, readonly)
				[2]: any_getMessageId_result1_upvr (readonly)
				[3]: var13_upvw (read and write)
			]]
			any_new_result1_upvr:unsubscribeWithMsgId(any_getMessageId_result1_upvr)
			if var13_upvw then
				task.cancel(var13_upvw)
			end
		end;
	}
end
local useFocusGuiObject_upvr = ReactFocusNavigation.useFocusGuiObject
local useFocusedGuiObject_upvr = ReactFocusNavigation.useFocusedGuiObject
local React_upvr = require(Parent.React)
local useLastInputMode_upvr = require(FocusNavigationUtils.useLastInputMode)
local SessionService_upvr = game:GetService("SessionService")
local SessionType_upvr = require(Parent.Sessionization).SessionType
local UserInputService_upvr = game:GetService("UserInputService")
local Navigation_upvr = require(Parent.Navigation)
local useRegistryEntry_upvr = require(FocusNavigationUtils.FocusNavigableSurfaceRegistry).useRegistryEntry
local FocusNavigableSurfaceIdentifierEnum_upvr = require(FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum)
local FFlagEnablePeekViewFocusNav_upvr = require(Parent.SharedFlags).FFlagEnablePeekViewFocusNav
local useAutoFocus_upvr = require(FocusNavigationUtils.useAutoFocus)
local useDescendantHasFocus_upvr = require(FocusNavigationUtils.useDescendantHasFocus)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("TenFootUiCorrectAutoFocusLoggingBehavior", false)
local mutedError_upvr = require(Parent.Loggers).mutedError
local default_upvr = require(Parent.LoggingProtocol).default
return function(arg1) -- Line 98, Named "useGlobalFocusHandler"
	--[[ Upvalues[21]:
		[1]: var6_upvw (read and write)
		[2]: useFocusGuiObject_upvr (readonly)
		[3]: useFocusedGuiObject_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: useLastInputMode_upvr (readonly)
		[6]: SessionService_upvr (readonly)
		[7]: SessionType_upvr (readonly)
		[8]: UserInputService_upvr (readonly)
		[9]: tbl_5_upvr (readonly)
		[10]: Navigation_upvr (readonly)
		[11]: useRegistryEntry_upvr (readonly)
		[12]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[13]: FFlagEnablePeekViewFocusNav_upvr (readonly)
		[14]: useAutoFocus_upvr (readonly)
		[15]: useDescendantHasFocus_upvr (readonly)
		[16]: game_DefineFastFlag_result1_upvr (readonly)
		[17]: mutedError_upvr (readonly)
		[18]: default_upvr (readonly)
		[19]: RunService_upvr (readonly)
		[20]: game_DefineFastInt_result1_upvr (readonly)
		[21]: createGameLeaveSubscription_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 59 start (CF ANALYSIS FAILED)
	local var18_result1_upvr = useFocusGuiObject_upvr()
	local useFocusedGuiObject_upvr_result1_upvr = useFocusedGuiObject_upvr()
	local any_useRef_result1_upvr_2 = React_upvr.useRef(useFocusedGuiObject_upvr_result1_upvr)
	local var80_upvr
	if useLastInputMode_upvr() ~= "Focus" then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	local var6_upvw_result1_upvr = var6_upvw()
	var80_upvr = {}
	var80_upvr[1] = useFocusedGuiObject_upvr_result1_upvr
	React_upvr.useEffect(function() -- Line 107
		--[[ Upvalues[5]:
			[1]: useFocusedGuiObject_upvr_result1_upvr (readonly)
			[2]: any_useRef_result1_upvr_2 (readonly)
			[3]: SessionService_upvr (copied, readonly)
			[4]: SessionType_upvr (copied, readonly)
			[5]: var6_upvw_result1_upvr (readonly)
		]]
		if useFocusedGuiObject_upvr_result1_upvr ~= nil and any_useRef_result1_upvr_2.current == nil then
			SessionService_upvr:SetSession(SessionType_upvr.StructuralIdentifier.Level1, SessionType_upvr.StructuralIdentifier.FocusNavigation, var6_upvw_result1_upvr)
			any_useRef_result1_upvr_2.current = useFocusedGuiObject_upvr_result1_upvr
		end
	end, var80_upvr)
	var80_upvr = {}
	var80_upvr[1] = var18_result1_upvr
	React_upvr.useEffect(function() -- Line 118
		--[[ Upvalues[6]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: tbl_5_upvr (copied, readonly)
			[3]: any_useRef_result1_upvr_2 (readonly)
			[4]: SessionService_upvr (copied, readonly)
			[5]: SessionType_upvr (copied, readonly)
			[6]: var18_result1_upvr (readonly)
		]]
		local any_Connect_result1_upvr = UserInputService_upvr.LastInputTypeChanged:Connect(function(arg1_6) -- Line 119
			--[[ Upvalues[5]:
				[1]: tbl_5_upvr (copied, readonly)
				[2]: any_useRef_result1_upvr_2 (copied, readonly)
				[3]: SessionService_upvr (copied, readonly)
				[4]: SessionType_upvr (copied, readonly)
				[5]: var18_result1_upvr (copied, readonly)
			]]
			if tbl_5_upvr[arg1_6] then
				if any_useRef_result1_upvr_2.current ~= nil then
					SessionService_upvr:RemoveSession(SessionType_upvr.StructuralIdentifier.FocusNavigation)
					any_useRef_result1_upvr_2.current = nil
					var18_result1_upvr(nil)
					return
				end
				var18_result1_upvr(nil)
			end
		end)
		return function() -- Line 132
			--[[ Upvalues[1]:
				[1]: any_Connect_result1_upvr (readonly)
			]]
			any_Connect_result1_upvr:Disconnect()
		end
	end, var80_upvr)
	if Navigation_upvr.useNavigation() then
		-- KONSTANTWARNING: GOTO [57] #48
	end
	-- KONSTANTERROR: [0] 1. Error Block 59 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [56] 47. Error Block 65 start (CF ANALYSIS FAILED)
	local var89
	if var89 then
		var80_upvr = var89.index
	else
		var80_upvr = nil
	end
	local var91_upvr = true
	local any_useRef_result1_upvr_3 = React_upvr.useRef(var80_upvr)
	React_upvr.useEffect(function() -- Line 141
		--[[ Upvalues[4]:
			[1]: var91_upvr (readonly)
			[2]: any_useRef_result1_upvr_3 (readonly)
			[3]: var80_upvr (readonly)
			[4]: var18_result1_upvr (readonly)
		]]
		if var91_upvr and any_useRef_result1_upvr_3.current ~= nil and var80_upvr ~= nil and any_useRef_result1_upvr_3.current < var80_upvr then
			any_useRef_result1_upvr_3.current = var80_upvr
			var18_result1_upvr(nil)
		end
	end, {var80_upvr, var91_upvr})
	local var26_result1_upvr_8 = useRegistryEntry_upvr(FocusNavigableSurfaceIdentifierEnum_upvr.NavBar)
	local useRegistryEntry_upvr_result1_upvr = useRegistryEntry_upvr(FocusNavigableSurfaceIdentifierEnum_upvr.RouterView)
	local useRegistryEntry_upvr_result1_upvr_3 = useRegistryEntry_upvr(FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay)
	local var26_result1_upvr_6 = useRegistryEntry_upvr(FocusNavigableSurfaceIdentifierEnum_upvr.ModerationOverlay)
	local var26_result1_upvr = useRegistryEntry_upvr(FocusNavigableSurfaceIdentifierEnum_upvr.PopUp)
	local var26_result1_upvr_5 = useRegistryEntry_upvr(FocusNavigableSurfaceIdentifierEnum_upvr.ContextualMenu)
	local var26_result1_upvr_4 = useRegistryEntry_upvr(FocusNavigableSurfaceIdentifierEnum_upvr.SearchBar)
	if FFlagEnablePeekViewFocusNav_upvr then
		-- KONSTANTWARNING: GOTO [126] #104
	end
	local var101_upvr
	local any_useMemo_result1_upvr_2 = React_upvr.useMemo(function() -- Line 188
		--[[ Upvalues[8]:
			[1]: var26_result1_upvr_6 (readonly)
			[2]: useRegistryEntry_upvr_result1_upvr_3 (readonly)
			[3]: var26_result1_upvr_5 (readonly)
			[4]: var26_result1_upvr (readonly)
			[5]: var101_upvr (readonly)
			[6]: useRegistryEntry_upvr_result1_upvr (readonly)
			[7]: var26_result1_upvr_8 (readonly)
			[8]: var26_result1_upvr_4 (readonly)
		]]
		local module_2 = {}
		if var26_result1_upvr_6 then
			table.insert(module_2, var26_result1_upvr_6)
			return module_2
		end
		if useRegistryEntry_upvr_result1_upvr_3 then
			table.insert(module_2, useRegistryEntry_upvr_result1_upvr_3)
			return module_2
		end
		if var26_result1_upvr_5 then
			table.insert(module_2, var26_result1_upvr_5)
			return module_2
		end
		if var26_result1_upvr then
			table.insert(module_2, var26_result1_upvr)
			return module_2
		end
		if var101_upvr then
			table.insert(module_2, var101_upvr)
			return module_2
		end
		if useRegistryEntry_upvr_result1_upvr then
			table.insert(module_2, useRegistryEntry_upvr_result1_upvr)
		end
		if var26_result1_upvr_8 then
			table.insert(module_2, var26_result1_upvr_8)
		end
		if var26_result1_upvr_4 then
			table.insert(module_2, var26_result1_upvr_4)
		end
		return module_2
	end, {var26_result1_upvr_6, useRegistryEntry_upvr_result1_upvr, var26_result1_upvr_8, useRegistryEntry_upvr_result1_upvr_3, var26_result1_upvr_5, var26_result1_upvr, var101_upvr})
	local var29_result1_upvr_2 = useAutoFocus_upvr(any_useMemo_result1_upvr_2, 0.1)
	if FFlagEnablePeekViewFocusNav_upvr then
	else
	end
	if var26_result1_upvr_6 then
	elseif useRegistryEntry_upvr_result1_upvr_3 then
	elseif var26_result1_upvr_5 then
	elseif var26_result1_upvr then
		local var107_upvr
	elseif var101_upvr then
	else
		var107_upvr = useDescendantHasFocus_upvr(var26_result1_upvr_8)
		if not var107_upvr then
			var107_upvr = useDescendantHasFocus_upvr(useRegistryEntry_upvr_result1_upvr)
			if not var107_upvr then
				var107_upvr = useDescendantHasFocus_upvr(var26_result1_upvr_4)
			end
		end
	end
	var107_upvr = var91_upvr
	if var107_upvr then
		var107_upvr = not var107_upvr
		if var107_upvr then
			var107_upvr = not arg1
		end
	end
	React_upvr.useEffect(function() -- Line 255
		--[[ Upvalues[9]:
			[1]: var29_result1_upvr_2 (readonly)
			[2]: var107_upvr (readonly)
			[3]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[4]: mutedError_upvr (copied, readonly)
			[5]: any_useMemo_result1_upvr_2 (readonly)
			[6]: default_upvr (copied, readonly)
			[7]: RunService_upvr (copied, readonly)
			[8]: game_DefineFastInt_result1_upvr (copied, readonly)
			[9]: createGameLeaveSubscription_upvr (copied, readonly)
		]]
		local var109_upvw
		local var110_upvw
		if var107_upvr then
			if var109_upvw then
				var109_upvw.cancel()
			end
			var109_upvw = var29_result1_upvr_2()
			local function var111_upvr() -- Line 268
				--[[ Upvalues[6]:
					[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
					[2]: mutedError_upvr (copied, readonly)
					[3]: any_useMemo_result1_upvr_2 (copied, readonly)
					[4]: default_upvr (copied, readonly)
					[5]: var109_upvw (read and write)
					[6]: var29_result1_upvr_2 (copied, readonly)
				]]
				if game_DefineFastFlag_result1_upvr then
					mutedError_upvr("[useGlobalFocusHandler] globalFocusHandler failed to autofocus with "..(#any_useMemo_result1_upvr_2).." targets, retrying")
				else
					default_upvr:logEvent("GamePadFocusFailsafeActivated", {
						targetCount = #any_useMemo_result1_upvr_2;
					})
				end
				if var109_upvw then
					var109_upvw.cancel()
				end
				var109_upvw = var29_result1_upvr_2()
			end
			local var114_upvw = 0
			var110_upvw = RunService_upvr.Heartbeat:Connect(function(arg1_7) -- Line 59
				--[[ Upvalues[3]:
					[1]: var114_upvw (read and write)
					[2]: game_DefineFastInt_result1_upvr (copied, readonly)
					[3]: var111_upvr (readonly)
				]]
				var114_upvw += arg1_7
				if game_DefineFastInt_result1_upvr < var114_upvw then
					var111_upvr()
					var114_upvw = 0
				end
			end)
		end
		var111_upvr = nil
		local var115_upvw = var111_upvr
		if var107_upvr then
			var115_upvw = createGameLeaveSubscription_upvr(function() -- Line 259, Named "setAutoFocusing"
				--[[ Upvalues[2]:
					[1]: var109_upvw (read and write)
					[2]: var29_result1_upvr_2 (copied, readonly)
				]]
				if var109_upvw then
					var109_upvw.cancel()
				end
				var109_upvw = var29_result1_upvr_2()
			end)
		end
		return function() -- Line 288
			--[[ Upvalues[3]:
				[1]: var109_upvw (read and write)
				[2]: var115_upvw (read and write)
				[3]: var110_upvw (read and write)
			]]
			if var109_upvw then
				var109_upvw.cancel()
			end
			if var115_upvw then
				var115_upvw.unsubscribe()
			end
			if var110_upvw then
				var110_upvw:Disconnect()
			end
		end
	end, {var107_upvr, var29_result1_upvr_2, any_useMemo_result1_upvr_2})
	-- KONSTANTERROR: [56] 47. Error Block 65 end (CF ANALYSIS FAILED)
end