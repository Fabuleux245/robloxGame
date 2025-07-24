-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:53
-- Luau version 6, Types version 3
-- Time taken: 0.002135 seconds

local NavigationSymbol = require(script.Parent.NavigationSymbol)
local var1_result1_upvr_4 = NavigationSymbol("BACK")
local var1_result1_upvr_3 = NavigationSymbol("INIT")
local var1_result1_upvr = NavigationSymbol("NAVIGATE")
local var1_result1_upvr_2 = NavigationSymbol("SET_PARAMS")
local module = {
	Back = var1_result1_upvr_4;
	Init = var1_result1_upvr_3;
	Navigate = var1_result1_upvr;
	SetParams = var1_result1_upvr_2;
}
setmetatable(module, {
	__index = function(arg1, arg2) -- Line 24, Named "__index"
		error("%q is not a valid member of NavigationActions":format(tostring(arg2)), 2)
	end;
})
function module.back(arg1) -- Line 30
	--[[ Upvalues[1]:
		[1]: var1_result1_upvr_4 (readonly)
	]]
	local var8 = arg1
	if not var8 then
		var8 = {}
	end
	return {
		type = var1_result1_upvr_4;
		key = var8.key;
		immediate = var8.immediate;
	}
end
function module.init(arg1) -- Line 40
	--[[ Upvalues[1]:
		[1]: var1_result1_upvr_3 (readonly)
	]]
	local var10 = arg1
	if not var10 then
		var10 = {}
	end
	return {
		type = var1_result1_upvr_3;
		params = var10.params;
	}
end
function module.navigate(arg1) -- Line 49
	--[[ Upvalues[1]:
		[1]: var1_result1_upvr (readonly)
	]]
	local var12 = arg1
	if not var12 then
		var12 = {}
	end
	return {
		type = var1_result1_upvr;
		routeName = var12.routeName;
		params = var12.params;
		action = var12.action;
		key = var12.key;
	}
end
function module.setParams(arg1) -- Line 61
	--[[ Upvalues[1]:
		[1]: var1_result1_upvr_2 (readonly)
	]]
	local var14 = arg1
	if not var14 then
		var14 = {}
	end
	return {
		type = var1_result1_upvr_2;
		preserveFocus = true;
		key = var14.key;
		params = var14.params;
	}
end
return module