-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:31
-- Luau version 6, Types version 3
-- Time taken: 0.012349 seconds

local __DEV___upvr = _G.__DEV__
local Parent = script.Parent.Parent
local console_upvr = require(Parent.Shared).console
local REACT_ELEMENT_TYPE_upvr = require(Parent.Shared).ReactSymbols.REACT_ELEMENT_TYPE
local ReactCurrentOwner_upvr = require(Parent.Shared).ReactSharedInternals.ReactCurrentOwner
local tbl_4_upvr = {
	key = true;
	ref = true;
	__self = true;
	__source = true;
}
local var7_upvw
if __DEV___upvr then
	var7_upvw = {}
end
local module_3 = {}
local function _(arg1) -- Line 58, Named "hasValidRef"
	--[[ Upvalues[1]:
		[1]: __DEV___upvr (readonly)
	]]
	local var10
	if var10 then
		var10 = arg1.ref
		if var10 ~= nil then
			var10 = type(arg1.ref)
			if var10 == "table" then
				var10 = arg1.ref.isReactWarning
				if var10 then
					var10 = false
					return var10
				end
			end
		end
	end
	if arg1.ref == nil then
		var10 = false
	else
		var10 = true
	end
	return var10
end
local function _(arg1) -- Line 72, Named "hasValidKey"
	--[[ Upvalues[1]:
		[1]: __DEV___upvr (readonly)
	]]
	local var11
	if var11 then
		var11 = arg1.key
		if var11 ~= nil then
			var11 = type(arg1.key)
			if var11 == "table" then
				var11 = arg1.key.isReactWarning
				if var11 then
					var11 = false
					return var11
				end
			end
		end
	end
	if arg1.key == nil then
		var11 = false
	else
		var11 = true
	end
	return var11
end
local module_2_upvr = {
	isReactWarning = true;
}
local var13_upvw
local function defineKeyPropWarningGetter_upvr(arg1, arg2) -- Line 91, Named "defineKeyPropWarningGetter"
	--[[ Upvalues[4]:
		[1]: __DEV___upvr (readonly)
		[2]: var13_upvw (read and write)
		[3]: console_upvr (readonly)
		[4]: module_2_upvr (readonly)
	]]
	local function _() -- Line 92
		--[[ Upvalues[4]:
			[1]: __DEV___upvr (copied, readonly)
			[2]: var13_upvw (copied, read and write)
			[3]: console_upvr (copied, readonly)
			[4]: arg2 (readonly)
		]]
		if __DEV___upvr then
			if not var13_upvw then
				var13_upvw = true
				console_upvr.error("%s: `key` is not a prop. Trying to access it will result ".."in `nil` being returned. If you need to access the same ".."value within the child component, you should pass it as a different ".."prop. (https://reactjs.org/link/special-props)", arg2)
			end
		end
	end
	arg1.key = nil
	local tbl_3 = {}
	local function __index(arg1_2, arg2_2) -- Line 111
		--[[ Upvalues[5]:
			[1]: __DEV___upvr (copied, readonly)
			[2]: var13_upvw (copied, read and write)
			[3]: console_upvr (copied, readonly)
			[4]: arg2 (readonly)
			[5]: module_2_upvr (copied, readonly)
		]]
		if arg2_2 == "key" then
			if __DEV___upvr and not var13_upvw then
				var13_upvw = true
				console_upvr.error("%s: `key` is not a prop. Trying to access it will result ".."in `nil` being returned. If you need to access the same ".."value within the child component, you should pass it as a different ".."prop. (https://reactjs.org/link/special-props)", arg2)
			end
			return module_2_upvr
		end
		return nil
	end
	tbl_3.__index = __index
	setmetatable(arg1, tbl_3)
end
local var16_upvw
local function defineRefPropWarningGetter_upvr(arg1, arg2) -- Line 123, Named "defineRefPropWarningGetter"
	--[[ Upvalues[4]:
		[1]: __DEV___upvr (readonly)
		[2]: var16_upvw (read and write)
		[3]: console_upvr (readonly)
		[4]: module_2_upvr (readonly)
	]]
	local function _() -- Line 126
		--[[ Upvalues[4]:
			[1]: __DEV___upvr (copied, readonly)
			[2]: var16_upvw (copied, read and write)
			[3]: console_upvr (copied, readonly)
			[4]: arg2 (readonly)
		]]
		if __DEV___upvr then
			if not var16_upvw then
				var16_upvw = true
				console_upvr.error("%s: `ref` is not a prop. Trying to access it will result ".."in `nil` being returned. If you need to access the same ".."value within the child component, you should pass it as a different ".."prop. (https://reactjs.org/link/special-props)", arg2)
			end
		end
	end
	arg1.ref = nil
	setmetatable(arg1, {
		__index = function(arg1_3, arg2_3) -- Line 145, Named "__index"
			--[[ Upvalues[5]:
				[1]: __DEV___upvr (copied, readonly)
				[2]: var16_upvw (copied, read and write)
				[3]: console_upvr (copied, readonly)
				[4]: arg2 (readonly)
				[5]: module_2_upvr (copied, readonly)
			]]
			if arg2_3 == "ref" then
				if __DEV___upvr and not var16_upvw then
					var16_upvw = true
					console_upvr.error("%s: `ref` is not a prop. Trying to access it will result ".."in `nil` being returned. If you need to access the same ".."value within the child component, you should pass it as a different ".."prop. (https://reactjs.org/link/special-props)", arg2)
				end
				return module_2_upvr
			end
			return nil
		end;
	})
end
local getComponentName_upvr = require(Parent.Shared).getComponentName
local function warnIfStringRefCannotBeAutoConverted_upvr(arg1) -- Line 157, Named "warnIfStringRefCannotBeAutoConverted"
	--[[ Upvalues[4]:
		[1]: __DEV___upvr (readonly)
		[2]: ReactCurrentOwner_upvr (readonly)
		[3]: getComponentName_upvr (readonly)
		[4]: var7_upvw (read and write)
	]]
	if __DEV___upvr then
		if type(arg1.ref) == "string" then
			if ReactCurrentOwner_upvr.current then
				local getComponentName_upvr_result1 = getComponentName_upvr(ReactCurrentOwner_upvr.current.type)
				if not var7_upvw[getComponentName_upvr_result1] then
					error(string.format("Component \"%s\" contains the string ref \"%s\". ".."Support for string refs has been removed. ".."We recommend using useRef() or createRef() instead. ".."Learn more about using refs safely here: ".."https://reactjs.org/link/strict-mode-string-ref", getComponentName_upvr_result1 or "Unknown", arg1.ref))
				end
			end
		end
	end
end
local function ReactElement_upvr(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 208, Named "ReactElement"
	--[[ Upvalues[2]:
		[1]: REACT_ELEMENT_TYPE_upvr (readonly)
		[2]: __DEV___upvr (readonly)
	]]
	local module = {}
	module.type = arg1
	module.key = arg2
	module.ref = arg3
	module.props = arg7
	module._owner = arg6
	module["$$typeof"] = REACT_ELEMENT_TYPE_upvr
	if __DEV___upvr then
		local tbl_upvr = {
			validated = false;
		}
		module._store = setmetatable({}, {
			__index = tbl_upvr;
			__newindex = function(arg1_4, arg2_4, arg3_2) -- Line 245, Named "__newindex"
				--[[ Upvalues[1]:
					[1]: tbl_upvr (readonly)
				]]
				if arg2_4 == "validated" then
					tbl_upvr.validated = arg3_2
				else
					rawset(arg1_4, arg2_4, arg3_2)
				end
			end;
		})
		local tbl_2 = {}
		local tbl = {}
		tbl._self = arg4
		tbl._source = arg5
		tbl_2.__index = tbl
		setmetatable(module, tbl_2)
	end
	return module
end
function module_3.jsx(arg1, arg2, arg3) -- Line 276
	error("JSX is currently unsupported")
end
function module_3.jsxDEV(arg1, arg2, arg3, arg4, arg5) -- Line 331
	error("JSX is currently unsupported")
	return nil
end
function module_3.createElement(arg1, arg2, ...) -- Line 407
	--[[ Upvalues[6]:
		[1]: __DEV___upvr (readonly)
		[2]: warnIfStringRefCannotBeAutoConverted_upvr (readonly)
		[3]: defineKeyPropWarningGetter_upvr (readonly)
		[4]: defineRefPropWarningGetter_upvr (readonly)
		[5]: ReactElement_upvr (readonly)
		[6]: ReactCurrentOwner_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 115 start (CF ANALYSIS FAILED)
	local var67
	if arg2 ~= nil then
		local _ = table.clone(arg2)
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 115 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [41] 29. Error Block 118 start (CF ANALYSIS FAILED)
	var67 = true
	if var67 then
		local ref_2 = arg2.ref
		var67 = __DEV___upvr
		if var67 then
			var67 = warnIfStringRefCannotBeAutoConverted_upvr
			var67(arg2)
		end
	end
	if __DEV___upvr then
		if arg2.key ~= nil and type(arg2.key) == "table" and arg2.key.isReactWarning then
			var67 = false
			-- KONSTANTWARNING: GOTO [77] #55
		end
	end
	if arg2.key == nil then
		var67 = false
	else
		var67 = true
	end
	if var67 then
		var67 = arg2.key
		if type(var67) == "number" then
			local _ = var67
		else
		end
	end
	var67 = arg2.__source
	if var67 == nil then
	else
	end
	var67 = ({}).key
	if var67 ~= nil then
		var67 = nil
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).key = var67
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var67 = ({}).ref
	if var67 ~= nil then
		var67 = nil
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).ref = var67
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var67 = ({}).__self
	if var67 ~= nil then
		var67 = nil
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).__self = var67
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var67 = ({}).__source
	if var67 ~= nil then
		var67 = nil
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).__source = var67
	end
	-- KONSTANTERROR: [41] 29. Error Block 118 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [131] 90. Error Block 132 start (CF ANALYSIS FAILED)
	var67 = select('#', ...)
	if var67 == 1 then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).children = select(1, ...)
	elseif 1 < var67 then
		for i_2 = 1, var67 do
			table.insert(table.create(var67), select(i_2, ...))
			local var72
		end
		if __DEV___upvr then
			table.freeze(var72)
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).children = var72
	end
	local var73
	if type(arg1) == "table" and arg1.defaultProps then
		local defaultProps = arg1.defaultProps
		for i, _ in defaultProps do
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if ({})[i] == nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				;({})[i] = defaultProps[i]
			end
		end
	end
	local var75
	if var75 then
		if tostring(var67) or ref_2 then
			var75 = nil
			if type(arg1) == "function" then
				var75 = debug.info(arg1, 'n') or "<function>"
				local var76 = var75
			elseif type(arg1) == "table" then
				local displayName = arg1.displayName
				if not displayName then
					displayName = arg1.name
					if not displayName then
						displayName = "Unknown"
					end
				end
				var76 = displayName
			else
				var76 = arg1
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if tostring(var67) then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				defineKeyPropWarningGetter_upvr({}, var76)
			end
			if ref_2 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				defineRefPropWarningGetter_upvr({}, var76)
			end
		end
		if var73 == nil then
			var76 = {}
			local var78 = var76
			var78.fileName = debug.info(3, 's')
			var78.lineNumber = debug.info(3, 'l')
			var73 = var78
		end
	end
	var78 = ReactElement_upvr
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	var78 = var78(arg1, tostring(var67), ref_2, nil, var73, ReactCurrentOwner_upvr.current, {})
	do
		return var78
	end
	-- KONSTANTERROR: [131] 90. Error Block 132 end (CF ANALYSIS FAILED)
end
function module_3.cloneAndReplaceKey(arg1, arg2) -- Line 585
	--[[ Upvalues[1]:
		[1]: ReactElement_upvr (readonly)
	]]
	return ReactElement_upvr(arg1.type, arg2, arg1.ref, arg1._self, arg1._source, arg1._owner, arg1.props)
end
local Error_upvr = require(Parent.LuauPolyfill).Error
function module_3.cloneElement(arg1, arg2, ...) -- Line 606
	--[[ Upvalues[5]:
		[1]: Error_upvr (readonly)
		[2]: ReactCurrentOwner_upvr (readonly)
		[3]: __DEV___upvr (readonly)
		[4]: tbl_4_upvr (readonly)
		[5]: ReactElement_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 80 start (CF ANALYSIS FAILED)
	if arg1 == nil then
		error(Error_upvr.new("React.cloneElement(...): The argument must be a React element, but you passed "..tostring(arg1)))
	end
	if arg1.props ~= nil then
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 80 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [38] 26. Error Block 90 start (CF ANALYSIS FAILED)
	if arg2.ref ~= nil then
	elseif __DEV___upvr and arg2.ref ~= nil and type(arg2.ref) == "table" and arg2.ref.isReactWarning then
	elseif arg2.ref == nil then
	else
	end
	local key = arg2.key
	if key ~= nil then
		if type(key) == "number" then
		else
		end
		-- KONSTANTWARNING: GOTO [114] #77
	end
	-- KONSTANTERROR: [38] 26. Error Block 90 end (CF ANALYSIS FAILED)
end
function module_3.isValidElement(arg1) -- Line 722
	--[[ Upvalues[1]:
		[1]: REACT_ELEMENT_TYPE_upvr (readonly)
	]]
	local var86 = false
	if type(arg1) == "table" then
		if arg1["$$typeof"] ~= REACT_ELEMENT_TYPE_upvr then
			var86 = false
		else
			var86 = true
		end
	end
	return var86
end
return module_3