-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:31
-- Luau version 6, Types version 3
-- Time taken: 0.011975 seconds

local module_2_upvr = {}
local tbl_2_upvr = {
	Head = "Head";
	["Left Arm"] = "LeftArm";
	["Left Leg"] = "LeftLeg";
	LeftFoot = "LeftFoot";
	LeftHand = "LeftHand";
	LeftLowerArm = "LeftLowerArm";
	LeftLowerLeg = "LeftLowerLeg";
	LeftUpperArm = "LeftUpperArm";
	LeftUpperLeg = "LeftUpperLeg";
	LowerTorso = "LowerTorso";
	["Right Arm"] = "RightArm";
	["Right Leg"] = "RightLeg";
	RightFoot = "RightFoot";
	RightHand = "RightHand";
	RightLowerArm = "RightLowerArm";
	RightLowerLeg = "RightLowerLeg";
	RightUpperArm = "RightUpperArm";
	RightUpperLeg = "RightUpperLeg";
	Torso = "Torso";
	UpperTorso = "UpperTorso";
}
local function SetRoot_Internal_upvr(arg1, arg2, arg3, arg4) -- Line 126, Named "SetRoot_Internal"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local var4
	if var4 == arg2 then
	else
		if arg3 then
			var4 = arg1._RootOverriden
			if var4 and arg4 then
				do
					return
				end
				-- KONSTANTWARNING: GOTO [16] #13
			end
		else
			var4 = arg2:AddTag
			var4("_R")
		end
		var4 = arg1.Root
		if var4 then
			var4 = arg1._RootOverriden
			if var4 then
				var4 = arg1.Root:RemoveTag
				var4("_R")
			end
		end
		arg1.Root = arg2
		if arg3 then
			var4 = true
		else
			var4 = nil
		end
		arg1._RootOverriden = var4
		var4 = module_2_upvr.Update
		var4(arg1, os.clock())
		var4 = arg1.Signals.RootChanged:Fire
		var4(arg1.Root)
	end
end
local function InitializeCharacterState_upvr(arg1) -- Line 164, Named "InitializeCharacterState"
	--[[ Upvalues[2]:
		[1]: SetRoot_Internal_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	local Character = arg1.Character
	local tbl_upvr = {
		Backpack = {
			Field = "Backpack";
			ClassName = "Backpack";
		};
		HumanoidRootPart = {
			Field = "Root";
			ClassName = "BasePart";
		};
		Humanoid = {
			Field = "Humanoid";
			ClassName = "Humanoid";
		};
	}
	local tbl = {
		Field = "Animator";
		ClassName = "Animator";
	}
	tbl_upvr.Animator = tbl
	function tbl(arg1_2) -- Line 187, Named "IndexField"
		--[[ Upvalues[3]:
			[1]: tbl_upvr (readonly)
			[2]: SetRoot_Internal_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local Name = arg1_2.Name
		local var25
		if var25 then
			Name = "HumanoidRootPart"
		end
		if Name ~= "HumanoidRootPart" then
			var25 = false
		else
			var25 = true
		end
		local var26 = tbl_upvr[Name]
		if var26 and arg1_2:IsA(var26.ClassName) then
			if var25 then
				local var27 = not arg1_2:HasTag("_R")
				SetRoot_Internal_upvr(arg1, arg1_2, var27, var27)
			else
				arg1[var26.Field] = arg1_2
			end
			tbl_upvr[Name] = nil
		end
	end
	local var23_upvr = tbl
	for _, v in Character:GetDescendants(), nil do
		var23_upvr(v)
		if v:IsA("BasePart") then
			local var29 = tbl_2_upvr[v.Name]
			if var29 then
				arg1.Body[var29] = v
			end
			if v:HasTag("_R") then
				SetRoot_Internal_upvr(arg1, v, false, false)
			end
		end
	end
	for _, v_2 in arg1.Player:GetChildren() do
		var23_upvr(v_2)
	end
	arg1.Connections[#arg1.Connections + 1] = arg1.Character.DescendantAdded:Connect(function(arg1_3) -- Line 213, Named "IndexBody"
		--[[ Upvalues[3]:
			[1]: tbl_2_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: SetRoot_Internal_upvr (copied, readonly)
		]]
		if arg1_3:IsA("BasePart") then
			local var28 = tbl_2_upvr[arg1_3.Name]
			if var28 then
				arg1.Body[var28] = arg1_3
			end
			if arg1_3:HasTag("_R") then
				SetRoot_Internal_upvr(arg1, arg1_3, false, false)
			end
		end
	end)
	if next(tbl_upvr) ~= nil then
		local function IndexRemainingFields(arg1_4) -- Line 242
			--[[ Upvalues[3]:
				[1]: var23_upvr (readonly)
				[2]: tbl_upvr (readonly)
				[3]: arg1 (readonly)
			]]
			var23_upvr(arg1_4)
			if next(tbl_upvr) == nil then
				if arg1._InitializeConnections then
					for _, v_3 in arg1._InitializeConnections do
						v_3:Disconnect()
					end
					arg1._InitializeConnections = nil
				end
				if arg1._InitializeThread and coroutine.status(arg1._InitializeThread) == "suspended" then
					task.spawn(arg1._InitializeThread)
				end
			end
		end
		arg1._InitializeConnections = {Character.DescendantAdded:Connect(IndexRemainingFields), arg1.Player.ChildAdded:Connect(IndexRemainingFields)}
		coroutine.yield()
	end
	arg1.Initialized = true
	arg1._InitializeThread = nil
	local var36 = false
	if arg1.Humanoid:GetState() ~= Enum.HumanoidStateType.Dead then
		if 0 >= arg1.Humanoid.Health then
			var36 = false
		else
			var36 = true
		end
	end
	if var36 ~= arg1.Alive then
		arg1.Alive = var36
		arg1.AliveChangedAt = os.clock()
	end
	arg1.Connections[#arg1.Connections + 1] = arg1.Humanoid:GetPropertyChangedSignal("RootPart"):Connect(function() -- Line 279, Named "ResolveNaturalRoot"
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: SetRoot_Internal_upvr (copied, readonly)
		]]
		local RootPart_2 = arg1.Humanoid.RootPart
		if RootPart_2 then
			SetRoot_Internal_upvr(arg1, RootPart_2, true, true)
		end
	end)
	if arg1.Alive then
		arg1.Connections[#arg1.Connections + 1] = arg1.Humanoid.Died:Connect(function() -- Line 294
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.Alive then
				arg1.Alive = false
				arg1.AliveChangedAt = os.clock()
			end
		end)
	end
	for _, v_4 in arg1._YieldedThreads do
		if coroutine.status(v_4) == "suspended" then
			task.spawn(v_4, arg1)
		end
	end
end
local module_upvr = require(game:GetService("ReplicatedStorage"):WaitForChild("Modules"):WaitForChild("Signal"))
function module_2_upvr.Create(arg1, arg2, ...) -- Line 309
	--[[ Upvalues[2]:
		[1]: InitializeCharacterState_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local os_clock_result1 = os.clock()
	local module = {
		_InitializeThread = coroutine.create(InitializeCharacterState_upvr);
		_YieldedThreads = {};
		Alive = false;
		AliveChangedAt = os_clock_result1;
		Destroyed = false;
		Initialized = false;
	}
	module.Character = arg2
	module.Player = arg1
	module.Animator = nil
	module.Backpack = nil
	module.Humanoid = nil
	module.Root = nil
	module.AnimationTracks = {}
	module.Connections = {}
	module.Body = {}
	module.RootRemoteState = {
		Dirty = false;
		ReceivedAt = os_clock_result1;
		ReceivedCFrame = CFrame.identity;
		UpdatedAt = os_clock_result1;
		LastCFrame = CFrame.identity;
		LastDirection = Vector3.new(0, 0, 0);
		LastDistance = 0;
		LastDuration = 0;
		LastSpeed = 0;
	}
	module.Flags = {}
	module.Signals = {
		RootChanged = module_upvr.new();
	}
	for i_5, v_5 in {...} do
		module._YieldedThreads[i_5] = coroutine.create(v_5)
	end
	task.defer(module._InitializeThread, module)
	return module
end
local function StopAndDisconnect_upvr(arg1) -- Line 367, Named "StopAndDisconnect"
	if arg1._InitializeConnections then
		for _, v_6 in arg1._InitializeConnections do
			v_6:Disconnect()
		end
		arg1._InitializeConnections = nil
	end
	if arg1._InitializeThread then
		if coroutine.status(arg1._InitializeThread) == "suspended" then
			task.cancel(arg1._InitializeThread)
		end
		arg1._InitializeThread = nil
	end
	for _, v_7 in arg1.AnimationTracks do
		v_7:Stop()
	end
	table.clear(arg1.AnimationTracks)
	for _, v_8 in arg1.Connections do
		v_8:Disconnect()
	end
	table.clear(arg1.Connections)
	for _, v_9 in arg1.Signals do
		v_9:DisconnectAll()
	end
end
function module_2_upvr.Destroy(arg1, arg2) -- Line 396
	--[[ Upvalues[1]:
		[1]: StopAndDisconnect_upvr (readonly)
	]]
	arg1.Destroyed = true
	StopAndDisconnect_upvr(arg1)
	for _, v_10 in arg1._YieldedThreads do
		if coroutine.status(v_10) == "suspended" then
			task.spawn(v_10, arg1)
		end
	end
	table.clear(arg1._YieldedThreads)
	if arg2 then
		arg1.Character:Destroy()
		if arg1.Backpack then
			arg1.Backpack:Destroy()
		end
	end
end
local function _(arg1) -- Line 417, Named "AwaitStateReady"
	if not arg1.Initialized and not arg1.Destroyed then
		arg1._YieldedThreads[#arg1._YieldedThreads + 1] = coroutine.running()
		coroutine.yield()
	end
	local Initialized_2 = arg1.Initialized
	if Initialized_2 then
		Initialized_2 = not arg1.Destroyed
	end
	return Initialized_2
end
function module_2_upvr.KillCharacter(arg1) -- Line 425
	if not arg1.Initialized and not arg1.Destroyed then
		arg1._YieldedThreads[#arg1._YieldedThreads + 1] = coroutine.running()
		coroutine.yield()
	end
	local Initialized = arg1.Initialized
	if Initialized then
		Initialized = not arg1.Destroyed
	end
	if Initialized then
		arg1.Humanoid.Health = 0
		arg1.Humanoid:ChangeState(Enum.HumanoidStateType.Dead)
		arg1.Alive = false
		arg1.AliveChangedAt = os.clock()
	end
end
function module_2_upvr.LoadAnimation(arg1, arg2) -- Line 439
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 3 start (CF ANALYSIS FAILED)
	arg1._YieldedThreads[#arg1._YieldedThreads + 1] = coroutine.running()
	coroutine.yield()
	-- KONSTANTERROR: [7] 6. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 15. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 15. Error Block 4 end (CF ANALYSIS FAILED)
end
function module_2_upvr.ResolveRoot(arg1) -- Line 464
	--[[ Upvalues[1]:
		[1]: SetRoot_Internal_upvr (readonly)
	]]
	if arg1.Humanoid then
		local RootPart_3 = arg1.Humanoid.RootPart
		if RootPart_3 then
			SetRoot_Internal_upvr(arg1, RootPart_3, true, false)
		end
	end
end
function module_2_upvr.SetRoot(arg1, arg2) -- Line 483
	--[[ Upvalues[1]:
		[1]: SetRoot_Internal_upvr (readonly)
	]]
	if typeof(arg2) ~= "Instance" then
		error(string.format("BasePart expected, received %s", typeof(arg2)), 2)
	elseif not arg2:IsA("BasePart") then
		error(string.format("BasePart expected, received %s", arg2.ClassName), 2)
	elseif not arg2:IsDescendantOf(arg1.Character) then
		error("Root is not descendant of character", 2)
	end
	SetRoot_Internal_upvr(arg1, arg2, false, false)
end
function module_2_upvr.StopAnimation(arg1, arg2, arg3) -- Line 499
	local var69
	for i_11, v_11 in arg1.AnimationTracks do
		if v_11.Animation == arg2 then
			var69 = true
			v_11:Stop(arg3)
			table.remove(arg1.AnimationTracks, i_11)
			return var69
		end
	end
	return var69
end
function module_2_upvr.StopAnimationTrack(arg1, arg2, arg3) -- Line 522
	local var70 = false
	local table_find_result1 = table.find(arg1.AnimationTracks, arg2)
	if table_find_result1 then
		var70 = true
		arg2:Stop(arg3)
		table.remove(arg1.AnimationTracks, table_find_result1)
	end
	return var70
end
function module_2_upvr.SetAnchored(arg1, arg2) -- Line 541
	local var72
	if arg1.Initialized and arg1.Root.Anchored ~= arg2 then
		var72 = true
		arg1.Root.Anchored = arg2
	end
	return var72
end
function module_2_upvr.SetWalkSpeed(arg1, arg2, arg3) -- Line 558
	if arg3 then
		if not arg1.Initialized and not arg1.Destroyed then
			arg1._YieldedThreads[#arg1._YieldedThreads + 1] = coroutine.running()
			coroutine.yield()
		end
	end
	local var73
	if arg1.Initialized and arg1.Humanoid.WalkSpeed ~= arg2 then
		var73 = true
		arg1.Humanoid.WalkSpeed = arg2
	end
	return var73
end
function module_2_upvr.Update(arg1, arg2) -- Line 590
	if arg1.Root then
		local RootRemoteState = arg1.RootRemoteState
		local var75 = arg2 - RootRemoteState.UpdatedAt
		local Root = arg1.Root
		local ReceiveAge = Root.ReceiveAge
		if ReceiveAge >= var75 then
			Root = false
		else
			Root = true
		end
		RootRemoteState.Dirty = Root
		if RootRemoteState.Dirty then
			local CFrame = arg1.Root.CFrame
			local var79 = CFrame.Position - RootRemoteState.ReceivedCFrame.Position
			local Magnitude = var79.Magnitude
			RootRemoteState.LastCFrame = RootRemoteState.ReceivedCFrame
			RootRemoteState.LastDirection = var79
			RootRemoteState.LastDistance = Magnitude
			RootRemoteState.LastDuration = var75
			RootRemoteState.LastSpeed = Magnitude / var75
			RootRemoteState.ReceivedAt = arg2 - ReceiveAge
			RootRemoteState.ReceivedCFrame = CFrame
			RootRemoteState.UpdatedAt = arg2
		end
	end
end
return module_2_upvr