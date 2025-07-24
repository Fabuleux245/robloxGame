-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:57
-- Luau version 6, Types version 3
-- Time taken: 0.013113 seconds

local module_upvr_4 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_12 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr_10 = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_4_upvr = require(Modules:WaitForChild("ClientData"))
local module_upvr_9 = require(Modules:WaitForChild("LocalPlayerManager"))
local module_upvr_8 = require(Modules:WaitForChild("UIEffects"))
local module_upvr_5 = require(Modules:WaitForChild("UIExclusivityGroups"))
local module_upvr = require(Modules:WaitForChild("UIShared"))
local module_2_upvr = require(Modules:WaitForChild("Utility"))
local UserInterface = Modules:WaitForChild("UserInterface")
local module_upvr_13 = require(UserInterface:WaitForChild("NotificationsUI"))
local module_5_upvr = require(UserInterface:WaitForChild("SidebarUI"))
local Tutorials_upvr = ReplicatedStorage:WaitForChild("Assets"):WaitForChild("Tutorials")
local State_upvr = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("State")
local tbl_5_upvr = {
	PendingChanges = {};
	FrameMethods = {
		PostSimulation = {};
		RenderStepped = {};
	};
	InternalStates_ByTutorialLogic = {};
}
local tbl_2_upvr = {}
local function RunTutorialLogic_upvr(arg1, arg2, ...) -- Line 96, Named "RunTutorialLogic"
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 12. Error Block 29 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 12. Error Block 29 end (CF ANALYSIS FAILED)
end
local function TutorialLogicCreate(arg1, arg2, arg3, arg4, arg5) -- Line 195
	--[[ Upvalues[1]:
		[1]: module_upvr_12 (readonly)
	]]
	if arg1.StepHandlers[arg2] then
		error(module_upvr_12.FormatOutput("Step %i is already defined", "TutorialTracker", nil, arg2), 2)
	end
	local module = {}
	module.Initialize = arg3
	module.Deinitialize = arg4
	module.FrameHandlers = arg5
	arg1.StepHandlers[arg2] = module
	return module
end
local OB1_2_upvw = require(Modules:WaitForChild("Tutorials")).Data_ById.OB1
local any_Create_result1_upvr = module_upvr.UIExclusivityMember.Create(module_upvr_5.TutorialGroup_OB1)
local function _(arg1, arg2) -- Line 251, Named "CanTouch"
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	local var24 = false
	local LocalCharacterState_2 = module_4_upvr.LocalCharacterState
	if LocalCharacterState_2 and LocalCharacterState_2.Initialized and LocalCharacterState_2.Alive then
		var24 = arg2:IsDescendantOf(LocalCharacterState_2.Character)
	end
	return var24
end
local function _(arg1, arg2, arg3) -- Line 270, Named "UpdatePendingTouch"
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	local var26 = false
	local LocalCharacterState_4 = module_4_upvr.LocalCharacterState
	local var28
	if LocalCharacterState_4 and LocalCharacterState_4.Initialized and LocalCharacterState_4.Alive then
		var26 = arg2:IsDescendantOf(LocalCharacterState_4.Character)
	end
	var28 = var26
	if not var28 then
	else
		if arg3 then
			var28 = 1
		else
			var28 = -1
		end
		var26 = arg1.PendingTouches
		var26[arg2] = (arg1.PendingTouches[arg2] or 0) + var28
	end
end
local tbl_4 = {}
local module_upvr_2 = require(Modules:WaitForChild("Transparency"))
local module_3_upvr = require(Modules:WaitForChild("Tweens"))
local function PostSimulation(arg1, arg2, arg3) -- Line 407
	--[[ Upvalues[4]:
		[1]: module_4_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: module_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local LocalCharacterState = module_4_upvr.LocalCharacterState
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [135] 96. Error Block 71 start (CF ANALYSIS FAILED)
	for _, v_3 in arg3.WallStates do
		table.clear(v_3.ExpiringTouches)
		table.clear(v_3.PendingTouches)
		table.clear(v_3.TouchingParts)
	end
	-- KONSTANTERROR: [135] 96. Error Block 71 end (CF ANALYSIS FAILED)
end
tbl_4.PostSimulation = PostSimulation
local TutorialHandlerCreate_result1 = (function(arg1, arg2, arg3, arg4) -- Line 171, Named "TutorialHandlerCreate"
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: module_upvr_12 (readonly)
	]]
	if tbl_2_upvr[arg1] then
		error(module_upvr_12.FormatOutput("TutorialId '%s' already has a handler", "TutorialTracker", nil, arg1.Id), 2)
	end
	local module_11 = {}
	module_11.Initialize = arg2
	module_11.Deinitialize = arg3
	module_11.FrameHandlers = arg4
	module_11.StepHandlers = {}
	tbl_2_upvr[arg1] = module_11
	return module_11
end)(OB1_2_upvw, function(arg1) -- Line 293
	--[[ Upvalues[5]:
		[1]: Tutorials_upvr (readonly)
		[2]: module_4_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: module_upvr (readonly)
		[5]: any_Create_result1_upvr (readonly)
	]]
	local module_10_upvr = {
		Connections = {};
		InitializeThread = nil;
		VFXProp = nil;
		VFXState = nil;
		WorldProp = nil;
		WallStates = {};
	}
	task.spawn(function() -- Line 307, Named "InitializeWorldProps"
		--[[ Upvalues[3]:
			[1]: module_10_upvr (readonly)
			[2]: Tutorials_upvr (copied, readonly)
			[3]: module_4_upvr (copied, readonly)
		]]
		assert(not module_10_upvr.InitializeThread, "Already initializing")
		module_10_upvr.InitializeThread = coroutine.running()
		local OB1 = Tutorials_upvr:WaitForChild("OB1")
		module_10_upvr.VFXProp = OB1:WaitForChild("WallCollisionVFX")
		local Wall = OB1:WaitForChild("Wall")
		module_10_upvr.WorldProp = Wall
		for _, v in Wall:GetDescendants() do
			if v:IsA("BasePart") and v.Material == Enum.Material.Plastic and 0 < v.Transparency then
				local tbl_8_upvr = {
					ExpiringTouches = {};
					PendingTouches = {};
					TouchingParts = {};
				}
				module_10_upvr.Connections[#module_10_upvr.Connections + 1] = v.Touched:Connect(function(arg1_2) -- Line 332, Named "AddPendingPart"
					--[[ Upvalues[2]:
						[1]: tbl_8_upvr (readonly)
						[2]: module_4_upvr (copied, readonly)
					]]
					local var39 = tbl_8_upvr
					local var40 = false
					local LocalCharacterState_3 = module_4_upvr.LocalCharacterState
					if LocalCharacterState_3 and LocalCharacterState_3.Initialized and LocalCharacterState_3.Alive then
						var40 = arg1_2:IsDescendantOf(LocalCharacterState_3.Character)
					end
					if not var40 then
					else
						var40 = (var39.PendingTouches[arg1_2] or 0) + 1
						var39.PendingTouches[arg1_2] = var40
					end
				end)
				module_10_upvr.Connections[#module_10_upvr.Connections + 1] = v.TouchEnded:Connect(function(arg1_3) -- Line 336, Named "RemovePendingPart"
					--[[ Upvalues[2]:
						[1]: tbl_8_upvr (readonly)
						[2]: module_4_upvr (copied, readonly)
					]]
					local var42 = tbl_8_upvr
					local var43 = false
					local LocalCharacterState_5 = module_4_upvr.LocalCharacterState
					if LocalCharacterState_5 and LocalCharacterState_5.Initialized and LocalCharacterState_5.Alive then
						var43 = arg1_3:IsDescendantOf(LocalCharacterState_5.Character)
					end
					if not var43 then
					else
						var43 = (var42.PendingTouches[arg1_3] or 0) + -1
						var42.PendingTouches[arg1_3] = var43
					end
				end)
				module_10_upvr.WallStates[v] = tbl_8_upvr
			end
		end
		Wall.Parent = workspace
		module_10_upvr.InitializeThread = nil
	end)
	module_5_upvr.SidebarButtonsSetHidden(true)
	module_upvr.UIExclusivityMember.SetActive(any_Create_result1_upvr, true)
	return module_10_upvr
end, function(arg1) -- Line 367
	--[[ Upvalues[4]:
		[1]: Tutorials_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: any_Create_result1_upvr (readonly)
	]]
	for _, v_2 in arg1.Connections do
		v_2:Disconnect()
	end
	table.clear(arg1.Connections)
	if arg1.InitializeThread then
		if coroutine.status(arg1.InitializeThread) == "suspended" then
			task.cancel(arg1.InitializeThread)
		end
		arg1.InitializeThread = nil
	end
	arg1.VFXProp = nil
	if arg1.VFXState then
		arg1.VFXState.Prop:Destroy()
		arg1.VFXState = nil
	end
	if arg1.WorldProp then
		arg1.WorldProp.Parent = Tutorials_upvr
		arg1.WorldProp = nil
	end
	table.clear(arg1.WallStates)
	module_5_upvr.SidebarButtonsSetHidden(false)
	module_upvr.UIExclusivityMember.SetActive(any_Create_result1_upvr, false)
end, tbl_4)
local module_upvr_6 = require(ReplicatedStorage:WaitForChild("Settings"))
local module_8_upvr = require(Modules:WaitForChild("UIButton"))
local module_upvr_11 = require(UserInterface:WaitForChild("PromptUI"))
TutorialLogicCreate(TutorialHandlerCreate_result1, 1, function() -- Line 560
	--[[ Upvalues[7]:
		[1]: module_upvr_9 (readonly)
		[2]: module_upvr_6 (readonly)
		[3]: module_8_upvr (readonly)
		[4]: OB1_2_upvw (readonly)
		[5]: State_upvr (readonly)
		[6]: module_upvr_12 (readonly)
		[7]: module_upvr_11 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
	local any_CharacterDisableStateCreate_result1 = module_upvr_9.CharacterDisableStateCreate()
	module_upvr_9.CharacterDisableStateSetDisabled(any_CharacterDisableStateCreate_result1, true)
	;({}).CharacterDisableState = any_CharacterDisableStateCreate_result1
	local tbl = {}
	if module_upvr_6.IsSpeedRun4 then
		tbl[#tbl + 1] = {
			Text = "Welcome to Speed Run 4! This game has 15 new ".."levels, plus new features like energy. Earn ".."energy by running!";
		}
		-- KONSTANTWARNING: GOTO [58] #49
	end
	-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [31] 25. Error Block 16 start (CF ANALYSIS FAILED)
	if module_upvr_6.IsRollGame then
		tbl[#tbl + 1] = {
			Text = "Welcome to Speed ROLL 4, the OFFICIAL spinoff ".."made by the creators of Speed Run 4. This game ".."has 15 new levels, plus new features like ".."energy. Earn energy by rolling!";
		}
		-- KONSTANTWARNING: GOTO [58] #49
	end
	-- KONSTANTERROR: [31] 25. Error Block 16 end (CF ANALYSIS FAILED)
end, function(arg1) -- Line 657
	--[[ Upvalues[1]:
		[1]: module_upvr_9 (readonly)
	]]
	module_upvr_9.CharacterDisableStateSetDisabled(arg1.CharacterDisableState, false)
end)
local tbl_3 = {}
local module_9_upvr = require(Modules:WaitForChild("EnergyHandler"))
local module_upvr_7 = require(UserInterface:WaitForChild("EnergyExchangeUI"))
local function RenderStepped(arg1, arg2, arg3) -- Line 690
	--[[ Upvalues[7]:
		[1]: module_9_upvr (readonly)
		[2]: module_upvr_7 (readonly)
		[3]: module_upvr_8 (readonly)
		[4]: module_upvr (readonly)
		[5]: State_upvr (readonly)
		[6]: module_upvr_12 (readonly)
		[7]: OB1_2_upvw (readonly)
	]]
	if 1 < module_9_upvr.MovingTime then
		arg3.DelayTime -= arg1
		arg3.Primed = true
		local ExchangeButton_2 = module_upvr_7.ExchangeButton
		if ExchangeButton_2 then
			ExchangeButton_2.Hidden = false
			if arg3.DelayTime <= 0 then
				if not arg3.ArrowUI then
					arg3.ArrowUI = module_upvr_8.ArrowPopup.CreateUI("Sell your energy here to continue!", "TutorialUI_OB1_2")
				end
				local assert_result1 = assert(arg3.ArrowUI)
				assert_result1.ArrowPopup.TargetX = ExchangeButton_2.PosX - module_upvr.EmSize * 0.25 // 1
				assert_result1.ArrowPopup.TargetY = ExchangeButton_2.PosY + ExchangeButton_2.SizeY * 0.5 // 1
				-- KONSTANTWARNING: GOTO [91] #62
			end
			-- KONSTANTWARNING: GOTO [91] #62
		end
	elseif arg3.Primed and not arg3.Pending then
		arg3.Pending = true
		State_upvr:FireServer(module_upvr_12.StateRequestType.TutorialState, OB1_2_upvw.Id, 3)
	end
	if arg3.ArrowUI then
		module_upvr_8.ArrowPopup.Update(arg3.ArrowUI.ArrowPopup, arg1, arg2)
	end
end
tbl_3.RenderStepped = RenderStepped
TutorialLogicCreate(TutorialHandlerCreate_result1, 2, function() -- Line 671
	return {
		DelayTime = 0.25;
		Pending = false;
		Primed = false;
		ArrowUI = nil;
	}
end, function(arg1) -- Line 683
	--[[ Upvalues[1]:
		[1]: module_upvr_8 (readonly)
	]]
	if arg1.ArrowUI then
		module_upvr_8.ArrowPopup.DestroyUI(arg1.ArrowUI)
	end
end, tbl_3)
local module_7_upvr = require(UserInterface:WaitForChild("LevelMenuUI"))
local tbl_6 = {}
local function RenderStepped(arg1, arg2, arg3) -- Line 842
	--[[ Upvalues[2]:
		[1]: module_upvr_5 (readonly)
		[2]: module_upvr_13 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [14] 9. Error Block 3 start (CF ANALYSIS FAILED)
	module_upvr_13.Popup.FadeOut(arg3.Popup)
	do
		return
	end
	-- KONSTANTERROR: [14] 9. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 15. Error Block 7 start (CF ANALYSIS FAILED)
	if arg3.Popup.PlaybackState == Enum.PlaybackState.Completed then
		module_upvr_13.Popup.Queue(arg3.Popup)
	end
	-- KONSTANTERROR: [23] 15. Error Block 7 end (CF ANALYSIS FAILED)
end
tbl_6.RenderStepped = RenderStepped
local module_6_upvr = require(Modules:WaitForChild("LevelLoader"):WaitForChild("LevelLogic"))
local function PostSimulation(arg1, arg2, arg3) -- Line 857
	--[[ Upvalues[3]:
		[1]: module_upvr_12 (readonly)
		[2]: module_4_upvr (readonly)
		[3]: module_6_upvr (readonly)
	]]
	local any_PlayerStateGetRootRemoteState_result1 = module_upvr_12.PlayerStateGetRootRemoteState(module_4_upvr.LocalPlayerState, true)
	local var89
	if any_PlayerStateGetRootRemoteState_result1 then
		var89 = any_PlayerStateGetRootRemoteState_result1.ReceivedCFrame
		local Position_2 = var89.Position
		var89 = arg3.AttachmentOrigin
		var89.Position = Position_2
		var89 = nil
		for _, v_4 in module_6_upvr.GetActiveSellerNPCs() do
			local Position = v_4.Root.Position
			if (Position_2 - Position).Magnitude < math.huge then
				var89 = Position
			end
		end
		if var89 then
			arg3.AttachmentTarget.Position = var89
		end
	end
end
tbl_6.PostSimulation = PostSimulation
TutorialLogicCreate(TutorialHandlerCreate_result1, 3, function() -- Line 750
	--[[ Upvalues[9]:
		[1]: module_2_upvr (readonly)
		[2]: module_upvr_10 (readonly)
		[3]: module_upvr (readonly)
		[4]: module_4_upvr (readonly)
		[5]: State_upvr (readonly)
		[6]: module_upvr_12 (readonly)
		[7]: OB1_2_upvw (readonly)
		[8]: module_upvr_13 (readonly)
		[9]: module_upvr_5 (readonly)
	]]
	local module_12_upvr = {
		AttachmentOrigin = Instance.new("Attachment", module_2_upvr.Terrain);
		AttachmentTarget = Instance.new("Attachment", module_2_upvr.Terrain);
		Beam = module_2_upvr.I("Beam", {
			Attachment0 = module_12_upvr.AttachmentTarget;
			Attachment1 = module_12_upvr.AttachmentOrigin;
			Brightness = 1;
			CurveSize0 = 0;
			CurveSize1 = 0;
			FaceCamera = true;
			LightEmission = 0;
			LightInfluence = 0;
			Segments = 10;
			Texture = module_upvr_10.GetImageFromMap(module_upvr_10.ImageMapType.Arrow_ByDirection, module_upvr_10.Direction.Up, module_upvr_10.ImageMapStyle.OutlineHeavy);
			TextureLength = 4;
			TextureMode = Enum.TextureMode.Wrap;
			TextureSpeed = -0.25;
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.025, 0), NumberSequenceKeypoint.new(0.975, 0), NumberSequenceKeypoint.new(1, 1)});
			Width0 = 4;
			Width1 = 4;
			Parent = module_upvr.Camera;
		});
		Connection = module_4_upvr.Signals.EggHatched:Connect(function() -- Line 788
			--[[ Upvalues[4]:
				[1]: module_12_upvr (readonly)
				[2]: State_upvr (copied, readonly)
				[3]: module_upvr_12 (copied, readonly)
				[4]: OB1_2_upvw (copied, readonly)
			]]
			if module_12_upvr.Connection.Connected then
				module_12_upvr.Connection:Disconnect()
				State_upvr:FireServer(module_upvr_12.StateRequestType.TutorialState, OB1_2_upvw.Id, 4)
			end
		end);
		Popup = module_upvr_13.Popup.Create(module_upvr_13.Popup.Type.UpperScreenText, "Buy a pet from the merchant to earn energy faster!", {
			Color = module_upvr_10.TextHighlightColor2;
			Font = module_upvr_10.FontFaceNormal;
			TextScale = 1.75;
		}, math.huge, 0.375);
	}
	module_upvr_13.Popup.QueueFirst(module_12_upvr.Popup)
	module_upvr.UIExclusivityGroup.IgnoredGroupManage(module_upvr_5.LevelMenuUIGroup, module_upvr_5.TutorialGroup_OB1, true)
	return module_12_upvr
end, function(arg1) -- Line 824
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_5 (readonly)
		[3]: module_7_upvr (readonly)
		[4]: module_upvr_13 (readonly)
	]]
	arg1.AttachmentOrigin:Destroy()
	arg1.AttachmentTarget:Destroy()
	arg1.Beam:Destroy()
	arg1.Connection:Disconnect()
	module_upvr.UIExclusivityGroup.IgnoredGroupManage(module_upvr_5.LevelMenuUIGroup, module_upvr_5.TutorialGroup_OB1, false)
	module_7_upvr.RequestClose()
	module_upvr_13.Popup.FadeOut(arg1.Popup)
end, tbl_6)
local tbl_7 = {}
local module_upvr_3 = require(UserInterface:WaitForChild("InventoryUI"))
local function RenderStepped(arg1, arg2, arg3) -- Line 927
	--[[ Upvalues[8]:
		[1]: module_4_upvr (readonly)
		[2]: module_upvr_5 (readonly)
		[3]: module_upvr_8 (readonly)
		[4]: State_upvr (readonly)
		[5]: module_upvr_12 (readonly)
		[6]: OB1_2_upvw (readonly)
		[7]: module_upvr_3 (readonly)
		[8]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 11. Error Block 3 start (CF ANALYSIS FAILED)
	arg3.Primed = true
	-- KONSTANTERROR: [15] 11. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 13. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 13. Error Block 4 end (CF ANALYSIS FAILED)
end
tbl_7.RenderStepped = RenderStepped
TutorialLogicCreate(TutorialHandlerCreate_result1, 4, function() -- Line 898
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_5 (readonly)
	]]
	module_upvr.UIExclusivityGroup.IgnoredGroupManage(module_upvr_5.InventoryUIGroup, module_upvr_5.TutorialGroup_OB1, true)
	return {
		DelayTime = 0.75;
		Primed = false;
		Pending = false;
		ArrowUI = nil;
	}
end, function(arg1) -- Line 915
	--[[ Upvalues[3]:
		[1]: module_upvr_8 (readonly)
		[2]: module_upvr (readonly)
		[3]: module_upvr_5 (readonly)
	]]
	if arg1.ArrowUI then
		module_upvr_8.ArrowPopup.DestroyUI(arg1.ArrowUI)
	end
	module_upvr.UIExclusivityGroup.IgnoredGroupManage(module_upvr_5.InventoryUIGroup, module_upvr_5.TutorialGroup_OB1, false)
end, tbl_7)
TutorialLogicCreate(TutorialHandlerCreate_result1, 5, function() -- Line 998
	--[[ Upvalues[5]:
		[1]: module_upvr_13 (readonly)
		[2]: module_upvr_10 (readonly)
		[3]: State_upvr (readonly)
		[4]: module_upvr_12 (readonly)
		[5]: OB1_2_upvw (readonly)
	]]
	module_upvr_13.Popup.QueueFirst(module_upvr_13.Popup.Create(module_upvr_13.Popup.Type.UpperScreenText, "Now you're ready to go!\nGood luck!", {
		Color = module_upvr_10.TextHighlightColor2;
		Font = module_upvr_10.FontFaceNormal;
		TextScale = 1.75;
	}))
	State_upvr:FireServer(module_upvr_12.StateRequestType.TutorialState, OB1_2_upvw.Id, 6)
	return {}
end, function(arg1) -- Line 1018
end)
function OB1_2_upvw(arg1) -- Line 1027, Named "ProcessTutorialChanges"
	--[[ Upvalues[5]:
		[1]: module_4_upvr (readonly)
		[2]: tbl_5_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: module_upvr_12 (readonly)
		[5]: RunTutorialLogic_upvr (readonly)
	]]
	if not module_4_upvr.Flags.LocalSaveDataLoaded then
		tbl_5_upvr.PendingChanges[#tbl_5_upvr.PendingChanges + 1] = arg1
	else
		for var108, var109 in arg1 do
			local var112 = tbl_2_upvr[var108]
			local var113
			if not var112 then
				var113 = module_upvr_12
				var113 = "TutorialId '%s' is missing client-side logic"
				warn(var113.FormatOutput(var113, "TutorialTracker", nil, var108.Id))
			end
			local _1 = var109[1]
			local _2 = var109[2]
			if var108.Steps >= _1 then
				var113 = false
			else
				var113 = true
			end
			module_4_upvr.Signals.LocalTutorialProgressed:Fire(var108, var113, _1)
			if not _2 then
				if not var113 then
					RunTutorialLogic_upvr(var112, true, _1)
					-- KONSTANTWARNING: GOTO [70] #58
				end
			else
				local var116 = var112.StepHandlers[_2]
				if var116 then
					RunTutorialLogic_upvr(var116, false)
				end
				local var117 = var112.StepHandlers[_1]
				if var117 then
					RunTutorialLogic_upvr(var117, true)
				end
				if var113 then
					for _, var111 in var112.StepHandlers do
						if tbl_5_upvr.InternalStates_ByTutorialLogic[var111] then
							RunTutorialLogic_upvr(var111, false)
						end
					end
					RunTutorialLogic_upvr(var112, false, _1)
				end
			end
		end
	end
end
module_upvr_4.ProcessTutorialChanges = OB1_2_upvw
any_Create_result1_upvr = module_4_upvr.Flags
OB1_2_upvw = any_Create_result1_upvr.LocalSaveDataLoaded
if not OB1_2_upvw then
	OB1_2_upvw = nil
	any_Create_result1_upvr = module_4_upvr.Signals.SaveDataLoaded
	any_Create_result1_upvr = any_Create_result1_upvr:Connect(function() -- Line 1104
		--[[ Upvalues[4]:
			[1]: OB1_2_upvw (read and write)
			[2]: module_4_upvr (readonly)
			[3]: tbl_5_upvr (readonly)
			[4]: module_upvr_4 (readonly)
		]]
		if OB1_2_upvw.Connected then
			OB1_2_upvw:Disconnect()
			assert(module_4_upvr.Flags.LocalSaveDataLoaded, "Data unavailable")
			for _, v_5 in tbl_5_upvr.PendingChanges do
				module_upvr_4.ProcessTutorialChanges(v_5)
			end
			table.clear(tbl_5_upvr.PendingChanges)
		end
	end)
	OB1_2_upvw = any_Create_result1_upvr
end
local function _(arg1, arg2, arg3) -- Line 1124, Named "RunFrameHandlers"
	for _, v_6 in arg1 do
		v_6.Handler(arg2, arg3, v_6.State)
	end
end
function module_upvr_4.PostSimulation(arg1, arg2) -- Line 1136
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	for _, v_7 in tbl_5_upvr.FrameMethods.PostSimulation do
		v_7.Handler(arg1, arg2, v_7.State)
	end
end
function module_upvr_4.RenderStepped(arg1, arg2) -- Line 1147
	--[[ Upvalues[1]:
		[1]: tbl_5_upvr (readonly)
	]]
	for _, v_8 in tbl_5_upvr.FrameMethods.RenderStepped do
		v_8.Handler(arg1, arg2, v_8.State)
	end
end
return module_upvr_4