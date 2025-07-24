-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:02
-- Luau version 6, Types version 3
-- Time taken: 0.001616 seconds

local Parent = script.Parent.Parent
local Object_upvr = require(Parent.Parent.LuauPolyfill).Object
local NavigationSymbol = require(Parent.NavigationSymbol)
local var3_result1_upvr = NavigationSymbol("POP")
local var3_result1_upvr_2 = NavigationSymbol("POP_TO_TOP")
local NavigationSymbol_result1_upvr = NavigationSymbol("PUSH")
local NavigationSymbol_result1_upvr_2 = NavigationSymbol("RESET")
local var3_result1_upvr_3 = NavigationSymbol("REPLACE")
local NavigationSymbol_result1_upvr_3 = NavigationSymbol("COMPLETE_TRANSITION")
local module_7 = {
	Pop = var3_result1_upvr;
	PopToTop = var3_result1_upvr_2;
	Push = NavigationSymbol_result1_upvr;
	Reset = NavigationSymbol_result1_upvr_2;
	Replace = var3_result1_upvr_3;
	CompleteTransition = NavigationSymbol_result1_upvr_3;
}
setmetatable(module_7, {
	__index = function(arg1, arg2) -- Line 34, Named "__index"
		error("%q is not a valid member of StackActions":format(tostring(arg2)), 2)
	end;
})
function module_7.pop(arg1) -- Line 40
	--[[ Upvalues[2]:
		[1]: var3_result1_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	local module_6 = {
		type = var3_result1_upvr;
	}
	if arg1 then
		return Object_upvr.assign(module_6, arg1)
	end
	return module_6
end
function module_7.popToTop(arg1) -- Line 46
	--[[ Upvalues[2]:
		[1]: var3_result1_upvr_2 (readonly)
		[2]: Object_upvr (readonly)
	]]
	local module = {
		type = var3_result1_upvr_2;
	}
	if arg1 then
		return Object_upvr.assign(module, arg1)
	end
	return module
end
function module_7.push(arg1) -- Line 52
	--[[ Upvalues[2]:
		[1]: NavigationSymbol_result1_upvr (readonly)
		[2]: Object_upvr (readonly)
	]]
	local module_2 = {
		type = NavigationSymbol_result1_upvr;
	}
	if arg1 then
		return Object_upvr.assign(module_2, arg1)
	end
	return module_2
end
function module_7.reset(arg1) -- Line 59
	--[[ Upvalues[2]:
		[1]: NavigationSymbol_result1_upvr_2 (readonly)
		[2]: Object_upvr (readonly)
	]]
	local module_4 = {
		type = NavigationSymbol_result1_upvr_2;
	}
	if arg1 then
		return Object_upvr.assign(module_4, arg1)
	end
	return module_4
end
function module_7.replace(arg1) -- Line 65
	--[[ Upvalues[2]:
		[1]: var3_result1_upvr_3 (readonly)
		[2]: Object_upvr (readonly)
	]]
	local module_3 = {
		type = var3_result1_upvr_3;
		preserveFocus = true;
	}
	if arg1 then
		return Object_upvr.assign(module_3, arg1)
	end
	return module_3
end
function module_7.completeTransition(arg1) -- Line 70
	--[[ Upvalues[2]:
		[1]: NavigationSymbol_result1_upvr_3 (readonly)
		[2]: Object_upvr (readonly)
	]]
	local module_5 = {
		type = NavigationSymbol_result1_upvr_3;
		preserveFocus = true;
	}
	if arg1 then
		return Object_upvr.assign(module_5, arg1)
	end
	return module_5
end
return module_7