-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:11
-- Luau version 6, Types version 3
-- Time taken: 0.027138 seconds

local module_4_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_8_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_7_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_3_upvr = require(Modules:WaitForChild("InputMode"))
local module = require(Modules:WaitForChild("Raycast"))
local module_5_upvr = require(Modules:WaitForChild("Tweens"))
local module_upvr_6 = require(Modules:WaitForChild("UIButton"))
local module_10_upvr = require(Modules:WaitForChild("UIShared"))
local module_upvr_5 = require(Modules:WaitForChild("Utility"))
local module_upvr_7 = require(Modules:WaitForChild("UserInterface"):WaitForChild("LevelMenuUI"))
local Assets = ReplicatedStorage:WaitForChild("Assets")
local SellerRing_upvr = Assets:WaitForChild("SellerRing")
local tbl_13_upvr = {
	ActiveSellers = {};
	SellerUI_BySellerNPC = {};
}
if module_7_upvr.SellerNPCScale ~= 1 then
	Assets:WaitForChild("SellerNPC"):ScaleTo(module_7_upvr.SellerNPCScale)
end
for _, v in SellerRing_upvr:GetDescendants() do
	if v:IsA("BasePart") then
		v.Color = require(ReplicatedStorage:WaitForChild("Theme")).SellerNPCRingColor
	end
end
local selected = select(2, SellerRing_upvr:GetBoundingBox())
local var23 = 2 * module_7_upvr.SellerNPCDistanceInitiate
local tbl_5_upvr = {}
local tbl_upvr_2 = {}
tbl_5_upvr.AnimationFadeTime = 0.25
tbl_5_upvr.DotInfluence = 0.05
tbl_5_upvr.DotTolerance = 0.5000000000000001
tbl_5_upvr.TextureTileStuds = 2
local tbl_upvr = {
	Idle = module_upvr_5.WeightedListCreate({{
		Animation = module_upvr_5.AnimationFromId("rbxassetid://10921333667");
		Weight = 1;
	}, {
		Animation = module_upvr_5.AnimationFromId("rbxassetid://10921330408");
		Weight = 9;
	}});
	Greet = module_upvr_5.WeightedListCreate({{
		Animation = module_upvr_5.AnimationFromId("rbxassetid://507770239");
		Weight = 1;
	}});
}
local function _(arg1, arg2) -- Line 153, Named "SellerNPCIsInputBlocked"
	--[[ Upvalues[2]:
		[1]: module_10_upvr (readonly)
		[2]: module_3_upvr (readonly)
	]]
	local var32 = arg2
	if var32 then
		var32 = arg2.CanvasGroup
	end
	return module_10_upvr.IsInputBlocked(module_10_upvr.Convert.ViewportToScreen(module_3_upvr.GetViewportMouse()), var32, true)
end
local module_upvr_2 = require(Modules:WaitForChild("HighlightGroups"))
local function SellerNPCUpdateHighlight_upvr(arg1) -- Line 164, Named "SellerNPCUpdateHighlight"
	--[[ Upvalues[3]:
		[1]: module_10_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 18. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 18. Error Block 4 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2) -- Line 194, Named "SellerNPCRequestOpen"
	--[[ Upvalues[3]:
		[1]: module_10_upvr (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_upvr_7 (readonly)
	]]
	local var34 = arg2
	if var34 then
		var34 = arg2.CanvasGroup
	end
	if not module_10_upvr.IsInputBlocked(module_10_upvr.Convert.ViewportToScreen(module_3_upvr.GetViewportMouse()), var34, true) then
		module_upvr_7.OpenFromUserRequest(arg1.LevelData)
	end
end
local function _(arg1, arg2) -- Line 205, Named "SellerNPCSetEngaged"
	--[[ Upvalues[1]:
		[1]: module_upvr_7 (readonly)
	]]
	if arg1.Engaged ~= arg2 then
		arg1.Engaged = arg2
		module_upvr_7.RegisterLevelProximity(arg1.LevelData, arg2)
	end
end
local module_upvr_4 = require(Modules:WaitForChild("LevelLoader"):WaitForChild("DimensionManager"))
local any_ParamsClone_result1_upvr = module.ParamsClone(module.Params.WorldOnly)
local function SellerNPCUpdatePivot_upvr(arg1) -- Line 217, Named "SellerNPCUpdatePivot"
	--[[ Upvalues[5]:
		[1]: module_upvr_4 (readonly)
		[2]: tbl_13_upvr (readonly)
		[3]: any_ParamsClone_result1_upvr (readonly)
		[4]: tbl_5_upvr (readonly)
		[5]: module_upvr_5 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var45
	if not arg1.LevelAssetState.Active then
	else
		local any_CFrameToDimensionSpace_result1 = module_upvr_4.CFrameToDimensionSpace(arg1.LevelAssetState, arg1.Origin)
		local UpVector = any_CFrameToDimensionSpace_result1.UpVector
		for i_15, v_15 in tbl_13_upvr.ActiveSellers do
			table.create(#tbl_13_upvr.ActiveSellers)[i_15] = v_15.Object
			local var49
		end
		any_ParamsClone_result1_upvr.FilterDescendantsInstances = var49
		local workspace_Raycast_result1 = workspace:Raycast(any_CFrameToDimensionSpace_result1.Position, UpVector * -100, any_ParamsClone_result1_upvr)
		local cframe = CFrame.new(0, arg1.Humanoid.HipHeight + arg1.Root.Size.Y * 0.5, 0)
		if workspace_Raycast_result1 then
			if tbl_5_upvr.DotTolerance < UpVector:Dot(workspace_Raycast_result1.Normal) then
			else
			end
			if math.abs(any_CFrameToDimensionSpace_result1.RightVector:Dot(workspace_Raycast_result1.Normal)) < module_upvr_5.DotTolerance then
			else
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			local Unit = -any_CFrameToDimensionSpace_result1.UpVector:Cross(workspace_Raycast_result1.Normal).Unit
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
		arg1.Object:PivotTo(CFrame.fromMatrix(workspace_Raycast_result1.Position, workspace_Raycast_result1.Normal:Cross(Unit).Unit, workspace_Raycast_result1.Normal, Unit) * cframe)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg1.Ring:PivotTo((any_CFrameToDimensionSpace_result1.Rotation + (CFrame.fromMatrix(workspace_Raycast_result1.Position, workspace_Raycast_result1.Normal:Cross(Unit).Unit, workspace_Raycast_result1.Normal, Unit) * cframe).Position) * cframe:Inverse() * CFrame.new(0, 1.5, 0))
		if 0 < #var49 then
			any_ParamsClone_result1_upvr.FilterDescendantsInstances = {}
		end
	end
end
local SellerNPC_upvr = Assets:WaitForChild("SellerNPC")
function module_4_upvr.Create(arg1, arg2) -- Line 288
	--[[ Upvalues[11]:
		[1]: SellerNPC_upvr (readonly)
		[2]: SellerRing_upvr (readonly)
		[3]: module_upvr_5 (readonly)
		[4]: module_8_upvr (readonly)
		[5]: tbl_5_upvr (readonly)
		[6]: module_7_upvr (readonly)
		[7]: module_5_upvr (readonly)
		[8]: SellerNPCUpdatePivot_upvr (readonly)
		[9]: module_10_upvr (readonly)
		[10]: module_3_upvr (readonly)
		[11]: module_upvr_7 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Data_2 = arg1.Level.Data
	local clone = SellerNPC_upvr:Clone()
	local clone_3 = SellerRing_upvr:Clone()
	clone_3:ScaleTo(module_upvr_5.Epsilon)
	local assert_result1_2 = assert(clone:FindFirstChildOfClass("Humanoid"), "Missing Humanoid")
	if Data_2.ItemTheme then
		local ItemTheme = Data_2.ItemTheme
		if ItemTheme.ColorAccent then
			for i_2, v_2 in clone:GetDescendants(), nil do
				if v_2:HasTag(module_8_upvr.Tags.ItemThemeColorAccent) and v_2:IsA("BasePart") then
					v_2.Color = ItemTheme.ColorAccent
				end
			end
		end
		local var168
		if ItemTheme.Texture then
			local Texture_2 = ItemTheme.Texture
			var168 = Texture_2.StudsPerTileU
			if not var168 then
				var168 = tbl_5_upvr.TextureTileStuds
			end
			if not Texture_2.StudsPerTileV then
				i_2 = tbl_5_upvr
			end
			for _, v_3 in clone:GetDescendants(), nil do
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if v_3:HasTag(module_8_upvr.Tags.ItemThemeTexture) and v_3:IsA("BasePart") then
					local var170 = var168
					local TextureTileStuds = i_2.TextureTileStuds
					local var172 = var168
					if v_3:FindFirstChildWhichIsA("WrapLayer") then
						local class_Attachment = v_3:FindFirstChildWhichIsA("Attachment")
						local var174
						if class_Attachment then
							local Name_2 = class_Attachment.Name
							var174 = nil
							if Name_2 == "BodyFrontAttachment" then
								var174 = {"LeftLowerArm", "LeftUpperArm", "LowerTorso", "RightLowerArm", "RightUpperArm", "UpperTorso"}
							elseif Name_2 == "WaistCenterAttachment" then
								var174 = {"LeftLowerLeg", "LeftUpperLeg", "LowerTorso", "RightLowerLeg", "RightUpperLeg"}
							end
							if var174 then
								local table_create_result1_3 = table.create(#var174)
								for _, v_4 in var174 do
									local SOME_2 = clone:FindFirstChild(v_4)
									if SOME_2 and SOME_2:IsA("BasePart") then
										table_create_result1_3[#table_create_result1_3 + 1] = SOME_2
									end
								end
								local var180 = v_3.Size / module_upvr_5.AABBGetSize(module_upvr_5.OABB_FromParts(table_create_result1_3, v_3.CFrame))
								var170 *= var180.X
								TextureTileStuds *= var180.Y
								var172 *= var180.Z
							end
						end
					end
					for i_5, v_5 in {
						[{Enum.NormalId.Front, Enum.NormalId.Back}] = {var170, TextureTileStuds};
						[{Enum.NormalId.Left, Enum.NormalId.Right}] = {var172, TextureTileStuds};
						[{Enum.NormalId.Top, Enum.NormalId.Bottom}] = {var170, var172};
					} do
						for _, v_6 in i_5 do
							local Texture_3 = Instance.new("Texture")
							Texture_3.Face = v_6
							Texture_3.StudsPerTileU = v_5[1]
							Texture_3.StudsPerTileV = v_5[2]
							Texture_3.Texture = Texture_2.Texture
							Texture_3.Parent = v_3
							local _
						end
					end
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
		end
	end
	local module_upvr_3 = {
		_AnimationsPending = true;
		_Connections = {};
		_GreetAnimations = module_upvr_5.WeightedListCreate({});
		_IdleAnimations = module_upvr_5.WeightedListCreate({});
		_IdleDirty = true;
		_RingSizeTween = module_5_upvr.new(0, 0.625, Enum.EasingStyle.Back);
		_RunningAnimations = {};
		Active = false;
		Destroyed = false;
		Engaged = false;
		Highlighted = false;
		Hovered = false;
		InProximity = false;
		Origin = arg2:GetPivot();
		LevelAssetState = arg1.AssetState;
		LevelData = Data_2;
		Animator = assert(assert_result1_2:FindFirstChildOfClass("Animator"), "Missing Animator");
		ClickDetector = module_upvr_5.I("ClickDetector", {
			MaxActivationDistance = module_7_upvr.SellerNPCPromptDistance;
			Parent = clone;
		});
		Humanoid = assert_result1_2;
		Object = clone;
		Ring = clone_3;
		Root = assert(clone.PrimaryPart, "Missing HumanoidRootPart");
		_DimensionConnection = arg1.DimensionSubscriptionChanged:Connect(function(arg1_3) -- Line 483, Named "DimensionSubscriptionChanged"
			--[[ Upvalues[2]:
				[1]: SellerNPCUpdatePivot_upvr (copied, readonly)
				[2]: module_upvr_3 (readonly)
			]]
			if arg1_3 == "Mirror" then
				SellerNPCUpdatePivot_upvr(module_upvr_3)
			end
		end);
	}
	module_upvr_3._Connections[#module_upvr_3._Connections + 1] = module_upvr_3.ClickDetector.MouseClick:Connect(function() -- Line 497, Named "RequestOpenMenu"
		--[[ Upvalues[4]:
			[1]: module_upvr_3 (readonly)
			[2]: module_10_upvr (copied, readonly)
			[3]: module_3_upvr (copied, readonly)
			[4]: module_upvr_7 (copied, readonly)
		]]
		if not module_10_upvr.IsInputBlocked(module_10_upvr.Convert.ViewportToScreen(module_3_upvr.GetViewportMouse()), nil, true) then
			module_upvr_7.OpenFromUserRequest(module_upvr_3.LevelData)
		end
	end)
	module_upvr_3._Connections[#module_upvr_3._Connections + 1] = module_upvr_3.ClickDetector.MouseHoverEnter:Connect(function() -- Line 501, Named "HoverBegan"
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		module_upvr_3.Hovered = true
	end)
	module_upvr_3._Connections[#module_upvr_3._Connections + 1] = module_upvr_3.ClickDetector.MouseHoverLeave:Connect(function() -- Line 505, Named "HoverEnded"
		--[[ Upvalues[1]:
			[1]: module_upvr_3 (readonly)
		]]
		module_upvr_3.Hovered = false
	end)
	return module_upvr_3
end
function module_4_upvr.Destroy(arg1) -- Line 521
	--[[ Upvalues[1]:
		[1]: module_4_upvr (readonly)
	]]
	if not arg1.Destroyed then
		arg1.Ring:Destroy()
	end
	arg1.Destroyed = true
	for _, v_7 in arg1._Connections do
		v_7:Disconnect()
	end
	if arg1._DimensionConnection then
		arg1._DimensionConnection:Disconnect()
		arg1._DimensionConnection = nil
	end
	if arg1.Active then
		module_4_upvr.SetActive(arg1, false)
	end
	arg1.Object:Destroy()
end
function module_4_upvr.SetActive(arg1, arg2) -- Line 556
	--[[ Upvalues[6]:
		[1]: tbl_13_upvr (readonly)
		[2]: SellerNPCUpdatePivot_upvr (readonly)
		[3]: module_upvr_5 (readonly)
		[4]: module_10_upvr (readonly)
		[5]: module_upvr_7 (readonly)
		[6]: SellerNPCUpdateHighlight_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [1] 2. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 23 start (CF ANALYSIS FAILED)
	arg1.Active = true
	if not table.find(tbl_13_upvr.ActiveSellers, arg1) then
		tbl_13_upvr.ActiveSellers[#tbl_13_upvr.ActiveSellers + 1] = arg1
	end
	SellerNPCUpdatePivot_upvr(arg1)
	module_upvr_5.ProtectedReparent(arg1.Object, module_10_upvr.Camera)
	module_upvr_5.ProtectedReparent(arg1.Ring, module_10_upvr.Camera)
	do
		return
	end
	-- KONSTANTERROR: [7] 6. Error Block 23 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [49] 37. Error Block 26 start (CF ANALYSIS FAILED)
	if not arg2 and arg1.Active then
		arg1.Active = false
		local table_find_result1 = table.find(tbl_13_upvr.ActiveSellers, arg1)
		if table_find_result1 then
			table.remove(tbl_13_upvr.ActiveSellers, table_find_result1)
		end
		if arg1._IdleLooped then
			arg1._IdleLooped:Disconnect()
			arg1._IdleLooped = nil
		end
		if arg1.Engaged ~= false then
			arg1.Engaged = false
			module_upvr_7.RegisterLevelProximity(arg1.LevelData, false)
		end
		SellerNPCUpdateHighlight_upvr(arg1)
		module_upvr_5.AnimationTracksStop(arg1._RunningAnimations, 0)
		if not arg1.Destroyed then
			module_upvr_5.ProtectedReparent(arg1.Object, nil)
			module_upvr_5.ProtectedReparent(arg1.Ring, nil)
		end
	end
	-- KONSTANTERROR: [49] 37. Error Block 26 end (CF ANALYSIS FAILED)
end
tbl_upvr_2.ButtonTheme = module_upvr_6.Button.Themes.Floating
tbl_upvr_2.FrameScale = 0.9
tbl_upvr_2.GradientColor1 = Color3.fromRGB(0, 255, 0)
tbl_upvr_2.GradientColor2 = Color3.fromRGB(255, 200, 0)
tbl_upvr_2.GradientRotationDegrees = 90
tbl_upvr_2.SwayDegrees = 5
tbl_upvr_2.SwayPeriod = 3
assert(tbl_upvr_2.ButtonTheme.Idle)
assert(tbl_upvr_2.ButtonTheme.Idle.Color)
local module_6_upvr = require(Modules:WaitForChild("ClientData"))
function module_4_upvr.PostSimulation(arg1, arg2) -- Line 640
	--[[ Upvalues[5]:
		[1]: tbl_13_upvr (readonly)
		[2]: module_8_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: module_upvr_7 (readonly)
		[5]: module_7_upvr (readonly)
	]]
	if 0 < #tbl_13_upvr.ActiveSellers then
		local any_PlayerStateGetRootRemoteState_result1 = module_8_upvr.PlayerStateGetRootRemoteState(module_6_upvr.LocalPlayerState, true)
		if not any_PlayerStateGetRootRemoteState_result1 then
			for _, v_8 in tbl_13_upvr.ActiveSellers do
				if v_8.Engaged ~= false then
					v_8.Engaged = false
					module_upvr_7.RegisterLevelProximity(v_8.LevelData, false)
				end
			end
			return
		end
		for _, v_9 in tbl_13_upvr.ActiveSellers do
			local var217 = v_9.Object:GetPivot().Position - any_PlayerStateGetRootRemoteState_result1.ReceivedCFrame.Position
			local Magnitude_2 = var217.Magnitude
			local var219
			if var219 then
				var219 = module_7_upvr
				var217 = var219.SellerNPCDistanceDisengage
			else
				var219 = module_7_upvr
				var217 = var219.SellerNPCDistanceInitiate
			end
			var219 = v_9._GreetedRootRemoteState
			if var219 ~= any_PlayerStateGetRootRemoteState_result1 then
				var219 = module_7_upvr.SellerNPCGreetRange
				if Magnitude_2 <= var219 then
					v_9._GreetedRootRemoteState = any_PlayerStateGetRootRemoteState_result1
					var219 = true
					v_9._GreetPending = var219
				end
			end
			if Magnitude_2 > module_7_upvr.SellerNPCPromptDistance then
				var219 = false
			else
				var219 = true
			end
			v_9.InProximity = var219
			if Magnitude_2 > var217 then
				var219 = false
			else
				var219 = true
			end
			if v_9.Engaged ~= var219 then
				v_9.Engaged = var219
				module_upvr_7.RegisterLevelProximity(v_9.LevelData, var219)
			end
		end
	end
end
local minimum_upvw = math.min(var23 / selected.X, var23 / selected.Z)
function module_4_upvr.PreSimulation(arg1, arg2) -- Line 681
	--[[ Upvalues[6]:
		[1]: tbl_13_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: module_upvr_5 (readonly)
		[4]: tbl_5_upvr (readonly)
		[5]: module_5_upvr (readonly)
		[6]: minimum_upvw (read and write)
	]]
	for _, v_10_upvr in tbl_13_upvr.ActiveSellers do
		local var243
		if v_10_upvr._AnimationsPending then
			local tbl_11 = {}
			local tbl_2 = {}
			var243 = tbl_upvr.Greet.Elements
			tbl_2.Spec = var243
			var243 = false
			tbl_2.Looped = var243
			var243 = Enum.AnimationPriority.Action
			tbl_2.Priority = var243
			tbl_11[v_10_upvr._GreetAnimations] = tbl_2
			local tbl_6 = {}
			var243 = tbl_upvr.Idle.Elements
			tbl_6.Spec = var243
			var243 = true
			tbl_6.Looped = var243
			var243 = Enum.AnimationPriority.Idle
			tbl_6.Priority = var243
			tbl_11[v_10_upvr._IdleAnimations] = tbl_6
			var243 = nil
			for i_11, v_11 in tbl_11, nil, var243 do
				local table_create_result1_2 = table.create(#v_11.Spec)
				for i_12, v_12 in v_11.Spec do
					local any_LoadAnimation_result1 = v_10_upvr.Animator:LoadAnimation(v_12.Animation)
					any_LoadAnimation_result1.Looped = v_11.Looped
					any_LoadAnimation_result1.Priority = v_11.Priority
					table_create_result1_2[i_12] = {
						Track = any_LoadAnimation_result1;
						Weight = v_12.Weight;
					}
				end
				module_upvr_5.WeightedListAppend(i_11, table_create_result1_2)
			end
			v_10_upvr._AnimationsPending = nil
		end
		if v_10_upvr._IdleDirty then
			local Track = module_upvr_5.WeightedListGetRandom(v_10_upvr._IdleAnimations).Track
			if v_10_upvr._IdleRunning ~= Track then
				if v_10_upvr._IdleLooped then
					v_10_upvr._IdleLooped:Disconnect()
					v_10_upvr._IdleLooped = nil
				end
				if v_10_upvr._IdleRunning then
					i_11 = tbl_5_upvr
					var243 = i_11.AnimationFadeTime
					v_10_upvr._IdleRunning:Stop(var243)
				end
				v_10_upvr._IdleRunning = Track
				function var243() -- Line 750
					--[[ Upvalues[1]:
						[1]: v_10_upvr (readonly)
					]]
					v_10_upvr._IdleDirty = true
				end
				v_10_upvr._IdleLooped = Track.DidLoop:Connect(var243)
				i_11 = tbl_5_upvr
				var243 = i_11.AnimationFadeTime
				Track:Play(var243)
			end
			v_10_upvr._IdleDirty = nil
		end
		if v_10_upvr._GreetPending then
			local Track_2_upvr = module_upvr_5.WeightedListGetRandom(v_10_upvr._GreetAnimations).Track
			var243 = Track_2_upvr
			module_upvr_5.AnimationTrackPlay(v_10_upvr._RunningAnimations, var243, tbl_5_upvr.AnimationFadeTime)
			var243 = Track_2_upvr.Length
			function var243() -- Line 770
				--[[ Upvalues[2]:
					[1]: Track_2_upvr (readonly)
					[2]: tbl_5_upvr (copied, readonly)
				]]
				Track_2_upvr:Stop(2 * tbl_5_upvr.AnimationFadeTime)
			end
			task.delay(var243 - 2 * tbl_5_upvr.AnimationFadeTime, var243)
			v_10_upvr._GreetPending = nil
		end
		Track_2_upvr = module_5_upvr.Tween
		if v_10_upvr.InProximity then
			var243 = 1
		else
			var243 = 0
		end
		Track_2_upvr(v_10_upvr._RingSizeTween, arg2, var243)
		Track_2_upvr = v_10_upvr._RingSizeTween.Dirty
		if Track_2_upvr then
			Track_2_upvr = v_10_upvr.Ring
			var243 = minimum_upvw * v_10_upvr._RingSizeTween.Value
			Track_2_upvr = Track_2_upvr:ScaleTo
			Track_2_upvr(math.max(var243, module_upvr_5.Epsilon))
		end
	end
end
local module_2_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local module_upvr = require(Modules:WaitForChild("Transparency"))
function module_4_upvr.RenderStepped(arg1, arg2) -- Line 791
	--[[ Upvalues[11]:
		[1]: tbl_13_upvr (readonly)
		[2]: SellerNPCUpdateHighlight_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
		[5]: module_upvr_5 (readonly)
		[6]: module_10_upvr (readonly)
		[7]: module_2_upvr (readonly)
		[8]: module_upvr (readonly)
		[9]: module_upvr_6 (readonly)
		[10]: module_3_upvr (readonly)
		[11]: module_upvr_7 (readonly)
	]]
	for _, v_13_upvr in tbl_13_upvr.ActiveSellers do
		SellerNPCUpdateHighlight_upvr(v_13_upvr)
		if v_13_upvr.InProximity and not tbl_13_upvr.SellerUI_BySellerNPC[v_13_upvr] then
			local tbl_10_upvr = {
				GradientDegrees = 0;
				SwayCycle = 0;
				ColorTween = module_5_upvr.new(tbl_upvr_2.ButtonTheme.Idle.Color, 0.25, Enum.EasingStyle.Quad);
				FadeTween = module_5_upvr.new(1, 0.5, Enum.EasingStyle.Quart);
			}
			local var255 = 2 * (1 - tbl_upvr_2.FrameScale)
			tbl_10_upvr.BillboardGui = module_upvr_5.I("BillboardGui", module_10_upvr.Properties.LayerCollector, {
				Name = "SellerUI";
				Active = true;
				Adornee = v_13_upvr.Object;
				Brightness = 1;
				ExtentsOffset = Vector3.new(0, 1, 0);
				LightInfluence = 0;
				MaxDistance = math.huge;
				Size = UDim2.new(12, 24, 8, 16);
				Parent = module_10_upvr.PlayerGui;
			})
			tbl_10_upvr.CanvasGroup = module_upvr_5.I("CanvasGroup", {
				BackgroundTransparency = 1;
				GroupColor3 = tbl_10_upvr.ColorTween.Value;
				GroupTransparency = module_2_upvr.BackgroundTransparency1;
				Size = UDim2.fromScale(1, 1);
				Parent = tbl_10_upvr.BillboardGui;
			})
			tbl_10_upvr.Frame = module_upvr_5.I("Frame", {
				BackgroundColor3 = module_2_upvr.White;
				Size = UDim2.fromScale(1, tbl_upvr_2.FrameScale);
				ZIndex = 2;
				Parent = tbl_10_upvr.CanvasGroup;
			})
			module_upvr_5.I("UICorner", {
				CornerRadius = UDim.new(0.2, 0);
				Parent = tbl_10_upvr.Frame;
			})
			tbl_10_upvr.Tail = module_upvr_5.I("ImageLabel", module_10_upvr.Properties.Image, {
				Image = module_2_upvr.ChevronDown_256x128;
				ImageColor3 = module_2_upvr.White;
				Position = UDim2.fromScale(0, 1 - var255);
				Size = UDim2.fromScale(1, var255);
				ZIndex = 1;
				Parent = tbl_10_upvr.CanvasGroup;
			})
			tbl_10_upvr.Image = module_upvr_5.I("ImageLabel", module_10_upvr.Properties.Image, {
				AnchorPoint = Vector2.one * 0.5;
				Image = module_2_upvr.SellerPrompt_900x600;
				Position = UDim2.fromScale(0.5, tbl_upvr_2.FrameScale * 0.45);
				Size = UDim2.fromScale(1, tbl_upvr_2.FrameScale);
				ZIndex = 2;
				Parent = tbl_10_upvr.BillboardGui;
			})
			tbl_10_upvr.Glow = module_upvr_5.C(tbl_10_upvr.Image, {
				AnchorPoint = Vector2.one * 0.5;
				Image = module_2_upvr.SellerPrompt_Glow_900x600;
				ZIndex = 1;
				Parent = tbl_10_upvr.BillboardGui;
			})
			tbl_10_upvr.GlowGradient = module_upvr_5.I("UIGradient", {
				Color = ColorSequence.new({ColorSequenceKeypoint.new(0, tbl_upvr_2.GradientColor1), ColorSequenceKeypoint.new(0.3333333333333333, tbl_upvr_2.GradientColor2), ColorSequenceKeypoint.new(0.6666666666666666, tbl_upvr_2.GradientColor2), ColorSequenceKeypoint.new(1, tbl_upvr_2.GradientColor1)});
				Parent = tbl_10_upvr.Glow;
			})
			tbl_10_upvr.CachedOpacities = module_upvr.Create(tbl_10_upvr.BillboardGui)
			module_upvr.Apply(tbl_10_upvr.CachedOpacities, tbl_10_upvr.FadeTween.Value)
			tbl_10_upvr.Input = module_upvr_6.Input.Create(tbl_10_upvr.CanvasGroup)
			tbl_10_upvr.Input.ActivatedCallback = function() -- Line 891
				--[[ Upvalues[5]:
					[1]: v_13_upvr (readonly)
					[2]: tbl_10_upvr (readonly)
					[3]: module_10_upvr (copied, readonly)
					[4]: module_3_upvr (copied, readonly)
					[5]: module_upvr_7 (copied, readonly)
				]]
				local var266 = tbl_10_upvr
				local var267 = var266
				if var267 then
					var267 = var266.CanvasGroup
				end
				if not module_10_upvr.IsInputBlocked(module_10_upvr.Convert.ViewportToScreen(module_3_upvr.GetViewportMouse()), var267, true) then
					module_upvr_7.OpenFromUserRequest(v_13_upvr.LevelData)
				end
			end
			tbl_13_upvr.SellerUI_BySellerNPC[v_13_upvr] = tbl_10_upvr
		end
	end
	for i_14, v_14 in tbl_13_upvr.SellerUI_BySellerNPC do
		tbl_10_upvr = module_5_upvr.Tween
		local var268
		if i_14.InProximity then
			var268 = 0
		else
			var268 = 1
		end
		tbl_10_upvr(v_14.FadeTween, arg2, var268)
		tbl_10_upvr = i_14.Active
		local function INLINED() -- Internal function, doesn't exist in bytecode
			tbl_10_upvr = module_5_upvr.IsAtTarget(v_14.FadeTween, 1)
			return tbl_10_upvr
		end
		if not tbl_10_upvr or INLINED() then
			tbl_10_upvr = module_upvr_6.Input.Destroy
			tbl_10_upvr(v_14.Input)
			tbl_10_upvr = v_14.BillboardGui:Destroy
			tbl_10_upvr()
			tbl_10_upvr = tbl_13_upvr.SellerUI_BySellerNPC
			tbl_10_upvr[i_14] = nil
		else
			tbl_10_upvr = module_upvr_6.GetThemeFromInput
			var268 = tbl_upvr_2
			tbl_10_upvr = tbl_10_upvr(v_14.Input, var268.ButtonTheme)
			local var269 = tbl_10_upvr
			if var269 and var269.Color then
				var268 = arg2
				module_5_upvr.Begin(v_14.ColorTween, var268, var269.Color)
			end
			var268 = arg2
			module_5_upvr.Update(v_14.ColorTween, var268)
			if v_14.ColorTween.Dirty then
				var268 = v_14.ColorTween
				v_14.CanvasGroup.GroupColor3 = var268.Value
			end
			if v_14.FadeTween.Dirty then
				local Value = v_14.FadeTween.Value
				var268 = module_upvr
				var268 = v_14.CachedOpacities
				var268.Apply(var268, Value)
				var268 = (Vector2.yAxis) * ((1 - Value) * 0.5)
				v_14.BillboardGui.SizeOffset = var268
			end
			var268 = v_14.GradientDegrees
			v_14.GradientDegrees = (var268 + arg1 * tbl_upvr_2.GradientRotationDegrees) % 360
			v_14.GlowGradient.Rotation = v_14.GradientDegrees
			var268 = v_14.SwayCycle
			var268 = tbl_upvr_2.SwayPeriod
			v_14.SwayCycle = (var268 + arg1) % var268
			var268 = ((-math.pi*2)) * (v_14.SwayCycle / tbl_upvr_2.SwayPeriod)
			var268 = tbl_upvr_2.SwayDegrees
			local var271 = math.sin(var268) * var268
			v_14.Image.Rotation = var271
			v_14.Glow.Rotation = var271
		end
	end
end
return module_4_upvr