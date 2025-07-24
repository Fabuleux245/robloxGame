-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:13
-- Luau version 6, Types version 3
-- Time taken: 0.053247 seconds

local module_8_upvr = {}
local ContextActionService_upvr = game:GetService("ContextActionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_18_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_17_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_3_upvr = require(Modules:WaitForChild("BUDGameClient"))
local module_21_upvr = require(Modules:WaitForChild("ClientData"))
local module_7_upvr = require(Modules:WaitForChild("InputMode"))
local module_19_upvr = require(Modules:WaitForChild("PlayerInteract"))
local module_10_upvr = require(Modules:WaitForChild("Transparency"))
local module_4_upvr = require(Modules:WaitForChild("Tweens"))
local module_9_upvr = require(Modules:WaitForChild("UIButton"))
local module_upvr = require(Modules:WaitForChild("UIExclusivityGroups"))
local module_14_upvr = require(Modules:WaitForChild("UIShared"))
local module_22_upvr = require(Modules:WaitForChild("Utility"))
local UserInterface = Modules:WaitForChild("UserInterface")
local module_20_upvr = require(UserInterface:WaitForChild("CollectionUISystem"))
local module_6_upvr = require(UserInterface:WaitForChild("NotificationsUI"))
local module_11_upvr = require(UserInterface:WaitForChild("SidebarUI"))
local any_MemberCreate_result1_upvr = module_upvr.MemberCreate(module_upvr.PlayerInteractUIGroup)
local tbl_3_upvr = {
	DropUnpairUI = nil;
	GrabUI = nil;
	MouseIconUI = nil;
	ProximityUI_ByCharacterState = {};
	RecipientUI = nil;
	CachedPlayerInteractState = nil;
	InputModeDirty = false;
	RequestPopup = nil;
	ResponseThreads = {};
	SelectedPlayer = nil;
	SelectedPlayerDirty = false;
}
local any_Create_result1_2_upvr = module_14_upvr.MouseIconState.Create()
any_Create_result1_2_upvr.DisablesIcon = true
local tbl_30_upvr = {}
local tbl_31_upvr = {}
local tbl_32_upvr = {}
local tbl_8_upvr = {}
local tbl_17_upvr = {}
local tbl_11_upvr = {}
local tbl_7_upvr = {
	HeaderSizeEm = 3;
	ProximityTextSizeEm = 1;
	ProximityTextSizeLargeEm = 1.5;
	RecipientButtonScale = 1.25;
	TextSizeEm = 1.1;
	TextSizeLargeEm = 1.3;
	TextSizeSmallEm = 0.9;
	WrapperSizeEm = 36;
	WrappenSizeSmallEm = 30;
}
local var382_upvw
local function RespondToThreads_upvr(...) -- Line 89, Named "RespondToThreads"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	if 0 < #tbl_3_upvr.ResponseThreads then
		table.clear(tbl_3_upvr.ResponseThreads)
		for _, v in ipairs(table.clone(tbl_3_upvr.ResponseThreads)) do
			if coroutine.status(v) == "suspended" then
				task.spawn(v, ...)
			end
		end
	end
end
local any_TableMerge_result1_upvr = module_22_upvr.TableMerge(module_20_upvr.CollectionType, {
	PlayerOptions = 1000;
	UnpairWarning = 2000;
})
module_8_upvr.IsOpen = module_upvr.CreateExclusivityOpenHandler(module_upvr.PlayerInteractUIGroup)
local any_CollectionUICreate_result1_upvr = module_20_upvr.CollectionUICreate(any_TableMerge_result1_upvr, module_22_upvr.HierarchyCreate({{any_TableMerge_result1_upvr._UIMain}, {any_TableMerge_result1_upvr.PlayerOptions, any_TableMerge_result1_upvr._UIMain}, {any_TableMerge_result1_upvr.UnpairWarning, any_TableMerge_result1_upvr._UIMain}}), module_8_upvr.IsOpen)
function any_CollectionUICreate_result1_upvr.CloseRequested() -- Line 127
	--[[ Upvalues[4]:
		[1]: module_14_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: RespondToThreads_upvr (readonly)
		[4]: tbl_3_upvr (readonly)
	]]
	module_14_upvr.UIExclusivityGroup.Deactivate(module_upvr.PlayerInteractUIGroup)
	RespondToThreads_upvr(nil)
	tbl_3_upvr.CachedPlayerInteractState = nil
end
any_CollectionUICreate_result1_upvr.Name = "PlayerInteractUI"
any_CollectionUICreate_result1_upvr.DisplayOrder = module_17_upvr.DisplayOrder_PlayerInteractUI
local function RemovePopup_upvr(arg1) -- Line 141, Named "RemovePopup"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	if tbl_3_upvr.RequestPopup == arg1 then
		tbl_3_upvr.RequestPopup = nil
	end
end
local module_12_upvr = require(Modules:WaitForChild("Tutorials"))
local State_upvr = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("State")
local function SendRequest_upvr(arg1, arg2) -- Line 148, Named "SendRequest"
	--[[ Upvalues[7]:
		[1]: module_18_upvr (readonly)
		[2]: module_21_upvr (readonly)
		[3]: module_12_upvr (readonly)
		[4]: State_upvr (readonly)
		[5]: tbl_3_upvr (readonly)
		[6]: module_6_upvr (readonly)
		[7]: RemovePopup_upvr (readonly)
	]]
	if not arg1.Initialized then
	else
		local var51 = true
		local var52
		if arg2 == module_18_upvr.CarryRequestType.Pair then
			if not module_21_upvr.OnboardingComplete() then
				var51 = false
				var52 = "You cannot pair with other players until the tutorial is complete."
			elseif not module_12_upvr.TutorialStateCompletedType(arg1.TutorialState, module_12_upvr.TutorialType.Onboarding) then
				var51 = false
				var52 = string.format("%s is currently in the tutorial.\nTry again once they're done with it.", arg1.Player.DisplayName)
			end
		end
		if var51 then
			State_upvr:FireServer(module_18_upvr.StateRequestType.CarryState, arg1.UserId, arg2)
			return
		end
		if var52 then
			local RequestPopup = tbl_3_upvr.RequestPopup
			if not RequestPopup then
				local any_Create_result1 = module_6_upvr.Popup.Create(module_6_upvr.Popup.Type.Timed)
				module_6_upvr.Popup.Queue(any_Create_result1)
				any_Create_result1.Callback = RemovePopup_upvr
				tbl_3_upvr.RequestPopup = any_Create_result1
				RequestPopup = any_Create_result1
			end
			assert(RequestPopup)
			RequestPopup.Text = var52
			module_6_upvr.Popup.Refresh(RequestPopup)
		end
	end
end
function tbl_30_upvr.RequestDrop() -- Line 226
	--[[ Upvalues[3]:
		[1]: module_21_upvr (readonly)
		[2]: SendRequest_upvr (readonly)
		[3]: module_18_upvr (readonly)
	]]
	for _, v_2 in module_21_upvr.LocalCarryState.Carrying do
		SendRequest_upvr(v_2.PlayerState, module_18_upvr.CarryRequestType.Drop)
	end
	return Enum.ContextActionResult.Sink
end
local var59_upvw = false
function tbl_30_upvr.UnpairButtonPressed() -- Line 242
	--[[ Upvalues[6]:
		[1]: var59_upvw (read and write)
		[2]: var382_upvw (read and write)
		[3]: module_21_upvr (readonly)
		[4]: SendRequest_upvr (readonly)
		[5]: module_18_upvr (readonly)
		[6]: any_CollectionUICreate_result1_upvr (readonly)
	]]
	if var59_upvw then
	else
		var59_upvw = true
		if var382_upvw() then
			for _, v_21 in module_21_upvr.LocalCarryState.Paired do
				SendRequest_upvr(v_21.PlayerState, module_18_upvr.CarryRequestType.Unpair)
			end
		end
		any_CollectionUICreate_result1_upvr.RequestClose()
		var59_upvw = false
	end
end
tbl_30_upvr.ButtonProfile = {
	ButtonTheme = module_9_upvr.Button.Themes.Floating;
	Order = module_11_upvr.SidebarButtonOrder.Unpair;
	Style = module_11_upvr.SidebarButtonStyle.TextOnly;
	Text = "Unpair";
	PressFunction = tbl_30_upvr.UnpairButtonPressed;
}
local function Create() -- Line 273
	--[[ Upvalues[5]:
		[1]: module_22_upvr (readonly)
		[2]: module_14_upvr (readonly)
		[3]: module_17_upvr (readonly)
		[4]: module_11_upvr (readonly)
		[5]: tbl_30_upvr (readonly)
	]]
	return {
		DropButton = nil;
		DropInset = nil;
		ScreenGui = module_22_upvr.I("ScreenGui", module_14_upvr.Properties.ScreenGui_Legacy, {
			Name = "DropUnpairUI";
			DisplayOrder = module_17_upvr.DisplayOrder_DropUnpairUI;
			Parent = module_14_upvr.PlayerGui;
		});
		UnpairButton = module_11_upvr.ButtonProfileRegister(tbl_30_upvr.ButtonProfile, module_11_upvr.SidebarRegion.Right);
	}
end
tbl_30_upvr.Create = Create
local function Destroy(arg1) -- Line 295
	--[[ Upvalues[1]:
		[1]: module_11_upvr (readonly)
	]]
	module_11_upvr.SidebarButtonDestroy(arg1.UnpairButton)
	arg1.ScreenGui:Destroy()
end
tbl_30_upvr.Destroy = Destroy
local function Update(arg1, arg2, arg3) -- Line 304
	--[[ Upvalues[7]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: any_TableMerge_result1_upvr (readonly)
		[3]: module_18_upvr (readonly)
		[4]: module_21_upvr (readonly)
		[5]: module_9_upvr (readonly)
		[6]: tbl_30_upvr (readonly)
		[7]: module_14_upvr (readonly)
	]]
	arg1.UnpairButton.Selected = any_CollectionUICreate_result1_upvr.CollectionTypeIsActive(any_TableMerge_result1_upvr.UnpairWarning)
	if module_18_upvr.CarryStateIsCarrying(module_21_upvr.LocalCarryState) then
		if not arg1.DropButton then
			local any_CreateFancy_result1_3 = module_9_upvr.Button.CreateFancy(arg1.ScreenGui, module_9_upvr.Button.Themes.Action, {
				Text = "Drop";
			})
			any_CreateFancy_result1_3.Button.Activated:Connect(tbl_30_upvr.RequestDrop)
			module_9_upvr.Button.BindToKeyCode(any_CreateFancy_result1_3, tbl_30_upvr.RequestDrop, Enum.KeyCode.ButtonY)
			arg1.DropButton = any_CreateFancy_result1_3
			-- KONSTANTWARNING: GOTO [83] #55
		end
	elseif arg1.DropButton then
		module_9_upvr.Button.Destroy(arg1.DropButton)
		arg1.DropButton = nil
		arg1.DropInset = nil
	end
	if arg1.DropButton then
		local DropButton = arg1.DropButton
		if module_14_upvr.ViewportSizeDirty or module_14_upvr.FirstOrderProperties.BackpackInsetDirty or DropButton.Dirty then
			local ButtonFancyX_2 = module_14_upvr.SteppedSize.ButtonFancyX
			local ButtonFancyY = module_14_upvr.SteppedSize.ButtonFancyY
			local BackpackInset_2 = module_14_upvr.FirstOrderProperties.BackpackInset
			local var71 = BackpackInset_2 + ButtonFancyY + module_14_upvr.EmSize * 0.5 // 1
			if BackpackInset_2 == 0 then
				var71 += module_14_upvr.EmSize * 2
			end
			DropButton.Button.Position = UDim2.fromOffset((module_14_upvr.ScreenSize.X * 0.5 - ButtonFancyX_2 * 0.5) // 1, module_14_upvr.ScreenSize.Y - var71)
			DropButton.Button.Size = UDim2.fromOffset(ButtonFancyX_2, ButtonFancyY)
			module_9_upvr.Button.AdjustText(DropButton, nil, nil, nil, module_14_upvr.SteppedSize.ButtonFancyText)
			arg1.DropInset = var71
		end
		module_9_upvr.Button.Update(DropButton, arg3)
	end
	return arg1.DropInset
end
tbl_30_upvr.Update = Update
tbl_31_upvr.ContextBind = "PlayerInteractUI_REQUEST-GRAB"
tbl_31_upvr.KeyCode_ByInputMode = {
	[module_7_upvr.Gamepad] = Enum.KeyCode.ButtonY;
	[module_7_upvr.Keyboard] = Enum.KeyCode.E;
}
tbl_31_upvr.KeyCodeArray = {}
for _, v_3 in tbl_31_upvr.KeyCode_ByInputMode do
	tbl_31_upvr.KeyCodeArray[#tbl_31_upvr.KeyCodeArray + 1] = v_3
end
local function Create() -- Line 400
	--[[ Upvalues[9]:
		[1]: module_21_upvr (readonly)
		[2]: SendRequest_upvr (readonly)
		[3]: module_18_upvr (readonly)
		[4]: module_7_upvr (readonly)
		[5]: tbl_31_upvr (readonly)
		[6]: ContextActionService_upvr (readonly)
		[7]: module_22_upvr (readonly)
		[8]: module_14_upvr (readonly)
		[9]: module_17_upvr (readonly)
	]]
	local module_2_upvr = {
		CharacterState = nil;
		Dirty = true;
	}
	ContextActionService_upvr:BindAction(tbl_31_upvr.ContextBind, function(arg1, arg2, arg3) -- Line 420, Named "ProcessInput"
		--[[ Upvalues[6]:
			[1]: module_7_upvr (copied, readonly)
			[2]: tbl_31_upvr (copied, readonly)
			[3]: module_2_upvr (readonly)
			[4]: module_21_upvr (copied, readonly)
			[5]: SendRequest_upvr (copied, readonly)
			[6]: module_18_upvr (copied, readonly)
		]]
		local Pass = Enum.ContextActionResult.Pass
		if arg2 == Enum.UserInputState.Begin then
			if arg3.KeyCode == tbl_31_upvr.KeyCode_ByInputMode[module_7_upvr.Mode_ByType[arg3.UserInputType]] then
				Pass = Enum.ContextActionResult.Sink
				if module_2_upvr.CharacterState then
					local var79 = module_21_upvr.PlayerState_ByPlayer[module_2_upvr.CharacterState.Player]
					if var79 then
						SendRequest_upvr(var79, module_18_upvr.CarryRequestType.Carry)
					end
				end
			end
		end
		return Pass
	end, false, table.unpack(tbl_31_upvr.KeyCodeArray))
	module_2_upvr.BillboardGui = module_22_upvr.I("BillboardGui", module_14_upvr.Properties.LayerCollector, {
		Name = "GrabUI";
		Active = true;
		AlwaysOnTop = true;
		ClipsDescendants = false;
		LightInfluence = 0;
		Parent = module_14_upvr.PlayerGui;
	})
	module_2_upvr.Button = module_22_upvr.I("TextButton", module_14_upvr.Properties.Button, module_14_upvr.Properties.Centered, {
		BackgroundTransparency = 0.75;
		Size = UDim2.fromScale(1, 1);
		Parent = module_2_upvr.BillboardGui;
	})
	module_2_upvr.Stroke = module_22_upvr.I("UIStroke", module_14_upvr.Properties.StrokeBorder, {
		Parent = module_2_upvr.Button;
	})
	module_22_upvr.I("UICorner", {
		CornerRadius = UDim.new(1, 0);
		Parent = module_2_upvr.Button;
	})
	module_2_upvr.Button.Activated:Connect(function() -- Line 407, Named "RequestGrab"
		--[[ Upvalues[4]:
			[1]: module_2_upvr (readonly)
			[2]: module_21_upvr (copied, readonly)
			[3]: SendRequest_upvr (copied, readonly)
			[4]: module_18_upvr (copied, readonly)
		]]
		if module_2_upvr.CharacterState then
			local var75 = module_21_upvr.PlayerState_ByPlayer[module_2_upvr.CharacterState.Player]
			if var75 then
				SendRequest_upvr(var75, module_18_upvr.CarryRequestType.Carry)
			end
		end
	end)
	module_2_upvr.Icon = module_22_upvr.I("ImageLabel", module_14_upvr.Properties.Image, module_14_upvr.Properties.Centered, {
		Size = UDim2.fromScale(0.75, 0.75);
		Visible = false;
		Parent = module_2_upvr.Button;
	})
	module_2_upvr.Text = module_22_upvr.I("TextLabel", module_14_upvr.Properties.Text_Scaled, module_14_upvr.Properties.Centered, {
		FontFace = module_17_upvr.FontFaceNormal;
		Size = UDim2.fromScale(0.75, 0.75);
		Text = tbl_31_upvr.KeyCode_ByInputMode[module_7_upvr.Keyboard].Name;
		Visible = false;
		Parent = module_2_upvr.Button;
	})
	return module_2_upvr
end
tbl_31_upvr.Create = Create
local function Destroy(arg1) -- Line 508
	--[[ Upvalues[2]:
		[1]: ContextActionService_upvr (readonly)
		[2]: tbl_31_upvr (readonly)
	]]
	arg1.BillboardGui:Destroy()
	ContextActionService_upvr:UnbindAction(tbl_31_upvr.ContextBind)
end
tbl_31_upvr.Destroy = Destroy
function tbl_31_upvr.SetCharacterState(arg1, arg2) -- Line 517
	if arg1.CharacterState ~= arg2 then
		arg1.CharacterState = arg2
		arg1.BillboardGui.Adornee = arg2.Character
	end
end
local UserInputService_upvr = game:GetService("UserInputService")
local function Update(arg1, arg2, arg3) -- Line 529
	--[[ Upvalues[7]:
		[1]: module_19_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: module_14_upvr (readonly)
		[4]: module_17_upvr (readonly)
		[5]: module_7_upvr (readonly)
		[6]: UserInputService_upvr (readonly)
		[7]: tbl_31_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 6. Error Block 3 end (CF ANALYSIS FAILED)
end
tbl_31_upvr.Update = Update
tbl_32_upvr.Formats = {
	CarriedByDistance = "%s has carried you for %s studs.";
	CarriedDistance = "You have carried %s for %s studs.";
	RequestPrompt = "Send Pair Request";
	RequestSent = "Request Sent";
	RequestUnavailable = "This player is already paired with someone";
	Player = "For %s (@%s)";
}
local function Initialize(arg1) -- Line 594
	--[[ Upvalues[13]:
		[1]: module_21_upvr (readonly)
		[2]: tbl_32_upvr (readonly)
		[3]: module_14_upvr (readonly)
		[4]: tbl_3_upvr (readonly)
		[5]: module_9_upvr (readonly)
		[6]: module_17_upvr (readonly)
		[7]: module_3_upvr (readonly)
		[8]: module_22_upvr (readonly)
		[9]: var382_upvw (read and write)
		[10]: any_CollectionUICreate_result1_upvr (readonly)
		[11]: any_TableMerge_result1_upvr (readonly)
		[12]: SendRequest_upvr (readonly)
		[13]: module_18_upvr (readonly)
	]]
	local tbl_13 = {
		CanSendRequest = false;
		PlayerStateDirty = false;
		DisplayedAlreadyPaired = nil;
		DisplayedHasPendingRequest = nil;
		DisplayedPlayerState = module_21_upvr.LocalPlayerState;
		ButtonText = tbl_32_upvr.Formats.RequestPrompt;
		CarriedText = "";
		CarriedByText = "";
		HeaderText = "Player Options";
		InfoText = "You can carry players in this game by 'Pairing' with them.";
		PlayerText = "";
		TextBoundsFlag = module_14_upvr.TextBoundsFlagCreate();
	}
	if tbl_3_upvr.CachedPlayerInteractState then
		tbl_13.PlayerStateDirty = true
		tbl_13.DisplayedPlayerState = tbl_3_upvr.CachedPlayerInteractState
	end
	local any_TextBoundsLabelCreate_result1_5, any_TextBoundsLabelCreate_result2_3 = module_14_upvr.TextBoundsLabelCreate(arg1.Wrapper, tbl_13.HeaderText, tbl_13.TextBoundsFlag)
	tbl_13.HeaderLabel = any_TextBoundsLabelCreate_result1_5
	tbl_13.HeaderBounds = any_TextBoundsLabelCreate_result2_3
	local any_TextBoundsLabelCreate_result1_4, any_TextBoundsLabelCreate_result2_6 = module_14_upvr.TextBoundsLabelCreate(arg1.Wrapper, nil, tbl_13.TextBoundsFlag)
	tbl_13.PlayerLabel = any_TextBoundsLabelCreate_result1_4
	tbl_13.PlayerBounds = any_TextBoundsLabelCreate_result2_6
	local any_TextBoundsLabelCreate_result1_6, any_TextBoundsLabelCreate_result2 = module_14_upvr.TextBoundsLabelCreate(arg1.Wrapper, tbl_13.InfoText, tbl_13.TextBoundsFlag)
	tbl_13.InfoLabel = any_TextBoundsLabelCreate_result1_6
	tbl_13.InfoBounds = any_TextBoundsLabelCreate_result2
	local any_TextBoundsLabelCreate_result1_2, any_TextBoundsLabelCreate_result2_5 = module_14_upvr.TextBoundsLabelCreate(arg1.Wrapper, nil, tbl_13.TextBoundsFlag)
	tbl_13.CarriedLabel = any_TextBoundsLabelCreate_result1_2
	tbl_13.CarriedBounds = any_TextBoundsLabelCreate_result2_5
	local any_TextBoundsLabelCreate_result1, any_TextBoundsLabelCreate_result2_2 = module_14_upvr.TextBoundsLabelCreate(arg1.Wrapper, nil, tbl_13.TextBoundsFlag)
	tbl_13.CarriedByLabel = any_TextBoundsLabelCreate_result1
	tbl_13.CarriedByBounds = any_TextBoundsLabelCreate_result2_2
	tbl_13.PairButton = module_9_upvr.Button.Common.Create.InlineIcon(arg1.Wrapper, module_9_upvr.Button.Themes.Light, {
		Image = module_17_upvr.Checkmark_Basic_Outline_4;
		ImageColor3 = module_17_upvr.CheckmarkColor1;
		Visible = false;
	}, false, {
		Text = tbl_13.ButtonText;
	})
	tbl_13.PairButton.Bounds.Flag = tbl_13.TextBoundsFlag
	tbl_13.DonationButton = module_3_upvr.DonationButtonCreate(module_3_upvr.DonationButtonPressed)
	tbl_13.DonationButton.Button.Parent = arg1.Wrapper
	local any_TableMerge_result1_upvr_2 = module_22_upvr.TableMerge(tbl_13, arg1)
	local var103_upvw = false
	any_TableMerge_result1_upvr_2.PairButton.Button.Activated:Connect(function() -- Line 685
		--[[ Upvalues[9]:
			[1]: var103_upvw (read and write)
			[2]: any_TableMerge_result1_upvr_2 (readonly)
			[3]: module_21_upvr (copied, readonly)
			[4]: var382_upvw (copied, read and write)
			[5]: tbl_3_upvr (copied, readonly)
			[6]: any_CollectionUICreate_result1_upvr (copied, readonly)
			[7]: any_TableMerge_result1_upvr (copied, readonly)
			[8]: SendRequest_upvr (copied, readonly)
			[9]: module_18_upvr (copied, readonly)
		]]
		local var104
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var104 = any_TableMerge_result1_upvr_2.CanSendRequest
			return var104
		end
		if var104 or not INLINED() then
		else
			var104 = true
			var103_upvw = var104
			var104 = any_TableMerge_result1_upvr_2.CanSendRequest
			if #module_21_upvr.LocalCarryState.Paired == module_21_upvr.LocalCarryState.PairMax then
				var104 = var382_upvw()
				tbl_3_upvr.CachedPlayerInteractState = any_TableMerge_result1_upvr_2.DisplayedPlayerState
				any_CollectionUICreate_result1_upvr.RequestCollection(any_TableMerge_result1_upvr.PlayerOptions)
			end
			if var104 and any_TableMerge_result1_upvr_2.CanSendRequest then
				SendRequest_upvr(any_TableMerge_result1_upvr_2.DisplayedPlayerState, module_18_upvr.CarryRequestType.Pair)
			end
			var103_upvw = false
		end
	end)
	any_CollectionUICreate_result1_upvr.State.PendingSelection = any_TableMerge_result1_upvr_2.PairButton.Button
	return any_TableMerge_result1_upvr_2
end
tbl_32_upvr.Initialize = Initialize
local function Destroy(arg1) -- Line 724
	--[[ Upvalues[1]:
		[1]: module_9_upvr (readonly)
	]]
	module_9_upvr.Button.Destroy(arg1.PairButton)
end
tbl_32_upvr.Destroy = Destroy
local module_15_upvr = require(Modules:WaitForChild("NetworkRequestUtility"))
local function Update(arg1, arg2, arg3) -- Line 731
	--[[ Upvalues[11]:
		[1]: module_19_upvr (readonly)
		[2]: module_15_upvr (readonly)
		[3]: module_18_upvr (readonly)
		[4]: tbl_32_upvr (readonly)
		[5]: any_CollectionUICreate_result1_upvr (readonly)
		[6]: module_21_upvr (readonly)
		[7]: module_9_upvr (readonly)
		[8]: module_22_upvr (readonly)
		[9]: module_3_upvr (readonly)
		[10]: module_14_upvr (readonly)
		[11]: tbl_7_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local PairButton_5 = arg1.PairButton
	if module_19_upvr.SelectionState.PlayerState then
		local PlayerState_4 = module_19_upvr.SelectionState.PlayerState
		if arg1.DisplayedPlayerState ~= PlayerState_4 then
			arg1.PlayerStateDirty = true
			arg1.DisplayedPlayerState = PlayerState_4
			module_15_upvr.MakeRequest({
				Request = module_18_upvr.StateRequestType.CounterIncrement;
				Args = {module_18_upvr.CounterType.PlayerClicks, module_18_upvr.UnlockMethod.UserRequest};
			})
		end
		module_19_upvr.SelectionStateConsume()
	end
	if arg1.PlayerStateDirty then
		local DisplayedPlayerState_3 = arg1.DisplayedPlayerState
		arg1.PlayerText = string.format(tbl_32_upvr.Formats.Player, DisplayedPlayerState_3.Player.DisplayName, DisplayedPlayerState_3.Player.Name)
		arg1.PlayerLabel.Text = arg1.PlayerText
	end
	local var211
	if not arg1.DisplayedPlayerState.IsInGame then
		any_CollectionUICreate_result1_upvr.RequestClose()
	else
		local CarryState = arg1.DisplayedPlayerState.CarryState
		local any_CarryStateIsPaired_result1_2 = module_18_upvr.CarryStateIsPaired(module_21_upvr.LocalCarryState, CarryState)
		var211 = module_21_upvr
		var211 = CarryState
		local any_CarryStateCanRequest_result1, any_CarryStateCanRequest_result2_2 = module_18_upvr.CarryStateCanRequest(var211.LocalCarryState, var211, module_21_upvr.Now)
		var211 = not any_CarryStateCanRequest_result1
		if var211 then
			if any_CarryStateCanRequest_result2_2 == nil then
				var211 = false
			else
				var211 = true
			end
		end
		local var216 = not any_CarryStateIsPaired_result1_2
		if var216 then
		end
		arg1.CanSendRequest = not var211
		local var217 = true
		if arg1.DisplayedAlreadyPaired == any_CarryStateIsPaired_result1_2 then
			if arg1.DisplayedHasPendingRequest == var211 then
				var217 = false
			else
				var217 = true
				local var218
			end
		end
		if var217 and (not any_CollectionUICreate_result1_upvr.State.UIMain or not any_CollectionUICreate_result1_upvr.State.UIMain.Expired) then
			arg1.DisplayedAlreadyPaired = any_CarryStateIsPaired_result1_2
			arg1.DisplayedHasPendingRequest = var211
			if arg1.CanSendRequest then
				local _ = tbl_32_upvr.Formats.RequestPrompt
			elseif any_CarryStateIsPaired_result1_2 then
			else
			end
			local PairButton_3 = arg1.PairButton
			PairButton_3.Input.Enabled = arg1.CanSendRequest
			PairButton_3.Image.Visible = true
			PairButton_3.Theme = module_9_upvr.Button.Themes.Success
			arg1.ButtonText = tbl_32_upvr.Formats.RequestSent
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module_9_upvr.Button.SetText(PairButton_3, tbl_32_upvr.Formats.RequestSent)
		end
		if arg1.PlayerStateDirty or module_21_upvr.Flags.CarryDistanceDirty then
			arg1.TextBoundsFlag.Dirty = true
			local UserId_5 = module_21_upvr.LocalPlayerState.UserId
			local UserId_6 = arg1.DisplayedPlayerState.UserId
			local DisplayName_3 = arg1.DisplayedPlayerState.Player.DisplayName
			arg1.CarriedText = string.format(tbl_32_upvr.Formats.CarriedDistance, DisplayName_3, module_22_upvr.FormatNumber(module_21_upvr.CarryDistanceGet(UserId_5, UserId_6)))
			arg1.CarriedLabel.Text = arg1.CarriedText
			arg1.CarriedByText = string.format(tbl_32_upvr.Formats.CarriedByDistance, DisplayName_3, module_22_upvr.FormatNumber(module_21_upvr.CarryDistanceGet(UserId_6, UserId_5)))
			arg1.CarriedByLabel.Text = arg1.CarriedByText
			module_3_upvr.DonationButtonUpdateContent(arg1.DonationButton, arg1.DisplayedPlayerState.Player)
		end
		local any_TextBoundsFlagCheck_result1 = module_14_upvr.TextBoundsFlagCheck(arg1.TextBoundsFlag)
		if not any_TextBoundsFlagCheck_result1 then
			any_TextBoundsFlagCheck_result1 = var217
			if not any_TextBoundsFlagCheck_result1 then
				any_TextBoundsFlagCheck_result1 = arg1.PlayerStateDirty
				if not any_TextBoundsFlagCheck_result1 then
					any_TextBoundsFlagCheck_result1 = arg1.DrawDirty
				end
			end
		end
		if any_TextBoundsFlagCheck_result1 then
			local PadY_2 = any_CollectionUICreate_result1_upvr.Properties.PadY
			local EdgePadX_2 = any_CollectionUICreate_result1_upvr.Properties.EdgePadX
			local EdgePadY_4 = any_CollectionUICreate_result1_upvr.Properties.EdgePadY
			local var228 = PadY_2 * 1.5 // 1
			local var229 = module_14_upvr.EmSize * tbl_7_upvr.WrapperSizeEm // 1
			local ButtonFancyText = module_14_upvr.SteppedSize.ButtonFancyText
			local var231 = module_14_upvr.EmSize * tbl_7_upvr.HeaderSizeEm // 1
			local var232 = module_14_upvr.EmSize * tbl_7_upvr.TextSizeEm // 1
			local tbl_19 = {}
			for _, v_4 in {{
				Bounds = arg1.HeaderBounds;
				Label = arg1.HeaderLabel;
				Text = arg1.HeaderText;
				TextSize = var231;
			}, {
				Bounds = arg1.PlayerBounds;
				Label = arg1.PlayerLabel;
				Text = arg1.PlayerText;
				TextSize = var232;
			}, {
				Bounds = arg1.InfoBounds;
				Label = arg1.InfoLabel;
				Text = arg1.InfoText;
				TextSize = var232;
			}, {
				Bounds = arg1.CarriedBounds;
				Label = arg1.CarriedLabel;
				Text = arg1.CarriedText;
				TextSize = var232;
			}, {
				Bounds = arg1.CarriedByBounds;
				Label = arg1.CarriedByLabel;
				Text = arg1.CarriedByText;
				TextSize = var232;
			}} do
				if module_14_upvr.CachedTextBoundsUpdate(v_4.Bounds, v_4.Text, v_4.TextSize) then
					v_4.Label.TextSize = v_4.TextSize
				end
				tbl_19[v_4.Label] = {
					Position = UDim.new(0, (var229 * 0.5 - v_4.Bounds.X * 0.5) // 1);
					Size = UDim.new(0, v_4.Bounds.X);
				}
			end
			module_14_upvr.CachedTextBoundsUpdate(PairButton_5.Bounds, arg1.ButtonText, ButtonFancyText)
			local minimum = math.min(var229 - 2 * EdgePadX_2, math.max(PairButton_5.Bounds.X + 2 * EdgePadX_2, module_14_upvr.SteppedSize.ButtonFancyX * 2.5))
			tbl_19[PairButton_5.Button] = {
				Position = UDim.new(0, (var229 * 0.5 - minimum * 0.5) // 1);
				Size = UDim.new(0, minimum);
			}
			module_9_upvr.Button.Common.Resize.InlineIcon(PairButton_5, ButtonFancyText, ButtonFancyText, minimum)
			local any_DimTrackerCreate_result1_3 = module_14_upvr.DimTrackerCreate()
			module_14_upvr.DimTrackerPad(any_DimTrackerCreate_result1_3, 0, EdgePadY_4)
			module_14_upvr.DimTrackerAdd(any_DimTrackerCreate_result1_3, arg1.HeaderLabel, 0, var231)
			module_14_upvr.DimTrackerPad(any_DimTrackerCreate_result1_3, 0, PadY_2 * 0.5 // 1)
			module_14_upvr.DimTrackerAdd(any_DimTrackerCreate_result1_3, arg1.PlayerLabel, 0, var232)
			module_14_upvr.DimTrackerPad(any_DimTrackerCreate_result1_3, 0, EdgePadY_4)
			module_14_upvr.DimTrackerAdd(any_DimTrackerCreate_result1_3, arg1.InfoLabel, 0, var232)
			module_14_upvr.DimTrackerPad(any_DimTrackerCreate_result1_3, 0, var228)
			module_14_upvr.DimTrackerAdd(any_DimTrackerCreate_result1_3, PairButton_5.Button, 0, module_14_upvr.SteppedSize.ButtonFancyY)
			module_14_upvr.DimTrackerPad(any_DimTrackerCreate_result1_3, 0, var228)
			module_3_upvr.DonationButtonUpdateSize(arg1.DonationButton, minimum, module_14_upvr.SteppedSize.ButtonFancyY, false)
			module_3_upvr.DonationButtonConform(arg1.DonationButton)
			arg1.DonationButton.Button.Position = UDim2.fromOffset((var229 * 0.5 - minimum * 0.5) // 1, any_DimTrackerCreate_result1_3.Offset)
			module_14_upvr.DimTrackerPad(any_DimTrackerCreate_result1_3, 0, module_14_upvr.SteppedSize.ButtonFancyY + var228)
			module_14_upvr.DimTrackerAdd(any_DimTrackerCreate_result1_3, arg1.CarriedLabel, 0, var232)
			module_14_upvr.DimTrackerPad(any_DimTrackerCreate_result1_3, 0, PadY_2 * 0.5 // 1)
			module_14_upvr.DimTrackerAdd(any_DimTrackerCreate_result1_3, arg1.CarriedByLabel, 0, var232)
			module_14_upvr.DimTrackerPad(any_DimTrackerCreate_result1_3, 0, EdgePadY_4)
			module_14_upvr.DimTrackerApply(any_DimTrackerCreate_result1_3, tbl_19, true)
			arg1.TargetSize = UDim2.fromOffset(var229, any_DimTrackerCreate_result1_3.Offset)
		end
	end
	module_9_upvr.Button.Update(PairButton_5, arg3)
	module_3_upvr.DonationButtonUpdateTweens(arg1.DonationButton, arg3)
	arg1.PlayerStateDirty = false
end
tbl_32_upvr.Update = Update
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_upvr.PlayerOptions] = tbl_32_upvr
tbl_8_upvr.Format_ByInputMode = {
	[module_7_upvr.Gamepad] = "Press RT For Options";
	[module_7_upvr.Keyboard] = "Click For Options";
	[module_7_upvr.Mouse] = "Click For Options";
	[module_7_upvr.Touch] = "Tap For Options";
}
tbl_8_upvr.CurrentFormat = tbl_8_upvr.Format_ByInputMode[module_7_upvr.Keyboard]
function tbl_8_upvr.SetFormat(arg1) -- Line 1031
	--[[ Upvalues[2]:
		[1]: tbl_8_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var253 = tbl_8_upvr.Format_ByInputMode[arg1]
	if var253 and var253 ~= tbl_8_upvr.CurrentFormat then
		tbl_8_upvr.CurrentFormat = var253
		for _, v_5 in tbl_3_upvr.ProximityUI_ByCharacterState do
			v_5.PromptText = var253
			v_5.PromptLabel.Text = var253
			v_5.TextBoundsFlag.Dirty = true
		end
	end
end
tbl_8_upvr.SetFormat(module_7_upvr.Mode)
local function Create(arg1) -- Line 1051
	--[[ Upvalues[4]:
		[1]: tbl_8_upvr (readonly)
		[2]: module_14_upvr (readonly)
		[3]: module_22_upvr (readonly)
		[4]: module_17_upvr (readonly)
	]]
	local module = {
		NameText = arg1.Player.DisplayName;
		PromptText = tbl_8_upvr.CurrentFormat;
		TextBoundsFlag = module_14_upvr.TextBoundsFlagCreate();
		BillboardGui = module_22_upvr.I("BillboardGui", module_14_upvr.Properties.LayerCollector, {
			Name = "ProximityUI";
			Adornee = arg1.Character;
			AlwaysOnTop = true;
			ClipsDescendants = false;
			ExtentsOffset = Vector3.new(0, 1, 0);
			LightInfluence = 0;
			SizeOffset = Vector2.yAxis * 0.5;
			Parent = module_14_upvr.PlayerGui;
		});
		NameLabel = module_22_upvr.I("TextLabel", module_14_upvr.Properties.Text, {
			FontFace = module_17_upvr.FontFaceNormal;
			Text = module.NameText;
			TextColor3 = module_17_upvr.TextColor3;
			Parent = module.BillboardGui;
		});
		NameBounds = module_14_upvr.CachedTextBounds_FromLabel(module.NameLabel);
	}
	module.NameBounds.Flag = module.TextBoundsFlag
	module.NameStroke = module_22_upvr.I("UIStroke", module_14_upvr.Properties.StrokeText, {
		Color = module_17_upvr.TextStrokeColor1;
		Parent = module.NameLabel;
	})
	module.PromptLabel = module_22_upvr.I("TextLabel", module_14_upvr.Properties.Text, {
		FontFace = module_17_upvr.FontFaceNormal;
		Text = module.PromptText;
		TextColor3 = module_17_upvr.TextColor1;
		Parent = module.BillboardGui;
	})
	module.PromptBounds = module_14_upvr.CachedTextBounds_FromLabel(module.PromptLabel)
	module.PromptBounds.Flag = module.TextBoundsFlag
	module.PromptStroke = module_22_upvr.I("UIStroke", module_14_upvr.Properties.StrokeText, {
		Color = module_17_upvr.TextStrokeColor1;
		Parent = module.PromptLabel;
	})
	return module
end
tbl_8_upvr.Create = Create
local function Destroy(arg1) -- Line 1116
	arg1.BillboardGui:Destroy()
end
tbl_8_upvr.Destroy = Destroy
local function Update(arg1, arg2, arg3) -- Line 1123
	--[[ Upvalues[2]:
		[1]: module_14_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
	]]
	if module_14_upvr.TextBoundsFlagCheck(arg1.TextBoundsFlag) or module_14_upvr.EmSizeDirty then
		local var260 = module_14_upvr.EmSize * 0.25 // 1
		local var261 = module_14_upvr.EmSize * tbl_7_upvr.ProximityTextSizeEm // 1
		local var262 = module_14_upvr.EmSize * tbl_7_upvr.ProximityTextSizeLargeEm // 1
		local StrokeVeryThin = module_14_upvr.ScaledSize.StrokeVeryThin
		if module_14_upvr.CachedTextBoundsUpdate(arg1.NameBounds, arg1.NameText, var261) then
			arg1.NameLabel.TextSize = var261
			arg1.NameLabel.Size = UDim2.fromOffset(arg1.NameBounds.X, arg1.NameBounds.Y)
		end
		if module_14_upvr.CachedTextBoundsUpdate(arg1.PromptBounds, arg1.PromptText, var262) then
			arg1.PromptLabel.TextSize = var262
			arg1.PromptLabel.Size = UDim2.fromOffset(arg1.PromptBounds.X, arg1.PromptBounds.Y)
		end
		local maximum = math.max(arg1.NameBounds.X, arg1.PromptBounds.X)
		arg1.BillboardGui.Size = UDim2.fromOffset(maximum, arg1.NameBounds.Y + var260 + arg1.PromptBounds.Y)
		arg1.NameLabel.Position = UDim2.fromOffset((maximum * 0.5 - arg1.NameBounds.X * 0.5) // 1, 0)
		arg1.PromptLabel.Position = UDim2.fromOffset((maximum * 0.5 - arg1.PromptBounds.X * 0.5) // 1, arg1.NameBounds.Y + var260)
		arg1.NameStroke.Thickness = StrokeVeryThin
		arg1.PromptStroke.Thickness = StrokeVeryThin
	end
end
tbl_8_upvr.Update = Update
tbl_17_upvr.Formats = {
	Prompt = string.format("<stroke color='#%s' joins='round' thickness='%%f' transparency='%%f'><font color='#%s'>%%s</font> has sent you a pair request</stroke>", module_17_upvr.TextStrokeColor1:ToHex(), module_17_upvr.TextHighlightColor1:ToHex());
}
tbl_17_upvr.ButtonSpecs = {{
	ButtonTheme = module_9_upvr.Button.Themes.Accept;
	LabelProps = {
		Text = "Accept";
	};
	Response = module_18_upvr.CarryRequestType.Pair;
}, {
	ButtonTheme = module_9_upvr.Button.Themes.Cancel;
	LabelProps = {
		Text = "Decline";
	};
	Response = module_18_upvr.CarryRequestType.Unpair;
}}
function tbl_17_upvr.Create() -- Line 1208
	--[[ Upvalues[9]:
		[1]: module_4_upvr (readonly)
		[2]: module_20_upvr (readonly)
		[3]: module_14_upvr (readonly)
		[4]: SendRequest_upvr (readonly)
		[5]: module_22_upvr (readonly)
		[6]: module_17_upvr (readonly)
		[7]: tbl_17_upvr (readonly)
		[8]: module_9_upvr (readonly)
		[9]: module_10_upvr (readonly)
	]]
	local module_16_upvr = {
		DisplayedRequest = nil;
		DisplayedName = "";
		TimeDisplayed = math.huge;
		FadeTween = module_4_upvr.new(1, module_20_upvr.TweenDurations.Standard);
		Buttons = {};
		TextBoundsFlag = module_14_upvr.TextBoundsFlagCreate();
	}
	local function _(arg1) -- Line 1222, Named "RespondToRequest"
		--[[ Upvalues[2]:
			[1]: module_16_upvr (readonly)
			[2]: SendRequest_upvr (copied, readonly)
		]]
		local DisplayedRequest = module_16_upvr.DisplayedRequest
		if not DisplayedRequest then
		else
			module_16_upvr.DisplayedRequest = nil
			module_16_upvr.TimeDisplayed = math.huge
			SendRequest_upvr(DisplayedRequest.Sender.PlayerState, arg1)
		end
	end
	module_16_upvr.ScreenGui = module_22_upvr.I("ScreenGui", module_14_upvr.Properties.ScreenGui, {
		Name = "RecipientUI";
		DisplayOrder = module_17_upvr.DisplayOrder_RecipientUI;
		Parent = module_14_upvr.PlayerGui;
	})
	module_16_upvr.PromptLabel = module_22_upvr.I("TextLabel", module_14_upvr.Properties.Text, {
		FontFace = module_17_upvr.FontFaceNormal;
		RichText = true;
		TextColor3 = module_17_upvr.TextColor1;
		Parent = module_16_upvr.ScreenGui;
	})
	module_16_upvr.PromptBounds = module_14_upvr.CachedTextBounds_FromLabel(module_16_upvr.PromptLabel)
	module_16_upvr.PromptBounds.Flag = module_16_upvr.TextBoundsFlag
	for i_6, v_6_upvr in tbl_17_upvr.ButtonSpecs do
		local any_CreateFancy_result1 = module_9_upvr.Button.CreateFancy(module_16_upvr.ScreenGui, v_6_upvr.ButtonTheme, v_6_upvr.LabelProps)
		any_CreateFancy_result1.Button.Activated:Connect(function() -- Line 1264
			--[[ Upvalues[3]:
				[1]: v_6_upvr (readonly)
				[2]: module_16_upvr (readonly)
				[3]: SendRequest_upvr (copied, readonly)
			]]
			local DisplayedRequest_2 = module_16_upvr.DisplayedRequest
			if not DisplayedRequest_2 then
			else
				module_16_upvr.DisplayedRequest = nil
				module_16_upvr.TimeDisplayed = math.huge
				SendRequest_upvr(DisplayedRequest_2.Sender.PlayerState, v_6_upvr.Response)
			end
		end)
		module_16_upvr.Buttons[i_6] = any_CreateFancy_result1
	end
	module_16_upvr.CachedOpacities = module_10_upvr.Create(module_16_upvr.ScreenGui)
	module_10_upvr.Apply(module_16_upvr.CachedOpacities, module_16_upvr.FadeTween.Value)
	return module_16_upvr
end
local function Destroy(arg1) -- Line 1281
	--[[ Upvalues[1]:
		[1]: module_9_upvr (readonly)
	]]
	for _, v_7 in arg1.Buttons do
		module_9_upvr.Button.Destroy(v_7)
	end
	arg1.ScreenGui:Destroy()
end
tbl_17_upvr.Destroy = Destroy
local module_5_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local function Update(arg1, arg2, arg3) -- Line 1292
	--[[ Upvalues[9]:
		[1]: module_4_upvr (readonly)
		[2]: module_19_upvr (readonly)
		[3]: tbl_17_upvr (readonly)
		[4]: tbl_3_upvr (readonly)
		[5]: module_5_upvr (readonly)
		[6]: module_14_upvr (readonly)
		[7]: module_10_upvr (readonly)
		[8]: tbl_7_upvr (readonly)
		[9]: module_9_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var330
	if module_4_upvr.IsAtTarget(arg1.FadeTween, 1) then
		var330 = module_19_upvr.CarryRequestsPendingDisplay
		local popped_2 = table.remove(var330, 1)
		var330 = popped_2
		if var330 then
			var330 = popped_2.Sender.PlayerState
		end
		arg1.DisplayedRequest = popped_2
		if not arg1.DisplayedRequest then
			tbl_17_upvr.Destroy(arg1)
			tbl_3_upvr.RecipientUI = nil
			return
		end
		if var330 then
			arg1.TimeDisplayed = 0
			arg1.DisplayedName = var330.Player.DisplayName
			arg1.TextBoundsFlag.Dirty = true
		end
	end
	if arg1.DisplayedRequest then
		arg1.TimeDisplayed += arg2
	end
	if module_5_upvr.CarryInteract_PopupTime < arg1.TimeDisplayed then
	else
	end
	module_4_upvr.Tween(arg1.FadeTween, arg3, 0)
	if not module_14_upvr.TextBoundsFlagCheck(arg1.TextBoundsFlag) then
		if not module_14_upvr.ViewportSizeDirty then
			local DropInsetDirty = module_14_upvr.SecondOrderProperties.DropInsetDirty
		end
	end
	local Dirty = arg1.FadeTween.Dirty
	if DropInsetDirty or Dirty then
		arg1.PromptLabel.Text = string.format(tbl_17_upvr.Formats.Prompt, module_14_upvr.ScaledSize.ButtonFancyBorder, arg1.FadeTween.Value, arg1.DisplayedName)
	end
	if Dirty then
		module_10_upvr.Apply(arg1.CachedOpacities, arg1.FadeTween.Value)
	end
	if DropInsetDirty then
		local var334 = module_14_upvr.EmSize * tbl_7_upvr.TextSizeLargeEm // 1
		if module_14_upvr.CachedTextBoundsUpdate(arg1.PromptBounds, arg1.PromptLabel.ContentText, var334) then
			arg1.PromptLabel.TextSize = var334
			arg1.PromptLabel.Size = UDim2.fromOffset(arg1.PromptBounds.X, arg1.PromptBounds.Y)
		end
		local len_2 = #arg1.Buttons
		local var336 = module_14_upvr.SteppedSize.ButtonFancyX * tbl_7_upvr.RecipientButtonScale // 1
		local var337 = module_14_upvr.SteppedSize.ButtonFancyY * tbl_7_upvr.RecipientButtonScale // 1
		local EmSize = module_14_upvr.EmSize
		local var339 = module_14_upvr.ViewportSize.X * 0.5
		local var340 = module_14_upvr.ViewportSize.Y - var337 - module_14_upvr.SecondOrderProperties.DropInset - module_14_upvr.EmSize
		for i_8, v_8 in arg1.Buttons do
			v_8.Button.Position = UDim2.fromOffset((var339 - (var336 * len_2 + EmSize * (len_2 - 1)) * 0.5) // 1 + (var336 + EmSize) * (i_8 - 1), var340)
			v_8.Button.Size = UDim2.fromOffset(var336, var337)
			module_9_upvr.Button.AdjustText(v_8, nil, nil, nil, module_14_upvr.SteppedSize.ButtonFancyText * tbl_7_upvr.RecipientButtonScale // 1)
			local _
		end
		arg1.PromptLabel.Position = UDim2.fromOffset((var339 - arg1.PromptBounds.X * 0.5) // 1, (var340) - (module_14_upvr.EmSize * 0.5 // 1 + arg1.PromptBounds.Y))
	end
	for _, v_9 in arg1.Buttons do
		module_9_upvr.Button.Update(v_9, arg3)
	end
end
tbl_17_upvr.Update = Update
tbl_11_upvr.Formats = {
	Prompt = "Are you sure you want to unpair?";
}
tbl_11_upvr.ButtonSpecs = {{
	ButtonTheme = module_9_upvr.Button.Themes.Accept;
	LabelProps = {
		Text = "Yes";
	};
	Response = true;
}, {
	ButtonTheme = module_9_upvr.Button.Themes.Cancel;
	LabelProps = {
		Text = "No";
	};
	Response = false;
}}
function tbl_11_upvr.Initialize(arg1) -- Line 1449
	--[[ Upvalues[6]:
		[1]: module_14_upvr (readonly)
		[2]: tbl_11_upvr (readonly)
		[3]: module_9_upvr (readonly)
		[4]: RespondToThreads_upvr (readonly)
		[5]: any_CollectionUICreate_result1_upvr (readonly)
		[6]: module_22_upvr (readonly)
	]]
	local module_13 = {
		Buttons = {};
		TextBoundsFlag = module_14_upvr.TextBoundsFlagCreate();
	}
	local any_TextBoundsLabelCreate_result1_3, any_TextBoundsLabelCreate_result2_4 = module_14_upvr.TextBoundsLabelCreate(arg1.Wrapper, tbl_11_upvr.Formats.Prompt, module_13.TextBoundsFlag)
	module_13.PromptLabel = any_TextBoundsLabelCreate_result1_3
	module_13.PromptBounds = any_TextBoundsLabelCreate_result2_4
	for i_10, v_10_upvr in tbl_11_upvr.ButtonSpecs do
		local any_CreateFancy_result1_2 = module_9_upvr.Button.CreateFancy(arg1.Wrapper, v_10_upvr.ButtonTheme, v_10_upvr.LabelProps)
		any_CreateFancy_result1_2.Button.Activated:Connect(function() -- Line 1473
			--[[ Upvalues[2]:
				[1]: RespondToThreads_upvr (copied, readonly)
				[2]: v_10_upvr (readonly)
			]]
			RespondToThreads_upvr(v_10_upvr.Response)
		end)
		module_13.Buttons[i_10] = any_CreateFancy_result1_2
		if i_10 == 1 then
			any_CollectionUICreate_result1_upvr.State.PendingSelection = any_CreateFancy_result1_2.Button
		end
	end
	return module_22_upvr.TableMerge(module_13, arg1)
end
function tbl_11_upvr.Destroy(arg1) -- Line 1494
	--[[ Upvalues[1]:
		[1]: module_9_upvr (readonly)
	]]
	for _, v_11 in arg1.Buttons do
		module_9_upvr.Button.Destroy(v_11)
	end
end
function tbl_11_upvr.Update(arg1, arg2, arg3) -- Line 1504
	--[[ Upvalues[7]:
		[1]: module_18_upvr (readonly)
		[2]: module_21_upvr (readonly)
		[3]: any_CollectionUICreate_result1_upvr (readonly)
		[4]: module_14_upvr (readonly)
		[5]: tbl_7_upvr (readonly)
		[6]: tbl_11_upvr (readonly)
		[7]: module_9_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not module_18_upvr.CarryStateIsPaired(module_21_upvr.LocalCarryState) then
		any_CollectionUICreate_result1_upvr.RequestClose()
	end
	if module_14_upvr.TextBoundsFlagCheck(arg1.TextBoundsFlag) or arg1.DrawDirty then
		local PadY_4 = any_CollectionUICreate_result1_upvr.Properties.PadY
		local EdgePadY_2 = any_CollectionUICreate_result1_upvr.Properties.EdgePadY
		local var375 = module_14_upvr.EmSize * tbl_7_upvr.WrappenSizeSmallEm // 1
		local var376 = module_14_upvr.EmSize * tbl_7_upvr.TextSizeLargeEm // 1
		if module_14_upvr.CachedTextBoundsUpdate(arg1.PromptBounds, tbl_11_upvr.Formats.Prompt, var376) then
			arg1.PromptLabel.TextSize = var376
			arg1.PromptLabel.Size = UDim2.fromOffset(arg1.PromptBounds.X, arg1.PromptBounds.Y)
		end
		arg1.PromptLabel.Position = UDim2.fromOffset((var375 * 0.5 - arg1.PromptBounds.X * 0.5) // 1, EdgePadY_2)
		local len_3 = #arg1.Buttons
		local ButtonFancyX = module_14_upvr.SteppedSize.ButtonFancyX
		local ButtonFancyY_2 = module_14_upvr.SteppedSize.ButtonFancyY
		local EmSize_3 = module_14_upvr.EmSize
		for i_12, v_12 in arg1.Buttons do
			v_12.Button.Position = UDim2.fromOffset((var375 * 0.5 - (ButtonFancyX * len_3 + EmSize_3 * (len_3 - 1)) * 0.5) // 1 + (ButtonFancyX + EmSize_3) * (i_12 - 1), EdgePadY_2 + var376 + PadY_4)
			v_12.Button.Size = UDim2.fromOffset(ButtonFancyX, ButtonFancyY_2)
			module_9_upvr.Button.AdjustText(v_12, nil, nil, nil, module_14_upvr.SteppedSize.ButtonFancyText)
			local _
		end
		arg1.TargetSize = UDim2.fromOffset(var375, 2 * EdgePadY_2 + var376 + ButtonFancyY_2 + PadY_4)
	end
	for _, v_13 in arg1.Buttons do
		module_9_upvr.Button.Update(v_13, arg3)
	end
end
any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1_upvr.UnpairWarning] = tbl_11_upvr
function var382_upvw() -- Line 1590
	--[[ Upvalues[5]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: any_TableMerge_result1_upvr (readonly)
		[3]: module_14_upvr (readonly)
		[4]: any_MemberCreate_result1_upvr (readonly)
		[5]: tbl_3_upvr (readonly)
	]]
	any_CollectionUICreate_result1_upvr.RequestCollection(any_TableMerge_result1_upvr.UnpairWarning)
	module_14_upvr.UIExclusivityMember.SetActive(any_MemberCreate_result1_upvr, true)
	tbl_3_upvr.ResponseThreads[#tbl_3_upvr.ResponseThreads + 1] = coroutine.running()
	return coroutine.yield()
end
module_8_upvr.WarnUnpair = var382_upvw
function module_8_upvr.CloseIfDisplaying(arg1) -- Line 1606
	--[[ Upvalues[3]:
		[1]: any_CollectionUICreate_result1_upvr (readonly)
		[2]: any_TableMerge_result1_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
	]]
	local var383 = any_CollectionUICreate_result1_upvr.State.Collection_ByType[any_TableMerge_result1_upvr.PlayerOptions]
	if var383 and var383.DisplayedPlayerState == arg1 then
		any_CollectionUICreate_result1_upvr.RequestClose()
	end
	local RecipientUI = tbl_3_upvr.RecipientUI
	if RecipientUI and RecipientUI.DisplayedRequest and RecipientUI.DisplayedRequest.Sender.PlayerState == arg1 then
		RecipientUI.DisplayedRequest = nil
		RecipientUI.TimeDisplayed = math.huge
	end
end
module_7_upvr.ModeChanged:Connect(function() -- Line 1640
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	tbl_3_upvr.InputModeDirty = true
end)
function module_8_upvr.RenderStepped(arg1, arg2) -- Line 1644
	--[[ Upvalues[18]:
		[1]: module_19_upvr (readonly)
		[2]: module_8_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: SendRequest_upvr (readonly)
		[5]: module_18_upvr (readonly)
		[6]: any_CollectionUICreate_result1_upvr (readonly)
		[7]: any_TableMerge_result1_upvr (readonly)
		[8]: module_14_upvr (readonly)
		[9]: any_MemberCreate_result1_upvr (readonly)
		[10]: module_21_upvr (readonly)
		[11]: tbl_3_upvr (readonly)
		[12]: tbl_30_upvr (readonly)
		[13]: tbl_17_upvr (readonly)
		[14]: module_7_upvr (readonly)
		[15]: module_17_upvr (readonly)
		[16]: any_Create_result1_2_upvr (readonly)
		[17]: tbl_31_upvr (readonly)
		[18]: tbl_8_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_4 = {}
	local var443
	for i_14, v_14 in module_19_upvr.PairedCarryStateDeltas do
		if v_14 then
			var443 = {}
		else
			var443 = {}
		end
		var443[#var443 + 1] = i_14.PlayerState
	end
	for _, v_15 in {} do
		var443 = module_8_upvr.CloseIfDisplaying
		var443(v_15)
		var443 = #tbl_4
		tbl_4[var443] = string.format("You have successfully paired with %s!", v_15.Player.DisplayName)
	end
	for _, v_16 in {} do
		var443 = #tbl_4
		tbl_4[var443] = string.format("You have unpaired with %s.", v_16.Player.DisplayName)
	end
	for i_17, v_17 in tbl_4 do
		var443 = module_6_upvr.Popup.Create(module_6_upvr.Popup.Type.Topbar, v_17)
		module_6_upvr.Popup.Queue(var443)
	end
	if module_19_upvr.SelectionState.PlayerState then
		if module_19_upvr.GrabState.PlayerState == module_19_upvr.SelectionState.PlayerState then
			SendRequest_upvr(module_19_upvr.SelectionState.PlayerState, module_18_upvr.CarryRequestType.Carry)
			module_19_upvr.SelectionStateConsume()
		else
			any_CollectionUICreate_result1_upvr.RequestCollection(any_TableMerge_result1_upvr.PlayerOptions)
			module_14_upvr.UIExclusivityMember.SetActive(any_MemberCreate_result1_upvr, true)
		end
	end
	any_CollectionUICreate_result1_upvr.RenderStepped(arg1, arg2)
	if module_18_upvr.CarryStateIsPaired(module_21_upvr.LocalCarryState) then
		if not tbl_3_upvr.DropUnpairUI then
			tbl_3_upvr.DropUnpairUI = tbl_30_upvr.Create()
			-- KONSTANTWARNING: GOTO [178] #130
		end
	elseif tbl_3_upvr.DropUnpairUI then
		tbl_30_upvr.Destroy(tbl_3_upvr.DropUnpairUI)
		tbl_3_upvr.DropUnpairUI = nil
	end
	local BackpackInset = module_14_upvr.FirstOrderProperties.BackpackInset
	if tbl_3_upvr.DropUnpairUI then
		BackpackInset = tbl_30_upvr.Update(tbl_3_upvr.DropUnpairUI, arg1, arg2) or BackpackInset
	end
	local var445 = module_14_upvr
	if module_14_upvr.SecondOrderProperties.DropInset == BackpackInset then
		var445 = false
	else
		var445 = true
	end
	var445.SecondOrderProperties.DropInsetDirty = var445
	module_14_upvr.SecondOrderProperties.DropInset = BackpackInset
	if 0 < #module_19_upvr.CarryRequestsPendingDisplay and not tbl_3_upvr.RecipientUI then
		tbl_3_upvr.RecipientUI = tbl_17_upvr.Create()
	end
	if tbl_3_upvr.RecipientUI then
		tbl_17_upvr.Update(tbl_3_upvr.RecipientUI, arg1, arg2)
	end
	local var446
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var446 = module_19_upvr.GrabState
		return var446.Dirty
	end
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var446 = tbl_3_upvr
		return var446.InputModeDirty
	end
	if module_19_upvr.HoveredState.Dirty or INLINED_2() or INLINED_3() then
		var446 = module_19_upvr.HoveredState
		local PlayerState_3 = var446.PlayerState
		var446 = false
		if PlayerState_3 ~= nil then
			if module_7_upvr.Mode == module_7_upvr.Touch then
				var446 = false
				local var448 = var446
				-- KONSTANTWARNING: Skipped task `defvar` above
			else
				var448 = true
			end
		end
		if var448 then
			if not tbl_3_upvr.MouseIconUI then
				i_17 = module_14_upvr
				tbl_3_upvr.MouseIconUI = i_17.MouseIconUI.Create()
			end
			if tbl_3_upvr.MouseIconUI then
				local MouseIconUI = tbl_3_upvr.MouseIconUI
				v_17 = module_19_upvr
				i_17 = v_17.GrabState
				if i_17.PlayerState == PlayerState_3 then
					MouseIconUI = module_17_upvr.CharacterHoverGrabColor
				else
					MouseIconUI = module_17_upvr.CharacterHoverColor
				end
				MouseIconUI.Icon.ImageColor3 = MouseIconUI
				-- KONSTANTWARNING: GOTO [339] #242
			end
		elseif not var448 and tbl_3_upvr.MouseIconUI then
			module_14_upvr.MouseIconUI.Destroy(tbl_3_upvr.MouseIconUI)
			tbl_3_upvr.MouseIconUI = nil
		end
	end
	var448 = tbl_3_upvr
	if var448.MouseIconUI then
		var448 = module_14_upvr.MouseIconUI
		var448 = tbl_3_upvr.MouseIconUI
		var448.Update(var448)
	end
	local var450 = module_14_upvr
	var448 = var450.MouseIconState
	var448 = any_Create_result1_2_upvr
	if tbl_3_upvr.MouseIconUI == nil then
		var450 = false
	else
		var450 = true
	end
	var448.SetActive(var448, var450)
	var448 = module_19_upvr.GrabState
	local CharacterState = var448.CharacterState
	if CharacterState then
		var448 = tbl_3_upvr.GrabUI
		if not var448 then
			var448 = tbl_3_upvr
			var448.GrabUI = tbl_31_upvr.Create()
		end
		var448 = tbl_3_upvr.GrabUI
		if var448 then
			var448 = tbl_31_upvr.SetCharacterState
			var448(tbl_3_upvr.GrabUI, CharacterState)
			-- KONSTANTWARNING: GOTO [411] #294
		end
	else
		var448 = tbl_3_upvr.GrabUI
		if var448 then
			var448 = tbl_31_upvr.Destroy
			var448(tbl_3_upvr.GrabUI)
			var448 = tbl_3_upvr
			var448.GrabUI = nil
		end
	end
	var448 = tbl_3_upvr.GrabUI
	if var448 then
		var448 = tbl_31_upvr.Update
		var448(tbl_3_upvr.GrabUI, arg1, arg2)
	end
	var448 = tbl_3_upvr.InputModeDirty
	if var448 then
		var448 = tbl_8_upvr.SetFormat
		var448(module_7_upvr.Mode)
	end
	var448 = module_19_upvr.ProximityCharactersStatesDirty
	if var448 then
		var448 = table.clone(tbl_3_upvr.ProximityUI_ByCharacterState)
		local var452 = var448
		i_17 = module_19_upvr
		for _, v_18 in i_17.ProximityCharacterStates do
			var443 = var452[v_18]
			if var443 then
				var443 = nil
				var452[v_18] = var443
			else
				var443 = tbl_3_upvr.ProximityUI_ByCharacterState
				var443[v_18] = tbl_8_upvr.Create(v_18)
			end
		end
		for i_19, v_19 in var452 do
			var443 = tbl_8_upvr.Destroy
			var443(v_19)
			var443 = tbl_3_upvr.ProximityUI_ByCharacterState
			var443[i_19] = nil
		end
	end
	var452 = tbl_3_upvr.ProximityUI_ByCharacterState
	for _, _ in var452 do
		var443 = tbl_8_upvr
		var443 = i_19
		var443.Update(var443, arg1, arg2)
	end
	var452 = tbl_3_upvr
	var452.InputModeDirty = false
end
return module_8_upvr