-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:32
-- Luau version 6, Types version 3
-- Time taken: 0.006992 seconds

local CorePackages_2 = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Roact_upvr_2 = require(CorePackages_2.Packages.Roact)
local ShareGame_2 = RobloxGui.Modules.Settings.Pages.ShareGame
local ReducerDependencies = require(CorePackages_2.Workspace.Packages.NotificationsCommon).ReducerDependencies
local var50_upvr = require(ShareGame_2.getTranslator)()
local any_extend_result1 = Roact_upvr_2.PureComponent:extend("ShareInviteLink")
local var52_upvw = 12
local var53_upvw = 8
local var54_upvw = 69
if require(RobloxGui.Modules.Flags.GetFFlagEnableNewInviteMenu)() then
	var52_upvw = 16
	var53_upvw = 12
	var54_upvw = 66
end
local any_GetPlatform_result1_2 = game:GetService("UserInputService"):GetPlatform()
local tbl_15 = {
	externalContentSharingProtocol = require(CorePackages_2.Workspace.Packages.ExternalContentSharingProtocol).ExternalContentSharingProtocol.default;
}
local var57 = true
if any_GetPlatform_result1_2 ~= Enum.Platform.Windows then
	var57 = true
	if any_GetPlatform_result1_2 ~= Enum.Platform.OSX then
		if any_GetPlatform_result1_2 ~= Enum.Platform.UWP then
			var57 = false
		else
			var57 = true
		end
	end
end
tbl_15.isDesktopClient = var57
any_extend_result1.defaultProps = tbl_15
function any_extend_result1.init(arg1) -- Line 66
	arg1.state = {
		showCopiedText = false;
	}
	function arg1.displayShareSheet(arg1_3) -- Line 71
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local props = arg1.props
		if props.externalContentSharingProtocol then
			props.externalContentSharingProtocol:shareUrl({
				url = arg1_3.shortUrl;
				context = "V1Menu";
			})
			if props.isDesktopClient then
				arg1:setState({
					showCopiedText = true;
				})
				task.delay(1, function() -- Line 82
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					arg1:setState({
						showCopiedText = false;
					})
				end)
			end
		end
	end
end
local ShareLinksRodux_upvr = ReducerDependencies.ShareLinksRodux
function any_extend_result1.didUpdate(arg1, arg2) -- Line 90
	--[[ Upvalues[1]:
		[1]: ShareLinksRodux_upvr (readonly)
	]]
	if arg2.shareInviteLink == nil and arg1.props.shareInviteLink ~= nil then
		arg1.props.analytics:linkGenerated({
			linkType = ShareLinksRodux_upvr.Enums.LinkType.ExperienceInvite.rawValue();
			linkId = arg1.props.shareInviteLink.linkId;
		})
		arg1.displayShareSheet(arg1.props.shareInviteLink)
	end
end
local Constants_upvr = require(ShareGame_2.Constants)
local Theme_upvr_2 = require(RobloxGui.Modules.Settings.Theme)
local Color3_fromRGB_result1_upvr_2 = Color3.fromRGB(79, 84, 95)
local ShareButton_upvr_2 = require(ShareGame_2.Components.ShareButton)
local any_FormatByKey_result1_upvr_3 = var50_upvr:FormatByKey("Feature.SocialShare.Label.Copied")
local any_FormatByKey_result1_upvr = var50_upvr:FormatByKey("Feature.SocialShare.Action.Share")
local NetworkStatus_upvr_2 = ReducerDependencies.RoduxNetworking.Enum.NetworkStatus
function any_extend_result1.render(arg1) -- Line 103
	--[[ Upvalues[12]:
		[1]: Constants_upvr (readonly)
		[2]: Roact_upvr_2 (readonly)
		[3]: Theme_upvr_2 (readonly)
		[4]: Color3_fromRGB_result1_upvr_2 (readonly)
		[5]: var52_upvw (read and write)
		[6]: var53_upvw (read and write)
		[7]: var50_upvr (readonly)
		[8]: var54_upvw (read and write)
		[9]: ShareButton_upvr_2 (readonly)
		[10]: any_FormatByKey_result1_upvr_3 (readonly)
		[11]: any_FormatByKey_result1_upvr (readonly)
		[12]: NetworkStatus_upvr_2 (readonly)
	]]
	local module = {
		Corner = Roact_upvr_2.createElement("UICorner", {
			CornerRadius = Theme_upvr_2.MenuContainerCornerRadius;
		});
		UIPadding = Roact_upvr_2.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, var52_upvw);
			PaddingRight = UDim.new(0, var52_upvw);
			PaddingTop = UDim.new(0, var53_upvw);
			PaddingBottom = UDim.new(0, var53_upvw);
		});
		UIListLayout = Roact_upvr_2.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
		Title = Roact_upvr_2.createElement("TextLabel", {
			BackgroundTransparency = 1;
			TextXAlignment = Enum.TextXAlignment.Left;
			LayoutOrder = 0;
			Text = var50_upvr:FormatByKey("Feature.SocialShare.Label.ShareServerLink");
			Size = UDim2.new(1, -var54_upvw, 1, 0);
			TextSize = Theme_upvr_2.textSize(Constants_upvr.LayoutSpecific[arg1.props.deviceLayout].PAGE_TITLE_TEXT_SIZE, "ShareLinkTitle");
			TextColor3 = Constants_upvr.Color.WHITE;
			Font = Theme_upvr_2.font(Enum.Font.SourceSansSemibold, "Semibold");
		});
	}
	local tbl_9 = {
		size = UDim2.new(0, var54_upvw, 1, 0);
	}
	local var82 = 1
	tbl_9.layoutOrder = var82
	function tbl_9.onShare() -- Line 110
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.analytics:onShareButtonClick()
		if arg1.props.shareInviteLink == nil then
			arg1.props.fetchShareInviteLink()
		else
			arg1.displayShareSheet(arg1.props.shareInviteLink)
		end
	end
	if arg1.state.showCopiedText then
		var82 = any_FormatByKey_result1_upvr_3
	else
		var82 = any_FormatByKey_result1_upvr
	end
	tbl_9.text = var82
	var82 = false
	local var83 = var82
	if arg1.props.fetchShareInviteLinkNetworkStatus ~= NetworkStatus_upvr_2.Fetching then
		var83 = not arg1.state.showCopiedText
	end
	tbl_9.isEnabled = var83
	module.ShareButton = Roact_upvr_2.createElement(ShareButton_upvr_2, tbl_9)
	return Roact_upvr_2.createElement("Frame", {
		Size = arg1.props.size;
		Position = arg1.props.position;
		LayoutOrder = arg1.props.layoutOrder;
		BackgroundColor3 = Theme_upvr_2.color("PlayerRowFrame", Color3_fromRGB_result1_upvr_2);
		BackgroundTransparency = Theme_upvr_2.transparency("PlayerRowFrame", 0);
		ZIndex = arg1.props.zIndex;
		BorderSizePixel = 0;
	}, module)
end
return require(CorePackages_2.Packages.RoactRodux).connect(require(ShareGame_2.Components.ShareInviteLinkMapStateToProps), require(ShareGame_2.Components.ShareInviteLinkMapDispatchToProps))(any_extend_result1)