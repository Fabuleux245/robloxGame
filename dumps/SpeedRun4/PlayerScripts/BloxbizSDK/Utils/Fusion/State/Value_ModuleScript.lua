-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:27
-- Luau version 6, Types version 3
-- Time taken: 0.001362 seconds

local Parent = script.Parent.Parent
local tbl = {}
local tbl_upvr_2 = {
	__index = tbl;
}
local tbl_upvr = {
	__mode = 'k';
}
local useDependency_upvr = require(Parent.Dependencies.useDependency)
function tbl.get(arg1, arg2) -- Line 25
	--[[ Upvalues[1]:
		[1]: useDependency_upvr (readonly)
	]]
	if arg2 ~= false then
		useDependency_upvr(arg1)
	end
	return arg1._value
end
local isSimilar_upvr = require(Parent.Utility.isSimilar)
local updateAll_upvr = require(Parent.Dependencies.updateAll)
function tbl.set(arg1, arg2, arg3) -- Line 39
	--[[ Upvalues[2]:
		[1]: isSimilar_upvr (readonly)
		[2]: updateAll_upvr (readonly)
	]]
	if arg3 or not isSimilar_upvr(arg1._value, arg2) then
		arg1._value = arg2
		updateAll_upvr(arg1)
	end
end
local initDependency_upvr = require(Parent.Dependencies.initDependency)
return function(arg1) -- Line 47, Named "Value"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: initDependency_upvr (readonly)
	]]
	local tbl_2 = {
		type = "State";
		kind = "Value";
		dependentSet = setmetatable({}, tbl_upvr);
	}
	tbl_2._value = arg1
	local setmetatable_result1 = setmetatable(tbl_2, tbl_upvr_2)
	initDependency_upvr(setmetatable_result1)
	return setmetatable_result1
end