-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:10
-- Luau version 6, Types version 3
-- Time taken: 0.003299 seconds

local GamePlayButton = script:FindFirstAncestor("GamePlayButton")
local Parent = GamePlayButton.Parent
local PerformFetch_upvr = require(Parent.Http).PerformFetch
local module = {}
local function _(arg1) -- Line 16
	return "luaapp.fiatpaidaccess.prepare-purchase."..arg1
end
function module.GetFetchingStatus(arg1, arg2) -- Line 20
	--[[ Upvalues[1]:
		[1]: PerformFetch_upvr (readonly)
	]]
	return PerformFetch_upvr.GetStatus(arg1, "luaapp.fiatpaidaccess.prepare-purchase."..arg2)
end
local FiatPaidAccessPostPreparePurchaseRequest_upvr = require(GamePlayButton.FiatPaidAccessPostPreparePurchaseRequest)
local HttpService_upvr = game:GetService("HttpService")
local OpenFiatPurchasePage_upvr = require(GamePlayButton.OpenFiatPurchasePage)
local ApiFetchGameDetails_upvr = require(Parent.GameDetailRodux).GameDetails.ApiFetchGameDetails
local FetchGamePlayabilityAndProductInfo_upvr = require(Parent.GameDetailRodux).FetchGamePlayabilityAndProductInfo
local Promise_upvr = require(Parent.Promise)
function module.Fetch(arg1, arg2, arg3, arg4) -- Line 24
	--[[ Upvalues[7]:
		[1]: PerformFetch_upvr (readonly)
		[2]: FiatPaidAccessPostPreparePurchaseRequest_upvr (readonly)
		[3]: HttpService_upvr (readonly)
		[4]: OpenFiatPurchasePage_upvr (readonly)
		[5]: ApiFetchGameDetails_upvr (readonly)
		[6]: FetchGamePlayabilityAndProductInfo_upvr (readonly)
		[7]: Promise_upvr (readonly)
	]]
	return PerformFetch_upvr.Single("luaapp.fiatpaidaccess.prepare-purchase."..arg3, function(arg1_2) -- Line 25
		--[[ Upvalues[10]:
			[1]: FiatPaidAccessPostPreparePurchaseRequest_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg4 (readonly)
			[5]: HttpService_upvr (copied, readonly)
			[6]: OpenFiatPurchasePage_upvr (copied, readonly)
			[7]: ApiFetchGameDetails_upvr (copied, readonly)
			[8]: arg3 (readonly)
			[9]: FetchGamePlayabilityAndProductInfo_upvr (copied, readonly)
			[10]: Promise_upvr (copied, readonly)
		]]
		return FiatPaidAccessPostPreparePurchaseRequest_upvr(arg1, arg2, arg4):andThen(function(arg1_3) -- Line 27
			--[[ Upvalues[8]:
				[1]: HttpService_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: OpenFiatPurchasePage_upvr (copied, readonly)
				[4]: ApiFetchGameDetails_upvr (copied, readonly)
				[5]: arg1 (copied, readonly)
				[6]: arg3 (copied, readonly)
				[7]: FetchGamePlayabilityAndProductInfo_upvr (copied, readonly)
				[8]: Promise_upvr (copied, readonly)
			]]
			local var19 = arg1_3
			if var19 then
				var19 = arg1_3.responseBody
				if var19 then
					var19 = arg1_3.responseBody.checkoutUrl
				end
			end
			if var19 then
				local any_JSONDecode_result1 = HttpService_upvr:JSONDecode(var19)
				if any_JSONDecode_result1 and any_JSONDecode_result1.checkoutUrl then
					arg1_2:dispatch(OpenFiatPurchasePage_upvr(any_JSONDecode_result1.checkoutUrl, function() -- Line 34
						--[[ Upvalues[5]:
							[1]: arg1_2 (copied, readonly)
							[2]: ApiFetchGameDetails_upvr (copied, readonly)
							[3]: arg1 (copied, readonly)
							[4]: arg3 (copied, readonly)
							[5]: FetchGamePlayabilityAndProductInfo_upvr (copied, readonly)
						]]
						local tbl = {}
						tbl[1] = arg3
						arg1_2:dispatch(ApiFetchGameDetails_upvr.Fetch(arg1, tbl))
						arg1_2:dispatch(FetchGamePlayabilityAndProductInfo_upvr.Fetch(arg1, arg3))
					end))
					return Promise_upvr.resolve(arg1_3)
				end
			end
			return Promise_upvr.reject("Invalid Response")
		end)
	end)
end
return module