-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:31
-- Luau version 6, Types version 3
-- Time taken: 0.002157 seconds

local CorePackages = game:GetService("CorePackages")
local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame
local Roact_upvr = require(CorePackages.Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ShareGameContainer")
any_extend_result1.defaultProps = {
	skeletonComponent = require(ShareGame.Components.ShareGamePageFrame);
}
function any_extend_result1.init(arg1) -- Line 30
	arg1.props.reFetch()
end
function any_extend_result1.render(arg1) -- Line 34
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	return Roact_upvr.createElement(arg1.props.skeletonComponent, arg1.props)
end
local ClosePage_upvr = require(ShareGame.Actions.ClosePage)
local Constants_upvr = require(ShareGame.Constants)
local Players_upvr = game:GetService("Players")
local httpRequest_upvr = require(Modules.Common.httpRequest)
local HttpRbxApiService_upvr = game:GetService("HttpRbxApiService")
local FetchUserFriends_upvr = require(ShareGame.Thunks.FetchUserFriends)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 38
	return {
		deviceLayout = arg1.DeviceInfo.DeviceLayout;
		searchAreaActive = arg1.ConversationsSearch.SearchAreaActive;
		searchText = arg1.ConversationsSearch.SearchText;
	}
end, function(arg1) -- Line 44
	--[[ Upvalues[6]:
		[1]: ClosePage_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: httpRequest_upvr (readonly)
		[5]: HttpRbxApiService_upvr (readonly)
		[6]: FetchUserFriends_upvr (readonly)
	]]
	return {
		closePage = function() -- Line 46, Named "closePage"
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: ClosePage_upvr (copied, readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			arg1(ClosePage_upvr(Constants_upvr.PageRoute.SHARE_GAME))
		end;
		reFetch = function() -- Line 50, Named "reFetch"
			--[[ Upvalues[5]:
				[1]: Players_upvr (copied, readonly)
				[2]: httpRequest_upvr (copied, readonly)
				[3]: HttpRbxApiService_upvr (copied, readonly)
				[4]: arg1 (readonly)
				[5]: FetchUserFriends_upvr (copied, readonly)
			]]
			arg1(FetchUserFriends_upvr(httpRequest_upvr(HttpRbxApiService_upvr), tostring(Players_upvr.LocalPlayer.UserId)))
		end;
	}
end)(any_extend_result1)