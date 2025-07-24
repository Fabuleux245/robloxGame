-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:03
-- Luau version 6, Types version 3
-- Time taken: 0.004100 seconds

local module = {
	init = function(arg1, arg2, arg3) -- Line 25, Named "init"
		arg1.fireFriendCountChanged = arg2
		arg1.playersService = arg3
		arg1.friendIds = {}
		arg1.friendCount = 0
	end;
	start = function(arg1) -- Line 32, Named "start"
		arg1.friendIds = arg1:_getFriendIds()
		for _, v in pairs(arg1.playersService:GetPlayers()) do
			arg1:_onPlayerAdded(v)
		end
		arg1.playerAdded = arg1.playersService.PlayerAdded:Connect(function(arg1_2) -- Line 37
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:_onPlayerAdded(arg1_2)
		end)
		arg1.playerRemoving = arg1.playersService.PlayerRemoving:Connect(function(arg1_3) -- Line 40
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:_onPlayerRemoving(arg1_3)
		end)
	end;
}
local Logger_upvr = require(script:FindFirstAncestor("Achievements").Logger)
function module._getFriendIds(arg1) -- Line 45
	--[[ Upvalues[1]:
		[1]: Logger_upvr (readonly)
	]]
	local function _(arg1_4) -- Line 46, Named "iterPageItems"
		return coroutine.wrap(function() -- Line 47
			--[[ Upvalues[1]:
				[1]: arg1_4 (readonly)
			]]
			local var16 = 1
			while true do
				for _, v_2 in ipairs(arg1_4:GetCurrentPage()) do
					coroutine.yield(v_2, var16)
				end
				if arg1_4.IsFinished then break end
				arg1_4:AdvanceToNextPageAsync()
				var16 += 1
			end
		end)
	end
	local pcall_result1, pcall_result2 = pcall(function() -- Line 62
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local module_2 = {}
		if arg1.playersService.LocalPlayer then
			local any_GetFriendsAsync_result1_upvr = arg1.playersService:GetFriendsAsync(arg1.playersService.LocalPlayer.UserId)
			for i_4, _ in coroutine.wrap(function() -- Line 47
				--[[ Upvalues[1]:
					[1]: any_GetFriendsAsync_result1_upvr (readonly)
				]]
				local var32 = 1
				while true do
					for _, v_3 in ipairs(any_GetFriendsAsync_result1_upvr:GetCurrentPage()) do
						coroutine.yield(v_3, var32)
					end
					if any_GetFriendsAsync_result1_upvr.IsFinished then break end
					any_GetFriendsAsync_result1_upvr:AdvanceToNextPageAsync()
					var32 += 1
				end
			end) do
				module_2[i_4.Id] = true
			end
		end
		return module_2
	end)
	local var41
	if not pcall_result1 then
		var41 = Logger_upvr:warning
		var41(pcall_result2)
	end
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var41 = pcall_result2
		return var41
	end
	if not pcall_result1 or not INLINED() then
		var41 = {}
	end
	return var41
end
function module._onPlayerAdded(arg1, arg2) -- Line 80
	if arg1.friendIds[arg2.UserId] then
		arg1.friendCount += 1
		arg1.fireFriendCountChanged(arg1.friendCount)
	end
end
function module._onPlayerRemoving(arg1, arg2) -- Line 87
	if arg1.friendIds[arg2.UserId] then
		arg1.friendCount -= 1
		arg1.fireFriendCountChanged(arg1.friendCount)
	end
end
function module.stop(arg1) -- Line 94
	if arg1.playerAdded then
		arg1.playerAdded:Disconnect()
		arg1.playerAdded = nil
	end
	if arg1.playerRemoving then
		arg1.playerRemoving:Disconnect()
		arg1.playerRemoving = nil
	end
	arg1.friendIds = {}
	arg1.friendCount = 0
end
return module