-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:25
-- Luau version 6, Types version 3
-- Time taken: 0.005365 seconds

local Parent = script.Parent.Parent
local tbl = {}
local tbl_upvr = {
	__index = tbl;
}
local tbl_3_upvr = {
	__mode = 'k';
}
local useDependency_upvr = require(Parent.Dependencies.useDependency)
function tbl.get(arg1, arg2) -- Line 36
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
function tbl.update(arg1) -- Line 62
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
	-- KONSTANTERROR: [0] 1. Error Block 83 start (CF ANALYSIS FAILED)
	local _inputIsState = arg1._inputIsState
	local var22
	if _inputIsState then
		var22 = arg1._inputTable:get(false)
	else
		var22 = arg1._inputTable
	end
	local _outputTable = arg1._outputTable
	local _keyOIMap = arg1._keyOIMap
	local _keyIOMap = arg1._keyIOMap
	local _meta = arg1._meta
	for i in pairs(arg1.dependencySet) do
		local dependentSet = i.dependentSet
		local var31
		dependentSet[arg1] = var31
	end
	arg1._oldDependencySet = arg1.dependencySet
	arg1.dependencySet = arg1._oldDependencySet
	table.clear(arg1.dependencySet)
	if _inputIsState then
		arg1._inputTable.dependentSet[arg1] = true
		arg1.dependencySet[arg1._inputTable] = true
	end
	local pairs_result1_3, pairs_result2, pairs_result3 = pairs(var22)
	-- KONSTANTERROR: [0] 1. Error Block 83 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [129] 84. Error Block 86 start (CF ANALYSIS FAILED)
	if var31 then
		dependentSet.oldDependencySet = dependentSet.dependencySet
		dependentSet.dependencySet = dependentSet.oldDependencySet
		table.clear(dependentSet.dependencySet)
		local var6_result1, captureDependencies_upvr_result2, captureDependencies_upvr_result3 = captureDependencies_upvr(dependentSet.dependencySet, arg1._processor, i)
		if var6_result1 then
			if arg1._destructor == nil and (needsDestruction_upvr(captureDependencies_upvr_result2) or needsDestruction_upvr(captureDependencies_upvr_result3)) then
				logWarn_upvr("destructorNeededForKeys")
			end
			local var38 = _keyOIMap[captureDependencies_upvr_result2]
			local var39 = _keyIOMap[i]
			if var38 ~= i and var22[var38] ~= nil then
				logError_upvr("forKeysKeyCollision", nil, tostring(captureDependencies_upvr_result2), tostring(var38), tostring(captureDependencies_upvr_result2))
			end
			if var39 ~= captureDependencies_upvr_result2 and _keyOIMap[var39] == i then
				local _destructor = arg1._destructor
				if not _destructor then
					_destructor = cleanup_upvr
				end
				local xpcall_result1, xpcall_result2 = xpcall(_destructor, parseError_upvr, var39, _meta[var39])
				if not xpcall_result1 then
					logErrorNonFatal_upvr("forKeysDestructorError", xpcall_result2)
				end
				_keyOIMap[var39] = nil
				_outputTable[var39] = nil
				_meta[var39] = nil
			end
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [219.13]
			arg1._oldInputTable[i] = nil
			_meta[captureDependencies_upvr_result2] = captureDependencies_upvr_result3
			_keyOIMap[captureDependencies_upvr_result2] = i
			_keyIOMap[i] = captureDependencies_upvr_result2
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			_outputTable[captureDependencies_upvr_result2] = nil
		else
			dependentSet.oldDependencySet = dependentSet.dependencySet
			dependentSet.dependencySet = dependentSet.oldDependencySet
			logErrorNonFatal_upvr("forKeysProcessorError", captureDependencies_upvr_result2)
		end
	end
	local pairs_result1_2, pairs_result2_2, pairs_result3_2 = pairs(dependentSet.dependencySet)
	for i_2 in pairs_result1_2, pairs_result2_2, pairs_result3_2 do
		dependentSet.dependencyValues[i_2] = i_2:get(false)
		arg1.dependencySet[i_2] = true
		i_2.dependentSet[arg1] = true
	end
	-- KONSTANTERROR: [129] 84. Error Block 86 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [66] 43. Error Block 84 start (CF ANALYSIS FAILED)
	if dependentSet == nil then
	end
	if pairs_result1_2 ~= nil then
	else
	end
	-- KONSTANTERROR: [66] 43. Error Block 84 end (CF ANALYSIS FAILED)
end
local initDependency_upvr = require(Parent.Dependencies.initDependency)
return function(arg1, arg2, arg3) -- Line 212, Named "ForKeys"
	--[[ Upvalues[3]:
		[1]: tbl_3_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: initDependency_upvr (readonly)
	]]
	local var47 = false
	if arg1.type == "State" then
		if typeof(arg1.get) ~= "function" then
			var47 = false
		else
			var47 = true
		end
	end
	local tbl_2 = {
		type = "State";
		kind = "ForKeys";
		dependencySet = {};
		dependentSet = setmetatable({}, tbl_3_upvr);
		_oldDependencySet = {};
	}
	tbl_2._processor = arg2
	tbl_2._destructor = arg3
	tbl_2._inputIsState = var47
	tbl_2._inputTable = arg1
	tbl_2._oldInputTable = {}
	tbl_2._outputTable = {}
	tbl_2._keyOIMap = {}
	tbl_2._keyIOMap = {}
	tbl_2._keyData = {}
	tbl_2._meta = {}
	local setmetatable_result1 = setmetatable(tbl_2, tbl_upvr)
	initDependency_upvr(setmetatable_result1)
	setmetatable_result1:update()
	return setmetatable_result1
end