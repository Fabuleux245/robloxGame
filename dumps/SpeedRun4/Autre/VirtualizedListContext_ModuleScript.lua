-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:16:04
-- Luau version 6, Types version 3
-- Time taken: 0.001513 seconds

local Parent = script.Parent.Parent.Parent
local React_upvr = require(Parent.React)
local module_2 = {}
local any_createContext_result1_upvr = React_upvr.createContext(nil)
module_2.VirtualizedListContext = any_createContext_result1_upvr
if _G.__DEV__ then
	any_createContext_result1_upvr.displayName = "VirtualizedListContext"
end
function module_2.VirtualizedListContextResetter(arg1) -- Line 96
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: any_createContext_result1_upvr (readonly)
	]]
	return React_upvr.createElement(any_createContext_result1_upvr.Provider, {
		value = nil;
	}, arg1.children)
end
local useMemo_upvr = React_upvr.useMemo
function module_2.VirtualizedListContextProvider(arg1) -- Line 109
	--[[ Upvalues[3]:
		[1]: useMemo_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: any_createContext_result1_upvr (readonly)
	]]
	local value_upvr = arg1.value
	return React_upvr.createElement(any_createContext_result1_upvr.Provider, {
		value = useMemo_upvr(function() -- Line 116
			--[[ Upvalues[1]:
				[1]: value_upvr (readonly)
			]]
			return {
				cellKey = nil;
				getScrollMetrics = value_upvr.getScrollMetrics;
				horizontal = value_upvr.horizontal;
				getOutermostParentListRef = value_upvr.getOutermostParentListRef;
				getNestedChildState = value_upvr.getNestedChildState;
				registerAsNestedChild = value_upvr.registerAsNestedChild;
				unregisterAsNestedChild = value_upvr.unregisterAsNestedChild;
				debugInfo = {
					cellKey = value_upvr.debugInfo.cellKey;
					horizontal = value_upvr.debugInfo.horizontal;
					listKey = value_upvr.debugInfo.listKey;
					parent = value_upvr.debugInfo.parent;
				};
			}
		end, {value_upvr.getScrollMetrics, value_upvr.horizontal, value_upvr.getOutermostParentListRef, value_upvr.getNestedChildState, value_upvr.registerAsNestedChild, value_upvr.unregisterAsNestedChild, value_upvr.debugInfo.cellKey, value_upvr.debugInfo.horizontal, value_upvr.debugInfo.listKey, value_upvr.debugInfo.parent});
	}, arg1.children)
end
local useContext_upvr = React_upvr.useContext
local Object_upvr = require(Parent.LuauPolyfill).Object
function module_2.VirtualizedListCellContextProvider(arg1) -- Line 156
	--[[ Upvalues[4]:
		[1]: useContext_upvr (readonly)
		[2]: any_createContext_result1_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Object_upvr (readonly)
	]]
	local useContext_upvr_result1 = useContext_upvr(any_createContext_result1_upvr)
	local module = {}
	local var17
	if useContext_upvr_result1 == nil then
		var17 = nil
	else
		var17 = Object_upvr.assign
		var17 = var17(table.clone(useContext_upvr_result1), {
			cellKey = arg1.cellKey;
		})
	end
	module.value = var17
	var17 = arg1.children
	return React_upvr.createElement(any_createContext_result1_upvr.Provider, module, var17)
end
return module_2