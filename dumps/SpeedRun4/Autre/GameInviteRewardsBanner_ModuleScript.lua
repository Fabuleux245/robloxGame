-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:47
-- Luau version 6, Types version 3
-- Time taken: 0.004428 seconds

local GameInvite = script:FindFirstAncestor("GameInvite")
local Parent = GameInvite.Parent
local Foundation_upvr = require(Parent.Foundation)
local GroupService_upvr = game:GetService("GroupService")
local Players_upvr = game:GetService("Players")
local function var4_upvr(arg1) -- Line 29
	--[[ Upvalues[2]:
		[1]: GroupService_upvr (readonly)
		[2]: Players_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 15 start (CF ANALYSIS FAILED)
	do
		return ""
	end
	-- KONSTANTERROR: [5] 4. Error Block 15 end (CF ANALYSIS FAILED)
end
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local React_upvr = require(Parent.React)
local GameInviteRewardsInfoModal_upvr = require(GameInvite.Components.GameInviteRewardsInfoModal)
local IconButton_upvr = Foundation_upvr.IconButton
local IconSize_upvr = Foundation_upvr.Enums.IconSize
return function(arg1) -- Line 56
	--[[ Upvalues[8]:
		[1]: useLocalization_upvr (readonly)
		[2]: MarketplaceService_upvr (readonly)
		[3]: var4_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: GameInviteRewardsInfoModal_upvr (readonly)
		[6]: Foundation_upvr (readonly)
		[7]: IconButton_upvr (readonly)
		[8]: IconSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_2 = {
		rewardsModalTitle = "Roblox.ReferralRewards.RewardBannerModalTitle";
	}
	local tbl_4 = {"Roblox.ReferralRewards.RewardBannerHeader"}
	local var16
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var16 = arg1.rewardMetadata.name
		return var16
	end
	if not arg1.rewardMetadata or not INLINED() then
		var16 = ""
	end
	tbl_4.rewardName = var16
	tbl_2.rewardsHeader = tbl_4
	local tbl_3 = {"Roblox.ReferralRewards.RewardBannerBody"}
	if game.PlaceId ~= nil and game.PlaceId ~= 0 then
		var16 = MarketplaceService_upvr:GetProductInfo(game.PlaceId).Name
	else
		var16 = ""
	end
	tbl_3.gameName = var16
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var16 = arg1.rewardMetadata.name
		return var16
	end
	if not arg1.rewardMetadata or not INLINED_2() then
		var16 = ""
	end
	tbl_3.rewardName = var16
	tbl_2.rewardsBody = tbl_3
	tbl_2.rewardsDetailsTitle = "Roblox.ReferralRewards.RewardBannerModalRewardDetails"
	tbl_2.rewardsLimitsTitle = "Roblox.ReferralRewards.AdditionalCreatorTerms"
	local tbl_7 = {"Roblox.ReferralRewards.RewardBannerModalCreatorSupport"}
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var16 = var4_upvr(game.CreatorId)
		return var16
	end
	if game.CreatorId == nil or game.CreatorId == 0 or not INLINED_3() then
		var16 = ""
	end
	tbl_7.creatorName = var16
	tbl_2.rewardsCreatorSupportText = tbl_7
	tbl_2.rewardsExpiresText = "Roblox.ReferralRewards.Expires"
	tbl_2.rewardsTerms = "Roblox.ReferralRewards.ReferralProgramTerms"
	local var8_result1 = useLocalization_upvr(tbl_2)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	var16 = React_upvr
	var16 = React_upvr.Fragment
	local module = {}
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		tbl_5.setModalOpen = any_useState_result2_upvr
		tbl_5.modalOpen = any_useState_result1
		tbl_5.expiryUtc = arg1.rewardMetadata.rewardTimeOffset.endUtc or ""
		tbl_5.rewardsTerms = var8_result1.rewardsTerms
		tbl_5.rewardsExpiresText = var8_result1.rewardsExpiresText
		tbl_5.rewardCreatorSupportText = var8_result1.rewardsCreatorSupportText
		tbl_5.rewardLimitsBody = arg1.rewardMetadata.limits or ""
		tbl_5.rewardLimitsTitle = var8_result1.rewardsLimitsTitle
		tbl_5.rewardDetailsBody = arg1.rewardMetadata.description or ""
		tbl_5.rewardDetailsTitle = var8_result1.rewardsDetailsTitle
		tbl_5.title = var8_result1.rewardsModalTitle
		local tbl_5 = {}
		return React_upvr.createElement(GameInviteRewardsInfoModal_upvr, tbl_5)
	end
	if not any_useState_result1 or not arg1.rewardMetadata or not var8_result1 or not INLINED_4() then
	end
	module.RewardInfoModal = nil
	local tbl_8 = {}
	local tbl = {}
	local function INLINED_5() -- Internal function, doesn't exist in bytecode
		tbl_6.LayoutOrder = 0
		tbl_6.tag = "col shrink size-1200-1200 radius-medium self-end"
		tbl_6.Image = "rbxassetid://"..arg1.rewardMetadata.iconAssetId
		local tbl_6 = {}
		return React_upvr.createElement(Foundation_upvr.Image, tbl_6)
	end
	if not arg1.rewardMetadata or arg1.rewardMetadata.iconAssetId == nil or arg1.rewardMetadata.iconAssetId == "" or not INLINED_5() then
	end
	tbl.RewardIcon = nil
	tbl.RewardTextContainer = React_upvr.createElement(Foundation_upvr.View, {
		tag = "col fill auto-xy items-start";
		LayoutOrder = 1;
	}, {
		Text = React_upvr.createElement(Foundation_upvr.Text, {
			tag = "auto-xy text-title-medium text-wrap text-align-x-left";
			Text = var8_result1.rewardsHeader;
			LayoutOrder = 0;
		});
		Subtext = React_upvr.createElement(Foundation_upvr.Text, {
			tag = "auto-xy text-body-small text-wrap text-align-x-left";
			Text = var8_result1.rewardsBody;
			LayoutOrder = 1;
		});
	})
	tbl.RewardInfoButtonView = React_upvr.createElement(Foundation_upvr.View, {
		tag = "col auto-xy items-end";
		LayoutOrder = 2;
	}, {
		RewardInfoButton = React_upvr.createElement(IconButton_upvr, {
			testId = "RewardInfoButton";
			icon = "icons/actions/info_small";
			size = IconSize_upvr.Small;
			onActivated = function() -- Line 137, Named "onActivated"
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr (readonly)
				]]
				any_useState_result2_upvr(true)
			end;
		});
	})
	tbl_8.RewardBannerCard = React_upvr.createElement(Foundation_upvr.View, {
		tag = "row size-full-0 auto-y wrap bg-surface-300 gap-medium padding-medium radius-medium align-y-top";
	}, tbl)
	module.RewardBannerContainer = React_upvr.createElement(Foundation_upvr.View, {
		tag = "row margin-x-xxlarge size-full-0 auto-y items-center";
		layoutOrder = arg1.layoutOrder;
	}, tbl_8)
	return var16.createElement(var16, nil, module)
end