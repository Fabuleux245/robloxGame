-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:22
-- Luau version 6, Types version 3
-- Time taken: 0.002442 seconds

local GamePlayButton = script:FindFirstAncestor("GamePlayButton")
local LocalizationService_upvr = game:GetService("LocalizationService")
local Parent = GamePlayButton.Parent
local Localization_upvr = require(Parent.RobloxAppLocales).Localization
local var5_upvw
local var6_upvw = ""
local function _(arg1, arg2) -- Line 26, Named "translateString"
	--[[ Upvalues[4]:
		[1]: LocalizationService_upvr (readonly)
		[2]: var5_upvw (read and write)
		[3]: Localization_upvr (readonly)
		[4]: var6_upvw (read and write)
	]]
	local RobloxLocaleId = LocalizationService_upvr.RobloxLocaleId
	if var5_upvw == nil then
		var5_upvw = Localization_upvr.new(RobloxLocaleId)
		var6_upvw = RobloxLocaleId
	end
	if var6_upvw ~= RobloxLocaleId then
		var5_upvw:SetLocale(RobloxLocaleId)
		var6_upvw = RobloxLocaleId
	end
	return var5_upvw:Format(arg1, arg2)
end
local PlayabilityStatusEnum_upvr = require(Parent.PlayabilityRodux).Enums.PlayabilityStatusEnum
local getAppFeaturePolicies_upvr = require(Parent.UniversalAppPolicy).getAppFeaturePolicies
local LaunchErrorLocalizationKeys_upvr = require(Parent.GameLaunch).LaunchErrorLocalizationKeys
local function var8_upvr(arg1, arg2, arg3) -- Line 39
	--[[ Upvalues[3]:
		[1]: PlayabilityStatusEnum_upvr (readonly)
		[2]: getAppFeaturePolicies_upvr (readonly)
		[3]: LaunchErrorLocalizationKeys_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [3] 3. Error Block 19 start (CF ANALYSIS FAILED)
	if arg2.playabilityStatus == PlayabilityStatusEnum_upvr.PurchaseRequired or arg2.playabilityStatus == PlayabilityStatusEnum_upvr.FiatPurchaseRequired or arg3 == nil or arg3.isForSale == false then
		-- KONSTANTERROR: [23] 14. Error Block 17 start (CF ANALYSIS FAILED)
		do
			return "Feature.ExperienceDetails.UnplayableError.UnplayableOther"
		end
		-- KONSTANTERROR: [23] 14. Error Block 17 end (CF ANALYSIS FAILED)
	end
	if arg2.playabilityStatus == PlayabilityStatusEnum_upvr.DeviceRestricted then
		local var14 = getAppFeaturePolicies_upvr().getPlatformDisplayName() or ""
		if var14 ~= "" then
			return "Feature.ExperienceDetails.UnplayableError.DeviceRestrictedCustom", {
				device = var14;
			}
		end
	end
	do
		return LaunchErrorLocalizationKeys_upvr[arg2.playabilityStatus]
	end
	-- KONSTANTERROR: [3] 3. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [50] 34. Error Block 13 start (CF ANALYSIS FAILED)
	do
		return nil
	end
	-- KONSTANTERROR: [50] 34. Error Block 13 end (CF ANALYSIS FAILED)
end
local FFlagLuaAppShowNoticeOnEdp_upvr = require(Parent.SharedFlags).FFlagLuaAppShowNoticeOnEdp
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local FFlagLuaAppUnplayableDisplayText_upvr = require(Parent.SharedFlags).FFlagLuaAppUnplayableDisplayText
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useGameInfosSelector_upvr = require(Parent.GameInfosRodux).useGameInfosSelector
local useGameProductInfoSelector_upvr = require(Parent.GameProductInfoRodux).useGameProductInfoSelector
local PlayButtonStates_upvr = require(GamePlayButton.PlayButtonStates)
local ExperienceDetailsNoticeType_upvr = require(Parent.DiscoveryTypes).ExperienceDetailsNoticeType
return function(arg1, arg2, arg3) -- Line 74
	--[[ Upvalues[13]:
		[1]: FFlagLuaAppShowNoticeOnEdp_upvr (readonly)
		[2]: useAppPolicy_upvr (readonly)
		[3]: FFlagLuaAppUnplayableDisplayText_upvr (readonly)
		[4]: useSelector_upvr (readonly)
		[5]: useGameInfosSelector_upvr (readonly)
		[6]: useGameProductInfoSelector_upvr (readonly)
		[7]: PlayButtonStates_upvr (readonly)
		[8]: var8_upvr (readonly)
		[9]: ExperienceDetailsNoticeType_upvr (readonly)
		[10]: LocalizationService_upvr (readonly)
		[11]: var5_upvw (read and write)
		[12]: Localization_upvr (readonly)
		[13]: var6_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 39 start (CF ANALYSIS FAILED)
	if FFlagLuaAppShowNoticeOnEdp_upvr then
		local function _(arg1_2) -- Line 77
			return {
				experienceDetailsNoticeType = arg1_2.getExperienceDetailsNoticeType();
			}
		end
	end
	if FFlagLuaAppUnplayableDisplayText_upvr then
		local function _(arg1_3) -- Line 86
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var28
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var28 = arg1_3.PlayabilityStatus[arg1].unplayableDisplayText
				return var28
			end
			if not arg1_3.PlayabilityStatus or not arg1_3.PlayabilityStatus[arg1] or not INLINED() then
				var28 = nil
			end
			return var28
		end
	end
	local useSelector_upvr_result1 = useSelector_upvr(function(arg1_4) -- Line 94
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1_4.GameDetails[arg1]
	end)
	local useGameInfosSelector_upvr_result1 = useGameInfosSelector_upvr(arg1)
	if not useSelector_upvr_result1 or not useSelector_upvr_result1.rootPlaceId or not useGameInfosSelector_upvr_result1 or not useGameInfosSelector_upvr_result1.placeId then
	end
	-- KONSTANTERROR: [0] 1. Error Block 39 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [53] 50. Error Block 45 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [53] 50. Error Block 45 end (CF ANALYSIS FAILED)
end