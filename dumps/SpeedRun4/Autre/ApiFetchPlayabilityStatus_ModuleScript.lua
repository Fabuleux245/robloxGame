-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:17:32
-- Luau version 6, Types version 3
-- Time taken: 0.003019 seconds

local PlayabilityRodux = script:FindFirstAncestor("PlayabilityRodux")
local Parent = PlayabilityRodux.Parent
local PerformFetch_upvr = require(Parent.Http).PerformFetch
local function keyMapper_upvr(arg1) -- Line 15, Named "keyMapper"
	return "luaapp.gamesapi.playabilitystatus."..arg1
end
local module_2 = {
	KeyMapper = keyMapper_upvr;
}
local GamesMultigetPlayabilityStatus_upvr = require(PlayabilityRodux.PlayabilityStatus.GamesMultigetPlayabilityStatus)
local Result_upvr = require(Parent.Result)
local PlayabilityStatusModel_upvr = require(PlayabilityRodux.PlayabilityStatus.PlayabilityStatusModel)
local SetPlayabilityStatus_upvr = require(PlayabilityRodux.PlayabilityStatus.SetPlayabilityStatus)
local Logger_upvr = require(PlayabilityRodux.Logger)
local Promise_upvr = require(Parent.Promise)
function module_2.Fetch(arg1, arg2) -- Line 23
	--[[ Upvalues[8]:
		[1]: PerformFetch_upvr (readonly)
		[2]: keyMapper_upvr (readonly)
		[3]: GamesMultigetPlayabilityStatus_upvr (readonly)
		[4]: Result_upvr (readonly)
		[5]: PlayabilityStatusModel_upvr (readonly)
		[6]: SetPlayabilityStatus_upvr (readonly)
		[7]: Logger_upvr (readonly)
		[8]: Promise_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var11
	if type(arg2) ~= "table" then
		var11 = false
	else
		var11 = true
	end
	assert(var11, "ApiFetchPlayabilityStatus thunk expects universeIds to be a table")
	if 0 >= #arg2 then
		var11 = false
		-- KONSTANTWARNING: GOTO [21] #17
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 16. Error Block 22 start (CF ANALYSIS FAILED)
	var11 = true
	assert(var11, "ApiFetchPlayabilityStatus thunk expects universeIds count to be greater than 0")
	if #arg2 > 100 then
		var11 = false
	else
		var11 = true
	end
	assert(var11, "ApiFetchPlayabilityStatus thunk expects universeIds count to not exceed "..100)
	var11 = PerformFetch_upvr
	var11 = arg2
	do
		return var11.Batch(var11, keyMapper_upvr, function(arg1_2, arg2_2) -- Line 31
			--[[ Upvalues[7]:
				[1]: GamesMultigetPlayabilityStatus_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: Result_upvr (copied, readonly)
				[4]: PlayabilityStatusModel_upvr (copied, readonly)
				[5]: SetPlayabilityStatus_upvr (copied, readonly)
				[6]: Logger_upvr (copied, readonly)
				[7]: Promise_upvr (copied, readonly)
			]]
			return GamesMultigetPlayabilityStatus_upvr(arg1, arg2_2):andThen(function(arg1_3) -- Line 32
				--[[ Upvalues[7]:
					[1]: arg2_2 (readonly)
					[2]: Result_upvr (copied, readonly)
					[3]: PlayabilityStatusModel_upvr (copied, readonly)
					[4]: arg1_2 (readonly)
					[5]: SetPlayabilityStatus_upvr (copied, readonly)
					[6]: Logger_upvr (copied, readonly)
					[7]: Promise_upvr (copied, readonly)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				-- KONSTANTERROR: [0] 1. Error Block 23 start (CF ANALYSIS FAILED)
				local module_3_upvr = {}
				local _, ipairs_result2_2, ipairs_result3 = ipairs(arg2_2)
				local var34
				for i, v in var34, ipairs_result2_2, ipairs_result3 do
					module_3_upvr["luaapp.gamesapi.playabilitystatus."..v] = Result_upvr.new(false, nil)
				end
				var34 = arg1_3
				if var34 then
					var34 = arg1_3.responseBody
				end
				if var34 ~= nil then
					local tbl_upvr = {}
					i = var34
					local pairs_result1, pairs_result2, pairs_result3 = pairs(i)
					for i_2, v_2_upvr in pairs_result1, pairs_result2, pairs_result3 do
						PlayabilityStatusModel_upvr.fromJsonData(v_2_upvr):match(function(arg1_4) -- Line 45
							--[[ Upvalues[4]:
								[1]: tbl_upvr (readonly)
								[2]: module_3_upvr (readonly)
								[3]: v_2_upvr (readonly)
								[4]: Result_upvr (copied, readonly)
							]]
							tbl_upvr[arg1_4.universeId] = arg1_4
							module_3_upvr["luaapp.gamesapi.playabilitystatus."..tostring(v_2_upvr.universeId)] = Result_upvr.new(true, nil)
						end):matchError(function(arg1_5) -- Line 49
							warn(arg1_5)
						end)
						local var41
					end
					pairs_result2 = var41
					if next(pairs_result2) then
						pairs_result3 = SetPlayabilityStatus_upvr
						i_2 = var41
						pairs_result3 = pairs_result3(i_2)
						arg1_2:dispatch(pairs_result3)
						-- KONSTANTWARNING: GOTO [69] #55
					end
				else
					pairs_result2 = "Response from GameGetVotes is malformed!"
					Logger_upvr:warning(pairs_result2)
				end
				-- KONSTANTERROR: [0] 1. Error Block 23 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [69] 55. Error Block 12 start (CF ANALYSIS FAILED)
				do
					return Promise_upvr.resolve(module_3_upvr)
				end
				-- KONSTANTERROR: [69] 55. Error Block 12 end (CF ANALYSIS FAILED)
			end, function(arg1_6) -- Line 62
				--[[ Upvalues[3]:
					[1]: arg2_2 (readonly)
					[2]: Result_upvr (copied, readonly)
					[3]: Promise_upvr (copied, readonly)
				]]
				local module = {}
				for _, v_3 in ipairs(arg2_2) do
					module["luaapp.gamesapi.playabilitystatus."..v_3] = Result_upvr.new(false, nil)
				end
				return Promise_upvr.resolve(module)
			end)
		end)
	end
	-- KONSTANTERROR: [20] 16. Error Block 22 end (CF ANALYSIS FAILED)
end
function module_2.GetFetchingStatus(arg1, arg2) -- Line 72
	--[[ Upvalues[1]:
		[1]: PerformFetch_upvr (readonly)
	]]
	return PerformFetch_upvr.GetStatus(arg1, "luaapp.gamesapi.playabilitystatus."..arg2)
end
return module_2