-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:31
-- Luau version 6, Types version 3
-- Time taken: 0.015964 seconds

local Parent = script.Parent.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local Array_upvr = LuauPolyfill.Array
local Object_upvr = LuauPolyfill.Object
local console_upvr = require(Parent.Shared).console
local inspect_upvr = LuauPolyfill.util.inspect
local isValidElementType_upvr = require(Parent.Shared).isValidElementType
local getComponentName_upvr = require(Parent.Shared).getComponentName
local ReactSymbols = require(Parent.Shared).ReactSymbols
local REACT_FRAGMENT_TYPE_upvr = ReactSymbols.REACT_FRAGMENT_TYPE
local REACT_ELEMENT_TYPE_upvr = ReactSymbols.REACT_ELEMENT_TYPE
local ReactCurrentOwner_upvr = require(Parent.Shared).ReactSharedInternals.ReactCurrentOwner
local ReactElement = require(script.Parent.ReactElement)
local setExtraStackFrame_upvr = require(Parent.Shared).ReactSharedInternals.ReactDebugCurrentFrame.setExtraStackFrame
local describeUnknownElementTypeFrameInDEV_upvr = require(Parent.Shared).ReactComponentStackFrame.describeUnknownElementTypeFrameInDEV
local module = {}
local function _(arg1) -- Line 63, Named "setCurrentlyValidatingElement"
	--[[ Upvalues[2]:
		[1]: describeUnknownElementTypeFrameInDEV_upvr (readonly)
		[2]: setExtraStackFrame_upvr (readonly)
	]]
	if _G.__DEV__ then
		if arg1 then
			local _owner_3 = arg1._owner
			local var18
			if _owner_3 then
				var18 = _owner_3.type
			end
			setExtraStackFrame_upvr(describeUnknownElementTypeFrameInDEV_upvr(arg1.type, arg1._source, var18))
			return
		end
		setExtraStackFrame_upvr(nil)
	end
end
local var19_upvw
if _G.__DEV__ then
	var19_upvw = false
end
local function _(arg1, arg2) -- Line 91, Named "hasOwnProperty"
	local var20
	if arg1[arg2] == nil then
		var20 = false
	else
		var20 = true
	end
	return var20
end
local function _() -- Line 95, Named "getDeclarationErrorAddendum"
	--[[ Upvalues[2]:
		[1]: ReactCurrentOwner_upvr (readonly)
		[2]: getComponentName_upvr (readonly)
	]]
	if ReactCurrentOwner_upvr.current then
		local var8_result1_2 = getComponentName_upvr(ReactCurrentOwner_upvr.current.type)
		if var8_result1_2 then
			return "\n\nCheck the render method of `"..var8_result1_2.."`."
		end
	end
	return ""
end
local function _(arg1) -- Line 106, Named "getSourceInfoErrorAddendum"
	if arg1 ~= nil then
		return "\n\nCheck your code at "..string.gsub(arg1.fileName, "^.*[\\/]", "")..':'..arg1.lineNumber..'.'
	end
	return ""
end
local function _(arg1) -- Line 116, Named "getSourceInfoErrorAddendumForProps"
	if arg1 ~= nil then
		local __source = arg1.__source
		if __source ~= nil then
			return "\n\nCheck your code at "..string.gsub(__source.fileName, "^.*[\\/]", "")..':'..__source.lineNumber..'.'
		end
		return ""
	end
	return ""
end
local Boolean_upvr = LuauPolyfill.Boolean
local function getCurrentComponentErrorInfo_upvr(arg1) -- Line 133, Named "getCurrentComponentErrorInfo"
	--[[ Upvalues[3]:
		[1]: ReactCurrentOwner_upvr (readonly)
		[2]: getComponentName_upvr (readonly)
		[3]: Boolean_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 28 start (CF ANALYSIS FAILED)
	if ReactCurrentOwner_upvr.current then
		if getComponentName_upvr(ReactCurrentOwner_upvr.current.type) then
			-- KONSTANTWARNING: GOTO [18] #16
		end
	end
	local any_toJSBoolean_result1 = Boolean_upvr.toJSBoolean("")
	-- KONSTANTERROR: [0] 1. Error Block 28 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [47] 38. Error Block 30 start (CF ANALYSIS FAILED)
	if not any_toJSBoolean_result1 and typeof(arg1) == "function" then
		if debug.info(arg1, 'n') ~= "" then
		else
		end
	end
	if nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	end
	-- KONSTANTERROR: [47] 38. Error Block 30 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [72] 58. Error Block 21 start (CF ANALYSIS FAILED)
	do
		return string.format("\n\nCheck the top-level render call using <%s>.", nil)
	end
	-- KONSTANTERROR: [72] 58. Error Block 21 end (CF ANALYSIS FAILED)
end
local tbl_upvr = {}
local function validateExplicitKey_upvr(arg1, arg2, arg3) -- Line 175, Named "validateExplicitKey"
	--[[ Upvalues[7]:
		[1]: getCurrentComponentErrorInfo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: ReactCurrentOwner_upvr (readonly)
		[4]: getComponentName_upvr (readonly)
		[5]: describeUnknownElementTypeFrameInDEV_upvr (readonly)
		[6]: setExtraStackFrame_upvr (readonly)
		[7]: console_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 42 start (CF ANALYSIS FAILED)
	local var29
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var29 = arg1._store
		return var29.validated
	end
	if arg1._store == nil or INLINED() then
	else
		var29 = true
		arg1._store.validated = var29
		var29 = arg1.key
		if var29 == nil then
			-- KONSTANTWARNING: GOTO [21] #14
		end
		-- KONSTANTERROR: [0] 1. Error Block 42 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [20] 13. Error Block 57 start (CF ANALYSIS FAILED)
		if arg3 == nil then
			var29 = false
		else
			var29 = true
		end
		if true ~= var29 then return end
		var29 = arg2
		local getCurrentComponentErrorInfo_upvr_result1 = getCurrentComponentErrorInfo_upvr(var29)
		var29 = tbl_upvr[getCurrentComponentErrorInfo_upvr_result1]
		if var29 then return end
		var29 = tbl_upvr
		var29[getCurrentComponentErrorInfo_upvr_result1] = true
		var29 = ""
		if arg1 and arg1._owner and arg1._owner ~= ReactCurrentOwner_upvr.current then
			var29 = string.format(" It was passed a child from %s.", tostring(getComponentName_upvr(arg1._owner.type)))
		end
		if _G.__DEV__ then
			if _G.__DEV__ then
				if arg1 then
					local _owner = arg1._owner
					local var32
					if _owner then
						var32 = _owner.type
					end
					setExtraStackFrame_upvr(describeUnknownElementTypeFrameInDEV_upvr(arg1.type, arg1._source, var32))
				else
					setExtraStackFrame_upvr(nil)
				end
			end
			if arg1.key ~= nil and arg3 ~= nil then
				console_upvr.error("Child element received a \"key\" prop (\"%s\") in addition to a key in ".."the \"children\" table of its parent (\"%s\"). Please provide only ".."one key definition. When both are present, the \"key\" prop ".."will take precedence.".."%s%s See https://reactjs.org/link/warning-keys for more information.", tostring(arg1.key), tostring(arg3), getCurrentComponentErrorInfo_upvr_result1, var29)
			else
				console_upvr.error("Each child in a list should have a unique \"key\" prop.".."%s%s See https://reactjs.org/link/warning-keys for more information.", getCurrentComponentErrorInfo_upvr_result1, var29)
			end
			if _G.__DEV__ then
				setExtraStackFrame_upvr(nil)
			end
		end
		-- KONSTANTERROR: [20] 13. Error Block 57 end (CF ANALYSIS FAILED)
	end
end
local isValidElement_upvr = ReactElement.isValidElement
local getIteratorFn_upvr = ReactSymbols.getIteratorFn
local function validateChildKeys_upvr(arg1, arg2) -- Line 250, Named "validateChildKeys"
	--[[ Upvalues[4]:
		[1]: Array_upvr (readonly)
		[2]: isValidElement_upvr (readonly)
		[3]: validateExplicitKey_upvr (readonly)
		[4]: getIteratorFn_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [7] 6. Error Block 2 start (CF ANALYSIS FAILED)
	do
		return
	end
	-- KONSTANTERROR: [7] 6. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 3 end (CF ANALYSIS FAILED)
end
local checkPropTypes_upvr = require(Parent.Shared).checkPropTypes
local function validatePropTypes_upvr(arg1) -- Line 293, Named "validatePropTypes"
	--[[ Upvalues[4]:
		[1]: getComponentName_upvr (readonly)
		[2]: checkPropTypes_upvr (readonly)
		[3]: var19_upvw (read and write)
		[4]: console_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 37 start (CF ANALYSIS FAILED)
	local var36
	if _G.__DISABLE_ALL_WARNINGS_EXCEPT_PROP_VALIDATION__ then
		-- KONSTANTERROR: [10] 7. Error Block 35 start (CF ANALYSIS FAILED)
		local type = arg1.type
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var36 = typeof(type)
			return var36 == "string"
		end
		if type == nil or INLINED_2() then return end
		var36 = nil
		if typeof(type) == "function" then return end
		if typeof(type) == "table" then
			var36 = type.propTypes
			local validateProps = type.validateProps
		else
			return
		end
		if var36 or validateProps then
			checkPropTypes_upvr(var36, validateProps, arg1.props, "prop", getComponentName_upvr(type), arg1)
		elseif type.PropTypes ~= nil and not var19_upvw then
			var19_upvw = true
			console_upvr.error("Component %s declared `PropTypes` instead of `propTypes`. Did you misspell the property assignment?", getComponentName_upvr(type) or "Unknown")
		end
		if type.getDefaultProps ~= nil then
			console_upvr.error("getDefaultProps is only used on classic React.createClass ".."definitions. Use a static property named `defaultProps` instead.")
		end
		-- KONSTANTERROR: [10] 7. Error Block 35 end (CF ANALYSIS FAILED)
	end
	-- KONSTANTERROR: [5] 4. Error Block 37 end (CF ANALYSIS FAILED)
end
local function validateFragmentProps_upvr(arg1) -- Line 343, Named "validateFragmentProps"
	--[[ Upvalues[4]:
		[1]: Object_upvr (readonly)
		[2]: describeUnknownElementTypeFrameInDEV_upvr (readonly)
		[3]: setExtraStackFrame_upvr (readonly)
		[4]: console_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [64] 50. Error Block 39 start (CF ANALYSIS FAILED)
	if arg1.ref ~= nil then
		if _G.__DEV__ then
			if arg1 then
				local _owner_2 = arg1._owner
				local var40
				if _owner_2 then
					var40 = _owner_2.type
				end
				setExtraStackFrame_upvr(describeUnknownElementTypeFrameInDEV_upvr(arg1.type, arg1._source, var40))
			else
				setExtraStackFrame_upvr(nil)
			end
		end
		console_upvr.error("Invalid attribute `ref` supplied to `React.Fragment`.")
		if _G.__DEV__ then
			setExtraStackFrame_upvr(nil)
		end
	end
	-- KONSTANTERROR: [64] 50. Error Block 39 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [107] 82. Error Block 26 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [107] 82. Error Block 26 end (CF ANALYSIS FAILED)
end
local jsxDEV_upvr = ReactElement.jsxDEV
local warnAboutSpreadingKeyToJSX_upvr = require(Parent.Shared).ReactFeatureFlags.warnAboutSpreadingKeyToJSX
local function jsxWithValidation_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 369, Named "jsxWithValidation"
	--[[ Upvalues[14]:
		[1]: isValidElementType_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: ReactCurrentOwner_upvr (readonly)
		[4]: getComponentName_upvr (readonly)
		[5]: Array_upvr (readonly)
		[6]: REACT_ELEMENT_TYPE_upvr (readonly)
		[7]: inspect_upvr (readonly)
		[8]: console_upvr (readonly)
		[9]: jsxDEV_upvr (readonly)
		[10]: validateChildKeys_upvr (readonly)
		[11]: warnAboutSpreadingKeyToJSX_upvr (readonly)
		[12]: REACT_FRAGMENT_TYPE_upvr (readonly)
		[13]: validateFragmentProps_upvr (readonly)
		[14]: validatePropTypes_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var59 = arg1
	local var7_result1 = isValidElementType_upvr(var59)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [122] 102. Error Block 87 start (CF ANALYSIS FAILED)
	if _G.__DEV__ then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [134.9]
		console_upvr.error("React.jsx: type is invalid -- expected a string (for ".."built-in components) or a class/function (for composite ".."components) but got: %s.%s", nil, var59)
	end
	-- KONSTANTERROR: [122] 102. Error Block 87 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [137] 114. Error Block 88 start (CF ANALYSIS FAILED)
	local var41_result1 = jsxDEV_upvr(arg1, arg2, arg3, arg5, arg6)
	if var41_result1 == nil then
		return var41_result1
	end
	if var7_result1 then
		local children = arg2.children
		if children ~= nil then
			if arg4 then
				if Array_upvr.isArray(children) then
					for i = 1, #children do
						validateChildKeys_upvr(children[i], arg1)
						local var63
					end
					Object_upvr.freeze(var63)
				elseif _G.__DEV__ then
					i = "React.jsx: Static children should always be an array. "
					console_upvr.error(i.."You are likely explicitly calling React.jsxs or React.jsxDEV. ".."Use the Babel transform instead.")
					-- KONSTANTWARNING: GOTO [192] #161
				end
			else
				i = arg1
				validateChildKeys_upvr(var63, i)
			end
		end
	end
	if _G.__DEV__ then
		local var64 = warnAboutSpreadingKeyToJSX_upvr
		if var64 then
			if arg2.key == nil then
				var64 = false
			else
				var64 = true
			end
			if var64 then
				var64 = console_upvr.error
				var64("React.jsx: Spreading a key to JSX is a deprecated pattern. ".."Explicitly pass a key after spreading props in your JSX call. ".."E.g. <%s {...props} key={key} />", getComponentName_upvr(arg1) or "ComponentName")
			end
		end
	end
	if arg1 == REACT_FRAGMENT_TYPE_upvr then
		validateFragmentProps_upvr(var41_result1)
		return var41_result1
	end
	validatePropTypes_upvr(var41_result1)
	do
		return var41_result1
	end
	-- KONSTANTERROR: [137] 114. Error Block 88 end (CF ANALYSIS FAILED)
end
module.jsxWithValidation = jsxWithValidation_upvr
function module.jsxWithValidationStatic(arg1, arg2, arg3) -- Line 491
	--[[ Upvalues[1]:
		[1]: jsxWithValidation_upvr (readonly)
	]]
	return jsxWithValidation_upvr(arg1, arg2, arg3, true)
end
function module.jsxWithValidationDynamic(arg1, arg2, arg3) -- Line 495
	--[[ Upvalues[1]:
		[1]: jsxWithValidation_upvr (readonly)
	]]
	return jsxWithValidation_upvr(arg1, arg2, arg3, false)
end
local createElement_upvr = ReactElement.createElement
function module.createElementWithValidation(arg1, arg2, ...) -- Line 500
	--[[ Upvalues[13]:
		[1]: isValidElementType_upvr (readonly)
		[2]: Object_upvr (readonly)
		[3]: ReactCurrentOwner_upvr (readonly)
		[4]: getComponentName_upvr (readonly)
		[5]: Array_upvr (readonly)
		[6]: REACT_ELEMENT_TYPE_upvr (readonly)
		[7]: inspect_upvr (readonly)
		[8]: console_upvr (readonly)
		[9]: createElement_upvr (readonly)
		[10]: validateChildKeys_upvr (readonly)
		[11]: REACT_FRAGMENT_TYPE_upvr (readonly)
		[12]: validateFragmentProps_upvr (readonly)
		[13]: validatePropTypes_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var68
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 6. Error Block 69 start (CF ANALYSIS FAILED)
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var68 = typeof(arg1)
		return var68 == "table"
	end
	local function INLINED_4() -- Internal function, doesn't exist in bytecode
		var68 = #Object_upvr.keys(arg1)
		return var68 == 0
	end
	if arg1 == nil or INLINED_3() and INLINED_4() then
		var68 = ""
	end
	if arg2 ~= nil then
		local __source_2 = arg2.__source
		if __source_2 ~= nil then
			var68 = "\n\nCheck your code at "..string.gsub(__source_2.fileName, "^.*[\\/]", "")..':'..__source_2.lineNumber..'.'
		else
			var68 = ""
		end
	else
		var68 = ""
	end
	if var68 then
		-- KONSTANTWARNING: GOTO [78] #65
	end
	-- KONSTANTERROR: [5] 6. Error Block 69 end (CF ANALYSIS FAILED)
end
local cloneElement_upvr = ReactElement.cloneElement
function module.cloneElementWithValidation(arg1, arg2, ...) -- Line 633
	--[[ Upvalues[3]:
		[1]: cloneElement_upvr (readonly)
		[2]: validateChildKeys_upvr (readonly)
		[3]: validatePropTypes_upvr (readonly)
	]]
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = arg2
	tbl[3] = ...
	local cloneElement_upvr_result1 = cloneElement_upvr(arg1, arg2, ...)
	for i_2 = 3, #tbl do
		validateChildKeys_upvr(tbl[i_2], cloneElement_upvr_result1.type)
	end
	validatePropTypes_upvr(cloneElement_upvr_result1)
	return cloneElement_upvr_result1
end
return module