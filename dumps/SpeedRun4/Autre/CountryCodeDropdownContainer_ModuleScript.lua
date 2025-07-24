-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:19
-- Luau version 6, Types version 3
-- Time taken: 0.001630 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local RoactUtils = require(Parent.RoactUtils)
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = require(Parent.RoactServiceTags).RoactNetworking
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local ApiFetchCountryCodes_upvr = require(AuthCommon.Thunks.ApiFetchCountryCodes)
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local React_upvr = require(Parent.React)
local CountryCodeDropdownView_upvr = require(AuthCommon.Components.InGame.CountryCodeDropdownView)
return function(arg1) -- Line 20, Named "CountryCodeDropdownContainer"
	--[[ Upvalues[7]:
		[1]: useRoactService_upvr (readonly)
		[2]: RoactNetworking_upvr (readonly)
		[3]: useDispatch_upvr (readonly)
		[4]: ApiFetchCountryCodes_upvr (readonly)
		[5]: useSelector_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: CountryCodeDropdownView_upvr (readonly)
	]]
	local var6_result1_upvr = useDispatch_upvr()
	local function _(arg1_2) -- Line 28
		--[[ Upvalues[2]:
			[1]: var6_result1_upvr (readonly)
			[2]: ApiFetchCountryCodes_upvr (copied, readonly)
		]]
		return var6_result1_upvr(ApiFetchCountryCodes_upvr.Fetch(arg1_2))
	end
	local useRoactService_upvr_result1_upvr = useRoactService_upvr(RoactNetworking_upvr)
	React_upvr.useEffect(function() -- Line 36
		--[[ Upvalues[3]:
			[1]: useRoactService_upvr_result1_upvr (readonly)
			[2]: var6_result1_upvr (readonly)
			[3]: ApiFetchCountryCodes_upvr (copied, readonly)
		]]
		var6_result1_upvr(ApiFetchCountryCodes_upvr.Fetch(useRoactService_upvr_result1_upvr)):catch(function() -- Line 37
		end)
	end, {})
	return React_upvr.createElement(CountryCodeDropdownView_upvr, {
		dropdownVisible = arg1.dropdownVisible;
		countryCodeList = useSelector_upvr(function(arg1_3) -- Line 32
			return arg1_3.CountryCodeList
		end);
		onCountryCodeSelected = arg1.onCountryCodeSelected;
		maxHeight = arg1.maxHeight;
		position = arg1.position;
	})
end