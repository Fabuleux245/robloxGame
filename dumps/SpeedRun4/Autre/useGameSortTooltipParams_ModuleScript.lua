-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:10
-- Luau version 6, Types version 3
-- Time taken: 0.002741 seconds

local Parent = script:FindFirstAncestor("GameCollections").Parent
local Responsive_upvr = require(Parent.Responsive)
local GameTopicIds_upvr = require(Parent.DiscoveryTypes).GameTopicIds
local function _(arg1, arg2) -- Line 15, Named "isSponsoredSort"
	--[[ Upvalues[1]:
		[1]: GameTopicIds_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 11 start (CF ANALYSIS FAILED)
	if arg2 then
		if arg1 and arg1.topicId == GameTopicIds_upvr.Sponsored then
			do
				return true
			end
			-- KONSTANTWARNING: GOTO [19] #15
		end
	elseif arg1 and arg1.gameSetTypeId == "27" then
		return true
	end
	-- KONSTANTERROR: [0] 1. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 15. Error Block 8 start (CF ANALYSIS FAILED)
	do
		return false
	end
	-- KONSTANTERROR: [19] 15. Error Block 8 end (CF ANALYSIS FAILED)
end
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local React_upvr = require(Parent.React)
local OpenInfoPeekView_upvr = require(Parent.DiscoveryRouting).OpenInfoPeekView
local OpenCloseOnlyInteractiveAlert_upvr = require(Parent.DiscoveryRouting).OpenCloseOnlyInteractiveAlert
local CloseCentralOverlay_upvr = require(Parent.CentralOverlay).Thunks.CloseCentralOverlay
return function(arg1, arg2, arg3) -- Line 31, Named "useGameSortTooltipParams"
	--[[ Upvalues[9]:
		[1]: useDispatch_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: usePreferredInput_upvr (readonly)
		[4]: GameTopicIds_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: Responsive_upvr (readonly)
		[7]: OpenInfoPeekView_upvr (readonly)
		[8]: OpenCloseOnlyInteractiveAlert_upvr (readonly)
		[9]: CloseCentralOverlay_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	local useLocalization_upvr_result1 = useLocalization_upvr({
		SponsoredDisclosure = "CoreScripts.Ads.Label.SponsoredAdsDisclosureStatic";
		SponsoredTitle = "CoreScripts.Ads.Label.SponsoredAds";
	})
	local usePreferredInput_upvr_result1_upvr = usePreferredInput_upvr()
	if arg2 then
		if arg1 and arg1.topicId == GameTopicIds_upvr.Sponsored then
			-- KONSTANTWARNING: GOTO [37] #29
		end
		-- KONSTANTWARNING: GOTO [36] #28
	end
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [29] 23. Error Block 28 start (CF ANALYSIS FAILED)
	if arg1 and arg1.gameSetTypeId == "27" then
		local _ = true
	else
		-- KONSTANTERROR: [36] 28. Error Block 9 start (CF ANALYSIS FAILED)
		local var15_upvr
		-- KONSTANTERROR: [36] 28. Error Block 9 end (CF ANALYSIS FAILED)
	end
	if false and arg3 == nil then
		local _ = useLocalization_upvr_result1.SponsoredDisclosure
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if false then
		var15_upvr = useLocalization_upvr_result1.SponsoredTitle
	else
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var15_upvr = arg1.displayName
			return var15_upvr
		end
		if not arg1 or not INLINED() then
			var15_upvr = ""
		end
	end
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local module = {var15_upvr}
	module[2] = arg3
	module[3] = usePreferredInput_upvr_result1_upvr
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	do
		return React_upvr.useCallback(function() -- Line 44
			--[[ Upvalues[8]:
				[1]: usePreferredInput_upvr_result1_upvr (readonly)
				[2]: Responsive_upvr (copied, readonly)
				[3]: useDispatch_upvr_result1_upvr (readonly)
				[4]: OpenInfoPeekView_upvr (copied, readonly)
				[5]: var15_upvr (readonly)
				[6]: arg3 (readonly)
				[7]: OpenCloseOnlyInteractiveAlert_upvr (copied, readonly)
				[8]: CloseCentralOverlay_upvr (copied, readonly)
			]]
			if usePreferredInput_upvr_result1_upvr == Responsive_upvr.Input.Touch then
				useDispatch_upvr_result1_upvr(OpenInfoPeekView_upvr(var15_upvr, arg3))
			else
				useDispatch_upvr_result1_upvr(OpenCloseOnlyInteractiveAlert_upvr(var15_upvr, arg3, function() -- Line 48
					--[[ Upvalues[2]:
						[1]: useDispatch_upvr_result1_upvr (copied, readonly)
						[2]: CloseCentralOverlay_upvr (copied, readonly)
					]]
					return useDispatch_upvr_result1_upvr(CloseCentralOverlay_upvr())
				end))
			end
		end, module), arg3
	end
	-- KONSTANTERROR: [29] 23. Error Block 28 end (CF ANALYSIS FAILED)
end