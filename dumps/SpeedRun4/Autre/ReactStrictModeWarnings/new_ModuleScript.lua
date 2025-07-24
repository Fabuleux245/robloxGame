-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:22
-- Luau version 6, Types version 3
-- Time taken: 0.008211 seconds

local Parent = script.Parent.Parent
local console_upvr = require(Parent.Shared).console
local ReactCurrentFiber = require(script.Parent.ReactCurrentFiber)
local getComponentName_upvr = require(Parent.Shared).getComponentName
local StrictMode_upvr = require(script.Parent.ReactTypeOfMode).StrictMode
local module = {
	recordUnsafeLifecycleWarnings = function(arg1, arg2) -- Line 31, Named "recordUnsafeLifecycleWarnings"
	end;
	flushPendingUnsafeLifecycleWarnings = function() -- Line 32, Named "flushPendingUnsafeLifecycleWarnings"
	end;
	recordLegacyContextWarning = function(arg1, arg2) -- Line 33, Named "recordLegacyContextWarning"
	end;
	flushLegacyContextWarning = function() -- Line 34, Named "flushLegacyContextWarning"
	end;
	discardPendingWarnings = function() -- Line 35, Named "discardPendingWarnings"
	end;
}
if _G.__DEV__ then
	local function _(arg1) -- Line 39
		--[[ Upvalues[1]:
			[1]: StrictMode_upvr (readonly)
		]]
		local var8 = arg1
		local var9
		while var8 ~= nil do
			if bit32.band(var8.mode, StrictMode_upvr) ~= 0 then
				var9 = var8
			end
		end
		return var9
	end
	local function var10_upvr(arg1) -- Line 54
		local module_2 = {}
		for i, _ in arg1 do
			table.insert(module_2, i)
		end
		table.sort(module_2)
		return table.concat(module_2, ", ")
	end
	local tbl_2_upvr = {}
	local tbl_3_upvr = {}
	local tbl_upvr = {}
	local tbl_4_upvr = {}
	local tbl_7_upvr = {}
	local tbl_upvr_3 = {}
	local tbl_upvr_2 = {}
	function module.recordUnsafeLifecycleWarnings(arg1, arg2) -- Line 73
		--[[ Upvalues[8]:
			[1]: tbl_upvr_2 (readonly)
			[2]: tbl_2_upvr (readonly)
			[3]: StrictMode_upvr (readonly)
			[4]: tbl_3_upvr (readonly)
			[5]: tbl_upvr (readonly)
			[6]: tbl_4_upvr (readonly)
			[7]: tbl_7_upvr (readonly)
			[8]: tbl_upvr_3 (readonly)
		]]
		if tbl_upvr_2[arg1.type] then
		else
			if typeof(arg2.componentWillMount) == "function" then
				table.insert(tbl_2_upvr, arg1)
			end
			if bit32.band(arg1.mode, StrictMode_upvr) ~= 0 and typeof(arg2.UNSAFE_componentWillMount) == "function" then
				table.insert(tbl_3_upvr, arg1)
			end
			if typeof(arg2.componentWillReceiveProps) == "function" then
				table.insert(tbl_upvr, arg1)
			end
			if bit32.band(arg1.mode, StrictMode_upvr) ~= 0 and typeof(arg2.UNSAFE_componentWillReceiveProps) == "function" then
				table.insert(tbl_4_upvr, arg1)
			end
			if typeof(arg2.componentWillUpdate) == "function" then
				table.insert(tbl_7_upvr, arg1)
			end
			if bit32.band(arg1.mode, StrictMode_upvr) ~= 0 and typeof(arg2.UNSAFE_componentWillUpdate) == "function" then
				table.insert(tbl_upvr_3, arg1)
			end
		end
	end
	function module.flushPendingUnsafeLifecycleWarnings() -- Line 129
		--[[ Upvalues[10]:
			[1]: tbl_2_upvr (readonly)
			[2]: getComponentName_upvr (readonly)
			[3]: tbl_upvr_2 (readonly)
			[4]: tbl_3_upvr (readonly)
			[5]: tbl_upvr (readonly)
			[6]: tbl_4_upvr (readonly)
			[7]: tbl_7_upvr (readonly)
			[8]: tbl_upvr_3 (readonly)
			[9]: var10_upvr (readonly)
			[10]: console_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local tbl = {}
		if 0 < #tbl_2_upvr then
			for _, v_2 in tbl_2_upvr do
				tbl[getComponentName_upvr(v_2.type) or "Component"] = true
				tbl_upvr_2[v_2.type] = true
			end
			table.clear(tbl_2_upvr)
		end
		if 0 < #tbl_3_upvr then
			for _, v_3 in tbl_3_upvr do
				({})[getComponentName_upvr(v_3.type) or "Component"] = true
				tbl_upvr_2[v_3.type] = true
				local var75
			end
			table.clear(tbl_3_upvr)
		end
		if 0 < #tbl_upvr then
			for _, v_4 in tbl_upvr do
				({})[getComponentName_upvr(v_4.type) or "Component"] = true
				tbl_upvr_2[v_4.type] = true
				local var77
			end
			table.clear(tbl_upvr)
		end
		if 0 < #tbl_4_upvr then
			for _, v_5 in tbl_4_upvr do
				({})[getComponentName_upvr(v_5.type) or "Component"] = true
				tbl_upvr_2[v_5.type] = true
				local var79
			end
			table.clear(tbl_4_upvr)
		end
		if 0 < #tbl_7_upvr then
			for _, v_6 in tbl_7_upvr do
				({})[getComponentName_upvr(v_6.type) or "Component"] = true
				tbl_upvr_2[v_6.type] = true
				local var81
			end
			table.clear(tbl_7_upvr)
		end
		if 0 < #tbl_upvr_3 then
			for _, v_7 in tbl_upvr_3 do
				({})[getComponentName_upvr(v_7.type) or "Component"] = true
				tbl_upvr_2[v_7.type] = true
				local var83
			end
			table.clear(tbl_upvr_3)
		end
		if next(var75) ~= nil then
			console_upvr.error("Using UNSAFE_componentWillMount in strict mode is not recommended and may indicate bugs in your code. ".."See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n".."* Move code with side effects to componentDidMount, and set initial state in the constructor.\n".."\nPlease update the following components: %s", var10_upvr(var75))
		end
		if next(var79) ~= nil then
			console_upvr.error("Using UNSAFE_componentWillReceiveProps in strict mode is not recommended ".."and may indicate bugs in your code. ".."See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n".."* Move data fetching code or side effects to componentDidUpdate.\n".."* If you're updating state whenever props change, ".."refactor your code to use memoization techniques or move it to ".."static getDerivedStateFromProps. Learn more at: https://reactjs.org/link/derived-state\n".."\nPlease update the following components: %s", var10_upvr(var79))
		end
		if next(var83) ~= nil then
			console_upvr.error("Using UNSAFE_componentWillUpdate in strict mode is not recommended ".."and may indicate bugs in your code. ".."See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n".."* Move data fetching code or side effects to componentDidUpdate.\n".."\nPlease update the following components: %s", var10_upvr(var83))
		end
		if next(tbl) ~= nil then
			console_upvr.warn("componentWillMount has been renamed, and is not recommended for use. ".."See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n".."* Move code with side effects to componentDidMount, and set initial state in the constructor.\n".."* Rename componentWillMount to UNSAFE_componentWillMount to suppress ".."this warning in non-strict mode. In React 18.x, only the UNSAFE_ name will work.\n".."\nPlease update the following components: %s", var10_upvr(tbl))
		end
		if next(var77) ~= nil then
			console_upvr.warn("componentWillReceiveProps has been renamed, and is not recommended for use. ".."See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n".."* Move data fetching code or side effects to componentDidUpdate.\n".."* If you're updating state whenever props change, refactor your ".."code to use memoization techniques or move it to ".."static getDerivedStateFromProps. Learn more at: https://reactjs.org/link/derived-state\n".."* Rename componentWillReceiveProps to UNSAFE_componentWillReceiveProps to suppress ".."this warning in non-strict mode. In React 18.x, only the UNSAFE_ name will work.\n".."\nPlease update the following components: %s", var10_upvr(var77))
		end
		if next(var81) ~= nil then
			console_upvr.warn("componentWillUpdate has been renamed, and is not recommended for use. ".."See https://reactjs.org/link/unsafe-component-lifecycles for details.\n\n".."* Move data fetching code or side effects to componentDidUpdate.\n".."* Rename componentWillUpdate to UNSAFE_componentWillUpdate to suppress ".."this warning in non-strict mode. In React 18.x, only the UNSAFE_ name will work.\n".."\nPlease update the following components: %s", var10_upvr(var81))
		end
	end
	local tbl_5_upvr = {}
	local tbl_6_upvr = {}
	function module.recordLegacyContextWarning(arg1, arg2) -- Line 302
		--[[ Upvalues[4]:
			[1]: StrictMode_upvr (readonly)
			[2]: console_upvr (readonly)
			[3]: tbl_6_upvr (readonly)
			[4]: tbl_5_upvr (readonly)
		]]
		local var87 = arg1
		local var88
		while var87 ~= nil do
			if bit32.band(var87.mode, StrictMode_upvr) ~= 0 then
				var88 = var87
			end
		end
		local var89 = var88
		if var89 == nil then
			var88 = console_upvr.error
			var88("Expected to find a StrictMode component in a strict mode tree. ".."This error is likely caused by a bug in React. Please file an issue.")
		else
			var88 = tbl_6_upvr[arg1.type]
			if var88 then return end
			var88 = tbl_5_upvr[var89]
			if typeof(arg1.type) ~= "function" and (arg1.type.contextTypes ~= nil or arg1.type.childContextTypes ~= nil or arg2 ~= nil and typeof(arg2.getChildContext) == "function") then
				if var88 == nil then
					var88 = {}
					tbl_5_upvr[var89] = var88
				end
				table.insert(var88, arg1)
			end
		end
	end
	local setCurrentFiber_upvr = ReactCurrentFiber.setCurrentFiber
	local resetCurrentFiber_upvr = ReactCurrentFiber.resetCurrentFiber
	function module.flushLegacyContextWarning() -- Line 341
		--[[ Upvalues[7]:
			[1]: tbl_5_upvr (readonly)
			[2]: getComponentName_upvr (readonly)
			[3]: tbl_6_upvr (readonly)
			[4]: var10_upvr (readonly)
			[5]: setCurrentFiber_upvr (readonly)
			[6]: console_upvr (readonly)
			[7]: resetCurrentFiber_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		for _, v_8 in tbl_5_upvr do
			if #v_8 == 0 then return end
			for _, v_9 in v_8 do
				({})[getComponentName_upvr(v_9.type) or "Component"] = true
				tbl_6_upvr[v_9.type] = true
				local var110
			end
			local _1_upvr = v_8[1]
			local var10_upvr_result1_upvr = var10_upvr(var110)
			local pcall_result1, pcall_result2 = pcall(function() -- Line 356
				--[[ Upvalues[4]:
					[1]: setCurrentFiber_upvr (copied, readonly)
					[2]: _1_upvr (readonly)
					[3]: console_upvr (copied, readonly)
					[4]: var10_upvr_result1_upvr (readonly)
				]]
				setCurrentFiber_upvr(_1_upvr)
				console_upvr.error("Legacy context API has been detected within a strict-mode tree.".."\n\nThe old API will be supported in all 16.x releases, but applications ".."using it should migrate to the new version.".."\n\nPlease update the following components: %s".."\n\nLearn more about this warning here: https://reactjs.org/link/legacy-context", var10_upvr_result1_upvr)
			end)
			resetCurrentFiber_upvr()
			if not pcall_result1 then
				error(pcall_result2)
			end
		end
	end
	function module.discardPendingWarnings() -- Line 377
		--[[ Upvalues[7]:
			[1]: tbl_2_upvr (readonly)
			[2]: tbl_3_upvr (readonly)
			[3]: tbl_upvr (readonly)
			[4]: tbl_4_upvr (readonly)
			[5]: tbl_7_upvr (readonly)
			[6]: tbl_upvr_3 (readonly)
			[7]: tbl_5_upvr (readonly)
		]]
		table.clear(tbl_2_upvr)
		table.clear(tbl_3_upvr)
		table.clear(tbl_upvr)
		table.clear(tbl_4_upvr)
		table.clear(tbl_7_upvr)
		table.clear(tbl_upvr_3)
		table.clear(tbl_5_upvr)
	end
end
return module