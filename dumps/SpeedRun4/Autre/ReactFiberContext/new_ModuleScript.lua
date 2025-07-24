-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:02
-- Luau version 6, Types version 3
-- Time taken: 0.007517 seconds

local __DEV___upvr = _G.__DEV__
local __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr = _G.__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__
local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Object_upvr = LuauPolyfill.Object
local Error_upvr = LuauPolyfill.Error
local new = require(script.Parent["ReactFiberStack.new"])
local ReactWorkTags = require(script.Parent.ReactWorkTags)
local getComponentName_upvr = require(Parent.Shared).getComponentName
local checkPropTypes_upvr = require(Parent.Shared).checkPropTypes
local createCursor = new.createCursor
local push_upvr = new.push
local pop_upvr = new.pop
local var14_upvw
if __DEV___upvr then
	var14_upvw = {}
end
local tbl_upvr = {}
if __DEV___upvr then
	Object_upvr.freeze(tbl_upvr)
end
local createCursor_result1_upvr = createCursor(tbl_upvr)
local createCursor_result1_upvr_2 = createCursor(false)
local var18_upvw = tbl_upvr
local isContextProvider_upvw
local disableLegacyContext_upvr = require(Parent.Shared).ReactFeatureFlags.disableLegacyContext
function isContextProvider_upvw(arg1) -- Line 161, Named "isContextProvider"
	local var32
	if type(arg1) == "function" then
		return false
	end
	if arg1.childContextTypes == nil then
		var32 = false
	else
		var32 = true
	end
	return var32
end
local console_upvr = require(Parent.Shared).console
local function processChildContext_upvr(arg1, arg2, arg3) -- Line 219, Named "processChildContext"
	--[[ Upvalues[8]:
		[1]: __DEV___upvr (readonly)
		[2]: getComponentName_upvr (readonly)
		[3]: var14_upvw (read and write)
		[4]: console_upvr (readonly)
		[5]: Error_upvr (readonly)
		[6]: __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr (readonly)
		[7]: checkPropTypes_upvr (readonly)
		[8]: Object_upvr (readonly)
	]]
	local stateNode_3 = arg1.stateNode
	local childContextTypes_2 = arg2.childContextTypes
	if stateNode_3.getChildContext == nil or type(stateNode_3.getChildContext) ~= "function" then
		if __DEV___upvr then
			local var44 = getComponentName_upvr(arg2) or "Unknown"
			if not var14_upvw[var44] then
				var14_upvw[var44] = true
				console_upvr.error("%s.childContextTypes is specified but there is no getChildContext() method ".."on the instance. You can either define getChildContext() on %s or remove ".."childContextTypes from it.", var44, var44)
			end
		end
		return arg3
	end
	local any_getChildContext_result1 = stateNode_3:getChildContext()
	for i_2, v_2 in any_getChildContext_result1 do
		if childContextTypes_2[i_2] == nil then
			error(Error_upvr.new(string.format("%s.getChildContext(): key \"%s\" is not defined in childContextTypes.", getComponentName_upvr(arg2) or "Unknown", i_2)))
		end
	end
	if __DEV___upvr or __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr then
		i_2 = nil
		v_2 = any_getChildContext_result1
		checkPropTypes_upvr(childContextTypes_2, i_2, v_2, "child context", getComponentName_upvr(arg2) or "Unknown")
	end
	return Object_upvr.assign({}, arg3, any_getChildContext_result1)
end
local ClassComponent_upvr = ReactWorkTags.ClassComponent
local isFiberMounted_upvr = require(script.Parent.ReactFiberTreeReflection).isFiberMounted
local HostRoot_upvr = ReactWorkTags.HostRoot
return {
	emptyContextObject = tbl_upvr;
	getUnmaskedContext = function(arg1, arg2, arg3) -- Line 68, Named "getUnmaskedContext"
		--[[ Upvalues[3]:
			[1]: isContextProvider_upvw (read and write)
			[2]: var18_upvw (read and write)
			[3]: createCursor_result1_upvr (readonly)
		]]
		if arg3 and isContextProvider_upvw(arg2) then
			return var18_upvw
		end
		return createCursor_result1_upvr.current
	end;
	cacheContext = function(arg1, arg2, arg3) -- Line 88, Named "cacheContext"
		local stateNode_6 = arg1.stateNode
		stateNode_6.__reactInternalMemoizedUnmaskedChildContext = arg2
		stateNode_6.__reactInternalMemoizedMaskedChildContext = arg3
	end;
	getMaskedContext = function(arg1, arg2) -- Line 103, Named "getMaskedContext"
		--[[ Upvalues[5]:
			[1]: tbl_upvr (readonly)
			[2]: __DEV___upvr (readonly)
			[3]: __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr (readonly)
			[4]: getComponentName_upvr (readonly)
			[5]: checkPropTypes_upvr (readonly)
		]]
		local type = arg1.type
		if type(type) == "function" then
			return arg2
		end
		local contextTypes = type.contextTypes
		if not contextTypes then
			return tbl_upvr
		end
		local stateNode_4 = arg1.stateNode
		if stateNode_4 and stateNode_4.__reactInternalMemoizedUnmaskedChildContext == arg2 then
			return stateNode_4.__reactInternalMemoizedMaskedChildContext
		end
		for i, _ in contextTypes do
			({})[i] = arg2[i]
			local var29
		end
		if __DEV___upvr or __DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION___upvr then
			checkPropTypes_upvr(contextTypes, nil, var29, "context", getComponentName_upvr(type) or "Unknown")
		end
		if stateNode_4 then
			local stateNode_7 = arg1.stateNode
			stateNode_7.__reactInternalMemoizedUnmaskedChildContext = arg2
			stateNode_7.__reactInternalMemoizedMaskedChildContext = var29
		end
		return var29
	end;
	hasContextChanged = function() -- Line 152, Named "hasContextChanged"
		--[[ Upvalues[2]:
			[1]: disableLegacyContext_upvr (readonly)
			[2]: createCursor_result1_upvr_2 (readonly)
		]]
		if disableLegacyContext_upvr then
			return false
		end
		return createCursor_result1_upvr_2.current
	end;
	popContext = function(arg1) -- Line 176, Named "popContext"
		--[[ Upvalues[3]:
			[1]: pop_upvr (readonly)
			[2]: createCursor_result1_upvr_2 (readonly)
			[3]: createCursor_result1_upvr (readonly)
		]]
		pop_upvr(createCursor_result1_upvr_2, arg1)
		pop_upvr(createCursor_result1_upvr, arg1)
	end;
	popTopLevelContextObject = function(arg1) -- Line 186, Named "popTopLevelContextObject"
		--[[ Upvalues[3]:
			[1]: pop_upvr (readonly)
			[2]: createCursor_result1_upvr_2 (readonly)
			[3]: createCursor_result1_upvr (readonly)
		]]
		pop_upvr(createCursor_result1_upvr_2, arg1)
		pop_upvr(createCursor_result1_upvr, arg1)
	end;
	pushTopLevelContextObject = function(arg1, arg2, arg3) -- Line 196, Named "pushTopLevelContextObject"
		--[[ Upvalues[5]:
			[1]: createCursor_result1_upvr (readonly)
			[2]: tbl_upvr (readonly)
			[3]: Error_upvr (readonly)
			[4]: push_upvr (readonly)
			[5]: createCursor_result1_upvr_2 (readonly)
		]]
		if createCursor_result1_upvr.current ~= tbl_upvr then
			error(Error_upvr.new("Unexpected context found on stack. ".."This error is likely caused by a bug in React. Please file an issue."))
		end
		push_upvr(createCursor_result1_upvr, arg2, arg1)
		push_upvr(createCursor_result1_upvr_2, arg3, arg1)
	end;
	processChildContext = processChildContext_upvr;
	isContextProvider = isContextProvider_upvw;
	pushContextProvider = function(arg1) -- Line 279, Named "pushContextProvider"
		--[[ Upvalues[5]:
			[1]: tbl_upvr (readonly)
			[2]: var18_upvw (read and write)
			[3]: createCursor_result1_upvr (readonly)
			[4]: push_upvr (readonly)
			[5]: createCursor_result1_upvr_2 (readonly)
		]]
		local stateNode_2 = arg1.stateNode
		local var47
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var47 = stateNode_2.__reactInternalMemoizedMergedChildContext
			return var47
		end
		if not stateNode_2 or not INLINED() then
			var47 = tbl_upvr
		end
		var18_upvw = createCursor_result1_upvr.current
		push_upvr(createCursor_result1_upvr, var47, arg1)
		push_upvr(createCursor_result1_upvr_2, createCursor_result1_upvr_2.current, arg1)
		return true
	end;
	invalidateContextProvider = function(arg1, arg2, arg3) -- Line 302, Named "invalidateContextProvider"
		--[[ Upvalues[7]:
			[1]: Error_upvr (readonly)
			[2]: processChildContext_upvr (readonly)
			[3]: var18_upvw (read and write)
			[4]: pop_upvr (readonly)
			[5]: createCursor_result1_upvr_2 (readonly)
			[6]: createCursor_result1_upvr (readonly)
			[7]: push_upvr (readonly)
		]]
		local stateNode = arg1.stateNode
		if not stateNode then
			error(Error_upvr.new("Expected to have an instance by this point. ".."This error is likely caused by a bug in React. Please file an issue."))
		end
		if arg3 then
			local processChildContext_result1 = processChildContext_upvr(arg1, arg2, var18_upvw)
			stateNode.__reactInternalMemoizedMergedChildContext = processChildContext_result1
			pop_upvr(createCursor_result1_upvr_2, arg1)
			pop_upvr(createCursor_result1_upvr, arg1)
			push_upvr(createCursor_result1_upvr, processChildContext_result1, arg1)
			push_upvr(createCursor_result1_upvr_2, arg3, arg1)
		else
			pop_upvr(createCursor_result1_upvr_2, arg1)
			push_upvr(createCursor_result1_upvr_2, arg3, arg1)
		end
	end;
	findCurrentUnmaskedContext = function(arg1) -- Line 343, Named "findCurrentUnmaskedContext"
		--[[ Upvalues[4]:
			[1]: ClassComponent_upvr (readonly)
			[2]: isFiberMounted_upvr (readonly)
			[3]: Error_upvr (readonly)
			[4]: HostRoot_upvr (readonly)
		]]
		if arg1.tag ~= ClassComponent_upvr or not isFiberMounted_upvr(arg1) then
			error(Error_upvr.new("Expected subtree parent to be a mounted class component. ".."This error is likely caused by a bug in React. Please file an issue."))
		end
		local var53 = arg1
		repeat
			if var53.tag == HostRoot_upvr then
				return var53.stateNode.context
			end
			if var53.tag == ClassComponent_upvr and var53.type.childContextTypes ~= nil then
				return var53.stateNode.__reactInternalMemoizedMergedChildContext
			end
		until var53.return_ == nil
		error(Error_upvr.new("Found unexpected detached subtree parent. ".."This error is likely caused by a bug in React. Please file an issue."))
	end;
}