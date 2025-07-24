-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:19
-- Luau version 6, Types version 3
-- Time taken: 0.001746 seconds

local Parent = script:FindFirstAncestor("GameDetailRodux").Parent
local PerformFetch_upvr = require(Parent.Http).PerformFetch
local module_3 = {
	KeyMapper = function(arg1) -- Line 9, Named "keyMapper"
		return "luaapp.playability-and-productinfo."..arg1
	end;
}
local ApiFetchPlayabilityStatus_upvr = require(Parent.PlayabilityRodux).PlayabilityStatus.ApiFetchPlayabilityStatus
local PlayabilityStatusEnum_upvr = require(Parent.PlayabilityRodux).Enums.PlayabilityStatusEnum
local FetchGamesProductInfo_upvr = require(Parent.GameProductInfoRodux).FetchGamesProductInfo
local Promise_upvr = require(Parent.Promise)
function module_3.Fetch(arg1, arg2) -- Line 17
	--[[ Upvalues[5]:
		[1]: PerformFetch_upvr (readonly)
		[2]: ApiFetchPlayabilityStatus_upvr (readonly)
		[3]: PlayabilityStatusEnum_upvr (readonly)
		[4]: FetchGamesProductInfo_upvr (readonly)
		[5]: Promise_upvr (readonly)
	]]
	local var8
	if type(arg2) ~= "string" then
		var8 = false
	else
		var8 = true
	end
	assert(var8, "FetchPlayabilityAndProductInfo thunk expects universeId to be a string")
	var8 = PerformFetch_upvr
	var8 = "luaapp.playability-and-productinfo."..arg2
	return var8.Single(var8, function(arg1_2) -- Line 20
		--[[ Upvalues[6]:
			[1]: ApiFetchPlayabilityStatus_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: PlayabilityStatusEnum_upvr (copied, readonly)
			[5]: FetchGamesProductInfo_upvr (copied, readonly)
			[6]: Promise_upvr (copied, readonly)
		]]
		local module = {}
		module[1] = arg2
		return arg1_2:dispatch(ApiFetchPlayabilityStatus_upvr.Fetch(arg1, module)):andThen(function(arg1_3) -- Line 23
			--[[ Upvalues[7]:
				[1]: ApiFetchPlayabilityStatus_upvr (copied, readonly)
				[2]: arg2 (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: PlayabilityStatusEnum_upvr (copied, readonly)
				[5]: FetchGamesProductInfo_upvr (copied, readonly)
				[6]: arg1 (copied, readonly)
				[7]: Promise_upvr (copied, readonly)
			]]
			local any_unwrap_result1, _ = arg1_3[ApiFetchPlayabilityStatus_upvr.KeyMapper(arg2)]:unwrap()
			if any_unwrap_result1 then
				local var14_upvr = arg1_2:getState().PlayabilityStatus[arg2]
				if var14_upvr.isPlayable == false and (var14_upvr.playabilityStatus == PlayabilityStatusEnum_upvr.PurchaseRequired or var14_upvr.playabilityStatus == PlayabilityStatusEnum_upvr.FiatPurchaseRequired) then
					local module_2 = {}
					module_2[1] = arg2
					return arg1_2:dispatch(FetchGamesProductInfo_upvr.Fetch(arg1, module_2)):andThen(function(arg1_4) -- Line 39
						--[[ Upvalues[4]:
							[1]: FetchGamesProductInfo_upvr (copied, readonly)
							[2]: arg2 (copied, readonly)
							[3]: Promise_upvr (copied, readonly)
							[4]: var14_upvr (readonly)
						]]
						local any_unwrap_result1_2, any_unwrap_result2 = arg1_4[FetchGamesProductInfo_upvr.KeyMapper(arg2)]:unwrap()
						if any_unwrap_result1_2 then
							return Promise_upvr.resolve(var14_upvr.playabilityStatus)
						end
						return Promise_upvr.reject()
					end)
				end
				return Promise_upvr.resolve(var14_upvr.playabilityStatus)
			end
			var14_upvr = Promise_upvr.reject()
			return var14_upvr
		end)
	end)
end
function module_3.GetFetchingStatus(arg1, arg2) -- Line 59
	--[[ Upvalues[1]:
		[1]: PerformFetch_upvr (readonly)
	]]
	return PerformFetch_upvr.GetStatus(arg1, "luaapp.playability-and-productinfo."..arg2)
end
return module_3