-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:48
-- Luau version 6, Types version 3
-- Time taken: 0.003337 seconds

local GameInvite = script:FindFirstAncestor("GameInvite")
local Parent = GameInvite.Parent
local UIBlox = require(Parent.UIBlox)
local RoactUtils = require(Parent.RoactUtils)
local ReducerDependencies = require(Parent.NotificationsCommon).ReducerDependencies
local Images = UIBlox.App.ImageSet.Images
game:DefineFastFlag("generateGameInviteShareLinkOnClick", false)
local tbl_2_upvr = {
	copied = "Feature.SocialShare.Label.Copied";
	copyLink = "Feature.SocialShare.Action.CopyLink";
}
local React_upvr = require(Parent.React)
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local getLocalizedStrings_upvr = require(Parent.NotificationsCommon).LocalizationHelper.getLocalizedStrings
local ShareLinksNetworking_upvr = ReducerDependencies.ShareLinksNetworking
local ShareLinksRodux_upvr = ReducerDependencies.ShareLinksRodux
local GameInviteAnalyticsManager_upvr = require(GameInvite.analytics.GameInviteAnalyticsManager)
local default_upvr = require(Parent.ExternalContentSharingProtocol).ExternalContentSharingProtocol.default
local Throttle_upvr = require(Parent.NotificationsCommon).Throttle
local LinkButton_upvr = UIBlox.App.Button.LinkButton
local NetworkStatus_upvr = ReducerDependencies.RoduxNetworking.Enum.NetworkStatus
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local icons_menu_link_upvr = Images["icons/menu/link"]
local icons_actions_share_upvr = Images["icons/actions/share"]
return function(arg1) -- Line 46
	--[[ Upvalues[16]:
		[1]: React_upvr (readonly)
		[2]: useSelector_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: getLocalizedStrings_upvr (readonly)
		[6]: tbl_2_upvr (readonly)
		[7]: ShareLinksNetworking_upvr (readonly)
		[8]: ShareLinksRodux_upvr (readonly)
		[9]: GameInviteAnalyticsManager_upvr (readonly)
		[10]: default_upvr (readonly)
		[11]: Throttle_upvr (readonly)
		[12]: LinkButton_upvr (readonly)
		[13]: NetworkStatus_upvr (readonly)
		[14]: ImageSetButton_upvr (readonly)
		[15]: icons_menu_link_upvr (readonly)
		[16]: icons_actions_share_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local useSelector_upvr_result1 = useSelector_upvr(function(arg1_2) -- Line 49
		return arg1_2
	end)
	local useStyle_upvr_result1 = useStyle_upvr()
	local var13_result1 = getLocalizedStrings_upvr(tbl_2_upvr)
	local ShareInviteLink_upvr = useSelector_upvr_result1.ShareLinks.Invites.ShareInviteLink
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local function var31_upvr() -- Line 61
		--[[ Upvalues[5]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: ShareLinksNetworking_upvr (copied, readonly)
			[3]: ShareLinksRodux_upvr (copied, readonly)
			[4]: GameInviteAnalyticsManager_upvr (copied, readonly)
			[5]: default_upvr (copied, readonly)
		]]
		useDispatch_upvr_result1_upvr(ShareLinksNetworking_upvr.GenerateLink.API({
			linkType = ShareLinksRodux_upvr.Enums.LinkType.ExperienceInvite.rawValue();
		})):andThen(function(arg1_3) -- Line 64
			--[[ Upvalues[3]:
				[1]: GameInviteAnalyticsManager_upvr (copied, readonly)
				[2]: ShareLinksRodux_upvr (copied, readonly)
				[3]: default_upvr (copied, readonly)
			]]
			GameInviteAnalyticsManager_upvr:linkGenerated({
				linkType = ShareLinksRodux_upvr.Enums.LinkType.ExperienceInvite.rawValue();
				linkId = arg1_3.responseBody.linkId;
			})
			if game:GetFastFlag("generateGameInviteShareLinkOnClick") and arg1_3 and arg1_3.responseBody and arg1_3.responseBody.shortUrl and default_upvr then
				default_upvr:shareUrl({
					url = arg1_3.responseBody.shortUrl;
					context = "V1Menu";
				})
			end
		end)
	end
	React_upvr.useEffect(function() -- Line 86
		--[[ Upvalues[2]:
			[1]: ShareInviteLink_upvr (readonly)
			[2]: var31_upvr (readonly)
		]]
		if not game:GetFastFlag("generateGameInviteShareLinkOnClick") and not ShareInviteLink_upvr then
			var31_upvr()
		end
	end, {})
	local var18_result1 = Throttle_upvr(function() -- Line 100
		--[[ Upvalues[6]:
			[1]: ShareInviteLink_upvr (readonly)
			[2]: GameInviteAnalyticsManager_upvr (copied, readonly)
			[3]: default_upvr (copied, readonly)
			[4]: var31_upvr (readonly)
			[5]: arg1 (readonly)
			[6]: any_useState_result2_upvr (readonly)
		]]
		local var40
		if ShareInviteLink_upvr then
			var40 = ShareInviteLink_upvr.linkId
		else
			var40 = nil
		end
		GameInviteAnalyticsManager_upvr:onShareButtonClick(var40)
		if ShareInviteLink_upvr then
			if default_upvr then
				default_upvr:shareUrl({
					url = ShareInviteLink_upvr.shortUrl;
					context = "V1Menu";
				})
				-- KONSTANTWARNING: GOTO [32] #27
			end
		else
			var31_upvr()
		end
		if arg1.isDesktop then
			any_useState_result2_upvr(true)
			task.delay(1, function() -- Line 116
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr (copied, readonly)
				]]
				any_useState_result2_upvr(false)
			end)
		end
	end)
	if arg1.isDesktop then
		local var44
		if arg1.isFullSize then
			local module = {}
			local tbl = {}
			var44 = true
			if ShareLinksNetworking_upvr.GenerateLink.getStatus(useSelector_upvr_result1, {
				linkType = ShareLinksRodux_upvr.Enums.LinkType.ExperienceInvite.rawValue();
			}) ~= NetworkStatus_upvr.Fetching then
				var44 = any_useState_result1
			end
			tbl.isDisabled = var44
			tbl.isLoading = false
			tbl.onActivated = var18_result1
			tbl.size = arg1.size
			if not any_useState_result1 or not var13_result1.copied then
			end
			tbl.text = var13_result1.copyLink
			module.LinkButton = React_upvr.createElement(LinkButton_upvr, tbl)
			return React_upvr.createElement("Frame", {
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
				Size = arg1.size;
				LayoutOrder = arg1.layoutOrder;
			}, module)
		end
		return React_upvr.createElement(ImageSetButton_upvr, {
			LayoutOrder = arg1.layoutOrder;
			BackgroundTransparency = 1;
			Size = arg1.size;
			[React_upvr.Event.Activated] = var18_result1;
			Image = icons_menu_link_upvr;
			ImageColor3 = useStyle_upvr_result1.Theme.IconEmphasis.Color;
			ImageTransparency = useStyle_upvr_result1.Theme.IconEmphasis.Transparency;
			BorderSizePixel = 0;
		})
	end
	return React_upvr.createElement(ImageSetButton_upvr, {
		LayoutOrder = arg1.layoutOrder;
		BackgroundTransparency = 1;
		Size = arg1.size;
		[React_upvr.Event.Activated] = var18_result1;
		Image = icons_actions_share_upvr;
		ImageColor3 = useStyle_upvr_result1.Theme.IconEmphasis.Color;
		ImageTransparency = useStyle_upvr_result1.Theme.IconEmphasis.Transparency;
		BorderSizePixel = 0;
	})
end