-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:04
-- Luau version 6, Types version 3
-- Time taken: 0.003512 seconds

local Parent = script.Parent.Parent
local tbl_3 = {}
local tbl_2_upvr = {
	__index = tbl_3;
}
local tbl_4_upvr = {
	__mode = 'k';
}
local useDependency_upvr = require(Parent.Dependencies.useDependency)
function tbl_3.get(arg1, arg2) -- Line 28
	--[[ Upvalues[1]:
		[1]: useDependency_upvr (readonly)
	]]
	if arg2 ~= false then
		useDependency_upvr(arg1)
	end
	return arg1._value
end
local captureDependencies_upvr = require(Parent.Dependencies.captureDependencies)
local needsDestruction_upvr = require(Parent.Utility.needsDestruction)
local logWarn_upvr = require(Parent.Logging.logWarn)
local isSimilar_upvr = require(Parent.Utility.isSimilar)
local logErrorNonFatal_upvr = require(Parent.Logging.logErrorNonFatal)
function tbl_3.update(arg1) -- Line 39
	--[[ Upvalues[5]:
		[1]: captureDependencies_upvr (readonly)
		[2]: needsDestruction_upvr (readonly)
		[3]: logWarn_upvr (readonly)
		[4]: isSimilar_upvr (readonly)
		[5]: logErrorNonFatal_upvr (readonly)
	]]
	for i in pairs(arg1.dependencySet) do
		i.dependentSet[arg1] = nil
	end
	arg1._oldDependencySet = arg1.dependencySet
	arg1.dependencySet = arg1._oldDependencySet
	table.clear(arg1.dependencySet)
	local captureDependencies_upvr_result1_2, var6_result2, var6_result3 = captureDependencies_upvr(arg1.dependencySet, arg1._processor)
	if captureDependencies_upvr_result1_2 then
		i = arg1._destructor
		if i == nil then
			i = needsDestruction_upvr(var6_result2)
			if i then
				i = logWarn_upvr
				i("destructorNeededComputed")
			end
		end
		if var6_result3 ~= nil then
			i = logWarn_upvr
			i("multiReturnComputed")
		end
		i = arg1._value
		if arg1._destructor ~= nil then
			arg1._destructor(i)
		end
		arg1._value = var6_result2
		for i_2 in pairs(arg1.dependencySet) do
			i_2.dependentSet[arg1] = true
		end
		return not isSimilar_upvr(i, var6_result2)
	end
	logErrorNonFatal_upvr("computedCallbackError", var6_result2)
	arg1._oldDependencySet = arg1.dependencySet
	arg1.dependencySet = arg1._oldDependencySet
	for i_3 in pairs(arg1.dependencySet) do
		i_3.dependentSet[arg1] = true
	end
	return false
end
local initDependency_upvr = require(Parent.Dependencies.initDependency)
return function(arg1, arg2) -- Line 93, Named "Computed"
	--[[ Upvalues[3]:
		[1]: tbl_4_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: initDependency_upvr (readonly)
	]]
	local tbl = {
		type = "State";
		kind = "Computed";
		dependencySet = {};
		dependentSet = setmetatable({}, tbl_4_upvr);
		_oldDependencySet = {};
	}
	tbl._processor = arg1
	tbl._destructor = arg2
	tbl._value = nil
	local setmetatable_result1 = setmetatable(tbl, tbl_2_upvr)
	initDependency_upvr(setmetatable_result1)
	setmetatable_result1:update()
	return setmetatable_result1
end