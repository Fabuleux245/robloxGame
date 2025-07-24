-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:45
-- Luau version 6, Types version 3
-- Time taken: 0.000970 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local RetrievalStatus_upvr = require(CorePackages.Workspace.Packages.Http).Enum.RetrievalStatus
local ApiFetchUsersFriends_upvr = require(ShareGame.Thunks.ApiFetchUsersFriends)
local Constants_upvr = require(ShareGame.Constants)
local GetFFlagInviteListRerank_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagInviteListRerank
local UserSorts_upvr = require(RobloxGui.Modules.Settings.Enum.UserSorts)
return function(arg1, arg2) -- Line 15
	--[[ Upvalues[5]:
		[1]: RetrievalStatus_upvr (readonly)
		[2]: ApiFetchUsersFriends_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: GetFFlagInviteListRerank_upvr (readonly)
		[5]: UserSorts_upvr (readonly)
	]]
	return function(arg1_2) -- Line 16
		--[[ Upvalues[7]:
			[1]: arg2 (readonly)
			[2]: RetrievalStatus_upvr (copied, readonly)
			[3]: ApiFetchUsersFriends_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: Constants_upvr (copied, readonly)
			[6]: GetFFlagInviteListRerank_upvr (copied, readonly)
			[7]: UserSorts_upvr (copied, readonly)
		]]
		if arg1_2:getState().Friends.retrievalStatus[arg2] ~= RetrievalStatus_upvr.Fetching then
			local ThumbnailRequest = Constants_upvr.ThumbnailRequest
			if GetFFlagInviteListRerank_upvr() then
				ThumbnailRequest = UserSorts_upvr.StatusFrequents
			else
				ThumbnailRequest = nil
			end
			arg1_2:dispatch(ApiFetchUsersFriends_upvr(arg1, arg2, ThumbnailRequest.InviteToGame, ThumbnailRequest))
		end
	end
end