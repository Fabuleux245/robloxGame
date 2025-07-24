-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:51
-- Luau version 6, Types version 3
-- Time taken: 0.001858 seconds

local module_upvr_5 = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_3 = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr = require(Modules:WaitForChild("ClientData"))
module_upvr_5.MovingTime = 0
module_upvr_5.MovingTimeDirty = false
local tbl_upvr = {
	GenerationIndex = 0;
	LastServerEnergy = 0;
	RequestPending = false;
}
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("Settings"))
module_upvr.Signals.EnergyRewardReceived:Connect(function() -- Line 44
	--[[ Upvalues[2]:
		[1]: module_upvr_5 (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	local var9 = module_upvr_5
	var9.MovingTime += module_upvr_2.EnergyLevelRewardTime
end)
ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Energy").OnClientEvent:Connect(function(arg1, arg2) -- Line 52
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	if tbl_upvr.GenerationIndex == arg2 and tbl_upvr.LastServerEnergy < arg1 then
		tbl_upvr.LastServerEnergy = arg1
		module_upvr.LocalSaveData.Energy = arg1
	end
end)
local function ProcessNetworkResponse_upvr(arg1) -- Line 65, Named "ProcessNetworkResponse"
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: module_upvr (readonly)
		[4]: module_upvr_5 (readonly)
	]]
	tbl_upvr.RequestPending = false
	if arg1.Response == module_upvr_3.ResponseType.Success then
		tbl_upvr.GenerationIndex = arg1.Args[1]
		module_upvr.LocalSaveData.Energy = 0
		module_upvr.LocalSaveData.EnergyTotal = arg1.Args[2]
		local var11 = 0
		tbl_upvr.LastServerEnergy = var11
		if module_upvr_5.MovingTime == 0 then
			var11 = false
		else
			var11 = true
		end
		module_upvr_5.MovingTimeDirty = var11
		module_upvr_5.MovingTime = 0
		module_upvr.Signals.EnergyExchanged:Fire(arg1.Args[3], module_upvr_5.MovingTime)
	end
end
local module_upvr_4 = require(Modules:WaitForChild("NetworkRequestUtility"))
function module_upvr_5.RequestEnergyExchange() -- Line 98
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr_4 (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: ProcessNetworkResponse_upvr (readonly)
	]]
	local var13 = false
	if not tbl_upvr.RequestPending then
		var13 = true
		tbl_upvr.RequestPending = true
		module_upvr_4.MakeRequest({
			Request = module_upvr_3.StateRequestType.EnergyExchange;
			Args = {};
			Callback = ProcessNetworkResponse_upvr;
		})
	end
	return var13
end
function module_upvr_5.PostSimulation(arg1, arg2) -- Line 121
	--[[ Upvalues[3]:
		[1]: module_upvr_3 (readonly)
		[2]: module_upvr (readonly)
		[3]: module_upvr_5 (readonly)
	]]
	local any_PlayerStateGetRootRemoteState_result1 = module_upvr_3.PlayerStateGetRootRemoteState(module_upvr.LocalPlayerState, true)
	if any_PlayerStateGetRootRemoteState_result1 and module_upvr_3.RootRemoteStateHasMoved(any_PlayerStateGetRootRemoteState_result1) then
		local var16 = module_upvr_5
		var16.MovingTime += any_PlayerStateGetRootRemoteState_result1.LastDuration
		module_upvr_5.MovingTimeDirty = true
	end
end
function module_upvr_5.ResetState() -- Line 136
	--[[ Upvalues[1]:
		[1]: module_upvr_5 (readonly)
	]]
	module_upvr_5.MovingTimeDirty = false
end
return module_upvr_5