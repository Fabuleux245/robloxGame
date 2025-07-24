-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:18
-- Luau version 6, Types version 3
-- Time taken: 0.004773 seconds

local GamePlayButton = script:FindFirstAncestor("GamePlayButton")
local Parent = GamePlayButton.Parent
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = require(Parent.RoactServiceTags).RoactNetworking
local AppEventIngestService_upvr = require(Parent.RoactServiceTags).AppEventIngestService
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local unlockPlayIntent_upvr = require(Parent.DiscoveryAnalytics).Events.unlockPlayIntent
local FFlagLuaAppVpcUpsell_upvr = require(Parent.SharedFlags).FFlagLuaAppVpcUpsell
local useContextualParentalControlsUpsell_upvr = require(GamePlayButton.PlayButtonLaunchChecks.useContextualParentalControlsUpsell)
local PlayabilityStatusEnum_upvr = require(Parent.PlayabilityRodux).Enums.PlayabilityStatusEnum
local GetFFlagLuaAppFetchPlayabilityKillSwitch_upvr = require(GamePlayButton.Flags.GetFFlagLuaAppFetchPlayabilityKillSwitch)
local FetchGamePlayabilityAndProductInfo_upvr = require(Parent.GameDetailRodux).FetchGamePlayabilityAndProductInfo
local OpenAgeVerificationModal_upvr = require(Parent.VoiceChat).AgeVerificationOverlay.OpenAgeVerificationModal
return function(arg1, arg2, arg3) -- Line 21
	--[[ Upvalues[12]:
		[1]: useRoactService_upvr (readonly)
		[2]: RoactNetworking_upvr (readonly)
		[3]: AppEventIngestService_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: unlockPlayIntent_upvr (readonly)
		[7]: FFlagLuaAppVpcUpsell_upvr (readonly)
		[8]: useContextualParentalControlsUpsell_upvr (readonly)
		[9]: PlayabilityStatusEnum_upvr (readonly)
		[10]: GetFFlagLuaAppFetchPlayabilityKillSwitch_upvr (readonly)
		[11]: FetchGamePlayabilityAndProductInfo_upvr (readonly)
		[12]: OpenAgeVerificationModal_upvr (readonly)
	]]
	local var4_result1_upvr = useRoactService_upvr(RoactNetworking_upvr)
	local var4_result1_upvr_2 = useRoactService_upvr(AppEventIngestService_upvr)
	local function var18(arg1_2) -- Line 31
		--[[ Upvalues[4]:
			[1]: unlockPlayIntent_upvr (copied, readonly)
			[2]: var4_result1_upvr_2 (readonly)
			[3]: arg2 (readonly)
			[4]: arg1 (readonly)
		]]
		local tbl = {}
		tbl.universeId = arg2
		tbl.upsellName = arg1_2
		local var20
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var20 = arg1.playabilityStatus
			return var20
		end
		if not arg1 or not INLINED() then
			var20 = nil
		end
		tbl.playabilityStatus = var20
		unlockPlayIntent_upvr(var4_result1_upvr_2, tbl)
	end
	local tbl_2 = {var4_result1_upvr_2}
	tbl_2[2] = arg2
	tbl_2[3] = arg1
	local any_useCallback_result1_upvr = React_upvr.useCallback(var18, tbl_2)
	var18 = nil
	local var23_upvw = var18
	if FFlagLuaAppVpcUpsell_upvr then
		var23_upvw = useContextualParentalControlsUpsell_upvr(arg2, arg3)
	end
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local module = {var4_result1_upvr}
	module[2] = arg2
	module[3] = arg1
	module[4] = arg3
	module[5] = any_useCallback_result1_upvr
	module[6] = var23_upvw
	return React_upvr.useCallback(function(arg1_3) -- Line 44
		--[[ Upvalues[12]:
			[1]: arg1 (readonly)
			[2]: PlayabilityStatusEnum_upvr (copied, readonly)
			[3]: FFlagLuaAppVpcUpsell_upvr (copied, readonly)
			[4]: GetFFlagLuaAppFetchPlayabilityKillSwitch_upvr (copied, readonly)
			[5]: useDispatch_upvr_result1_upvr (readonly)
			[6]: FetchGamePlayabilityAndProductInfo_upvr (copied, readonly)
			[7]: var4_result1_upvr (readonly)
			[8]: arg2 (readonly)
			[9]: OpenAgeVerificationModal_upvr (copied, readonly)
			[10]: any_useCallback_result1_upvr (readonly)
			[11]: var23_upvw (read and write)
			[12]: arg3 (readonly)
		]]
		local var30
		if var30 then
			var30 = true
			if arg1.playabilityStatus ~= PlayabilityStatusEnum_upvr.ContextualPlayabilityUnverifiedSeventeenPlusUser then
				var30 = FFlagLuaAppVpcUpsell_upvr
				if var30 then
					if arg1.playabilityStatus ~= PlayabilityStatusEnum_upvr.ContextualPlayabilityAgeRecommendationParentalControls then
						var30 = false
					else
						var30 = true
					end
				end
			end
			if var30 and not GetFFlagLuaAppFetchPlayabilityKillSwitch_upvr() then
				useDispatch_upvr_result1_upvr(FetchGamePlayabilityAndProductInfo_upvr.Fetch(var4_result1_upvr, arg2)):andThen(function(arg1_5) -- Line 56
					--[[ Upvalues[9]:
						[1]: PlayabilityStatusEnum_upvr (copied, readonly)
						[2]: useDispatch_upvr_result1_upvr (copied, readonly)
						[3]: OpenAgeVerificationModal_upvr (copied, readonly)
						[4]: arg2 (copied, readonly)
						[5]: any_useCallback_result1_upvr (copied, readonly)
						[6]: FFlagLuaAppVpcUpsell_upvr (copied, readonly)
						[7]: var23_upvw (copied, read and write)
						[8]: arg3 (copied, readonly)
						[9]: arg1_3 (readonly)
					]]
					local var32
					if arg1_5 ~= PlayabilityStatusEnum_upvr.ContextualPlayabilityUnverifiedSeventeenPlusUser then
						var32 = false
					else
						var32 = true
					end
					if var32 then
						useDispatch_upvr_result1_upvr(OpenAgeVerificationModal_upvr(arg2))
						any_useCallback_result1_upvr("AgeVerificationUnverifiedSeventeenPlusUser")
					else
						if FFlagLuaAppVpcUpsell_upvr and arg1_5 == PlayabilityStatusEnum_upvr.ContextualPlayabilityAgeRecommendationParentalControls then
							var23_upvw()
							return
						end
						arg3(arg1_3)
						any_useCallback_result1_upvr("GameLaunch")
					end
				end):catch(function() -- Line 75
					--[[ Upvalues[3]:
						[1]: arg3 (copied, readonly)
						[2]: arg1_3 (readonly)
						[3]: any_useCallback_result1_upvr (copied, readonly)
					]]
					arg3(arg1_3)
					any_useCallback_result1_upvr("GameLaunch")
				end)
			else
				arg3(arg1_3)
			end
		end
		arg3(arg1_3)
	end, module)
end