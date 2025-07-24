-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:05
-- Luau version 6, Types version 3
-- Time taken: 0.005279 seconds

local Parent = script.Parent.Parent
local tbl_2 = {}
local tbl_upvr = {
	__index = tbl_2;
}
local tbl_3_upvr = {
	__mode = 'k';
}
local useDependency_upvr = require(Parent.Dependencies.useDependency)
function tbl_2.get(arg1, arg2) -- Line 36
	--[[ Upvalues[1]:
		[1]: useDependency_upvr (readonly)
	]]
	if arg2 ~= false then
		useDependency_upvr(arg1)
	end
	return arg1._outputTable
end
local captureDependencies_upvr = require(Parent.Dependencies.captureDependencies)
local needsDestruction_upvr = require(Parent.Utility.needsDestruction)
local logWarn_upvr = require(Parent.Logging.logWarn)
local logError_upvr = require(Parent.Logging.logError)
local cleanup_upvr = require(Parent.Utility.cleanup)
local parseError_upvr = require(Parent.Logging.parseError)
local logErrorNonFatal_upvr = require(Parent.Logging.logErrorNonFatal)
function tbl_2.update(arg1) -- Line 61
	--[[ Upvalues[8]:
		[1]: tbl_3_upvr (readonly)
		[2]: captureDependencies_upvr (readonly)
		[3]: needsDestruction_upvr (readonly)
		[4]: logWarn_upvr (readonly)
		[5]: logError_upvr (readonly)
		[6]: cleanup_upvr (readonly)
		[7]: parseError_upvr (readonly)
		[8]: logErrorNonFatal_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 120 start (CF ANALYSIS FAILED)
	local _inputIsState = arg1._inputIsState
	local var22
	if _inputIsState then
		var22 = arg1._inputTable:get(false)
	else
		var22 = arg1._inputTable
	end
	for i in pairs(arg1.dependencySet) do
		local var27
		i.dependentSet[arg1] = var27
	end
	arg1._oldDependencySet = arg1.dependencySet
	arg1.dependencySet = arg1._oldDependencySet
	table.clear(arg1.dependencySet)
	if _inputIsState then
		arg1._inputTable.dependentSet[arg1] = true
		arg1.dependencySet[arg1._inputTable] = true
	end
	arg1._oldOutputTable = arg1._outputTable
	arg1._outputTable = arg1._oldOutputTable
	table.clear(arg1._outputTable)
	local pairs_result1_2, pairs_result2, pairs_result3_2 = pairs(var22)
	-- KONSTANTERROR: [0] 1. Error Block 120 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [329] 239. Error Block 91 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [331.14]
	local pairs_result1, pairs_result2_3, pairs_result3 = pairs(nil.dependencySet)
	for i_2 in pairs_result1, pairs_result2_3, pairs_result3 do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		nil.dependencyValues[i_2] = i_2:get(false)
		arg1.dependencySet[i_2] = true
		i_2.dependentSet[arg1] = true
	end
	-- KONSTANTERROR: [329] 239. Error Block 91 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [78] 50. Error Block 121 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if nil == nil then
	end
	if pairs_result1 == var27 then
	else
	end
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [352.15]
	-- KONSTANTERROR: [78] 50. Error Block 121 end (CF ANALYSIS FAILED)
end
local initDependency_upvr = require(Parent.Dependencies.initDependency)
return function(arg1, arg2, arg3) -- Line 273, Named "ForPairs"
	--[[ Upvalues[3]:
		[1]: tbl_3_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: initDependency_upvr (readonly)
	]]
	local var35 = false
	if arg1.type == "State" then
		if typeof(arg1.get) ~= "function" then
			var35 = false
		else
			var35 = true
		end
	end
	local tbl = {
		type = "State";
		kind = "ForPairs";
		dependencySet = {};
		dependentSet = setmetatable({}, tbl_3_upvr);
		_oldDependencySet = {};
	}
	tbl._processor = arg2
	tbl._destructor = arg3
	tbl._inputIsState = var35
	tbl._inputTable = arg1
	tbl._oldInputTable = {}
	tbl._outputTable = {}
	tbl._oldOutputTable = {}
	tbl._keyIOMap = {}
	tbl._keyData = {}
	tbl._meta = {}
	local setmetatable_result1 = setmetatable(tbl, tbl_upvr)
	initDependency_upvr(setmetatable_result1)
	setmetatable_result1:update()
	return setmetatable_result1
end