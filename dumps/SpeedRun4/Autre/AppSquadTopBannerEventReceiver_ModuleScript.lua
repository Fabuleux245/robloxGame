-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:43:19
-- Luau version 6, Types version 3
-- Time taken: 0.004406 seconds

local Squads = script:FindFirstAncestor("Squads")
local AppTopBanner = require(Squads.Parent.AppTopBanner)
local dependencies = require(Squads.dependencies)
local useDispatch_upvr = dependencies.Hooks.useDispatch
local React_upvr = dependencies.React
local SquadExternalContractContext_upvr = dependencies.SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local useCurrentSquadId_upvr = dependencies.SquadsCore.Hooks.useCurrentSquadId
local useCurrentSquadParentChannelId_upvr = dependencies.SquadsCore.Hooks.useCurrentSquadParentChannelId
local FFlagIntroduceTopBannerPartyStates_upvr = require(Squads.Flags.FFlagIntroduceTopBannerPartyStates)
local useCurrentSquadMembers_upvr = dependencies.SquadsCore.Hooks.useCurrentSquadMembers
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixSquadTopBannerMemo", false)
local Cryo_upvr = dependencies.Cryo
local encodeSquadMembers_upvr = dependencies.SquadsCore.Common.encodeSquadMembers
local EventNames_upvr = dependencies.SquadsCore.Analytics.EventNames
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local FFlagIntroduceNameToOneToOneWaitingState_upvr = require(Squads.Flags.FFlagIntroduceNameToOneToOneWaitingState)
local FFlagEnableSquadTopBannerWideMode_upvr = dependencies.SharedFlags.FFlagEnableSquadTopBannerWideMode
local SquadRootViewType_upvr = dependencies.SquadsCore.Enums.SquadRootViewType
local SetAppTopBanner_upvr = AppTopBanner.Actions.SetAppTopBanner
local AppTopBannerType_upvr = AppTopBanner.Enums.AppTopBannerType
local SquadViewFlags_upvr = dependencies.SquadsCore.SquadExternalContractProvider.SquadViewFlags
return function() -- Line 32
	--[[ Upvalues[18]:
		[1]: useDispatch_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: SquadExternalContractContext_upvr (readonly)
		[4]: useCurrentSquadId_upvr (readonly)
		[5]: useCurrentSquadParentChannelId_upvr (readonly)
		[6]: FFlagIntroduceTopBannerPartyStates_upvr (readonly)
		[7]: useCurrentSquadMembers_upvr (readonly)
		[8]: game_DefineFastFlag_result1_upvr (readonly)
		[9]: Cryo_upvr (readonly)
		[10]: encodeSquadMembers_upvr (readonly)
		[11]: EventNames_upvr (readonly)
		[12]: dependencyArray_upvr (readonly)
		[13]: FFlagIntroduceNameToOneToOneWaitingState_upvr (readonly)
		[14]: FFlagEnableSquadTopBannerWideMode_upvr (readonly)
		[15]: SquadRootViewType_upvr (readonly)
		[16]: SetAppTopBanner_upvr (readonly)
		[17]: AppTopBannerType_upvr (readonly)
		[18]: SquadViewFlags_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 122 start (CF ANALYSIS FAILED)
	local var8_result1_upvr = useCurrentSquadId_upvr()
	local var24_upvr
	if FFlagIntroduceTopBannerPartyStates_upvr then
		var24_upvr = useCurrentSquadMembers_upvr()
	else
		var24_upvr = nil
	end
	if game_DefineFastFlag_result1_upvr then
		local function _() -- Line 42
			--[[ Upvalues[3]:
				[1]: FFlagIntroduceTopBannerPartyStates_upvr (copied, readonly)
				[2]: var24_upvr (readonly)
				[3]: Cryo_upvr (copied, readonly)
			]]
			if FFlagIntroduceTopBannerPartyStates_upvr and var24_upvr then
				return Cryo_upvr.List.map(var24_upvr, function(arg1) -- Line 44
					return arg1.userId
				end)
			end
			return {}
		end
		if FFlagIntroduceTopBannerPartyStates_upvr then
		else
		end
		;({})[1] = nil
	elseif FFlagIntroduceTopBannerPartyStates_upvr and var24_upvr then
		local function _(arg1) -- Line 51
			return arg1.userId
		end
	else
	end
	if FFlagIntroduceTopBannerPartyStates_upvr then
		-- KONSTANTWARNING: GOTO [65] #57
	end
	-- KONSTANTERROR: [0] 1. Error Block 122 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [64] 56. Error Block 120 start (CF ANALYSIS FAILED)
	local any_useContext_result1_upvr = React_upvr.useContext(SquadExternalContractContext_upvr)
	local useCurrentSquadParentChannelId_upvr_result1_upvr = useCurrentSquadParentChannelId_upvr()
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var33_upvr
	local function _() -- Line 63
		--[[ Upvalues[9]:
			[1]: any_useContext_result1_upvr (readonly)
			[2]: useCurrentSquadParentChannelId_upvr_result1_upvr (readonly)
			[3]: useDispatch_upvr_result1_upvr (readonly)
			[4]: FFlagIntroduceTopBannerPartyStates_upvr (copied, readonly)
			[5]: encodeSquadMembers_upvr (copied, readonly)
			[6]: var24_upvr (readonly)
			[7]: EventNames_upvr (copied, readonly)
			[8]: var8_result1_upvr (readonly)
			[9]: var33_upvr (readonly)
		]]
		if any_useContext_result1_upvr.navigateIntoSquadLobby and useCurrentSquadParentChannelId_upvr_result1_upvr then
			useDispatch_upvr_result1_upvr(any_useContext_result1_upvr.navigateIntoSquadLobby({
				conversationId = useCurrentSquadParentChannelId_upvr_result1_upvr;
			}, true))
		end
		if FFlagIntroduceTopBannerPartyStates_upvr then
			any_useContext_result1_upvr.fireSquadAnalytics(EventNames_upvr.SquadTopBannerClicked, {
				squadId = var8_result1_upvr;
				parentChannelId = useCurrentSquadParentChannelId_upvr_result1_upvr;
				squadMembers = encodeSquadMembers_upvr(var24_upvr);
				timePassedSinceLastStateUpdatedInSec = os.clock() - var33_upvr.current;
			})
		end
	end
	if FFlagIntroduceTopBannerPartyStates_upvr then
		-- KONSTANTWARNING: GOTO [84] #75
	end
	-- KONSTANTERROR: [64] 56. Error Block 120 end (CF ANALYSIS FAILED)
end