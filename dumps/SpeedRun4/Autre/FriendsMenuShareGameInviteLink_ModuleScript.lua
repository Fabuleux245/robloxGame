-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:23
-- Luau version 6, Types version 3
-- Time taken: 0.003050 seconds

local Parent = script:FindFirstAncestor("FriendsMenu").Parent
local Foundation_upvr = require(Parent.Foundation)
local ReducerDependencies = require(Parent.NotificationsCommon).ReducerDependencies
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local DeviceInfo_upvr = require(Parent.NotificationsCommon).DeviceInfo
local React_upvr = require(Parent.React)
local ShareLinksNetworking_upvr = ReducerDependencies.ShareLinksNetworking
local ShareLinksRodux_upvr = ReducerDependencies.ShareLinksRodux
local default_upvr = require(Parent.ExternalContentSharingProtocol).ExternalContentSharingProtocol.default
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Throttle_upvr = require(Parent.NotificationsCommon).Throttle
local Popover_upvr = Foundation_upvr.Popover
local IconSize_upvr = Foundation_upvr.Enums.IconSize
local PopoverAlign_upvr = Foundation_upvr.Enums.PopoverAlign
return function(arg1) -- Line 27
	--[[ Upvalues[12]:
		[1]: useDispatch_upvr (readonly)
		[2]: DeviceInfo_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: ShareLinksNetworking_upvr (readonly)
		[5]: ShareLinksRodux_upvr (readonly)
		[6]: default_upvr (readonly)
		[7]: useLocalization_upvr (readonly)
		[8]: Foundation_upvr (readonly)
		[9]: Throttle_upvr (readonly)
		[10]: Popover_upvr (readonly)
		[11]: IconSize_upvr (readonly)
		[12]: PopoverAlign_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_isDesktopDevice_result1_upvr = DeviceInfo_upvr.isDesktopDevice()
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local function var19_upvr() -- Line 31
		--[[ Upvalues[6]:
			[1]: any_isDesktopDevice_result1_upvr (readonly)
			[2]: any_useState_result1_upvr (readonly)
			[3]: useDispatch_upvr_result1_upvr (readonly)
			[4]: ShareLinksNetworking_upvr (copied, readonly)
			[5]: ShareLinksRodux_upvr (copied, readonly)
			[6]: default_upvr (copied, readonly)
		]]
		if any_isDesktopDevice_result1_upvr and any_useState_result1_upvr then
		else
			useDispatch_upvr_result1_upvr(ShareLinksNetworking_upvr.GenerateLink.API({
				linkType = ShareLinksRodux_upvr.Enums.LinkType.ExperienceInvite.rawValue();
			})):andThen(function(arg1_2) -- Line 40
				--[[ Upvalues[1]:
					[1]: default_upvr (copied, readonly)
				]]
				if arg1_2 and arg1_2.responseBody and arg1_2.responseBody.shortUrl and default_upvr then
					default_upvr:shareUrl({
						url = arg1_2.responseBody.shortUrl;
						context = "V1Menu";
					})
				end
			end):catch(function(arg1_3) -- Line 53
				warn(arg1_3)
			end)
		end
	end
	local tbl_3 = {}
	local var26
	if not any_isDesktopDevice_result1_upvr then
		var26 = "Feature.SocialShare.ShareWithPeopleYouKnow"
	else
		var26 = "Feature.SocialShare.Label.CopyLinkToShareWithPeople"
	end
	tbl_3.copyLink = var26
	var26 = "Feature.SocialShare.Label.Copied"
	tbl_3.copied = var26
	local useLocalization_upvr_result1 = useLocalization_upvr(tbl_3)
	var26 = React_upvr
	var26 = Foundation_upvr.View
	local module = {}
	local tbl = {}
	local tbl_2 = {}
	local tbl_4 = {}
	if not any_isDesktopDevice_result1_upvr then
	else
	end
	tbl_4.name = "icons/menu/link"
	tbl_4.size = IconSize_upvr.Medium
	tbl_2.ShareIcon = React_upvr.createElement(Foundation_upvr.Icon, tbl_4)
	tbl.ShareIconContainer = React_upvr.createElement(Foundation_upvr.View, {
		tag = "col radius-circle bg-surface-300 align-x-center align-y-center";
		Size = UDim2.fromOffset(56, 56);
	}, tbl_2)
	tbl.PopoverAnchor = React_upvr.createElement(Popover_upvr.Anchor, nil, {
		LabelText = React_upvr.createElement(Foundation_upvr.Text, {
			tag = "text-title-large size-full align-x-left text-align-x-left";
			Text = useLocalization_upvr_result1.copyLink;
		});
	})
	tbl.Content = React_upvr.createElement(Popover_upvr.Content, {
		tags = "size-full auto-y";
		hasArrow = false;
		align = PopoverAlign_upvr.End;
	}, {
		CopiedPopoverText = React_upvr.createElement(Foundation_upvr.Text, {
			tag = "auto-xy text-title-small text-align-x-center margin-medium";
			Text = useLocalization_upvr_result1.copied;
		});
	})
	module.PopoverRoot = React_upvr.createElement(Popover_upvr.Root, {
		isOpen = any_useState_result1_upvr;
	}, tbl)
	return var26.createElement(var26, {
		tag = "row size-full-1400 padding-x-xxlarge gap-medium align-y-center";
		LayoutOrder = arg1.layoutOrder;
		onActivated = Throttle_upvr(function() -- Line 66
			--[[ Upvalues[3]:
				[1]: var19_upvr (readonly)
				[2]: any_isDesktopDevice_result1_upvr (readonly)
				[3]: any_useState_result2_upvr (readonly)
			]]
			var19_upvr()
			if any_isDesktopDevice_result1_upvr then
				any_useState_result2_upvr(true)
				task.delay(2, function() -- Line 70
					--[[ Upvalues[1]:
						[1]: any_useState_result2_upvr (copied, readonly)
					]]
					any_useState_result2_upvr(false)
				end)
			end
		end);
	}, module)
end