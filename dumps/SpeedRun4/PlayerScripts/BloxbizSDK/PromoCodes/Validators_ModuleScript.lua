-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:54
-- Luau version 6, Types version 3
-- Time taken: 0.001361 seconds

local module_upvr_2 = {
	_setupOnJoin = false;
	_playerReceivedRewardClient = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes"):WaitForChild("PlayerReceivedReward");
	_playerReceivedRewardServer = Instance.new("BindableEvent");
}
local Http_upvr = require(script.Parent.Http)
local Utils_upvr = require(script.Parent.Parent.Utils)
function module_upvr_2.validateClaim(arg1, arg2) -- Line 13
	--[[ Upvalues[3]:
		[1]: Http_upvr (readonly)
		[2]: Utils_upvr (readonly)
		[3]: module_upvr_2 (readonly)
	]]
	local module_upvr = {
		player_id = arg1.UserId;
	}
	module_upvr.claim_id = arg2
	local pcall_result1, pcall_result2 = pcall(function() -- Line 20
		--[[ Upvalues[2]:
			[1]: Http_upvr (copied, readonly)
			[2]: module_upvr (readonly)
		]]
		return Http_upvr.post("claim/use", module_upvr)
	end)
	if not pcall_result1 then
		warn("[SuperBiz] Error validating claim for player: "..tostring(pcall_result2))
		Utils_upvr.pprint(debug.traceback())
		return
	end
	if pcall_result2.status ~= "ok" then
		warn("[SuperBiz] Error validating claim for player: "..tostring(pcall_result2.message))
		Utils_upvr.pprint(debug.traceback())
		return
	end
	module_upvr_2._playerReceivedRewardClient:FireClient(arg1, pcall_result2.claim.reward_id)
	module_upvr_2._playerReceivedRewardServer:Fire(arg1, pcall_result2.claim.reward_id)
	return pcall_result2.claim.reward_id
end
local Players_upvr = game:GetService("Players")
function module_upvr_2.validateOnJoin() -- Line 42
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: Players_upvr (readonly)
	]]
	if module_upvr_2._setupOnJoin then
		warn("PromoCodes.validateOnJoin() is being called more than once.")
	else
		Players_upvr.PlayerAdded:Connect(function(arg1) -- Line 48
			--[[ Upvalues[1]:
				[1]: module_upvr_2 (copied, readonly)
			]]
			local any_GetJoinData_result1 = arg1:GetJoinData()
			if not any_GetJoinData_result1.LaunchData or #any_GetJoinData_result1.LaunchData == 0 then
			else
				module_upvr_2.validateClaim(arg1, any_GetJoinData_result1.LaunchData)
			end
		end)
		module_upvr_2._setupOnJoin = true
	end
end
return module_upvr_2