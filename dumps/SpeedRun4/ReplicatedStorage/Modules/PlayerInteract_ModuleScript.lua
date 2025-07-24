-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:48
-- Luau version 6, Types version 3
-- Time taken: 0.020097 seconds

local module_upvr_8 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_4 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr_6 = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_5 = require(Modules:WaitForChild("ClientData"))
local module_upvr_3 = require(Modules:WaitForChild("HighlightGroups"))
local module_upvr_2 = require(Modules:WaitForChild("InputMode"))
local module_upvr = require(Modules:WaitForChild("UIShared"))
module_upvr_8.CarryRequestsPendingDisplay = {}
module_upvr_8.PairedCarryStateDeltas = {}
module_upvr_8.ProximityCharacterStates = {}
module_upvr_8.ProximityCharactersStatesDirty = false
local tbl_upvr = {}
local tbl_2_upvr = {
	HoveredCharacterState = nil;
	HoveredHighlightGroup = nil;
	InProximity_ByCharacterState = {};
	PairHighlighted_ByCharacterState = {};
	InputBound = false;
	PreviousCarrier = module_upvr_5.LocalCarryState.Carrier;
	PairedCarryStates = {};
}
function tbl_upvr.Create() -- Line 60
	return {
		CanGrab = false;
		Dirty = false;
		IsPaired = false;
	}
end
function tbl_upvr.Update(arg1, arg2, arg3, arg4) -- Line 71
	--[[ Upvalues[1]:
		[1]: module_upvr_6 (readonly)
	]]
	local var16
	if var16 then
		var16 = false
		if arg4 ~= nil then
			if arg4 > module_upvr_6.CarryInteract_GrabDistance then
				var16 = false
			else
				var16 = true
			end
		end
	end
	local var17 = true
	if arg1.PlayerState == arg2 then
		var17 = true
		if arg1.IsPaired == arg3 then
			if arg1.CanGrab == var16 then
				var17 = false
			else
				var17 = true
			end
		end
	end
	arg1.Dirty = var17
	if arg1.Dirty then
		arg1.CanGrab = var16
		arg1.IsPaired = arg3
		arg1.PlayerState = arg2
		local var18 = arg2
		if var18 then
			var18 = arg2.CharacterState
		end
		arg1.CharacterState = var18
	end
end
module_upvr_8.GrabState = tbl_upvr.Create()
module_upvr_8.HoveredState = tbl_upvr.Create()
module_upvr_8.SelectionState = tbl_upvr.Create()
local function _(arg1) -- Line 110, Named "CanInteractWithPlayerState"
	--[[ Upvalues[2]:
		[1]: module_upvr_5 (readonly)
		[2]: module_upvr_4 (readonly)
	]]
	local var19 = false
	local var20 = false
	if arg1 ~= module_upvr_5.LocalPlayerState then
		var20 = module_upvr_4.CarryStateIsPaired(module_upvr_5.LocalCarryState, arg1.CarryState)
		local var21 = not var20
		if not var21 then
			var21 = module_upvr_4.CarryStateCanCarry(module_upvr_5.LocalCarryState, arg1.CarryState)
		end
		var19 = var21
		var20 = var19 and var20
	end
	return var19, var20
end
local function _() -- Line 137, Named "CanQuerySelectionInput"
	--[[ Upvalues[2]:
		[1]: module_upvr_5 (readonly)
		[2]: module_upvr (readonly)
	]]
	local any_OnboardingComplete_result1 = module_upvr_5.OnboardingComplete()
	if any_OnboardingComplete_result1 then
		any_OnboardingComplete_result1 = not module_upvr_5.Flags.LocalToolEquipped
		if any_OnboardingComplete_result1 then
			any_OnboardingComplete_result1 = not module_upvr.ExclusiveMode
		end
	end
	return any_OnboardingComplete_result1
end
local module_upvr_7 = require(Modules:WaitForChild("Raycast"))
local function GetPlayerStateFromViewport_upvr() -- Line 144, Named "GetPlayerStateFromViewport"
	--[[ Upvalues[5]:
		[1]: module_upvr_5 (readonly)
		[2]: module_upvr_7 (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: module_upvr_4 (readonly)
		[5]: module_upvr_6 (readonly)
	]]
	local var34
	local var35 = false
	local var36
	if module_upvr_5.LocalCharacterState then
		local any_GetPlayerFromViewportPoint_result1, any_GetPlayerFromViewportPoint_result2_2 = module_upvr_7.GetPlayerFromViewportPoint(module_upvr_2.GetViewportMouse(), true, true)
		if any_GetPlayerFromViewportPoint_result1 and any_GetPlayerFromViewportPoint_result2_2 then
			local var39 = module_upvr_5.PlayerState_ByPlayer[any_GetPlayerFromViewportPoint_result1]
			if var39 then
				local var40 = false
				local var41 = false
				if var39 ~= module_upvr_5.LocalPlayerState then
					var41 = module_upvr_4.CarryStateIsPaired(module_upvr_5.LocalCarryState, var39.CarryState)
					local var42 = not var41
					if not var42 then
						var42 = module_upvr_4.CarryStateCanCarry(module_upvr_5.LocalCarryState, var39.CarryState)
					end
					var40 = var42
					var41 = var40 and var41
				end
				if var40 then
					local Magnitude_3 = (module_upvr_5.LocalCharacterState.Character:GetPivot().Position - any_GetPlayerFromViewportPoint_result2_2:GetPivot().Position).Magnitude
					if Magnitude_3 <= module_upvr_6.CarryInteract_MaxDistance then
						var34 = var39
						var35 = var41
						var36 = Magnitude_3
					end
				end
			end
		end
	end
	return var34, var35, var36
end
local tbl_4_upvr = {
	[Enum.KeyCode.Return] = true;
}
local function ProcessInput_upvr(arg1, arg2, arg3) -- Line 192, Named "ProcessInput"
	--[[ Upvalues[5]:
		[1]: module_upvr_2 (readonly)
		[2]: tbl_4_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: module_upvr_8 (readonly)
		[5]: GetPlayerStateFromViewport_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var49 = false
	local var50
	if var50 == Enum.UserInputType.Touch then
		var50 = false
		if arg2 == Enum.UserInputState.End then
			var50 = module_upvr_2.InputIsTrackedTouch(arg3)
		end
		var49 = var50
	else
		if arg2 == Enum.UserInputState.Begin then
			if arg3.UserInputType ~= Enum.UserInputType.MouseButton1 then
			end
		end
		var49 = tbl_4_upvr[arg3.KeyCode]
	end
	if var49 then
		tbl_upvr.Update(module_upvr_8.SelectionState, GetPlayerStateFromViewport_upvr())
		if module_upvr_8.SelectionState.PlayerState then
		end
	end
	return Enum.ContextActionResult.Sink
end
local function _(arg1, arg2) -- Line 233, Named "SetCharacterPairHighlight"
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 3 start (CF ANALYSIS FAILED)
	tbl_2_upvr.PairHighlighted_ByCharacterState[arg1] = true
	module_upvr_3.HighlightGroupAdd(module_upvr_3.Groups.PairedCharacter, arg1.Character)
	do
		return
	end
	-- KONSTANTERROR: [6] 6. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 18. Error Block 7 start (CF ANALYSIS FAILED)
	if tbl_2_upvr.PairHighlighted_ByCharacterState[arg1] then
		tbl_2_upvr.PairHighlighted_ByCharacterState[arg1] = nil
		module_upvr_3.HighlightGroupRemove(module_upvr_3.Groups.PairedCharacter, arg1.Character)
	end
	-- KONSTANTERROR: [23] 18. Error Block 7 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2) -- Line 259, Named "ResolvePairHighlight"
	--[[ Upvalues[4]:
		[1]: module_upvr_4 (readonly)
		[2]: module_upvr_5 (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: module_upvr_3 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 12. Error Block 3 start (CF ANALYSIS FAILED)
	tbl_2_upvr.PairHighlighted_ByCharacterState[arg2] = true
	module_upvr_3.HighlightGroupAdd(module_upvr_3.Groups.PairedCharacter, arg2.Character)
	do
		return
	end
	-- KONSTANTERROR: [14] 12. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [31] 24. Error Block 7 start (CF ANALYSIS FAILED)
	if tbl_2_upvr.PairHighlighted_ByCharacterState[arg2] then
		tbl_2_upvr.PairHighlighted_ByCharacterState[arg2] = nil
		module_upvr_3.HighlightGroupRemove(module_upvr_3.Groups.PairedCharacter, arg2.Character)
	end
	-- KONSTANTERROR: [31] 24. Error Block 7 end (CF ANALYSIS FAILED)
end
function module_upvr_8.CharacterAdded(arg1) -- Line 270
	--[[ Upvalues[4]:
		[1]: module_upvr_5 (readonly)
		[2]: module_upvr_4 (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: module_upvr_3 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [28] 21. Error Block 3 start (CF ANALYSIS FAILED)
	tbl_2_upvr.PairHighlighted_ByCharacterState[arg1] = true
	module_upvr_3.HighlightGroupAdd(module_upvr_3.Groups.PairedCharacter, arg1.Character)
	do
		return
	end
	-- KONSTANTERROR: [28] 21. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [45] 33. Error Block 7 start (CF ANALYSIS FAILED)
	if tbl_2_upvr.PairHighlighted_ByCharacterState[arg1] then
		tbl_2_upvr.PairHighlighted_ByCharacterState[arg1] = nil
		module_upvr_3.HighlightGroupRemove(module_upvr_3.Groups.PairedCharacter, arg1.Character)
	end
	-- KONSTANTERROR: [45] 33. Error Block 7 end (CF ANALYSIS FAILED)
end
function module_upvr_8.CharacterRemoving(arg1) -- Line 279
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	if tbl_2_upvr.PairHighlighted_ByCharacterState[arg1] then
		tbl_2_upvr.PairHighlighted_ByCharacterState[arg1] = nil
		module_upvr_3.HighlightGroupRemove(module_upvr_3.Groups.PairedCharacter, arg1.Character)
	end
end
function module_upvr_8.SelectionStateConsume() -- Line 290
	--[[ Upvalues[2]:
		[1]: module_upvr_8 (readonly)
		[2]: tbl_upvr (readonly)
	]]
	module_upvr_8.SelectionState = tbl_upvr.Create()
end
function module_upvr_8.PostSimulation(arg1, arg2) -- Line 299
	--[[ Upvalues[9]:
		[1]: module_upvr_5 (readonly)
		[2]: module_upvr (readonly)
		[3]: module_upvr_6 (readonly)
		[4]: module_upvr_4 (readonly)
		[5]: tbl_upvr (readonly)
		[6]: module_upvr_8 (readonly)
		[7]: tbl_2_upvr (readonly)
		[8]: module_upvr_3 (readonly)
		[9]: GetPlayerStateFromViewport_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var103
	if var103 then
		var103 = not module_upvr_5.Flags.LocalToolEquipped
		if var103 then
			var103 = not module_upvr.ExclusiveMode
		end
	end
	local tbl_3 = {}
	local CarryInteract_GrabDistance_2 = module_upvr_6.CarryInteract_GrabDistance
	local var106
	local var107
	if module_upvr_5.LocalCharacterState then
		var107 = module_upvr_5.LocalCharacterState.Character:GetPivot()
		var107 = var103
		if var107 then
			var107 = not module_upvr_4.CarryStateIsPaired(module_upvr_5.LocalCarryState)
			if var107 then
				if module_upvr_4.SaveDataGetCount(module_upvr_5.LocalSaveData, module_upvr_4.CounterType.PlayerClicks) >= module_upvr_6.CarryInteract_ProximityPromptPopupCount then
					var107 = false
				else
					var107 = true
				end
			end
		end
		for _, v in module_upvr_5.PlayerState_ByPlayer do
			if v ~= module_upvr_5.LocalPlayerState then
				if v.VisibilityState.Visibility ~= module_upvr_5.VisibilityType.Hidden then
					local CharacterState_2 = v.CharacterState
					if CharacterState_2 then
						local Magnitude_2 = (CharacterState_2.Character:GetPivot().Position - var107.Position).Magnitude
						if var107 and Magnitude_2 <= module_upvr_6.CarryInteract_ProximityPromptDistance then
							tbl_3[CharacterState_2] = true
						elseif Magnitude_2 < CarryInteract_GrabDistance_2 and module_upvr_4.CarryStateCanCarry(module_upvr_5.LocalCarryState, v.CarryState) then
							var106 = v
							CarryInteract_GrabDistance_2 = Magnitude_2
						end
					end
				end
			end
		end
	end
	if var106 == nil then
	else
	end
	tbl_upvr.Update(module_upvr_8.GrabState, var106, true, CarryInteract_GrabDistance_2)
	for i_2 in tbl_2_upvr.InProximity_ByCharacterState do
		if not tbl_3[i_2] then
			tbl_2_upvr.InProximity_ByCharacterState[i_2] = nil
			module_upvr_3.HighlightGroupRemove(module_upvr_3.Groups.CharacterProximity, i_2.Character)
		end
	end
	for i_3 in tbl_3 do
		if not tbl_2_upvr.InProximity_ByCharacterState[i_3] then
			tbl_2_upvr.InProximity_ByCharacterState[i_3] = true
			module_upvr_3.HighlightGroupAdd(module_upvr_3.Groups.CharacterProximity, i_3.Character)
		end
	end
	if true then
		module_upvr_8.ProximityCharactersStatesDirty = true
		table.clear(module_upvr_8.ProximityCharacterStates)
		i_3 = tbl_2_upvr
		for i_4 in i_3.InProximity_ByCharacterState do
			module_upvr_8.ProximityCharacterStates[#module_upvr_8.ProximityCharacterStates + 1] = i_4
		end
	end
	tbl_3 = nil
	local var110 = tbl_3
	if var103 then
		local GetPlayerStateFromViewport_upvr_result1_2, GetPlayerStateFromViewport_upvr_result2_2, GetPlayerStateFromViewport_result3 = GetPlayerStateFromViewport_upvr()
		var110 = GetPlayerStateFromViewport_upvr_result1_2
	end
	tbl_upvr.Update(module_upvr_8.HoveredState, var110, GetPlayerStateFromViewport_upvr_result2_2, GetPlayerStateFromViewport_result3)
	if module_upvr_8.HoveredState.Dirty then
		if tbl_2_upvr.HoveredCharacterState then
			if tbl_2_upvr.HoveredHighlightGroup then
				module_upvr_3.HighlightGroupRemove(tbl_2_upvr.HoveredHighlightGroup, tbl_2_upvr.HoveredCharacterState.Character)
			end
		end
		local CharacterState = module_upvr_8.HoveredState.CharacterState
		tbl_2_upvr.HoveredCharacterState = CharacterState
		if module_upvr_8.HoveredState.CanGrab then
			CharacterState = module_upvr_3.Groups.CharacterHoverGrab
		else
			CharacterState = module_upvr_3.Groups.CharacterHover
		end
		tbl_2_upvr.HoveredHighlightGroup = CharacterState
		if tbl_2_upvr.HoveredCharacterState then
			if tbl_2_upvr.HoveredHighlightGroup then
				module_upvr_3.HighlightGroupAdd(tbl_2_upvr.HoveredHighlightGroup, tbl_2_upvr.HoveredCharacterState.Character)
			end
		end
	end
end
local ContextActionService_upvr = game:GetService("ContextActionService")
local Value_upvr = Enum.ContextActionPriority.High.Value
function module_upvr_8.ResetState() -- Line 447
	--[[ Upvalues[7]:
		[1]: module_upvr_5 (readonly)
		[2]: module_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: ContextActionService_upvr (readonly)
		[5]: ProcessInput_upvr (readonly)
		[6]: Value_upvr (readonly)
		[7]: module_upvr_8 (readonly)
	]]
	local var119
	if var119 then
		var119 = not module_upvr_5.Flags.LocalToolEquipped
		if var119 then
			var119 = not module_upvr.ExclusiveMode
		end
	end
	if not tbl_2_upvr.InputBound and var119 then
		tbl_2_upvr.InputBound = true
		ContextActionService_upvr:BindActionAtPriority("PlayerInteract-PROCESS_INPUT", ProcessInput_upvr, false, Value_upvr, Enum.UserInputType.MouseButton1, Enum.UserInputType.Keyboard, Enum.UserInputType.Touch, Enum.UserInputType.Gamepad1)
	elseif tbl_2_upvr.InputBound and not var119 then
		tbl_2_upvr.InputBound = false
		ContextActionService_upvr:UnbindAction("PlayerInteract-PROCESS_INPUT")
	end
	for i_5 = #module_upvr_8.CarryRequestsPendingDisplay, 1, -1 do
		if module_upvr_8.CarryRequestsPendingDisplay[i_5].ExpiresAt <= module_upvr_5.Now then
			table.remove(module_upvr_8.CarryRequestsPendingDisplay, i_5)
		end
	end
	module_upvr_8.ProximityCharactersStatesDirty = false
end
function module_upvr_8.ResolveState() -- Line 483
	--[[ Upvalues[5]:
		[1]: module_upvr_8 (readonly)
		[2]: module_upvr_5 (readonly)
		[3]: module_upvr_4 (readonly)
		[4]: tbl_2_upvr (readonly)
		[5]: module_upvr_3 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	table.clear(module_upvr_8.PairedCarryStateDeltas)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [79] 57. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [82.5]
	module_upvr_4.CarryStateResolve(nil.CarryState, module_upvr_5.Now)
	-- KONSTANTERROR: [79] 57. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 13. Error Block 43 start (CF ANALYSIS FAILED)
	if module_upvr_4.CarryStateResolve(nil.CarryState, module_upvr_5.Now) then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if module_upvr_4.CarryStateResolve(nil.CarryState, module_upvr_5.Now) then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil.CarryState then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if not module_upvr_5.Now then
					-- KONSTANTWARNING: GOTO [79] #57
				end
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if module_upvr_5.Now then
				end
			end
		end
	end
	-- KONSTANTERROR: [17] 13. Error Block 43 end (CF ANALYSIS FAILED)
end
if not module_upvr_6.CarryInteract_Enabled then
	local function var120() -- Line 546
	end
	module_upvr_8.PostSimulation = var120
	module_upvr_8.ResetState = var120
	module_upvr_8.ResolveState = var120
end
return module_upvr_8