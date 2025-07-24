-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:05
-- Luau version 6, Types version 3
-- Time taken: 0.006783 seconds

local Parent = script.Parent.Parent
local tbl_2 = {}
local tbl_upvr = {
	__index = tbl_2;
}
local tbl_4_upvr = {
	__mode = 'k';
}
local useDependency_upvr = require(Parent.Dependencies.useDependency)
function tbl_2.get(arg1, arg2) -- Line 34
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
local cleanup_upvr = require(Parent.Utility.cleanup)
local parseError_upvr = require(Parent.Logging.parseError)
local logErrorNonFatal_upvr = require(Parent.Logging.logErrorNonFatal)
function tbl_2.update(arg1) -- Line 59
	--[[ Upvalues[7]:
		[1]: tbl_4_upvr (readonly)
		[2]: captureDependencies_upvr (readonly)
		[3]: needsDestruction_upvr (readonly)
		[4]: logWarn_upvr (readonly)
		[5]: cleanup_upvr (readonly)
		[6]: parseError_upvr (readonly)
		[7]: logErrorNonFatal_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 87 start (CF ANALYSIS FAILED)
	local _inputIsState = arg1._inputIsState
	local var21
	if _inputIsState then
		var21 = arg1._inputTable:get(false)
	else
		var21 = arg1._inputTable
	end
	arg1._oldValueCache = arg1._valueCache
	arg1._valueCache = arg1._oldValueCache
	local _valueCache = arg1._valueCache
	table.clear(_valueCache)
	for i in pairs(arg1.dependencySet) do
		local var26
		i.dependentSet[arg1] = var26
	end
	arg1._oldDependencySet = arg1.dependencySet
	arg1.dependencySet = arg1._oldDependencySet
	table.clear(arg1.dependencySet)
	if _inputIsState then
		arg1._inputTable.dependentSet[arg1] = true
		arg1.dependencySet[arg1._inputTable] = true
	end
	local pairs_result1, pairs_result2_3, pairs_result3 = pairs(var21)
	-- KONSTANTERROR: [0] 1. Error Block 87 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [168] 113. Error Block 90 start (CF ANALYSIS FAILED)
	if var26 then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [169.15]
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
		nil.oldDependencySet = nil.dependencySet
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		nil.dependencySet = nil.oldDependencySet
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		table.clear(nil.dependencySet)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [187.11]
		local captureDependencies_upvr_result1, captureDependencies_upvr_result2, captureDependencies_upvr_result3 = captureDependencies_upvr(nil.dependencySet, arg1._processor, nil)
		if captureDependencies_upvr_result1 then
			if arg1._destructor == nil and (needsDestruction_upvr(captureDependencies_upvr_result2) or needsDestruction_upvr(captureDependencies_upvr_result3)) then
				logWarn_upvr("destructorNeededForValues")
			end
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [205.14]
			if nil ~= nil then
				local _destructor = arg1._destructor
				if not _destructor then
					_destructor = cleanup_upvr
				end
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [215.16]
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				local xpcall_result1, xpcall_result2 = xpcall(_destructor, parseError_upvr, nil, nil)
				if not xpcall_result1 then
					logErrorNonFatal_upvr("forValuesDestructorError", xpcall_result2)
				end
			end
			local var36 = captureDependencies_upvr_result2
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x3)
			nil.oldDependencySet = nil.dependencySet
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			nil.dependencySet = nil.oldDependencySet
			logErrorNonFatal_upvr("forValuesProcessorError", captureDependencies_upvr_result2)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	captureDependencies_upvr_result1 = _valueCache[nil]
	local var37 = captureDependencies_upvr_result1
	if var37 == nil then
		var37 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		_valueCache[nil] = var37
	end
	local tbl_3 = {
		value = var36;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_3.valueData = nil
	tbl_3.meta = captureDependencies_upvr_result3
	table.insert(var37, tbl_3)
	;({})[i] = var36
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	for i_2 in pairs(nil.dependencySet) do
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		nil.dependencyValues[i_2] = i_2:get(false)
		arg1.dependencySet[i_2] = true
		i_2.dependentSet[arg1] = true
	end
	-- KONSTANTERROR: [168] 113. Error Block 90 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [74] 48. Error Block 88 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if i.dependentSet ~= nil then
	else
	end
	-- KONSTANTERROR: [74] 48. Error Block 88 end (CF ANALYSIS FAILED)
end
local initDependency_upvr = require(Parent.Dependencies.initDependency)
return function(arg1, arg2, arg3) -- Line 213, Named "ForValues"
	--[[ Upvalues[3]:
		[1]: tbl_4_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: initDependency_upvr (readonly)
	]]
	local var43 = false
	if arg1.type == "State" then
		if typeof(arg1.get) ~= "function" then
			var43 = false
		else
			var43 = true
		end
	end
	local tbl = {
		type = "State";
		kind = "ForValues";
		dependencySet = {};
		dependentSet = setmetatable({}, tbl_4_upvr);
		_oldDependencySet = {};
	}
	tbl._processor = arg2
	tbl._destructor = arg3
	tbl._inputIsState = var43
	tbl._inputTable = arg1
	tbl._outputTable = {}
	tbl._valueCache = {}
	tbl._oldValueCache = {}
	local setmetatable_result1 = setmetatable(tbl, tbl_upvr)
	initDependency_upvr(setmetatable_result1)
	setmetatable_result1:update()
	return setmetatable_result1
end