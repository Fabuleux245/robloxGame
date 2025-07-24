-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:09:07
-- Luau version 6, Types version 3
-- Time taken: 0.003181 seconds

local Parent = script:FindFirstAncestor("GraphQLServer").Parent
local Cryo_upvr = require(Parent.Cryo)
local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new() -- Line 22
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local module = {
		loader = nil;
		lastTime = 0;
		fieldsSet = {};
		dataLoaderOptions = {
			batchSize = 50;
			batchDelay = 0;
		};
	}
	setmetatable(module, module_2_upvr)
	return module
end
function convertToSet(arg1) -- Line 37
	local module_4 = {}
	for _, v in arg1 do
		module_4[v] = true
	end
	return module_4
end
function module_2_upvr.getFields(arg1) -- Line 45
	local module_3 = {}
	for i_2, _ in arg1.fieldsSet do
		table.insert(module_3, i_2)
	end
	return module_3
end
local DataLoader_upvr = require(Parent.DataLoader).DataLoader
local fetchProfilesByIds_upvr = require(script.Parent.Parent.connectors.UserProfileConnector).fetchProfilesByIds
function module_2_upvr.makeDataLoader(arg1, arg2, arg3, arg4) -- Line 53
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: DataLoader_upvr (readonly)
		[3]: fetchProfilesByIds_upvr (readonly)
	]]
	arg1.fieldsSet = Cryo_upvr.Dictionary.join(arg1.fieldsSet, convertToSet(arg3))
	local var18_upvr = arg4
	if not var18_upvr then
		var18_upvr = arg1.dataLoaderOptions
	end
	return DataLoader_upvr.new(function(arg1_2) -- Line 56
		--[[ Upvalues[3]:
			[1]: fetchProfilesByIds_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		return fetchProfilesByIds_upvr(arg1_2, arg1:getFields(), arg2)
	end, {
		cache = true;
		maxBatchSize = var18_upvr.batchSize;
		batchScheduleFn = function(arg1_3) -- Line 61, Named "batchScheduleFn"
			--[[ Upvalues[1]:
				[1]: var18_upvr (readonly)
			]]
			task.delay(var18_upvr.batchDelay, arg1_3)
		end;
	})
end
local getFFlagRemoveDataLoaderTimer_upvr = require(Parent.SharedFlags).getFFlagRemoveDataLoaderTimer
local game_DefineFastInt_result1_upvr = game:DefineFastInt("UserProfilesDataLoaderClearTime_v1", 15)
function module_2_upvr.getLoader(arg1, arg2, arg3, arg4) -- Line 68
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: getFFlagRemoveDataLoaderTimer_upvr (readonly)
		[3]: game_DefineFastInt_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	arg1.fieldsSet = Cryo_upvr.Dictionary.join(arg1.fieldsSet, convertToSet(arg3))
	local os_clock_result1 = os.clock()
	local var24
	if getFFlagRemoveDataLoaderTimer_upvr() then
		var24 = false
		-- KONSTANTWARNING: GOTO [30] #23
	end
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 17. Error Block 20 start (CF ANALYSIS FAILED)
	if game_DefineFastInt_result1_upvr >= os_clock_result1 - arg1.lastTime then
		var24 = false
	else
		var24 = true
	end
	if not arg1.loader or var24 then
		arg1.lastTime = os_clock_result1
		arg1.loader = arg1:makeDataLoader(arg2, arg3, arg4)
	end
	do
		return arg1.loader
	end
	-- KONSTANTERROR: [22] 17. Error Block 20 end (CF ANALYSIS FAILED)
end
return module_2_upvr