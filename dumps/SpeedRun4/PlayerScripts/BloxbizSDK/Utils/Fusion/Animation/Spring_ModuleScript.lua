-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:08
-- Luau version 6, Types version 3
-- Time taken: 0.002585 seconds

local Parent = script.Parent.Parent
local logError_upvr = require(Parent.Logging.logError)
local unpackType_upvr = require(Parent.Animation.unpackType)
local SpringScheduler_upvr = require(Parent.Animation.SpringScheduler)
local unwrap_upvr = require(Parent.State.unwrap)
local tbl = {}
local tbl_4_upvr = {
	__index = tbl;
}
local tbl_3_upvr = {
	__mode = 'k';
}
local useDependency_upvr = require(Parent.Dependencies.useDependency)
function tbl.get(arg1, arg2) -- Line 30
	--[[ Upvalues[1]:
		[1]: useDependency_upvr (readonly)
	]]
	if arg2 ~= false then
		useDependency_upvr(arg1)
	end
	return arg1._currentValue
end
local updateAll_upvr = require(Parent.Dependencies.updateAll)
function tbl.setPosition(arg1, arg2) -- Line 44
	--[[ Upvalues[4]:
		[1]: logError_upvr (readonly)
		[2]: unpackType_upvr (readonly)
		[3]: SpringScheduler_upvr (readonly)
		[4]: updateAll_upvr (readonly)
	]]
	local typeof_result1_3 = typeof(arg2)
	if typeof_result1_3 ~= arg1._currentType then
		logError_upvr("springTypeMismatch", nil, typeof_result1_3, arg1._currentType)
	end
	arg1._springPositions = unpackType_upvr(arg2, typeof_result1_3)
	arg1._currentValue = arg2
	SpringScheduler_upvr.add(arg1)
	updateAll_upvr(arg1)
end
function tbl.setVelocity(arg1, arg2) -- Line 63
	--[[ Upvalues[3]:
		[1]: logError_upvr (readonly)
		[2]: unpackType_upvr (readonly)
		[3]: SpringScheduler_upvr (readonly)
	]]
	local typeof_result1 = typeof(arg2)
	if typeof_result1 ~= arg1._currentType then
		logError_upvr("springTypeMismatch", nil, typeof_result1, arg1._currentType)
	end
	arg1._springVelocities = unpackType_upvr(arg2, typeof_result1)
	SpringScheduler_upvr.add(arg1)
end
function tbl.addVelocity(arg1, arg2) -- Line 80
	--[[ Upvalues[3]:
		[1]: logError_upvr (readonly)
		[2]: unpackType_upvr (readonly)
		[3]: SpringScheduler_upvr (readonly)
	]]
	local typeof_result1_2 = typeof(arg2)
	if typeof_result1_2 ~= arg1._currentType then
		logError_upvr("springTypeMismatch", nil, typeof_result1_2, arg1._currentType)
	end
	for i, v in ipairs(unpackType_upvr(arg2, typeof_result1_2)) do
		local _springVelocities = arg1._springVelocities
		_springVelocities[i] += v
	end
	SpringScheduler_upvr.add(arg1)
end
local logErrorNonFatal_upvr = require(Parent.Logging.logErrorNonFatal)
function tbl.update(arg1) -- Line 97
	--[[ Upvalues[4]:
		[1]: unwrap_upvr (readonly)
		[2]: logErrorNonFatal_upvr (readonly)
		[3]: unpackType_upvr (readonly)
		[4]: SpringScheduler_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 7. Error Block 37 start (CF ANALYSIS FAILED)
	local unwrap_upvr_result1 = unwrap_upvr(arg1._damping)
	if typeof(unwrap_upvr_result1) ~= "number" then
		logErrorNonFatal_upvr("mistypedSpringDamping", nil, typeof(unwrap_upvr_result1))
		-- KONSTANTWARNING: GOTO [42] #33
	end
	-- KONSTANTERROR: [10] 7. Error Block 37 end (CF ANALYSIS FAILED)
end
local xtypeof_upvr = require(Parent.Utility.xtypeof)
local initDependency_upvr = require(Parent.Dependencies.initDependency)
return function(arg1, arg2, arg3) -- Line 165, Named "Spring"
	--[[ Upvalues[5]:
		[1]: xtypeof_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: unwrap_upvr (readonly)
		[4]: tbl_4_upvr (readonly)
		[5]: initDependency_upvr (readonly)
	]]
	if arg2 == nil then
		local var24 = 10
	end
	if arg3 == nil then
		local var25 = 1
	end
	local tbl_5 = {
		[arg1] = true;
	}
	if xtypeof_upvr(var24) == "State" then
		tbl_5[var24] = true
	end
	if xtypeof_upvr(var25) == "State" then
		tbl_5[var25] = true
	end
	local tbl_2 = {
		type = "State";
		kind = "Spring";
		dependencySet = tbl_5;
		dependentSet = setmetatable({}, tbl_3_upvr);
		_speed = var24;
		_damping = var25;
	}
	tbl_2._goalState = arg1
	tbl_2._goalValue = nil
	tbl_2._currentType = nil
	tbl_2._currentValue = nil
	tbl_2._currentSpeed = unwrap_upvr(var24)
	tbl_2._currentDamping = unwrap_upvr(var25)
	tbl_2._springPositions = nil
	tbl_2._springGoals = nil
	tbl_2._springVelocities = nil
	local setmetatable_result1 = setmetatable(tbl_2, tbl_4_upvr)
	initDependency_upvr(setmetatable_result1)
	arg1.dependentSet[setmetatable_result1] = true
	setmetatable_result1:update()
	return setmetatable_result1
end