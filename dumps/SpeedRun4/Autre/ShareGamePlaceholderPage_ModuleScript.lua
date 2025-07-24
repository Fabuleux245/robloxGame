-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:47
-- Luau version 6, Types version 3
-- Time taken: 0.001641 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local ShareGame = RobloxGui.Modules.Settings.Pages.ShareGame
local any_CreateNewPage_result1_upvr = require(RobloxGui.Modules.Settings.SettingsPageFactory):CreateNewPage()
any_CreateNewPage_result1_upvr.TabHeader = nil
any_CreateNewPage_result1_upvr.PageListLayout.Parent = nil
any_CreateNewPage_result1_upvr.ShouldShowBottomBar = false
any_CreateNewPage_result1_upvr.ShouldShowHubBar = false
any_CreateNewPage_result1_upvr.IsPageClipped = false
any_CreateNewPage_result1_upvr.Page.Name = "ShareGameDummy"
any_CreateNewPage_result1_upvr.Page.Size = UDim2.new(1, 0, 0, 0)
local Constants_upvr = require(ShareGame.Constants)
local OpenPage_upvr = require(ShareGame.Actions.OpenPage)
local ClosePage_upvr = require(ShareGame.Actions.ClosePage)
function any_CreateNewPage_result1_upvr.ConnectHubToApp(arg1, arg2, arg3) -- Line 32
	--[[ Upvalues[4]:
		[1]: any_CreateNewPage_result1_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: OpenPage_upvr (readonly)
		[4]: ClosePage_upvr (readonly)
	]]
	any_CreateNewPage_result1_upvr:SetHub(arg2)
	arg3.store.changed:connect(function(arg1_2, arg2_2) -- Line 35
		--[[ Upvalues[2]:
			[1]: Constants_upvr (copied, readonly)
			[2]: any_CreateNewPage_result1_upvr (copied, readonly)
		]]
		local Page = arg1_2.Page
		if Page.Route == Constants_upvr.PageRoute.SHARE_GAME and arg2_2.Page.IsOpen and not Page.IsOpen then
			any_CreateNewPage_result1_upvr.HubRef:PopMenu(nil, true)
		end
	end)
	any_CreateNewPage_result1_upvr.Displayed.Event:Connect(function() -- Line 47
		--[[ Upvalues[3]:
			[1]: arg3 (readonly)
			[2]: OpenPage_upvr (copied, readonly)
			[3]: Constants_upvr (copied, readonly)
		]]
		if not arg3.store:getState().Page.IsOpen then
			arg3.store:dispatch(OpenPage_upvr(Constants_upvr.PageRoute.SETTINGS_HUB))
		end
	end)
	any_CreateNewPage_result1_upvr.Hidden.Event:Connect(function() -- Line 55
		--[[ Upvalues[3]:
			[1]: arg3 (readonly)
			[2]: ClosePage_upvr (copied, readonly)
			[3]: Constants_upvr (copied, readonly)
		]]
		if arg3.store:getState().Page.IsOpen then
			arg3.store:dispatch(ClosePage_upvr(Constants_upvr.PageRoute.SETTINGS_HUB))
		end
	end)
	arg3.store:dispatch(ClosePage_upvr(Constants_upvr.PageRoute.SETTINGS_HUB))
end
local ClearShareInviteLink_2_upvr = require(game:GetService("CorePackages").Workspace.Packages.NotificationsCommon).ReducerDependencies.ShareLinksRodux.Actions.ClearShareInviteLink
function any_CreateNewPage_result1_upvr.ClearShareInviteLink(arg1, arg2) -- Line 68
	--[[ Upvalues[1]:
		[1]: ClearShareInviteLink_2_upvr (readonly)
	]]
	if arg2.store:getState().ShareLinks.Invites.ShareInviteLink ~= nil then
		arg2.store:dispatch(ClearShareInviteLink_2_upvr())
	end
end
return any_CreateNewPage_result1_upvr