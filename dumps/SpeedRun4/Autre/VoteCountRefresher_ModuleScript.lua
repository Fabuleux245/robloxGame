-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:46:04
-- Luau version 6, Types version 3
-- Time taken: 0.002791 seconds

local Achievements = script:FindFirstAncestor("Achievements")
local Parent = Achievements.Parent
local Logger_upvr = require(Achievements.Logger)
local module = {
	init = function(arg1, arg2, arg3, arg4, arg5) -- Line 36, Named "init"
		arg1.fireVoteCountChanged = arg2
		arg1.store = arg3
		arg1.requestImpl = arg4
		arg1.platformCloudStorageService = arg5
	end;
	start = function(arg1) -- Line 48, Named "start"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		arg1.storeChangedConnection = arg1.store.changed:connect(function(arg1_2, arg2) -- Line 49
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Logger_upvr (copied, readonly)
			]]
			local LocalUserGameVoteCounter = arg1_2.LocalUserGameVoteCounter
			if arg2.LocalUserGameVoteCounter ~= LocalUserGameVoteCounter and 0 < LocalUserGameVoteCounter.voteCountSinceAppStart then
				arg1:_checkPollster(LocalUserGameVoteCounter.lastUniverseId):catch(function(arg1_3) -- Line 57
					--[[ Upvalues[1]:
						[1]: Logger_upvr (copied, readonly)
					]]
					Logger_upvr:warning(arg1_3)
				end)
			end
		end)
	end;
}
local Promise_upvr = require(Parent.Promise)
local Dash_upvr = require(Parent.Dash)
local GetUserVoteCount_upvr = require(Achievements.Requests.GetUserVoteCount)
function module._checkPollster(arg1, arg2) -- Line 64
	--[[ Upvalues[4]:
		[1]: Promise_upvr (readonly)
		[2]: Dash_upvr (readonly)
		[3]: GetUserVoteCount_upvr (readonly)
		[4]: Logger_upvr (readonly)
	]]
	if arg1.platformCloudStorageService and arg1.platformCloudStorageService:IsUserDataAvailable() then
		return Promise_upvr.new(function() -- Line 66
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: Dash_upvr (copied, readonly)
				[3]: arg2 (readonly)
			]]
			local var12
			if not var12 then
				var12 = {}
			end
			if #var12 < 5 and not Dash_upvr.includes(var12, arg2) then
				table.insert(var12, arg2)
				arg1.platformCloudStorageService:SetUserDataAsync("UniversesVoted", {
					data = var12;
				})
			end
			arg1.fireVoteCountChanged(#var12)
		end)
	end
	return GetUserVoteCount_upvr(arg1.requestImpl):andThen(function(arg1_4) -- Line 75
		--[[ Upvalues[2]:
			[1]: Logger_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if arg1_4.responseBody == nil then
			Logger_upvr:warning("Response has no body.")
		else
			local voteCount = arg1_4.responseBody.voteCount
			if voteCount == nil then
				Logger_upvr:warning("Response has no voteCount field.")
				return
			end
			arg1.fireVoteCountChanged(voteCount)
		end
	end)
end
function module.stop(arg1) -- Line 93
	if arg1.storeChangedConnection then
		arg1.storeChangedConnection:disconnect()
		arg1.storeChangedConnection = nil
	end
end
return module