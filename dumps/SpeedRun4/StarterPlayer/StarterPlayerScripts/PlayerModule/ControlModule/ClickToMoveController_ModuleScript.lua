-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:01
-- Luau version 6, Types version 3
-- Time taken: 0.042692 seconds

local module = require(game:GetService("ReplicatedStorage"):WaitForChild("FeatureFlags"))
local UserInputService_upvr = game:GetService("UserInputService")
local Players_upvr = game:GetService("Players")
local Workspace_upvr = game:GetService("Workspace")
local var5_upvw = true
local var6_upvw = true
local var7_upvw = false
local var8_upvw = 1
local var9_upvw = 8
local tbl_3_upvr = {
	[Enum.KeyCode.W] = true;
	[Enum.KeyCode.A] = true;
	[Enum.KeyCode.S] = true;
	[Enum.KeyCode.D] = true;
	[Enum.KeyCode.Up] = true;
	[Enum.KeyCode.Down] = true;
}
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local module_2_upvr = require(script.Parent:WaitForChild("ClickToMoveDisplay"))
local tbl_upvr = {}
local function FindCharacterAncestor_upvr(arg1) -- Line 53, Named "FindCharacterAncestor"
	--[[ Upvalues[1]:
		[1]: FindCharacterAncestor_upvr (readonly)
	]]
	if arg1 then
		local class_Humanoid_3 = arg1:FindFirstChildOfClass("Humanoid")
		if class_Humanoid_3 then
			return arg1, class_Humanoid_3
		end
		return FindCharacterAncestor_upvr(arg1.Parent)
	end
end
tbl_upvr.FindCharacterAncestor = FindCharacterAncestor_upvr
local function findPlayerHumanoid_upvr(arg1, arg2, arg3) -- Line 65, Named "Raycast"
	--[[ Upvalues[3]:
		[1]: Workspace_upvr (readonly)
		[2]: FindCharacterAncestor_upvr (readonly)
		[3]: findPlayerHumanoid_upvr (readonly)
	]]
	local var25 = arg3
	if not var25 then
		var25 = {}
	end
	local var26 = var25
	local any_FindPartOnRayWithIgnoreList_result1_3, any_FindPartOnRayWithIgnoreList_result2_3, any_FindPartOnRayWithIgnoreList_result3_2, any_FindPartOnRayWithIgnoreList_result4_2 = Workspace_upvr:FindPartOnRayWithIgnoreList(arg1, var26)
	if any_FindPartOnRayWithIgnoreList_result1_3 then
		if arg2 then
			local var31
			if any_FindPartOnRayWithIgnoreList_result1_3.CanCollide == false then
				if any_FindPartOnRayWithIgnoreList_result1_3 then
					local class_Humanoid_4 = any_FindPartOnRayWithIgnoreList_result1_3:FindFirstChildOfClass("Humanoid")
					if class_Humanoid_4 then
						var31 = class_Humanoid_4
					else
						local _, FindCharacterAncestor_result2 = FindCharacterAncestor_upvr(any_FindPartOnRayWithIgnoreList_result1_3.Parent)
						var31 = FindCharacterAncestor_result2
					end
				else
					var31 = nil
				end
				if var31 == nil then
					table.insert(var26, any_FindPartOnRayWithIgnoreList_result1_3)
					return findPlayerHumanoid_upvr(arg1, arg2, var26)
				end
			end
		end
		return any_FindPartOnRayWithIgnoreList_result1_3, any_FindPartOnRayWithIgnoreList_result2_3, any_FindPartOnRayWithIgnoreList_result3_2, any_FindPartOnRayWithIgnoreList_result4_2
	end
	return nil, nil
end
tbl_upvr.Raycast = findPlayerHumanoid_upvr
FindCharacterAncestor_upvr = {}
local var35_upvr = FindCharacterAncestor_upvr
function findPlayerHumanoid_upvr(arg1) -- Line 86, Named "findPlayerHumanoid"
	--[[ Upvalues[1]:
		[1]: var35_upvr (readonly)
	]]
	local var36 = arg1
	if var36 then
		var36 = arg1.Character
	end
	if var36 then
		local var37 = var35_upvr[arg1]
		if var37 and var37.Parent == var36 then
			return var37
		end
		var35_upvr[arg1] = nil
		local class_Humanoid_7 = var36:FindFirstChildOfClass("Humanoid")
		if class_Humanoid_7 then
			var35_upvr[arg1] = class_Humanoid_7
		end
		return class_Humanoid_7
	end
end
local var39_upvw
local var40_upvw
local function _() -- Line 110, Named "GetCharacter"
	--[[ Upvalues[1]:
		[1]: LocalPlayer_upvr (readonly)
	]]
	local var41 = LocalPlayer_upvr
	if var41 then
		var41 = LocalPlayer_upvr.Character
	end
	return var41
end
local var42_upvw
local var43_upvw
local CollectionService_upvr = game:GetService("CollectionService")
local function UpdateIgnoreTag_upvr(arg1) -- Line 114, Named "UpdateIgnoreTag"
	--[[ Upvalues[6]:
		[1]: var40_upvw (read and write)
		[2]: var42_upvw (read and write)
		[3]: var43_upvw (read and write)
		[4]: var39_upvw (read and write)
		[5]: LocalPlayer_upvr (readonly)
		[6]: CollectionService_upvr (readonly)
	]]
	if arg1 == var40_upvw then
	else
		if var42_upvw then
			var42_upvw:Disconnect()
			var42_upvw = nil
		end
		if var43_upvw then
			var43_upvw:Disconnect()
			var43_upvw = nil
		end
		var40_upvw = arg1
		local tbl = {}
		local var50 = LocalPlayer_upvr
		if var50 then
			var50 = LocalPlayer_upvr.Character
		end
		tbl[1] = var50
		var39_upvw = tbl
		if var40_upvw ~= nil then
			for _, v_6 in ipairs(CollectionService_upvr:GetTagged(var40_upvw)) do
				table.insert(var39_upvw, v_6)
			end
			var42_upvw = CollectionService_upvr:GetInstanceAddedSignal(var40_upvw):Connect(function(arg1_2) -- Line 134
				--[[ Upvalues[1]:
					[1]: var39_upvw (copied, read and write)
				]]
				table.insert(var39_upvw, arg1_2)
			end)
			var43_upvw = CollectionService_upvr:GetInstanceRemovedSignal(var40_upvw):Connect(function(arg1_3) -- Line 138
				--[[ Upvalues[1]:
					[1]: var39_upvw (copied, read and write)
				]]
				for i_7 = 1, #var39_upvw do
					if var39_upvw[i_7] == arg1_3 then
						var39_upvw[i_7] = var39_upvw[#var39_upvw]
						table.remove(var39_upvw)
						return
					end
				end
			end)
		end
	end
end
local function _() -- Line 150, Named "getIgnoreList"
	--[[ Upvalues[2]:
		[1]: var39_upvw (read and write)
		[2]: LocalPlayer_upvr (readonly)
	]]
	if var39_upvw then
		return var39_upvw
	end
	var39_upvw = {}
	assert(var39_upvw, "")
	local var57 = LocalPlayer_upvr
	if var57 then
		var57 = LocalPlayer_upvr.Character
	end
	table.insert(var39_upvw, var57)
	return var39_upvw
end
local function _(arg1, arg2) -- Line 160, Named "minV"
	return Vector3.new(math.min(arg1.X, arg2.X), math.min(arg1.Y, arg2.Y), math.min(arg1.Z, arg2.Z))
end
local function _(arg1, arg2) -- Line 163, Named "maxV"
	return Vector3.new(math.max(arg1.X, arg2.X), math.max(arg1.Y, arg2.Y), math.max(arg1.Z, arg2.Z))
end
local function getCollidableExtentsSize_upvr(arg1) -- Line 166, Named "getCollidableExtentsSize"
	if arg1 == nil or arg1.PrimaryPart == nil then return end
	assert(arg1, "")
	assert(arg1.PrimaryPart, "")
	for _, v in pairs(arg1:GetDescendants()) do
		if v:IsA("BasePart") and v.CanCollide then
			local vector3 = Vector3.new(v.Size.X / 2, v.Size.Y / 2, v.Size.Z / 2)
			for _, v_2 in ipairs({Vector3.new(vector3.X, vector3.Y, vector3.Z), Vector3.new(vector3.X, vector3.Y, -vector3.Z), Vector3.new(vector3.X, -vector3.Y, vector3.Z), Vector3.new(vector3.X, -vector3.Y, -vector3.Z), Vector3.new(-vector3.X, vector3.Y, vector3.Z), Vector3.new(-vector3.X, vector3.Y, -vector3.Z), Vector3.new(-vector3.X, -vector3.Y, vector3.Z), Vector3.new(-vector3.X, -vector3.Y, -vector3.Z)}) do
				local var74 = arg1.PrimaryPart.CFrame:Inverse() * v.CFrame * v_2
				local const_vector = Vector3.new(math.huge, math.huge, math.huge)
				local const_vector_2 = Vector3.new((-math.huge), (-math.huge), (-math.huge))
				local var77
			end
		end
	end
	local var78 = Vector3.new(math.max(const_vector_2.X, var74.X), math.max(const_vector_2.Y, var74.Y), math.max(const_vector_2.Z, var74.Z)) - Vector3.new(math.min(const_vector.X, var74.X), math.min(const_vector.Y, var74.Y), math.min(const_vector.Z, var74.Z))
	if var78.X < 0 or var78.Y < 0 or var78.Z < 0 then
		return nil
	end
	return var78
end
local UserExcludeNonCollidableForPathfinding_upvr = module.UserExcludeNonCollidableForPathfinding
local UserClickToMoveSupportAgentCanClimb2_upvr = module.UserClickToMoveSupportAgentCanClimb2
local PathfindingService_upvr = game:GetService("PathfindingService")
local function Pather_upvr(arg1, arg2, arg3) -- Line 201, Named "Pather"
	--[[ Upvalues[13]:
		[1]: var7_upvw (read and write)
		[2]: LocalPlayer_upvr (readonly)
		[3]: var35_upvr (readonly)
		[4]: var8_upvw (read and write)
		[5]: UserExcludeNonCollidableForPathfinding_upvr (readonly)
		[6]: getCollidableExtentsSize_upvr (readonly)
		[7]: UserClickToMoveSupportAgentCanClimb2_upvr (readonly)
		[8]: PathfindingService_upvr (readonly)
		[9]: var5_upvw (read and write)
		[10]: module_2_upvr (readonly)
		[11]: var9_upvw (read and write)
		[12]: Workspace_upvr (readonly)
		[13]: var39_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module_upvr_2 = {}
	local var133
	if arg3 ~= nil then
		local _ = arg3
	else
	end
	module_upvr_2.Cancelled = false
	module_upvr_2.Started = false
	module_upvr_2.Finished = Instance.new("BindableEvent")
	module_upvr_2.PathFailed = Instance.new("BindableEvent")
	module_upvr_2.PathComputing = false
	module_upvr_2.PathComputed = false
	module_upvr_2.OriginalTargetPoint = arg1
	module_upvr_2.TargetPoint = arg1
	module_upvr_2.TargetSurfaceNormal = arg2
	module_upvr_2.DiedConn = nil
	module_upvr_2.SeatedConn = nil
	module_upvr_2.BlockedConn = nil
	module_upvr_2.TeleportedConn = nil
	module_upvr_2.CurrentPoint = 0
	module_upvr_2.HumanoidOffsetFromPath = Vector3.new(0, 0, 0)
	module_upvr_2.CurrentWaypointPosition = nil
	module_upvr_2.CurrentWaypointPlaneNormal = Vector3.new(0, 0, 0)
	module_upvr_2.CurrentWaypointPlaneDistance = 0
	module_upvr_2.CurrentWaypointNeedsJump = false
	module_upvr_2.CurrentHumanoidPosition = Vector3.new(0, 0, 0)
	module_upvr_2.CurrentHumanoidVelocity = 0
	module_upvr_2.NextActionMoveDirection = Vector3.new(0, 0, 0)
	module_upvr_2.NextActionJump = false
	module_upvr_2.Timeout = 0
	local var135 = LocalPlayer_upvr
	var133 = var135
	if var133 then
		var133 = var135.Character
	end
	if var133 then
		local var136 = var35_upvr[var135]
		if var136 and var136.Parent == var133 then
		else
			var35_upvr[var135] = nil
			local class_Humanoid_2 = var133:FindFirstChildOfClass("Humanoid")
			if class_Humanoid_2 then
				var35_upvr[var135] = class_Humanoid_2
			end
		end
	else
	end
	module_upvr_2.Humanoid = nil
	module_upvr_2.OriginPoint = nil
	module_upvr_2.AgentCanFollowPath = false
	module_upvr_2.DirectPath = false
	module_upvr_2.DirectPathRiseFirst = false
	module_upvr_2.stopTraverseFunc = nil
	module_upvr_2.setPointFunc = nil
	module_upvr_2.pointList = nil
	if module_upvr_2.Humanoid then
		local RootPart = module_upvr_2.Humanoid.RootPart
		local var139
	end
	if RootPart then
		var133 = RootPart.CFrame
		module_upvr_2.OriginPoint = var133.Position
		var133 = 5
		var139 = module_upvr_2.Humanoid
		local SeatPart = var139.SeatPart
		if SeatPart then
			var139 = SeatPart:IsA("VehicleSeat")
			if var139 then
				var139 = SeatPart:FindFirstAncestorOfClass("Model")
				if var139 then
					var139.PrimaryPart = SeatPart
					if true then
						var133 = var8_upvw * var139:GetExtentsSize().Y
						module_upvr_2.AgentCanFollowPath = true
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						module_upvr_2.DirectPath = true
					end
					var139.PrimaryPart = var139.PrimaryPart
					-- KONSTANTWARNING: GOTO [282] #200
				end
				-- KONSTANTWARNING: GOTO [282] #200
			end
		end
		var139 = nil
		local var142
		if UserExcludeNonCollidableForPathfinding_upvr then
			local var143 = LocalPlayer_upvr
			if var143 then
				var143 = LocalPlayer_upvr.Character
			end
			if var143 ~= nil then
				var139 = getCollidableExtentsSize_upvr(var143)
			end
		end
		if var139 == nil then
			var143 = LocalPlayer_upvr
			local var144 = var143
			if var144 then
				var144 = LocalPlayer_upvr.Character
			end
			var139 = var144:GetExtentsSize()
		end
		assert(var139, "")
		var133 = var8_upvw * var139.Y
		if 0 >= module_upvr_2.Humanoid.JumpPower then
		else
		end
		module_upvr_2.AgentCanFollowPath = true
		module_upvr_2.DirectPath = var7_upvw
		module_upvr_2.DirectPathRiseFirst = module_upvr_2.Humanoid.Sit
		var139 = UserClickToMoveSupportAgentCanClimb2_upvr
		if var139 then
			var139 = PathfindingService_upvr
			var139 = var139:CreatePath({
				AgentRadius = var8_upvw * 0.5 * math.sqrt(var139.X * var139.X + var139.Z * var139.Z);
				AgentHeight = var133;
				AgentCanJump = true;
				AgentCanClimb = true;
			})
			module_upvr_2.pathResult = var139
		else
			var139 = PathfindingService_upvr
			local tbl_5 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_5.AgentRadius = var8_upvw * 0.5 * math.sqrt(var139.X * var139.X + var139.Z * var139.Z)
			tbl_5.AgentHeight = var133
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_5.AgentCanJump = true
			var139 = var139:CreatePath(tbl_5)
			module_upvr_2.pathResult = var139
		end
	end
	function module_upvr_2.Cleanup(arg1_18) -- Line 319
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		if module_upvr_2.stopTraverseFunc then
			module_upvr_2.stopTraverseFunc()
			module_upvr_2.stopTraverseFunc = nil
		end
		if module_upvr_2.BlockedConn then
			module_upvr_2.BlockedConn:Disconnect()
			module_upvr_2.BlockedConn = nil
		end
		if module_upvr_2.DiedConn then
			module_upvr_2.DiedConn:Disconnect()
			module_upvr_2.DiedConn = nil
		end
		if module_upvr_2.SeatedConn then
			module_upvr_2.SeatedConn:Disconnect()
			module_upvr_2.SeatedConn = nil
		end
		if module_upvr_2.TeleportedConn then
			module_upvr_2.TeleportedConn:Disconnect()
			module_upvr_2.TeleportedConn = nil
		end
		module_upvr_2.Started = false
	end
	function module_upvr_2.Cancel(arg1_19) -- Line 348
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		module_upvr_2.Cancelled = true
		module_upvr_2:Cleanup()
	end
	function module_upvr_2.IsActive(arg1_20) -- Line 353
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		local AgentCanFollowPath_2 = module_upvr_2.AgentCanFollowPath
		if AgentCanFollowPath_2 then
			AgentCanFollowPath_2 = module_upvr_2.Started
			if AgentCanFollowPath_2 then
				AgentCanFollowPath_2 = not module_upvr_2.Cancelled
			end
		end
		return AgentCanFollowPath_2
	end
	function module_upvr_2.OnPathInterrupted(arg1_21) -- Line 357
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		module_upvr_2.Cancelled = true
		module_upvr_2:OnPointReached(false)
	end
	function module_upvr_2.ComputePath(arg1_22) -- Line 363
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if module_upvr_2.OriginPoint then
			if module_upvr_2.PathComputed or module_upvr_2.PathComputing then return end
			module_upvr_2.PathComputing = true
			if module_upvr_2.AgentCanFollowPath then
				local var148
				if module_upvr_2.DirectPath then
					var148 = {}
					if not module_upvr_2.DirectPathRiseFirst or not Enum.PathWaypointAction.Jump then
					end
					var148[1] = PathWaypoint.new(module_upvr_2.OriginPoint, Enum.PathWaypointAction.Walk)
					var148[2] = PathWaypoint.new(module_upvr_2.TargetPoint, Enum.PathWaypointAction.Walk)
					module_upvr_2.pointList = var148
					var148 = true
					module_upvr_2.PathComputed = var148
				else
					var148 = module_upvr_2
					var148.pathResult:ComputeAsync(module_upvr_2.OriginPoint, module_upvr_2.TargetPoint)
					var148 = module_upvr_2.pathResult:GetWaypoints()
					module_upvr_2.pointList = var148
					var148 = module_upvr_2.pathResult.Blocked
					var148 = var148:Connect(function(arg1_23) -- Line 377
						--[[ Upvalues[1]:
							[1]: module_upvr_2 (copied, readonly)
						]]
						module_upvr_2:OnPathBlocked(arg1_23)
					end)
					module_upvr_2.BlockedConn = var148
					if module_upvr_2.pathResult.Status ~= Enum.PathStatus.Success then
						var148 = false
					else
						var148 = true
					end
					module_upvr_2.PathComputed = var148
				end
			end
			module_upvr_2.PathComputing = false
		end
	end
	function module_upvr_2.IsValidPath(arg1_24) -- Line 385
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		module_upvr_2:ComputePath()
		local PathComputed_2 = module_upvr_2.PathComputed
		if PathComputed_2 then
			PathComputed_2 = module_upvr_2.AgentCanFollowPath
		end
		return PathComputed_2
	end
	module_upvr_2.Recomputing = false
	function module_upvr_2.OnPathBlocked(arg1_25, arg2_8) -- Line 391
		--[[ Upvalues[3]:
			[1]: module_upvr_2 (readonly)
			[2]: var5_upvw (copied, read and write)
			[3]: module_2_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var151
		if module_upvr_2.CurrentPoint > arg2_8 then
			var151 = false
		else
			var151 = true
		end
		if not var151 or module_upvr_2.Recomputing then
		else
			module_upvr_2.Recomputing = true
			if module_upvr_2.stopTraverseFunc then
				module_upvr_2.stopTraverseFunc()
				module_upvr_2.stopTraverseFunc = nil
			end
			module_upvr_2.OriginPoint = module_upvr_2.Humanoid.RootPart.CFrame.p
			module_upvr_2.pathResult:ComputeAsync(module_upvr_2.OriginPoint, module_upvr_2.TargetPoint)
			module_upvr_2.pointList = module_upvr_2.pathResult:GetWaypoints()
			if 0 < #module_upvr_2.pointList then
				module_upvr_2.HumanoidOffsetFromPath = module_upvr_2.pointList[1].Position - module_upvr_2.OriginPoint
			end
			if module_upvr_2.pathResult.Status ~= Enum.PathStatus.Success then
			else
			end
			module_upvr_2.PathComputed = true
			if var5_upvw then
				local any_CreatePathDisplay_result1_3, any_CreatePathDisplay_result2 = module_2_upvr.CreatePathDisplay(module_upvr_2.pointList)
				module_upvr_2.stopTraverseFunc = any_CreatePathDisplay_result1_3
				module_upvr_2.setPointFunc = any_CreatePathDisplay_result2
			end
			if module_upvr_2.PathComputed then
				module_upvr_2.CurrentPoint = 1
				module_upvr_2:OnPointReached(true)
			else
				module_upvr_2.PathFailed:Fire()
				module_upvr_2:Cleanup()
			end
			module_upvr_2.Recomputing = false
		end
	end
	local function OnRenderStepped(arg1_26, arg2_9) -- Line 427
		--[[ Upvalues[2]:
			[1]: module_upvr_2 (readonly)
			[2]: var9_upvw (copied, read and write)
		]]
		if module_upvr_2.Started then
			if not module_upvr_2.Cancelled then
				module_upvr_2.Timeout += arg2_9
				if var9_upvw < module_upvr_2.Timeout then
					module_upvr_2:OnPointReached(false)
					return
				end
				module_upvr_2.CurrentHumanoidPosition = module_upvr_2.Humanoid.RootPart.Position + module_upvr_2.HumanoidOffsetFromPath
				module_upvr_2.CurrentHumanoidVelocity = module_upvr_2.Humanoid.RootPart.Velocity
				while module_upvr_2.Started and module_upvr_2:IsCurrentWaypointReached() do
					module_upvr_2:OnPointReached(true)
				end
				if module_upvr_2.Started then
					module_upvr_2.NextActionMoveDirection = module_upvr_2.CurrentWaypointPosition - module_upvr_2.CurrentHumanoidPosition
					if 0.000001 < module_upvr_2.NextActionMoveDirection.Magnitude then
						module_upvr_2.NextActionMoveDirection = module_upvr_2.NextActionMoveDirection.Unit
					else
						module_upvr_2.NextActionMoveDirection = Vector3.new(0, 0, 0)
					end
					if module_upvr_2.CurrentWaypointNeedsJump then
						module_upvr_2.NextActionJump = true
						module_upvr_2.CurrentWaypointNeedsJump = false
						return
					end
					module_upvr_2.NextActionJump = false
				end
			end
		end
	end
	module_upvr_2.OnRenderStepped = OnRenderStepped
	function module_upvr_2.IsCurrentWaypointReached(arg1_27) -- Line 465
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		local var154 = false
		if module_upvr_2.CurrentWaypointPlaneNormal ~= Vector3.new(0, 0, 0) then
			if module_upvr_2.CurrentWaypointPlaneNormal:Dot(module_upvr_2.CurrentHumanoidPosition) - module_upvr_2.CurrentWaypointPlaneDistance >= math.max(1, 0.0625 * -module_upvr_2.CurrentWaypointPlaneNormal:Dot(module_upvr_2.CurrentHumanoidVelocity)) then
				var154 = false
			else
				var154 = true
			end
		else
			var154 = true
		end
		if var154 then
			module_upvr_2.CurrentWaypointPosition = nil
			module_upvr_2.CurrentWaypointPlaneNormal = Vector3.new(0, 0, 0)
			module_upvr_2.CurrentWaypointPlaneDistance = 0
		end
		return var154
	end
	function module_upvr_2.OnPointReached(arg1_28, arg2_10) -- Line 491
		--[[ Upvalues[1]:
			[1]: module_upvr_2 (readonly)
		]]
		if arg2_10 and not module_upvr_2.Cancelled then
			if module_upvr_2.setPointFunc then
				module_upvr_2.setPointFunc(module_upvr_2.CurrentPoint)
			end
			local var155 = module_upvr_2.CurrentPoint + 1
			if #module_upvr_2.pointList < var155 then
				if module_upvr_2.stopTraverseFunc then
					module_upvr_2.stopTraverseFunc()
				end
				module_upvr_2.Finished:Fire()
				module_upvr_2:Cleanup()
			else
				local var156 = module_upvr_2.pointList[module_upvr_2.CurrentPoint]
				local var157 = module_upvr_2.pointList[var155]
				local any_GetState_result1_3 = module_upvr_2.Humanoid:GetState()
				local var159 = true
				if any_GetState_result1_3 ~= Enum.HumanoidStateType.FallingDown then
					var159 = true
					if any_GetState_result1_3 ~= Enum.HumanoidStateType.Freefall then
						if any_GetState_result1_3 ~= Enum.HumanoidStateType.Jumping then
							var159 = false
						else
							var159 = true
						end
					end
				end
				if var159 then
					local var160
					if var157.Action ~= Enum.PathWaypointAction.Jump then
						var160 = false
					else
						var160 = true
					end
					if not var160 and 1 < module_upvr_2.CurrentPoint then
						local var161 = var156.Position - module_upvr_2.pointList[module_upvr_2.CurrentPoint - 1].Position
						local var162 = var157.Position - var156.Position
						if Vector2.new(var161.x, var161.z).Unit:Dot(Vector2.new(var162.x, var162.z).Unit) >= 0.996 then
							var160 = false
						else
							var160 = true
						end
					end
					if var160 then
						module_upvr_2.Humanoid.FreeFalling:Wait()
						wait(0.1)
					end
				end
				module_upvr_2:MoveToNextWayPoint(var156, var157, var155)
			end
		end
		module_upvr_2.PathFailed:Fire()
		module_upvr_2:Cleanup()
	end
	function module_upvr_2.MoveToNextWayPoint(arg1_29, arg2_11, arg3_3, arg4) -- Line 554
		--[[ Upvalues[2]:
			[1]: module_upvr_2 (readonly)
			[2]: UserClickToMoveSupportAgentCanClimb2_upvr (copied, readonly)
		]]
		module_upvr_2.CurrentWaypointPlaneNormal = arg2_11.Position - arg3_3.Position
		local var163
		if not UserClickToMoveSupportAgentCanClimb2_upvr or arg3_3.Label ~= "Climb" then
			var163 = Vector3.new(module_upvr_2.CurrentWaypointPlaneNormal.X, 0, module_upvr_2.CurrentWaypointPlaneNormal.Z)
			module_upvr_2.CurrentWaypointPlaneNormal = var163
		end
		var163 = module_upvr_2.CurrentWaypointPlaneNormal
		var163 = 0.000001
		if var163 < var163.Magnitude then
			var163 = module_upvr_2.CurrentWaypointPlaneNormal.Unit
			module_upvr_2.CurrentWaypointPlaneNormal = var163
			var163 = module_upvr_2.CurrentWaypointPlaneNormal:Dot(arg3_3.Position)
			module_upvr_2.CurrentWaypointPlaneDistance = var163
		else
			var163 = Vector3.new(0, 0, 0)
			module_upvr_2.CurrentWaypointPlaneNormal = var163
			var163 = 0
			module_upvr_2.CurrentWaypointPlaneDistance = var163
		end
		if arg3_3.Action ~= Enum.PathWaypointAction.Jump then
			var163 = false
		else
			var163 = true
		end
		module_upvr_2.CurrentWaypointNeedsJump = var163
		var163 = arg3_3.Position
		module_upvr_2.CurrentWaypointPosition = var163
		module_upvr_2.CurrentPoint = arg4
		var163 = 0
		module_upvr_2.Timeout = var163
	end
	local function Start(arg1_30, arg2_12) -- Line 586
		--[[ Upvalues[3]:
			[1]: module_upvr_2 (readonly)
			[2]: module_2_upvr (copied, readonly)
			[3]: var5_upvw (copied, read and write)
		]]
		if not module_upvr_2.AgentCanFollowPath then
			module_upvr_2.PathFailed:Fire()
		else
			if module_upvr_2.Started then return end
			module_upvr_2.Started = true
			module_2_upvr.CancelFailureAnimation()
			if var5_upvw and (arg2_12 == nil or arg2_12) then
				local any_CreatePathDisplay_result1_2, any_CreatePathDisplay_result2_4 = module_2_upvr.CreatePathDisplay(module_upvr_2.pointList, module_upvr_2.OriginalTargetPoint)
				module_upvr_2.stopTraverseFunc = any_CreatePathDisplay_result1_2
				module_upvr_2.setPointFunc = any_CreatePathDisplay_result2_4
			end
			if 0 < #module_upvr_2.pointList then
				module_upvr_2.HumanoidOffsetFromPath = Vector3.new(0, module_upvr_2.pointList[1].Position.Y - module_upvr_2.OriginPoint.Y, 0)
				module_upvr_2.CurrentHumanoidPosition = module_upvr_2.Humanoid.RootPart.Position + module_upvr_2.HumanoidOffsetFromPath
				module_upvr_2.CurrentHumanoidVelocity = module_upvr_2.Humanoid.RootPart.Velocity
				module_upvr_2.SeatedConn = module_upvr_2.Humanoid.Seated:Connect(function(arg1_31, arg2_13) -- Line 613
					--[[ Upvalues[1]:
						[1]: module_upvr_2 (copied, readonly)
					]]
					module_upvr_2:OnPathInterrupted()
				end)
				module_upvr_2.DiedConn = module_upvr_2.Humanoid.Died:Connect(function() -- Line 614
					--[[ Upvalues[1]:
						[1]: module_upvr_2 (copied, readonly)
					]]
					module_upvr_2:OnPathInterrupted()
				end)
				module_upvr_2.TeleportedConn = module_upvr_2.Humanoid.RootPart:GetPropertyChangedSignal("CFrame"):Connect(function() -- Line 615
					--[[ Upvalues[1]:
						[1]: module_upvr_2 (copied, readonly)
					]]
					module_upvr_2:OnPathInterrupted()
				end)
				module_upvr_2.CurrentPoint = 1
				module_upvr_2:OnPointReached(true)
				return
			end
			module_upvr_2.PathFailed:Fire()
			if module_upvr_2.stopTraverseFunc then
				module_upvr_2.stopTraverseFunc()
			end
		end
	end
	module_upvr_2.Start = Start
	var133 = module_upvr_2.TargetPoint
	var133 = Ray.new(var133 + module_upvr_2.TargetSurfaceNormal * 1.5, Vector3.new(0, -50, 0))
	if var39_upvw then
	else
		var39_upvw = {}
		assert(var39_upvw, "")
		local var169 = LocalPlayer_upvr
		if var169 then
			var169 = LocalPlayer_upvr.Character
		end
		table.insert(var39_upvw, var169)
	end
	local any_FindPartOnRayWithIgnoreList_result1, any_FindPartOnRayWithIgnoreList_result2_2 = Workspace_upvr:FindPartOnRayWithIgnoreList(var133, var39_upvw)
	if any_FindPartOnRayWithIgnoreList_result1 then
		module_upvr_2.TargetPoint = any_FindPartOnRayWithIgnoreList_result2_2
	end
	module_upvr_2:ComputePath()
	return module_upvr_2
end
local function _() -- Line 642, Named "CheckAlive"
	--[[ Upvalues[2]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var35_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var172 = LocalPlayer_upvr
	local var173 = var172
	if var173 then
		var173 = var172.Character
	end
	if var173 then
		local var174 = var35_upvr[var172]
		if var174 and var174.Parent == var173 then
			local _ = var174
		else
			var35_upvr[var172] = nil
			local class_Humanoid = var173:FindFirstChildOfClass("Humanoid")
			if class_Humanoid then
				var35_upvr[var172] = class_Humanoid
			end
		end
	else
	end
	var172 = false
	local var177 = var172
	if nil ~= nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if 0 >= nil.Health then
			var177 = false
		else
			var177 = true
		end
	end
	return var177
end
local function GetEquippedTool_upvr(arg1) -- Line 647, Named "GetEquippedTool"
	if arg1 ~= nil then
		for _, v_3 in pairs(arg1:GetChildren()) do
			if v_3:IsA("Tool") then
				return v_3
			end
		end
	end
end
local var183_upvw
local var184_upvw
local var185_upvw
local function CleanupPath() -- Line 662
	--[[ Upvalues[3]:
		[1]: var183_upvw (read and write)
		[2]: var184_upvw (read and write)
		[3]: var185_upvw (read and write)
	]]
	if var183_upvw then
		var183_upvw:Cancel()
		var183_upvw = nil
	end
	if var184_upvw then
		var184_upvw:Disconnect()
		var184_upvw = nil
	end
	if var185_upvw then
		var185_upvw:Disconnect()
		var185_upvw = nil
	end
end
local function HandleMoveTo_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 680, Named "HandleMoveTo"
	--[[ Upvalues[6]:
		[1]: var183_upvw (read and write)
		[2]: var184_upvw (read and write)
		[3]: var185_upvw (read and write)
		[4]: GetEquippedTool_upvr (readonly)
		[5]: var6_upvw (read and write)
		[6]: module_2_upvr (readonly)
	]]
	if var183_upvw then
		if var183_upvw then
			var183_upvw:Cancel()
			var183_upvw = nil
		end
		if var184_upvw then
			var184_upvw:Disconnect()
			var184_upvw = nil
		end
		if var185_upvw then
			var185_upvw:Disconnect()
			var185_upvw = nil
		end
	end
	var183_upvw = arg1
	arg1:Start(arg5)
	var184_upvw = arg1.Finished.Event:Connect(function() -- Line 687
		--[[ Upvalues[6]:
			[1]: var183_upvw (copied, read and write)
			[2]: var184_upvw (copied, read and write)
			[3]: var185_upvw (copied, read and write)
			[4]: arg3 (readonly)
			[5]: GetEquippedTool_upvr (copied, readonly)
			[6]: arg4 (readonly)
		]]
		if var183_upvw then
			var183_upvw:Cancel()
			var183_upvw = nil
		end
		if var184_upvw then
			var184_upvw:Disconnect()
			var184_upvw = nil
		end
		if var185_upvw then
			var185_upvw:Disconnect()
			var185_upvw = nil
		end
		if arg3 then
			local GetEquippedTool_upvr_result1 = GetEquippedTool_upvr(arg4)
			if GetEquippedTool_upvr_result1 then
				GetEquippedTool_upvr_result1:Activate()
			end
		end
	end)
	var185_upvw = arg1.PathFailed.Event:Connect(function() -- Line 696
		--[[ Upvalues[7]:
			[1]: var183_upvw (copied, read and write)
			[2]: var184_upvw (copied, read and write)
			[3]: var185_upvw (copied, read and write)
			[4]: arg5 (readonly)
			[5]: var6_upvw (copied, read and write)
			[6]: module_2_upvr (copied, readonly)
			[7]: arg2 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [2] 3. Error Block 2 start (CF ANALYSIS FAILED)
		var183_upvw:Cancel()
		var183_upvw = nil
		-- KONSTANTERROR: [2] 3. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 8. Error Block 3 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [8] 8. Error Block 3 end (CF ANALYSIS FAILED)
	end)
end
local function _(arg1) -- Line 708, Named "ShowPathFailedFeedback"
	--[[ Upvalues[3]:
		[1]: var183_upvw (read and write)
		[2]: var6_upvw (read and write)
		[3]: module_2_upvr (readonly)
	]]
	if var183_upvw and var183_upvw:IsActive() then
		var183_upvw:Cancel()
	end
	if var6_upvw then
		module_2_upvr.PlayFailureAnimation()
	end
	module_2_upvr.DisplayFailureWaypoint(arg1)
end
local StarterGui_upvr = game:GetService("StarterGui")
function OnTap(arg1, arg2, arg3) -- Line 718
	--[[ Upvalues[15]:
		[1]: Workspace_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: var35_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: var39_upvw (read and write)
		[6]: StarterGui_upvr (readonly)
		[7]: Players_upvr (readonly)
		[8]: var183_upvw (read and write)
		[9]: var184_upvw (read and write)
		[10]: var185_upvw (read and write)
		[11]: Pather_upvr (readonly)
		[12]: HandleMoveTo_upvr (readonly)
		[13]: var6_upvw (read and write)
		[14]: module_2_upvr (readonly)
		[15]: GetEquippedTool_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 109 start (CF ANALYSIS FAILED)
	local var191 = LocalPlayer_upvr
	local var192 = var191
	if var192 then
		var192 = var191.Character
	end
	if var192 then
		local var193 = var35_upvr[var191]
		if var193 and var193.Parent == var192 then
			local _ = var193
		else
			var35_upvr[var191] = nil
			local class_Humanoid_5 = var192:FindFirstChildOfClass("Humanoid")
			if class_Humanoid_5 then
				var35_upvr[var191] = class_Humanoid_5
			end
		end
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 109 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [37] 31. Error Block 102 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if 0 >= nil.Health then
	else
	end
	-- KONSTANTERROR: [37] 31. Error Block 102 end (CF ANALYSIS FAILED)
end
local function _(arg1) -- Line 771, Named "DisconnectEvent"
	if arg1 then
		arg1:Disconnect()
	end
end
local module_upvr_3 = require(script.Parent:WaitForChild("Keyboard"))
local setmetatable_result1_upvr = setmetatable({}, module_upvr_3)
setmetatable_result1_upvr.__index = setmetatable_result1_upvr
function setmetatable_result1_upvr.new(arg1) -- Line 782
	--[[ Upvalues[2]:
		[1]: module_upvr_3 (readonly)
		[2]: setmetatable_result1_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable(module_upvr_3.new(arg1), setmetatable_result1_upvr)
	setmetatable_result1.fingerTouches = {}
	setmetatable_result1.numUnsunkTouches = 0
	setmetatable_result1.mouse1Down = tick()
	setmetatable_result1.mouse1DownPos = Vector2.new()
	setmetatable_result1.mouse2DownTime = tick()
	setmetatable_result1.mouse2DownPos = Vector2.new()
	setmetatable_result1.mouse2UpTime = tick()
	setmetatable_result1.keyboardMoveVector = Vector3.new(0, 0, 0)
	setmetatable_result1.tapConn = nil
	setmetatable_result1.inputBeganConn = nil
	setmetatable_result1.inputChangedConn = nil
	setmetatable_result1.inputEndedConn = nil
	setmetatable_result1.humanoidDiedConn = nil
	setmetatable_result1.characterChildAddedConn = nil
	setmetatable_result1.onCharacterAddedConn = nil
	setmetatable_result1.characterChildRemovedConn = nil
	setmetatable_result1.renderSteppedConn = nil
	setmetatable_result1.menuOpenedConnection = nil
	setmetatable_result1.running = false
	setmetatable_result1.wasdEnabled = false
	return setmetatable_result1
end
function setmetatable_result1_upvr.DisconnectEvents(arg1) -- Line 814
	local tapConn = arg1.tapConn
	if tapConn then
		tapConn:Disconnect()
	end
	local inputBeganConn = arg1.inputBeganConn
	if inputBeganConn then
		inputBeganConn:Disconnect()
	end
	local inputChangedConn = arg1.inputChangedConn
	if inputChangedConn then
		inputChangedConn:Disconnect()
	end
	local inputEndedConn = arg1.inputEndedConn
	if inputEndedConn then
		inputEndedConn:Disconnect()
	end
	local humanoidDiedConn = arg1.humanoidDiedConn
	if humanoidDiedConn then
		humanoidDiedConn:Disconnect()
	end
	local characterChildAddedConn = arg1.characterChildAddedConn
	if characterChildAddedConn then
		characterChildAddedConn:Disconnect()
	end
	local onCharacterAddedConn = arg1.onCharacterAddedConn
	if onCharacterAddedConn then
		onCharacterAddedConn:Disconnect()
	end
	local renderSteppedConn = arg1.renderSteppedConn
	if renderSteppedConn then
		renderSteppedConn:Disconnect()
	end
	local characterChildRemovedConn = arg1.characterChildRemovedConn
	if characterChildRemovedConn then
		characterChildRemovedConn:Disconnect()
	end
	local menuOpenedConnection = arg1.menuOpenedConnection
	if menuOpenedConnection then
		menuOpenedConnection:Disconnect()
	end
end
function setmetatable_result1_upvr.OnTouchBegan(arg1, arg2, arg3) -- Line 827
	if arg1.fingerTouches[arg2] == nil then
		if not arg3 then
			arg1.numUnsunkTouches += 1
		end
	end
	arg1.fingerTouches[arg2] = arg3
end
function setmetatable_result1_upvr.OnTouchChanged(arg1, arg2, arg3) -- Line 834
	if arg1.fingerTouches[arg2] == nil then
		arg1.fingerTouches[arg2] = arg3
		if not arg3 then
			arg1.numUnsunkTouches += 1
		end
	end
end
function setmetatable_result1_upvr.OnTouchEnded(arg1, arg2, arg3) -- Line 843
	if arg1.fingerTouches[arg2] ~= nil then
		if arg1.fingerTouches[arg2] == false then
			arg1.numUnsunkTouches -= 1
		end
	end
	arg1.fingerTouches[arg2] = nil
end
local GuiService_upvr = game:GetService("GuiService")
function setmetatable_result1_upvr.OnCharacterAdded(arg1, arg2) -- Line 851
	--[[ Upvalues[7]:
		[1]: UserInputService_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: var183_upvw (read and write)
		[4]: var184_upvw (read and write)
		[5]: var185_upvw (read and write)
		[6]: module_2_upvr (readonly)
		[7]: GuiService_upvr (readonly)
	]]
	arg1:DisconnectEvents()
	arg1.inputBeganConn = UserInputService_upvr.InputBegan:Connect(function(arg1_32, arg2_14) -- Line 854
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: tbl_3_upvr (copied, readonly)
			[3]: var183_upvw (copied, read and write)
			[4]: var184_upvw (copied, read and write)
			[5]: var185_upvw (copied, read and write)
			[6]: module_2_upvr (copied, readonly)
		]]
		if arg1_32.UserInputType == Enum.UserInputType.Touch then
			arg1:OnTouchBegan(arg1_32, arg2_14)
		end
		if arg1.wasdEnabled then
			if arg2_14 == false and arg1_32.UserInputType == Enum.UserInputType.Keyboard and tbl_3_upvr[arg1_32.KeyCode] then
				if var183_upvw then
					var183_upvw:Cancel()
					var183_upvw = nil
				end
				if var184_upvw then
					var184_upvw:Disconnect()
					var184_upvw = nil
				end
				if var185_upvw then
					var185_upvw:Disconnect()
					var185_upvw = nil
				end
				module_2_upvr.CancelFailureAnimation()
			end
		end
		if arg1_32.UserInputType == Enum.UserInputType.MouseButton1 then
			arg1.mouse1DownTime = tick()
			arg1.mouse1DownPos = arg1_32.Position
		end
		if arg1_32.UserInputType == Enum.UserInputType.MouseButton2 then
			arg1.mouse2DownTime = tick()
			arg1.mouse2DownPos = arg1_32.Position
		end
	end)
	arg1.inputChangedConn = UserInputService_upvr.InputChanged:Connect(function(arg1_33, arg2_15) -- Line 875
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_33.UserInputType == Enum.UserInputType.Touch then
			arg1:OnTouchChanged(arg1_33, arg2_15)
		end
	end)
	arg1.inputEndedConn = UserInputService_upvr.InputEnded:Connect(function(arg1_34, arg2_16) -- Line 881
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var183_upvw (copied, read and write)
		]]
		if arg1_34.UserInputType == Enum.UserInputType.Touch then
			arg1:OnTouchEnded(arg1_34, arg2_16)
		end
		local var217
		if arg1_34.UserInputType == var217 then
			var217 = tick()
			arg1.mouse2UpTime = var217
			local Position = arg1_34.Position
			var217 = var183_upvw
			if not var217 then
				if arg1.keyboardMoveVector.Magnitude > 0 then
					var217 = false
				else
					var217 = true
				end
			end
			if arg1.mouse2UpTime - arg1.mouse2DownTime < 0.25 and (Position - arg1.mouse2DownPos).magnitude < 5 and var217 then
				OnTap({Position})
			end
		end
	end)
	arg1.tapConn = UserInputService_upvr.TouchTap:Connect(function(arg1_35, arg2_17) -- Line 898
		if not arg2_17 then
			OnTap(arg1_35, nil, true)
		end
	end)
	arg1.menuOpenedConnection = GuiService_upvr.MenuOpened:Connect(function() -- Line 904
		--[[ Upvalues[3]:
			[1]: var183_upvw (copied, read and write)
			[2]: var184_upvw (copied, read and write)
			[3]: var185_upvw (copied, read and write)
		]]
		if var183_upvw then
			var183_upvw:Cancel()
			var183_upvw = nil
		end
		if var184_upvw then
			var184_upvw:Disconnect()
			var184_upvw = nil
		end
		if var185_upvw then
			var185_upvw:Disconnect()
			var185_upvw = nil
		end
	end)
	local function OnCharacterChildAdded_upvr(arg1_36) -- Line 908, Named "OnCharacterChildAdded"
		--[[ Upvalues[2]:
			[1]: UserInputService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if UserInputService_upvr.TouchEnabled then
			if arg1_36:IsA("Tool") then
				arg1_36.ManualActivationOnly = true
			end
		end
		if arg1_36:IsA("Humanoid") then
			local humanoidDiedConn_2 = arg1.humanoidDiedConn
			if humanoidDiedConn_2 then
				humanoidDiedConn_2:Disconnect()
			end
			arg1.humanoidDiedConn = arg1_36.Died:Connect(function() -- Line 916
			end)
		end
	end
	arg1.characterChildAddedConn = arg2.ChildAdded:Connect(function(arg1_37) -- Line 924
		--[[ Upvalues[1]:
			[1]: OnCharacterChildAdded_upvr (readonly)
		]]
		OnCharacterChildAdded_upvr(arg1_37)
	end)
	arg1.characterChildRemovedConn = arg2.ChildRemoved:Connect(function(arg1_38) -- Line 927
		--[[ Upvalues[1]:
			[1]: UserInputService_upvr (copied, readonly)
		]]
		if UserInputService_upvr.TouchEnabled then
			if arg1_38:IsA("Tool") then
				arg1_38.ManualActivationOnly = false
			end
		end
	end)
	for _, v_4 in pairs(arg2:GetChildren()) do
		OnCharacterChildAdded_upvr(v_4)
	end
end
function setmetatable_result1_upvr.Start(arg1) -- Line 939
	arg1:Enable(true)
end
function setmetatable_result1_upvr.Stop(arg1) -- Line 943
	arg1:Enable(false)
end
function setmetatable_result1_upvr.CleanupPath(arg1) -- Line 947
	--[[ Upvalues[3]:
		[1]: var183_upvw (read and write)
		[2]: var184_upvw (read and write)
		[3]: var185_upvw (read and write)
	]]
	if var183_upvw then
		var183_upvw:Cancel()
		var183_upvw = nil
	end
	if var184_upvw then
		var184_upvw:Disconnect()
		var184_upvw = nil
	end
	if var185_upvw then
		var185_upvw:Disconnect()
		var185_upvw = nil
	end
end
function setmetatable_result1_upvr.Enable(arg1, arg2, arg3, arg4) -- Line 951
	--[[ Upvalues[5]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: var183_upvw (read and write)
		[3]: var184_upvw (read and write)
		[4]: var185_upvw (read and write)
		[5]: UserInputService_upvr (readonly)
	]]
	if arg2 then
		if not arg1.running then
			if LocalPlayer_upvr.Character then
				arg1:OnCharacterAdded(LocalPlayer_upvr.Character)
			end
			arg1.onCharacterAddedConn = LocalPlayer_upvr.CharacterAdded:Connect(function(arg1_40) -- Line 957
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1:OnCharacterAdded(arg1_40)
			end)
			arg1.running = true
		end
		arg1.touchJumpController = arg4
		if arg1.touchJumpController then
			arg1.touchJumpController:Enable(arg1.jumpEnabled)
			-- KONSTANTWARNING: GOTO [113] #83
		end
	else
		if arg1.running then
			arg1:DisconnectEvents()
			if var183_upvw then
				var183_upvw:Cancel()
				var183_upvw = nil
			end
			if var184_upvw then
				var184_upvw:Disconnect()
				var184_upvw = nil
			end
			if var185_upvw then
				var185_upvw:Disconnect()
				var185_upvw = nil
			end
			if UserInputService_upvr.TouchEnabled then
				local Character_3 = LocalPlayer_upvr.Character
				if Character_3 then
					for _, v_5 in pairs(Character_3:GetChildren()) do
						if v_5:IsA("Tool") then
							v_5.ManualActivationOnly = false
						end
					end
				end
			end
			arg1.running = false
		end
		if arg1.touchJumpController and not arg1.jumpEnabled then
			arg1.touchJumpController:Enable(true)
		end
		arg1.touchJumpController = nil
	end
	if UserInputService_upvr.KeyboardEnabled then
		if arg2 ~= arg1.enabled then
			arg1.forwardValue = 0
			arg1.backwardValue = 0
			arg1.leftValue = 0
			arg1.rightValue = 0
			arg1.moveVector = Vector3.new(0, 0, 0)
			if arg2 then
				arg1:BindContextActions()
				arg1:ConnectFocusEventListeners()
			else
				arg1:UnbindContextActions()
				arg1:DisconnectFocusEventListeners()
			end
		end
	end
	if not arg2 or not arg3 then
	end
	arg1.wasdEnabled = false
	arg1.enabled = arg2
end
function setmetatable_result1_upvr.OnRenderStepped(arg1, arg2) -- Line 1012
	--[[ Upvalues[1]:
		[1]: var183_upvw (read and write)
	]]
	arg1.isJumping = false
	if var183_upvw then
		var183_upvw:OnRenderStepped(arg2)
		if var183_upvw then
			arg1.moveVector = var183_upvw.NextActionMoveDirection
			arg1.moveVectorIsCameraRelative = false
			if var183_upvw.NextActionJump then
				arg1.isJumping = true
				-- KONSTANTWARNING: GOTO [43] #31
			end
		else
			arg1.moveVector = arg1.keyboardMoveVector
			arg1.moveVectorIsCameraRelative = true
		end
	else
		arg1.moveVector = arg1.keyboardMoveVector
		arg1.moveVectorIsCameraRelative = true
	end
	if arg1.jumpRequested then
		arg1.isJumping = true
	end
end
function setmetatable_result1_upvr.UpdateMovement(arg1, arg2) -- Line 1047
	if arg2 == Enum.UserInputState.Cancel then
		arg1.keyboardMoveVector = Vector3.new(0, 0, 0)
	elseif arg1.wasdEnabled then
		arg1.keyboardMoveVector = Vector3.new(arg1.leftValue + arg1.rightValue, 0, arg1.forwardValue + arg1.backwardValue)
	end
end
function setmetatable_result1_upvr.UpdateJump(arg1) -- Line 1056
end
function setmetatable_result1_upvr.SetShowPath(arg1, arg2) -- Line 1061
	--[[ Upvalues[1]:
		[1]: var5_upvw (read and write)
	]]
	var5_upvw = arg2
end
function setmetatable_result1_upvr.GetShowPath(arg1) -- Line 1065
	--[[ Upvalues[1]:
		[1]: var5_upvw (read and write)
	]]
	return var5_upvw
end
function setmetatable_result1_upvr.SetWaypointTexture(arg1, arg2) -- Line 1069
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	module_2_upvr.SetWaypointTexture(arg2)
end
function setmetatable_result1_upvr.GetWaypointTexture(arg1) -- Line 1073
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return module_2_upvr.GetWaypointTexture()
end
function setmetatable_result1_upvr.SetWaypointRadius(arg1, arg2) -- Line 1077
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	module_2_upvr.SetWaypointRadius(arg2)
end
function setmetatable_result1_upvr.GetWaypointRadius(arg1) -- Line 1081
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return module_2_upvr.GetWaypointRadius()
end
function setmetatable_result1_upvr.SetEndWaypointTexture(arg1, arg2) -- Line 1085
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	module_2_upvr.SetEndWaypointTexture(arg2)
end
function setmetatable_result1_upvr.GetEndWaypointTexture(arg1) -- Line 1089
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return module_2_upvr.GetEndWaypointTexture()
end
function setmetatable_result1_upvr.SetWaypointsAlwaysOnTop(arg1, arg2) -- Line 1093
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	module_2_upvr.SetWaypointsAlwaysOnTop(arg2)
end
function setmetatable_result1_upvr.GetWaypointsAlwaysOnTop(arg1) -- Line 1097
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	return module_2_upvr.GetWaypointsAlwaysOnTop()
end
function setmetatable_result1_upvr.SetFailureAnimationEnabled(arg1, arg2) -- Line 1101
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	var6_upvw = arg2
end
function setmetatable_result1_upvr.GetFailureAnimationEnabled(arg1) -- Line 1105
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	return var6_upvw
end
function setmetatable_result1_upvr.SetIgnoredPartsTag(arg1, arg2) -- Line 1109
	--[[ Upvalues[1]:
		[1]: UpdateIgnoreTag_upvr (readonly)
	]]
	UpdateIgnoreTag_upvr(arg2)
end
function setmetatable_result1_upvr.GetIgnoredPartsTag(arg1) -- Line 1113
	--[[ Upvalues[1]:
		[1]: var40_upvw (read and write)
	]]
	return var40_upvw
end
function setmetatable_result1_upvr.SetUseDirectPath(arg1, arg2) -- Line 1117
	--[[ Upvalues[1]:
		[1]: var7_upvw (read and write)
	]]
	var7_upvw = arg2
end
function setmetatable_result1_upvr.GetUseDirectPath(arg1) -- Line 1121
	--[[ Upvalues[1]:
		[1]: var7_upvw (read and write)
	]]
	return var7_upvw
end
function setmetatable_result1_upvr.SetAgentSizeIncreaseFactor(arg1, arg2) -- Line 1125
	--[[ Upvalues[1]:
		[1]: var8_upvw (read and write)
	]]
	var8_upvw = arg2 / 100 + 1
end
function setmetatable_result1_upvr.GetAgentSizeIncreaseFactor(arg1) -- Line 1129
	--[[ Upvalues[1]:
		[1]: var8_upvw (read and write)
	]]
	return (var8_upvw - 1) * 100
end
function setmetatable_result1_upvr.SetUnreachableWaypointTimeout(arg1, arg2) -- Line 1133
	--[[ Upvalues[1]:
		[1]: var9_upvw (read and write)
	]]
	var9_upvw = arg2
end
function setmetatable_result1_upvr.GetUnreachableWaypointTimeout(arg1) -- Line 1137
	--[[ Upvalues[1]:
		[1]: var9_upvw (read and write)
	]]
	return var9_upvw
end
function setmetatable_result1_upvr.SetUserJumpEnabled(arg1, arg2) -- Line 1141
	arg1.jumpEnabled = arg2
	if arg1.touchJumpController then
		arg1.touchJumpController:Enable(arg2)
	end
end
function setmetatable_result1_upvr.GetUserJumpEnabled(arg1) -- Line 1148
	return arg1.jumpEnabled
end
function setmetatable_result1_upvr.MoveTo(arg1, arg2, arg3, arg4) -- Line 1152
	--[[ Upvalues[3]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: Pather_upvr (readonly)
		[3]: HandleMoveTo_upvr (readonly)
	]]
	local Character_2 = LocalPlayer_upvr.Character
	if Character_2 == nil then
		return false
	end
	local Pather_result1 = Pather_upvr(arg2, Vector3.new(0, 1, 0), arg4)
	if Pather_result1 then
		if Pather_result1:IsValidPath() then
			HandleMoveTo_upvr(Pather_result1, arg2, nil, Character_2, arg3)
			return true
		end
	end
	return false
end
return setmetatable_result1_upvr