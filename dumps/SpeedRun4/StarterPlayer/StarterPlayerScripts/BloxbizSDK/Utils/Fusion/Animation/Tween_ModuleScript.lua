-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:47
-- Luau version 6, Types version 3
-- Time taken: 0.002601 seconds

local Parent = script.Parent.Parent
local tbl_3 = {}
local tbl_5_upvr = {
	__index = tbl_3;
}
local tbl_2_upvr = {
	__mode = 'k';
}
local useDependency_upvr = require(Parent.Dependencies.useDependency)
function tbl_3.get(arg1, arg2) -- Line 27
	--[[ Upvalues[1]:
		[1]: useDependency_upvr (readonly)
	]]
	if arg2 ~= false then
		useDependency_upvr(arg1)
	end
	return arg1._currentValue
end
local logErrorNonFatal_upvr = require(Parent.Logging.logErrorNonFatal)
local TweenScheduler_upvr = require(Parent.Animation.TweenScheduler)
function tbl_3.update(arg1) -- Line 38
	--[[ Upvalues[2]:
		[1]: logErrorNonFatal_upvr (readonly)
		[2]: TweenScheduler_upvr (readonly)
	]]
	local any_get_result1 = arg1._goalState:get(false)
	local var12
	if any_get_result1 == var12 then
		var12 = arg1._currentlyAnimating
		if not var12 then
			var12 = false
			return var12
		end
	end
	var12 = arg1._tweenInfo
	if arg1._tweenInfoIsState then
		var12 = var12:get()
	end
	if typeof(var12) ~= "TweenInfo" then
		logErrorNonFatal_upvr("mistypedTweenInfo", nil, typeof(var12))
		return false
	end
	arg1._prevValue = arg1._currentValue
	arg1._nextValue = any_get_result1
	arg1._currentTweenStartTime = os.clock()
	arg1._currentTweenInfo = var12
	local var13 = var12.DelayTime + var12.Time
	if var12.Reverses then
		var13 += var12.Time
	end
	arg1._currentTweenDuration = var13 * (var12.RepeatCount + 1)
	TweenScheduler_upvr.add(arg1)
	return false
end
local xtypeof_upvr = require(Parent.Utility.xtypeof)
local logError_upvr = require(Parent.Logging.logError)
local initDependency_upvr = require(Parent.Dependencies.initDependency)
return function(arg1, arg2) -- Line 77, Named "Tween"
	--[[ Upvalues[5]:
		[1]: xtypeof_upvr (readonly)
		[2]: logError_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: tbl_5_upvr (readonly)
		[5]: initDependency_upvr (readonly)
	]]
	local any_get_result1_3 = arg1:get(false)
	local var18
	if var18 == nil then
		var18 = TweenInfo.new()
	end
	local tbl_4 = {}
	local var20 = true
	tbl_4[arg1] = var20
	if xtypeof_upvr(var18) ~= "State" then
		var20 = false
	else
		var20 = true
	end
	if var20 then
		tbl_4[var18] = true
	end
	local var21 = var18
	if var20 then
		var21 = var21:get()
	end
	if typeof(var21) ~= "TweenInfo" then
		logError_upvr("mistypedTweenInfo", nil, typeof(var21))
	end
	local tbl = {
		type = "State";
		kind = "Tween";
		dependencySet = tbl_4;
		dependentSet = setmetatable({}, tbl_2_upvr);
	}
	tbl._goalState = arg1
	tbl._tweenInfo = var18
	tbl._tweenInfoIsState = var20
	tbl._prevValue = any_get_result1_3
	tbl._nextValue = any_get_result1_3
	tbl._currentValue = any_get_result1_3
	tbl._currentTweenInfo = var18
	tbl._currentTweenDuration = 0
	tbl._currentTweenStartTime = 0
	tbl._currentlyAnimating = false
	local setmetatable_result1 = setmetatable(tbl, tbl_5_upvr)
	initDependency_upvr(setmetatable_result1)
	arg1.dependentSet[setmetatable_result1] = true
	return setmetatable_result1
end