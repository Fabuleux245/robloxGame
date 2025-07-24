-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:22
-- Luau version 6, Types version 3
-- Time taken: 0.005386 seconds

local GamePlayButton = script:FindFirstAncestor("GamePlayButton")
local PlayButtonStates_upvr = require(GamePlayButton.PlayButtonStates)
local Parent = GamePlayButton.Parent
local GetFFlagLuaAppEnableSquadPage_upvr = require(Parent.SharedFlags).GetFFlagLuaAppEnableSquadPage
local RetrievalStatus_upvr = require(Parent.Http).Enum.RetrievalStatus
local RoactUtils = require(Parent.RoactUtils)
local FFlagLuaAppParentUpsellPolicy_upvr = require(Parent.SharedFlags).FFlagLuaAppParentUpsellPolicy
local PlayabilityStatusEnum_upvr = require(Parent.PlayabilityRodux).Enums.PlayabilityStatusEnum
local FFlagLuaAppVpcUpsell_upvr = require(Parent.SharedFlags).FFlagLuaAppVpcUpsell
local function selectPlayButtonState_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 31, Named "selectPlayButtonState"
	--[[ Upvalues[6]:
		[1]: RetrievalStatus_upvr (readonly)
		[2]: PlayButtonStates_upvr (readonly)
		[3]: PlayabilityStatusEnum_upvr (readonly)
		[4]: FFlagLuaAppVpcUpsell_upvr (readonly)
		[5]: FFlagLuaAppParentUpsellPolicy_upvr (readonly)
		[6]: GetFFlagLuaAppEnableSquadPage_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [84] 56. Error Block 43 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [84] 56. Error Block 43 end (CF ANALYSIS FAILED)
end
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local FetchGamePlayButtonData_upvr = require(GamePlayButton.FetchGamePlayButtonData)
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local useCurrentSquadSelector_upvr = require(Parent.RoduxSquads).Hooks.useCurrentSquadSelector
local useIsExperienceInvitePending_upvr = require(Parent.Squads).Hooks.useIsExperienceInvitePending
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local FFlagLuaAppEnablePlayableStateWhenLoading_upvr = require(Parent.SharedFlags).FFlagLuaAppEnablePlayableStateWhenLoading
local ApiPostPreparePurchase_upvr = require(GamePlayButton.ApiPostPreparePurchase)
local FetchGamePlayabilityAndProductInfo_upvr = require(Parent.GameDetailRodux).FetchGamePlayabilityAndProductInfo
local GamesProductInfoReducer_upvr = require(Parent.GameProductInfoRodux).GamesProductInfoReducer
return function(arg1, arg2, arg3, arg4) -- Line 96
	--[[ Upvalues[16]:
		[1]: useDispatch_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: FetchGamePlayButtonData_upvr (readonly)
		[4]: FFlagLuaAppParentUpsellPolicy_upvr (readonly)
		[5]: useAppPolicy_upvr (readonly)
		[6]: GetFFlagLuaAppEnableSquadPage_upvr (readonly)
		[7]: useCurrentSquadSelector_upvr (readonly)
		[8]: useIsExperienceInvitePending_upvr (readonly)
		[9]: useSelector_upvr (readonly)
		[10]: FFlagLuaAppEnablePlayableStateWhenLoading_upvr (readonly)
		[11]: PlayButtonStates_upvr (readonly)
		[12]: ApiPostPreparePurchase_upvr (readonly)
		[13]: RetrievalStatus_upvr (readonly)
		[14]: FetchGamePlayabilityAndProductInfo_upvr (readonly)
		[15]: GamesProductInfoReducer_upvr (readonly)
		[16]: selectPlayButtonState_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var11_result1_upvr = useDispatch_upvr()
	local function var22() -- Line 99
		--[[ Upvalues[5]:
			[1]: arg3 (readonly)
			[2]: var11_result1_upvr (readonly)
			[3]: FetchGamePlayButtonData_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: arg2 (readonly)
		]]
		local var24_upvw
		if arg3 ~= nil and 0 < arg3 then
			var24_upvw = task.delay(arg3, function() -- Line 102
				--[[ Upvalues[5]:
					[1]: var24_upvw (read and write)
					[2]: var11_result1_upvr (copied, readonly)
					[3]: FetchGamePlayButtonData_upvr (copied, readonly)
					[4]: arg1 (copied, readonly)
					[5]: arg2 (copied, readonly)
				]]
				var24_upvw = nil
				var11_result1_upvr(FetchGamePlayButtonData_upvr.Fetch(arg1, arg2))
			end)
		else
			var11_result1_upvr(FetchGamePlayButtonData_upvr.Fetch(arg1, arg2))
		end
		return function() -- Line 110
			--[[ Upvalues[1]:
				[1]: var24_upvw (read and write)
			]]
			if var24_upvw ~= nil then
				task.cancel(var24_upvw)
			end
		end
	end
	local tbl = {}
	tbl[1] = arg2
	tbl[2] = arg3
	React_upvr.useEffect(var22, tbl)
	local var28_upvw
	var22 = FFlagLuaAppParentUpsellPolicy_upvr
	local var29_upvr
	if var29_upvr then
		var29_upvr = useAppPolicy_upvr
		var29_upvr = var29_upvr(function(arg1_2) -- Line 119
			return arg1_2.getShouldShowVpcPlayButtonUpsells()
		end)
		var28_upvw = var29_upvr
	end
	if GetFFlagLuaAppEnableSquadPage_upvr() then
		var29_upvr = useCurrentSquadSelector_upvr()
	else
		var29_upvr = nil
	end
	if GetFFlagLuaAppEnableSquadPage_upvr() then
	else
	end
	local var17_result1_upvr = useSelector_upvr(function(arg1_3) -- Line 126
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		local var32
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var32 = arg1_3.PlayabilityStatus[arg2]
			return var32
		end
		if not arg1_3.PlayabilityStatus or not INLINED() then
			var32 = nil
		end
		return var32
	end)
	local var35_upvr
	return {
		playButtonState = useSelector_upvr(function(arg1_4) -- Line 129
			--[[ Upvalues[16]:
				[1]: FetchGamePlayButtonData_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: FFlagLuaAppEnablePlayableStateWhenLoading_upvr (copied, readonly)
				[4]: arg4 (readonly)
				[5]: GetFFlagLuaAppEnableSquadPage_upvr (copied, readonly)
				[6]: var29_upvr (readonly)
				[7]: var35_upvr (readonly)
				[8]: PlayButtonStates_upvr (copied, readonly)
				[9]: ApiPostPreparePurchase_upvr (copied, readonly)
				[10]: RetrievalStatus_upvr (copied, readonly)
				[11]: FetchGamePlayabilityAndProductInfo_upvr (copied, readonly)
				[12]: GamesProductInfoReducer_upvr (copied, readonly)
				[13]: selectPlayButtonState_upvr (copied, readonly)
				[14]: var17_result1_upvr (readonly)
				[15]: FFlagLuaAppParentUpsellPolicy_upvr (copied, readonly)
				[16]: var28_upvw (read and write)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var39
			if FetchGamePlayButtonData_upvr.IsLoading(arg1_4, arg2) then
				if FFlagLuaAppEnablePlayableStateWhenLoading_upvr then
					if arg4 then
						if GetFFlagLuaAppEnableSquadPage_upvr() and var29_upvr then
							var39 = var29_upvr.members
							var39 = 1
							if var39 < #var39 then
								if var35_upvr then
									var39 = PlayButtonStates_upvr
									return var39.WaitingForParty
								end
								var39 = PlayButtonStates_upvr
								return var39.PlayableWithParty
							end
						end
						var39 = PlayButtonStates_upvr
						return var39.Playable
					end
					var39 = PlayButtonStates_upvr
					return var39.Loading
				end
				var39 = PlayButtonStates_upvr
				return var39.Loading
			end
			var39 = ApiPostPreparePurchase_upvr
			var39 = arg1_4
			var39 = RetrievalStatus_upvr.Fetching
			local var40
			if var39.GetFetchingStatus(var39, arg2) == var39 then
				var39 = PlayButtonStates_upvr
				return var39.Loading
			end
			var39 = FetchGamePlayabilityAndProductInfo_upvr
			var39 = arg1_4
			local any_GetFetchingStatus_result1 = var39.GetFetchingStatus(var39, arg2)
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				var39 = arg1_4[GamesProductInfoReducer_upvr.key][arg2]
				return var39
			end
			if not arg1_4[GamesProductInfoReducer_upvr.key] or not INLINED_3() then
				var39 = nil
			end
			if GetFFlagLuaAppEnableSquadPage_upvr() then
				if FFlagLuaAppParentUpsellPolicy_upvr then
					var40 = var28_upvw
				else
					var40 = nil
				end
				return selectPlayButtonState_upvr(any_GetFetchingStatus_result1, var17_result1_upvr, var39, var29_upvr, var35_upvr, arg1_4.GameDetails[arg2], var40)
			end
			if FFlagLuaAppParentUpsellPolicy_upvr then
			else
			end
			return selectPlayButtonState_upvr(any_GetFetchingStatus_result1, var17_result1_upvr, var39, nil, nil, nil, nil)
		end);
		playabilityStatus = var17_result1_upvr;
	}
end