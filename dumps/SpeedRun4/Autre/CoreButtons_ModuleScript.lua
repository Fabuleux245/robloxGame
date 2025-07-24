-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:59
-- Luau version 6, Types version 3
-- Time taken: 0.002042 seconds

local PeopleReactView = script:FindFirstAncestor("PeopleReactView")
local Parent = PeopleReactView.Parent
local PeopleService = require(Parent.PeopleService)
local React_upvr = require(Parent.React)
local SettingsHubService_upvr = PeopleService.SettingsHubService
local PeopleAnalyticsManager_upvr = PeopleService.PeopleAnalyticsManager
local RunService_upvr = game:GetService("RunService")
local Players_upvr = game:GetService("Players")
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Constants_upvr = require(PeopleReactView.Constants)
local View_upvr = require(Parent.Foundation).View
local CoreButton_upvr = require(script.Parent.CoreButton)
return function() -- Line 26
	--[[ Upvalues[9]:
		[1]: React_upvr (readonly)
		[2]: SettingsHubService_upvr (readonly)
		[3]: PeopleAnalyticsManager_upvr (readonly)
		[4]: RunService_upvr (readonly)
		[5]: Players_upvr (readonly)
		[6]: useLocalization_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: View_upvr (readonly)
		[9]: CoreButton_upvr (readonly)
	]]
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 27
		--[[ Upvalues[1]:
			[1]: SettingsHubService_upvr (copied, readonly)
		]]
		return SettingsHubService_upvr.get().HubRef
	end, {})
	local function var23() -- Line 31
		--[[ Upvalues[2]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: PeopleAnalyticsManager_upvr (copied, readonly)
		]]
		if any_useMemo_result1_upvr then
			PeopleAnalyticsManager_upvr:trackGameInviteEntryPoint()
			any_useMemo_result1_upvr:InviteToGame()
		end
	end
	var23 = not RunService_upvr:IsStudio()
	local var25 = var23
	if var25 then
		var25 = Players_upvr.LocalPlayer
		if var25 then
			if 0 >= Players_upvr.LocalPlayer.UserId then
				var25 = false
			else
				var25 = true
			end
		end
	end
	if not var25 then
		return nil
	end
	return React_upvr.createElement(View_upvr, {
		tag = "size-full-1200 row gap-large";
	}, {
		InviteButton = React_upvr.createElement(CoreButton_upvr, {
			text = useLocalization_upvr({
				inviteFriends = Constants_upvr.PEOPLEPAGE.CORE_BUTTONS.INVITE_FRIENDS;
			}).inviteFriends;
			icon = "icons/actions/friends/friendInvite";
			LayoutOrder = 1;
			onActivated = React_upvr.useCallback(var23, {});
		});
	})
end