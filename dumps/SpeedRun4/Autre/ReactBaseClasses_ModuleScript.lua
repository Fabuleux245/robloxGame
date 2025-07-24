-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:28
-- Luau version 6, Types version 3
-- Time taken: 0.007906 seconds

local longstring1 = "%s already defined '%s', but it also defining the deprecated Roact method '%s'. %s should only implement one of these methods, preferably using the non-deprecated name."
-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local __DEV___upvr = _G.__DEV__
local __COMPAT_WARNINGS___upvr = _G.__COMPAT_WARNINGS__
local Parent = script.Parent.Parent
local console_upvr = require(Parent.Shared).console
local ReactNoopUpdateQueue_upvr = require(script.Parent.ReactNoopUpdateQueue)
local tbl_upvr = {}
if __DEV___upvr then
	require(Parent.LuauPolyfill).Object.freeze(tbl_upvr)
end
local function _(arg1) -- Line 49, Named "trimPath"
	local string_match_result1 = string.match(arg1, "%.%u[%.%w]-$")
	if string_match_result1 then
		return string.gsub(string_match_result1, "^%.", "")
	end
	return arg1
end
local function _(arg1, arg2, arg3) -- Line 63, Named "warnAboutExistingLifecycle"
	--[[ Upvalues[1]:
		[1]: console_upvr (readonly)
	]]
	console_upvr.warn(longstring1, arg1, arg3, arg2, arg1)
end
local function _(arg1, arg2, arg3) -- Line 73, Named "warnAboutDeprecatedLifecycleName"
	--[[ Upvalues[3]:
		[1]: __DEV___upvr (readonly)
		[2]: __COMPAT_WARNINGS___upvr (readonly)
		[3]: console_upvr (readonly)
	]]
	if __DEV___upvr then
		local var26
		if __COMPAT_WARNINGS___upvr then
			local NEVER_5, NEVER_3 = debug.info(3, "sln")
			local string_match_result1_2 = string.match(NEVER_5, "%.%u[%.%w]-$")
			if string_match_result1_2 then
				var26 = string.gsub(string_match_result1_2, "^%.", "")
			else
				var26 = NEVER_5
			end
			console_upvr.warn("%s is using method '%s', which is no longer supported and should be updated to '%s'\nFile: %s:%s", arg1, arg2, arg3, var26, tostring(NEVER_3))
		end
	end
end
local tbl_4_upvr = {
	didMount = "componentDidMount";
	shouldUpdate = "shouldComponentUpdate";
	willUpdate = "UNSAFE_componentWillUpdate";
	didUpdate = "componentDidUpdate";
	willUnmount = "componentWillUnmount";
}
local function handleNewLifecycle(arg1, arg2, arg3) -- Line 95
	--[[ Upvalues[4]:
		[1]: tbl_4_upvr (readonly)
		[2]: console_upvr (readonly)
		[3]: __DEV___upvr (readonly)
		[4]: __COMPAT_WARNINGS___upvr (readonly)
	]]
	local var38
	if tbl_4_upvr[arg2] ~= nil then
		if arg1[tbl_4_upvr[var38]] ~= nil then
			local __componentName_3 = arg1.__componentName
			console_upvr.warn(longstring1, __componentName_3, tbl_4_upvr[var38], var38, __componentName_3)
		elseif var38 == "willUpdate" and arg1.componentWillUpdate then
			local __componentName_2 = arg1.__componentName
			console_upvr.warn(longstring1, __componentName_2, "UNSAFE_componentWillUpdate", var38, __componentName_2)
		elseif __DEV___upvr then
			local var41
			if __COMPAT_WARNINGS___upvr then
				local NEVER_4, NEVER_6 = debug.info(3, "sln")
				local string_match_result1_4 = string.match(NEVER_4, "%.%u[%.%w]-$")
				if string_match_result1_4 then
					var41 = string.gsub(string_match_result1_4, "^%.", "")
				else
					var41 = NEVER_4
				end
				console_upvr.warn("%s is using method '%s', which is no longer supported and should be updated to '%s'\nFile: %s:%s", arg1.__componentName, var38, tbl_4_upvr[var38], var41, tostring(NEVER_6))
			end
		end
		var38 = tbl_4_upvr[var38]
	end
	rawset(arg1, var38, arg3)
end
local tbl_5 = {
	__newindex = handleNewLifecycle;
	__index = {
		isReactComponent = true;
	};
}
local function __tostring(arg1) -- Line 125
	return arg1.__componentName
end
tbl_5.__tostring = __tostring
local tbl_2_upvr = {
	__componentName = "Component";
}
local setmetatable_result1_upvr = setmetatable(tbl_2_upvr, tbl_5)
if not _G.__TESTEZ_RUNNING_TEST__ then
	tbl_2_upvr = 900
else
	tbl_2_upvr = 0
end
local table_create_result1_upvr = table.create(tbl_2_upvr)
for var62 = 1, tbl_2_upvr do
	table.insert(table_create_result1_upvr, {
		props = nil;
		context = nil;
		state = require(Parent.Shared).UninitializedState;
		__refs = tbl_upvr;
		__updater = ReactNoopUpdateQueue_upvr;
	})
	local var50_upvr
end
local Object_upvr = require(Parent.LuauPolyfill).Object
local function setStateInInit_upvr(arg1, arg2, arg3) -- Line 161, Named "setStateInInit"
	--[[ Upvalues[3]:
		[1]: __DEV___upvr (readonly)
		[2]: console_upvr (readonly)
		[3]: Object_upvr (readonly)
	]]
	local var52
	if var52 then
		if arg3 ~= nil then
			var52 = console_upvr.warn
			var52("Received a `callback` argument to `setState` during initialization of ".."\"%s\". The callback behavior is not supported when using `setState` ".."in `init`.\n\nConsider defining similar behavior in a ".."`compontentDidMount` method instead.", arg1.__componentName)
		end
	end
	var52 = arg2
	if var52 then
		var52 = type(arg2)
	end
	if arg2 == nil or var52 ~= "table" and var52 ~= "function" then
		error("setState(...): takes an object of state variables to update or a ".."function which returns an object of state variables.")
	end
	local state = arg1.state
	local var54
	if var52 == "function" then
		var54 = arg2(state, arg1.props)
	else
		var54 = arg2
	end
	arg1.state = Object_upvr.assign({}, state, var54)
end
local var55_upvw = 1
function setmetatable_result1_upvr.extend(arg1, arg2) -- Line 201
	--[[ Upvalues[9]:
		[1]: __COMPAT_WARNINGS___upvr (readonly)
		[2]: console_upvr (readonly)
		[3]: var55_upvw (read and write)
		[4]: tbl_2_upvr (readonly)
		[5]: table_create_result1_upvr (readonly)
		[6]: var50_upvr (readonly)
		[7]: tbl_upvr (readonly)
		[8]: ReactNoopUpdateQueue_upvr (readonly)
		[9]: setStateInInit_upvr (readonly)
	]]
	if arg2 == nil then
		if __COMPAT_WARNINGS___upvr then
			console_upvr.warn("Component:extend() accepting no arguments is deprecated, and will ".."not be supported in a future version of Roact. Please provide an explicit name.")
		end
		local var56 = ""
	elseif type(var56) ~= "string" then
		error("Component class name must be a string")
	end
	local module_upvr = {
		__componentName = var56;
		setState = arg1.setState;
		forceUpdate = arg1.forceUpdate;
		init = nil;
	}
	module_upvr.__index = module_upvr
	function module_upvr.__ctor(arg1_2, arg2_2, arg3) -- Line 235
		--[[ Upvalues[8]:
			[1]: var55_upvw (copied, read and write)
			[2]: tbl_2_upvr (copied, readonly)
			[3]: table_create_result1_upvr (copied, readonly)
			[4]: var50_upvr (copied, readonly)
			[5]: tbl_upvr (copied, readonly)
			[6]: ReactNoopUpdateQueue_upvr (copied, readonly)
			[7]: module_upvr (readonly)
			[8]: setStateInInit_upvr (copied, readonly)
		]]
		local var58
		if var55_upvw <= tbl_2_upvr then
			var58 = table_create_result1_upvr[var55_upvw]
			var58.props = arg1_2
			var58.context = arg2_2
			table_create_result1_upvr[var55_upvw] = nil
			var55_upvw += 1
		else
			local tbl = {}
			tbl.props = arg1_2
			tbl.context = arg2_2
			tbl.state = var50_upvr
			tbl.__refs = tbl_upvr
			local var60 = arg3
			if not var60 then
				var60 = ReactNoopUpdateQueue_upvr
			end
			tbl.__updater = var60
			var58 = tbl
		end
		var58 = setmetatable(var58, module_upvr)
		if module_upvr.init and type(module_upvr.init) == "function" then
			var58.setState = setStateInInit_upvr
			module_upvr.init(var58, arg1_2, arg2_2)
			var58.setState = nil
		end
		return var58
	end
	setmetatable(module_upvr, getmetatable(arg1))
	return module_upvr
end
function setmetatable_result1_upvr.setState(arg1, arg2, arg3) -- Line 327
	if arg2 ~= nil and type(arg2) ~= "table" and type(arg2) ~= "function" then
		error("setState(...): takes an object of state variables to update or a ".."function which returns an object of state variables.")
	end
	arg1.__updater.enqueueSetState(arg1, arg2, arg3, "setState")
end
function setmetatable_result1_upvr.forceUpdate(arg1, arg2) -- Line 356
	arg1.__updater.enqueueForceUpdate(arg1, arg2, "forceUpdate")
end
if __DEV___upvr then
	local tbl_3 = {}
	var62 = {}
	var62[1] = "isMounted"
	var62[2] = "Instead, make sure to clean up subscriptions and pending requests in ".."componentWillUnmount to prevent memory leaks."
	tbl_3.isMounted = var62
	var62 = {}
	var62[1] = "replaceState"
	var62[2] = "Refactor your code to use setState instead (see ".."https://github.com/facebook/react/issues/3236)."
	tbl_3.replaceState = var62
	function var62(arg1, arg2) -- Line 380
		--[[ Upvalues[2]:
			[1]: setmetatable_result1_upvr (readonly)
			[2]: console_upvr (readonly)
		]]
		setmetatable_result1_upvr[arg1] = function() -- Line 381
			--[[ Upvalues[2]:
				[1]: console_upvr (copied, readonly)
				[2]: arg2 (readonly)
			]]
			console_upvr.warn("%s(...) is deprecated in plain JavaScript React classes. %s", arg2[1], arg2[2])
			return nil
		end
	end
	for i_2, _ in tbl_3 do
		if tbl_3[i_2] ~= nil then
			local var65_upvr = tbl_3[i_2]
			setmetatable_result1_upvr[i_2] = function() -- Line 381
				--[[ Upvalues[2]:
					[1]: console_upvr (readonly)
					[2]: var65_upvr (readonly)
				]]
				console_upvr.warn("%s(...) is deprecated in plain JavaScript React classes. %s", var65_upvr[1], var65_upvr[2])
				return nil
			end
		end
	end
end
local any_extend_result1 = setmetatable_result1_upvr:extend("PureComponent")
any_extend_result1.extend = setmetatable_result1_upvr.extend
setmetatable(any_extend_result1, {
	__newindex = handleNewLifecycle;
	__index = {
		isReactComponent = true;
		isPureReactComponent = true;
	};
	__tostring = function(arg1) -- Line 428, Named "__tostring"
		return arg1.__componentName
	end;
})
return {
	Component = setmetatable_result1_upvr;
	PureComponent = any_extend_result1;
}