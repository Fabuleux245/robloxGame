-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:40
-- Luau version 6, Types version 3
-- Time taken: 0.004380 seconds

local GameProductInfoRodux = script:FindFirstAncestor("GameProductInfoRodux")
local Parent = GameProductInfoRodux.Parent
local PerformFetch_upvr = require(Parent.Http).PerformFetch
local module = {}
local function var5_upvr(arg1) -- Line 16
	return "luaapp.gamesapi.games-product-info."..arg1
end
module.KeyMapper = var5_upvr
local GamesGetProductInfo_upvr = require(GameProductInfoRodux.GamesGetProductInfo)
local Result_upvr = require(Parent.Result)
local GameProductInfo_upvr = require(GameProductInfoRodux.GameProductInfo)
local Logging_upvr = require(Parent.AppCommonLib).Logging
local SetGamesProductInfo_upvr = require(GameProductInfoRodux.SetGamesProductInfo)
local Promise_upvr = require(Parent.Promise)
function module.Fetch(arg1, arg2) -- Line 22
	--[[ Upvalues[8]:
		[1]: PerformFetch_upvr (readonly)
		[2]: var5_upvr (readonly)
		[3]: GamesGetProductInfo_upvr (readonly)
		[4]: Result_upvr (readonly)
		[5]: GameProductInfo_upvr (readonly)
		[6]: Logging_upvr (readonly)
		[7]: SetGamesProductInfo_upvr (readonly)
		[8]: Promise_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var12
	if type(arg2) ~= "table" then
		var12 = false
	else
		var12 = true
	end
	assert(var12, "FetchGamesProductInfo thunk expects universeIds to be a table")
	if 0 >= #arg2 then
		var12 = false
		-- KONSTANTWARNING: GOTO [21] #17
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 16. Error Block 22 start (CF ANALYSIS FAILED)
	var12 = true
	assert(var12, "FetchGamesProductInfo thunk expects universeIds count to be greater than 0")
	if #arg2 > 100 then
		var12 = false
	else
		var12 = true
	end
	assert(var12, "FetchGamesProductInfo thunk expects universeIds count to not exceed "..100)
	var12 = PerformFetch_upvr
	var12 = arg2
	do
		return var12.Batch(var12, var5_upvr, function(arg1_2, arg2_2) -- Line 30
			--[[ Upvalues[7]:
				[1]: GamesGetProductInfo_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: Result_upvr (copied, readonly)
				[4]: GameProductInfo_upvr (copied, readonly)
				[5]: Logging_upvr (copied, readonly)
				[6]: SetGamesProductInfo_upvr (copied, readonly)
				[7]: Promise_upvr (copied, readonly)
			]]
			return GamesGetProductInfo_upvr(arg1, arg2_2):andThen(function(arg1_3) -- Line 31
				--[[ Upvalues[7]:
					[1]: arg2_2 (readonly)
					[2]: Result_upvr (copied, readonly)
					[3]: GameProductInfo_upvr (copied, readonly)
					[4]: Logging_upvr (copied, readonly)
					[5]: arg1_2 (readonly)
					[6]: SetGamesProductInfo_upvr (copied, readonly)
					[7]: Promise_upvr (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
				local module_2_upvr = {}
				local _, ipairs_result2_4, ipairs_result3 = ipairs(arg2_2)
				local var63
				for i, v in var63, ipairs_result2_4, ipairs_result3 do
					module_2_upvr["luaapp.gamesapi.games-product-info."..v] = Result_upvr.new(false, nil)
				end
				var63 = arg1_3
				if var63 then
					var63 = arg1_3.responseBody
					if var63 then
						var63 = arg1_3.responseBody.data
					end
				end
				if var63 ~= nil then
					local tbl_upvr_2 = {}
					i = var63
					local ipairs_result1, ipairs_result2_2, ipairs_result3_3 = ipairs(i)
					for i_2, v_2 in ipairs_result1, ipairs_result2_2, ipairs_result3_3 do
						GameProductInfo_upvr.fromJsonData(v_2):match(function(arg1_6) -- Line 42
							--[[ Upvalues[3]:
								[1]: tbl_upvr_2 (readonly)
								[2]: module_2_upvr (readonly)
								[3]: Result_upvr (copied, readonly)
							]]
							tbl_upvr_2[arg1_6.universeId] = arg1_6
							module_2_upvr["luaapp.gamesapi.games-product-info."..arg1_6.universeId] = Result_upvr.new(true, nil)
						end):matchError(function(arg1_7) -- Line 46
							--[[ Upvalues[1]:
								[1]: Logging_upvr (copied, readonly)
							]]
							Logging_upvr.warn(arg1_7)
						end)
						local var70
					end
					ipairs_result2_2 = var70
					if next(ipairs_result2_2) then
						ipairs_result3_3 = SetGamesProductInfo_upvr
						i_2 = var70
						ipairs_result3_3 = ipairs_result3_3(i_2)
						arg1_2:dispatch(ipairs_result3_3)
						-- KONSTANTWARNING: GOTO [74] #58
					end
				else
					Logging_upvr.warn("Response from GamesGetProductInfo is malformed!")
				end
				-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [74] 58. Error Block 13 start (CF ANALYSIS FAILED)
				do
					return Promise_upvr.resolve(module_2_upvr)
				end
				-- KONSTANTERROR: [74] 58. Error Block 13 end (CF ANALYSIS FAILED)
			end, function(arg1_8) -- Line 59
				--[[ Upvalues[3]:
					[1]: arg2_2 (readonly)
					[2]: Result_upvr (copied, readonly)
					[3]: Promise_upvr (copied, readonly)
				]]
				local module_4 = {}
				for _, v_3 in ipairs(arg2_2) do
					module_4["luaapp.gamesapi.games-product-info."..v_3] = Result_upvr.new(false, nil)
				end
				return Promise_upvr.resolve(module_4)
			end)
		end)
	end
	-- KONSTANTERROR: [20] 16. Error Block 22 end (CF ANALYSIS FAILED)
end
function module.GetFetchingStatus(arg1, arg2) -- Line 69
	--[[ Upvalues[1]:
		[1]: PerformFetch_upvr (readonly)
	]]
	return PerformFetch_upvr.GetStatus(arg1, "luaapp.gamesapi.games-product-info."..arg2)
end
return module