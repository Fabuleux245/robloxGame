-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:21
-- Luau version 6, Types version 3
-- Time taken: 0.003192 seconds

local module_upvr_3 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr = require(Modules:WaitForChild("ClientData"))
local module_upvr_2 = require(Modules:WaitForChild("Trails"))
local tbl_upvr = {}
local tbl_2_upvr = {}
local function PostSimulation_upvr(arg1) -- Line 46, Named "UpdateEmittersEnabled"
	for i, v in pairs(arg1.Emitters_ByMoving) do
		local var19
		if i ~= arg1.Moving then
			var19 = false
		else
			var19 = true
		end
		for _, v_2 in ipairs(v) do
			v_2.Enabled = var19
		end
	end
end
tbl_upvr[module_upvr_2.TrailBehavior.MovementTwoPhase] = function(arg1, arg2, arg3) -- Line 55
	--[[ Upvalues[1]:
		[1]: PostSimulation_upvr (readonly)
	]]
	arg1.Moving = false
	local tbl = {}
	tbl[true] = arg2
	tbl[false] = arg3
	arg1.Emitters_ByMoving = tbl
	PostSimulation_upvr(arg1)
end
tbl_2_upvr[module_upvr_2.TrailBehavior.MovementTwoPhase] = function(arg1, arg2, arg3) -- Line 70
	--[[ Upvalues[1]:
		[1]: PostSimulation_upvr (readonly)
	]]
	local AssemblyLinearVelocity = arg1.CharacterState.Root.AssemblyLinearVelocity
	if 1 >= AssemblyLinearVelocity.Magnitude then
		AssemblyLinearVelocity = false
	else
		AssemblyLinearVelocity = true
	end
	if arg1.Moving ~= AssemblyLinearVelocity then
		arg1.Moving = AssemblyLinearVelocity
		PostSimulation_upvr(arg1)
	end
end
function PostSimulation_upvr(arg1, arg2) -- Line 92, Named "TrailStateDestroy"
	for _, v_3 in arg2.Connections do
		v_3:Disconnect()
	end
	local Data = arg2.Data
	arg2.Object:Destroy()
	arg1.Active_ById[Data.Id] = nil
	arg1.Pending_ById[Data.Id] = nil
end
module_upvr_3.TrailStateDestroy = PostSimulation_upvr
function PostSimulation_upvr(arg1, arg2) -- Line 109, Named "ProcessTrailSnapshot"
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: tbl_upvr (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	local TrailStates_3_upvr = arg1.TrailStates
	local var31 = module_upvr_2.Data_ById[arg2.T]
	local tbl_3_upvr = {
		CharacterState = arg1.CharacterState;
		Connections = {};
		Data = var31;
		Object = arg2.O;
	}
	local var33 = tbl_upvr[var31.TrailBehavior]
	if var33 then
		if arg2.Args then
			var33(tbl_3_upvr, table.unpack(arg2.Args))
		else
			var33(tbl_3_upvr)
		end
	end
	local Connections = tbl_3_upvr.Connections
	Connections[#tbl_3_upvr.Connections + 1] = tbl_3_upvr.Object.Destroying:Connect(function() -- Line 134
		--[[ Upvalues[3]:
			[1]: module_upvr_3 (copied, readonly)
			[2]: TrailStates_3_upvr (readonly)
			[3]: tbl_3_upvr (readonly)
		]]
		module_upvr_3.TrailStateDestroy(TrailStates_3_upvr, tbl_3_upvr)
	end)
	if arg1.CharacterState ~= nil then
		Connections = TrailStates_3_upvr.Active_ById
	else
		Connections = TrailStates_3_upvr.Pending_ById
	end
	Connections[tbl_3_upvr.Data.Id] = tbl_3_upvr
end
module_upvr_3.ProcessTrailSnapshot = PostSimulation_upvr
local module_upvr_4 = require(ReplicatedStorage:WaitForChild("CommonData"))
function PostSimulation_upvr(arg1) -- Line 149, Named "CharacterAdded"
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_4 (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	local assert_result1 = assert(module_upvr.PlayerState_ByPlayer[arg1.Player])
	local TrailStates = assert_result1.TrailStates
	for i_4, v_4 in pairs(TrailStates.Pending_ById) do
		if v_4.Object:IsDescendantOf(arg1.Character) then
			v_4.CharacterState = arg1
			local var44 = TrailStates.Active_ById[i_4]
			if var44 then
				warn(module_upvr_4.FormatOutput("Duplicate trail '%s' in TrailStates", "TrailTracker", assert_result1.Player, i_4))
				module_upvr_3.TrailStateDestroy(TrailStates, var44)
			end
			TrailStates.Active_ById[i_4] = v_4
			TrailStates.Pending_ById[i_4] = nil
		end
	end
end
module_upvr_3.CharacterAdded = PostSimulation_upvr
function PostSimulation_upvr(arg1) -- Line 172, Named "CharacterRemoving"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	local TrailStates_2 = assert(module_upvr.PlayerState_ByPlayer[arg1.Player]).TrailStates
	for _, v_5 in pairs(TrailStates_2.Active_ById) do
		if v_5.CharacterState == arg1 then
			module_upvr_3.TrailStateDestroy(TrailStates_2, v_5)
		end
	end
end
module_upvr_3.CharacterRemoving = PostSimulation_upvr
function PostSimulation_upvr(arg1, arg2) -- Line 188, Named "PostSimulation"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
	]]
	for _, v_6 in pairs(module_upvr.PlayerState_ByPlayer) do
		for _, v_7 in pairs(v_6.TrailStates.Active_ById) do
			local var61 = tbl_2_upvr[v_7.Data.TrailBehavior]
			if var61 then
				var61(v_7, arg1, arg2)
			end
		end
	end
end
module_upvr_3.PostSimulation = PostSimulation_upvr
return module_upvr_3