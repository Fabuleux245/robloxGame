-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:22
-- Luau version 6, Types version 3
-- Time taken: 0.004484 seconds

local GameDetailRodux = script:FindFirstAncestor("GameDetailRodux")
local Parent = GameDetailRodux.Parent
local PerformFetch_upvr = require(Parent.Http).PerformFetch
local module = {}
local function var5_upvr(arg1) -- Line 18
	return "luaapp.gamesapi.games."..arg1
end
module.KeyMapper = var5_upvr
function module.GetFetchingStatus(arg1, arg2) -- Line 24
	--[[ Upvalues[1]:
		[1]: PerformFetch_upvr (readonly)
	]]
	return PerformFetch_upvr.GetStatus(arg1, "luaapp.gamesapi.games."..arg2)
end
local ArgCheck_upvr = require(Parent.ArgCheck)
local GamesMultigetDetails_upvr = require(script.Parent.GamesMultigetDetails)
local GameDetailModel_upvr = require(GameDetailRodux.GameDetails.GameDetailModel)
local Result_upvr = require(Parent.Result)
local AddGameDetails_upvr = require(GameDetailRodux.GameDetails.AddGameDetails)
local Logger_upvr = require(GameDetailRodux.Logger)
local Promise_upvr = require(Parent.Promise)
function module.Fetch(arg1, arg2) -- Line 28
	--[[ Upvalues[9]:
		[1]: ArgCheck_upvr (readonly)
		[2]: PerformFetch_upvr (readonly)
		[3]: var5_upvr (readonly)
		[4]: GamesMultigetDetails_upvr (readonly)
		[5]: GameDetailModel_upvr (readonly)
		[6]: Result_upvr (readonly)
		[7]: AddGameDetails_upvr (readonly)
		[8]: Logger_upvr (readonly)
		[9]: Promise_upvr (readonly)
	]]
	ArgCheck_upvr.isType(arg2, "table", "ApiFetchGameDetails: universeIds")
	return PerformFetch_upvr.Batch(arg2, var5_upvr, function(arg1_2, arg2_2) -- Line 31
		--[[ Upvalues[7]:
			[1]: GamesMultigetDetails_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: GameDetailModel_upvr (copied, readonly)
			[4]: Result_upvr (copied, readonly)
			[5]: AddGameDetails_upvr (copied, readonly)
			[6]: Logger_upvr (copied, readonly)
			[7]: Promise_upvr (copied, readonly)
		]]
		return GamesMultigetDetails_upvr(arg1, arg2_2):andThen(function(arg1_3) -- Line 32
			--[[ Upvalues[6]:
				[1]: GameDetailModel_upvr (copied, readonly)
				[2]: Result_upvr (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: AddGameDetails_upvr (copied, readonly)
				[5]: Logger_upvr (copied, readonly)
				[6]: Promise_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
			local module_3 = {}
			local var40 = arg1_3
			if var40 then
				var40 = arg1_3.responseBody
				if var40 then
					var40 = arg1_3.responseBody.data
				end
			end
			if var40 ~= nil then
				for i, v in ipairs(var40) do
					local any_fromJsonData_result1_2 = GameDetailModel_upvr.fromJsonData(v)
					;({})[any_fromJsonData_result1_2.id] = any_fromJsonData_result1_2
					module_3["luaapp.gamesapi.games."..any_fromJsonData_result1_2.id] = Result_upvr.new(true, any_fromJsonData_result1_2)
					local var46
				end
				if next(var46) then
					i = var46
					arg1_2:dispatch(AddGameDetails_upvr(i))
					-- KONSTANTWARNING: GOTO [60] #46
				end
			else
				Logger_upvr:warning("Response from GamesMultigetDetails is malformed!")
			end
			-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [60] 46. Error Block 11 start (CF ANALYSIS FAILED)
			do
				return Promise_upvr.resolve(module_3)
			end
			-- KONSTANTERROR: [60] 46. Error Block 11 end (CF ANALYSIS FAILED)
		end, function(arg1_4) -- Line 53
			--[[ Upvalues[1]:
				[1]: Promise_upvr (copied, readonly)
			]]
			return Promise_upvr.resolve({})
		end)
	end)
end
return module