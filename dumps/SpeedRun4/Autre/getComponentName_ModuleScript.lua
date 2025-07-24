-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:05:24
-- Luau version 6, Types version 3
-- Time taken: 0.006733 seconds

local ReactSymbols = require(script.Parent.ReactSymbols)
local function _(arg1, arg2, arg3) -- Line 40, Named "getWrappedName"
	local var5
	if typeof(arg2) == "table" then
		local displayName_2 = arg2.displayName
		if not displayName_2 then
			displayName_2 = arg2.name
			if not displayName_2 then
				displayName_2 = ""
			end
		end
		var5 = displayName_2
	end
	displayName_2 = arg1.displayName
	local var7
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var7 = string.format("%s(%s)", arg3, var5)
		return var7
	end
	if not var7 and (var5 == "" or not INLINED_2()) then
		var7 = arg3
	end
	return var7
end
local function _(arg1) -- Line 53, Named "getContextName"
	return arg1.displayName or "Context"
end
local console_upvr = require(script.Parent.console)
local REACT_FRAGMENT_TYPE_upvr = ReactSymbols.REACT_FRAGMENT_TYPE
local REACT_PORTAL_TYPE_upvr = ReactSymbols.REACT_PORTAL_TYPE
local REACT_PROFILER_TYPE_upvr = ReactSymbols.REACT_PROFILER_TYPE
local REACT_STRICT_MODE_TYPE_upvr = ReactSymbols.REACT_STRICT_MODE_TYPE
local REACT_SUSPENSE_TYPE_upvr = ReactSymbols.REACT_SUSPENSE_TYPE
local REACT_SUSPENSE_LIST_TYPE_upvr = ReactSymbols.REACT_SUSPENSE_LIST_TYPE
local REACT_CONTEXT_TYPE_upvr = ReactSymbols.REACT_CONTEXT_TYPE
local REACT_PROVIDER_TYPE_upvr = ReactSymbols.REACT_PROVIDER_TYPE
local REACT_FORWARD_REF_TYPE_upvr = ReactSymbols.REACT_FORWARD_REF_TYPE
local REACT_MEMO_TYPE_upvr = ReactSymbols.REACT_MEMO_TYPE
local REACT_BLOCK_TYPE_upvr = ReactSymbols.REACT_BLOCK_TYPE
local REACT_LAZY_TYPE_upvr = ReactSymbols.REACT_LAZY_TYPE
local describeError_upvr = require(script.Parent["ErrorHandling.roblox"]).describeError
local function getComponentName_upvr(arg1) -- Line 57, Named "getComponentName"
	--[[ Upvalues[15]:
		[1]: console_upvr (readonly)
		[2]: REACT_FRAGMENT_TYPE_upvr (readonly)
		[3]: REACT_PORTAL_TYPE_upvr (readonly)
		[4]: REACT_PROFILER_TYPE_upvr (readonly)
		[5]: REACT_STRICT_MODE_TYPE_upvr (readonly)
		[6]: REACT_SUSPENSE_TYPE_upvr (readonly)
		[7]: REACT_SUSPENSE_LIST_TYPE_upvr (readonly)
		[8]: REACT_CONTEXT_TYPE_upvr (readonly)
		[9]: REACT_PROVIDER_TYPE_upvr (readonly)
		[10]: REACT_FORWARD_REF_TYPE_upvr (readonly)
		[11]: REACT_MEMO_TYPE_upvr (readonly)
		[12]: getComponentName_upvr (readonly)
		[13]: REACT_BLOCK_TYPE_upvr (readonly)
		[14]: REACT_LAZY_TYPE_upvr (readonly)
		[15]: describeError_upvr (readonly)
	]]
	if arg1 == nil then
		return nil
	end
	local typeof_result1_3 = typeof(arg1)
	if _G.__DEV__ and typeof_result1_3 == "table" and typeof(arg1.tag) == "number" then
		console_upvr.warn("Received an unexpected object in getComponentName(). ".."This is likely a bug in React. Please file an issue.")
	end
	if typeof_result1_3 == "function" then
		local func_name_3 = debug.info(arg1, 'n')
		if func_name_3 and 0 < string.len(func_name_3) then
			return func_name_3
		end
		local NEVER_2, NEVER = debug.info(arg1, "sl")
		return string.format("%s:%d", NEVER_2, NEVER)
	end
	if typeof_result1_3 == "string" then
		return arg1
	end
	if arg1 == REACT_FRAGMENT_TYPE_upvr then
		return "Fragment"
	end
	if arg1 == REACT_PORTAL_TYPE_upvr then
		return "Portal"
	end
	if arg1 == REACT_PROFILER_TYPE_upvr then
		return "Profiler"
	end
	if arg1 == REACT_STRICT_MODE_TYPE_upvr then
		return "StrictMode"
	end
	if arg1 == REACT_SUSPENSE_TYPE_upvr then
		return "Suspense"
	end
	if arg1 == REACT_SUSPENSE_LIST_TYPE_upvr then
		return "SuspenseList"
	end
	if typeof_result1_3 == "table" then
		local __typeof_2 = arg1["$$typeof"]
		if __typeof_2 == REACT_CONTEXT_TYPE_upvr then
			return (arg1.displayName or "Context")..".Consumer"
		end
		if __typeof_2 == REACT_PROVIDER_TYPE_upvr then
			return (arg1._context.displayName or "Context")..".Provider"
		end
		local var51
		if __typeof_2 == REACT_FORWARD_REF_TYPE_upvr then
			local render_3 = arg1.render
			var51 = "<function>"
			if typeof(render_3) == "table" then
				local displayName = render_3.displayName
				if not displayName then
					displayName = render_3.name
					if not displayName then
						displayName = ""
					end
				end
				var51 = displayName
			end
			local var54
			local function INLINED_5() -- Internal function, doesn't exist in bytecode
				var54 = string.format("%s(%s)", "ForwardRef", var51)
				return var54
			end
			if not var54 and (var51 == "" or not INLINED_5()) then
				var54 = "ForwardRef"
			end
			return var54
		end
		if __typeof_2 == REACT_MEMO_TYPE_upvr then
			return getComponentName_upvr(arg1.type)
		end
		if __typeof_2 == REACT_BLOCK_TYPE_upvr then
			return getComponentName_upvr(arg1._render)
		end
		if __typeof_2 == REACT_LAZY_TYPE_upvr then
			var51 = xpcall(arg1._init, describeError_upvr, arg1._payload)
			local xpcall_result1_3, xpcall_result2_2 = xpcall(arg1._init, describeError_upvr, arg1._payload)
			if xpcall_result1_3 then
				return getComponentName_upvr(xpcall_result2_2)
			end
			return nil
		end
		if arg1.displayName then
			return arg1.displayName
		end
		if arg1.name then
			return arg1.name
		end
		local getmetatable_result1_2 = getmetatable(arg1)
		if getmetatable_result1_2 then
			xpcall_result1_3 = getmetatable_result1_2
			if rawget(xpcall_result1_3, "__tostring") then
				xpcall_result1_3 = arg1
				return tostring(xpcall_result1_3)
			end
		end
	end
	return nil
end
return getComponentName_upvr