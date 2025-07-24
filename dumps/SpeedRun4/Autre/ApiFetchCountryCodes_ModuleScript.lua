-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:56
-- Luau version 6, Types version 3
-- Time taken: 0.001726 seconds

local AuthCommon = script:FindFirstAncestor("AuthCommon")
local Parent = AuthCommon.Parent
local Promise_upvr = require(Parent.Promise)
local PerformFetch_upvr = require(Parent.Http).PerformFetch
local module_upvr = {}
local CountryCode_upvr = require(AuthCommon.Models.CountryCode)
local SetCountryCodeList_upvr = require(AuthCommon.Actions.SetCountryCodeList)
function module_upvr._updateStoreWithCountryCodes(arg1, arg2) -- Line 13
	--[[ Upvalues[3]:
		[1]: CountryCode_upvr (readonly)
		[2]: SetCountryCodeList_upvr (readonly)
		[3]: Promise_upvr (readonly)
	]]
	local tbl = {}
	for i, v in pairs(arg2.responseBody) do
		tbl[i] = CountryCode_upvr.fromJSON(v)
	end
	arg1:dispatch(SetCountryCodeList_upvr(tbl))
	return Promise_upvr.resolve()
end
local GetCountryCodes_upvr = require(AuthCommon.Http.Requests.GetCountryCodes)
function module_upvr.Fetch(arg1) -- Line 22
	--[[ Upvalues[4]:
		[1]: PerformFetch_upvr (readonly)
		[2]: GetCountryCodes_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: Promise_upvr (readonly)
	]]
	return PerformFetch_upvr.Single("luaapp.countriesapi.countrycodes", function(arg1_2) -- Line 23
		--[[ Upvalues[4]:
			[1]: GetCountryCodes_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: module_upvr (copied, readonly)
			[4]: Promise_upvr (copied, readonly)
		]]
		return GetCountryCodes_upvr(arg1):andThen(function(arg1_3) -- Line 24
			--[[ Upvalues[3]:
				[1]: module_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: Promise_upvr (copied, readonly)
			]]
			if arg1_3 and arg1_3.responseBody then
				return module_upvr._updateStoreWithCountryCodes(arg1_2, arg1_3)
			end
			return Promise_upvr.reject()
		end)
	end)
end
function module_upvr.GetFetchingStatus(arg1) -- Line 34
	--[[ Upvalues[1]:
		[1]: PerformFetch_upvr (readonly)
	]]
	return PerformFetch_upvr.GetStatus(arg1, "luaapp.countriesapi.countrycodes")
end
return module_upvr