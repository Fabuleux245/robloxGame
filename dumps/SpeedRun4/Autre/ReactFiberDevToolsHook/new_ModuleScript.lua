-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:02
-- Luau version 6, Types version 3
-- Time taken: 0.005976 seconds

local Parent = script.Parent.Parent
local console_upvr = require(Parent.Shared).console
local module = {}
local function _(arg1) -- Line 28, Named "isCallable"
	if typeof(arg1) == "function" then
		return true
	end
	if typeof(arg1) == "table" then
		local getmetatable_result1 = getmetatable(arg1)
		if getmetatable_result1 and rawget(getmetatable_result1, "__call") then
			return true
		end
		if arg1._isMockFunction then
			return true
		end
	end
	return false
end
local var5_upvw
local var6_upvw
local var7_upvw = false
function module.isDevToolsPresent() -- Line 63
	local var9
	if _G.__REACT_DEVTOOLS_GLOBAL_HOOK__ == nil then
		var9 = false
	else
		var9 = true
	end
	return var9
end
function module.injectInternals(arg1) -- Line 67
	--[[ Upvalues[3]:
		[1]: console_upvr (readonly)
		[2]: var5_upvw (read and write)
		[3]: var6_upvw (read and write)
	]]
	if _G.__REACT_DEVTOOLS_GLOBAL_HOOK__ == nil then
		return false
	end
	local __REACT_DEVTOOLS_GLOBAL_HOOK___upvr = _G.__REACT_DEVTOOLS_GLOBAL_HOOK__
	if __REACT_DEVTOOLS_GLOBAL_HOOK___upvr.isDisabled then
		return true
	end
	if not __REACT_DEVTOOLS_GLOBAL_HOOK___upvr.supportsFiber then
		if _G.__DEV__ then
			console_upvr.error("The installed version of React DevTools is too old and will not work ".."with the current version of React. Please update React DevTools. ".."https://reactjs.org/link/react-devtools")
		end
		return true
	end
	local pcall_result1_4, pcall_result2_3 = pcall(function() -- Line 90
		--[[ Upvalues[4]:
			[1]: var5_upvw (copied, read and write)
			[2]: __REACT_DEVTOOLS_GLOBAL_HOOK___upvr (readonly)
			[3]: arg1 (readonly)
			[4]: var6_upvw (copied, read and write)
		]]
		var5_upvw = __REACT_DEVTOOLS_GLOBAL_HOOK___upvr.inject(arg1)
		var6_upvw = __REACT_DEVTOOLS_GLOBAL_HOOK___upvr
	end)
	if not pcall_result1_4 and _G.__DEV__ then
		console_upvr.error("React instrumentation encountered an error: %s.", pcall_result2_3)
	end
	return true
end
function module.onScheduleRoot(arg1, arg2) -- Line 106
	--[[ Upvalues[4]:
		[1]: var6_upvw (read and write)
		[2]: var5_upvw (read and write)
		[3]: var7_upvw (read and write)
		[4]: console_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 4. Error Block 2 start (CF ANALYSIS FAILED)
	local var19 = var6_upvw
	-- KONSTANTERROR: [5] 4. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [48] 38. Error Block 21 start (CF ANALYSIS FAILED)
	if var19 then
		local pcall_result1_5, pcall_result2_4 = pcall(var6_upvw.onScheduleFiberRoot, var5_upvw, arg1, arg2)
		if not pcall_result1_5 and _G.__DEV__ and not var7_upvw then
			var7_upvw = true
			console_upvr.error("React instrumentation encountered an error: %s", pcall_result2_4)
		end
	end
	-- KONSTANTERROR: [48] 38. Error Block 21 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [74] 59. Error Block 19 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [74] 59. Error Block 19 end (CF ANALYSIS FAILED)
end
local DidCapture_upvr = require(script.Parent.ReactFiberFlags).DidCapture
local enableProfilerTimer_upvr = require(Parent.Shared).ReactFeatureFlags.enableProfilerTimer
function module.onCommitRoot(arg1, arg2) -- Line 126
	--[[ Upvalues[6]:
		[1]: var6_upvw (read and write)
		[2]: DidCapture_upvr (readonly)
		[3]: enableProfilerTimer_upvr (readonly)
		[4]: var5_upvw (read and write)
		[5]: var7_upvw (read and write)
		[6]: console_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var30 = var6_upvw
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 35. Error Block 20 start (CF ANALYSIS FAILED)
	if var30 then
		local pcall_result1, pcall_result2_2 = pcall(function() -- Line 132
			--[[ Upvalues[6]:
				[1]: arg1 (readonly)
				[2]: DidCapture_upvr (copied, readonly)
				[3]: enableProfilerTimer_upvr (copied, readonly)
				[4]: var6_upvw (copied, read and write)
				[5]: var5_upvw (copied, read and write)
				[6]: arg2 (readonly)
			]]
			local var32
			if bit32.band(arg1.current.flags, DidCapture_upvr) ~= DidCapture_upvr then
				var32 = false
			else
				var32 = true
			end
			if enableProfilerTimer_upvr then
				var6_upvw.onCommitFiberRoot(var5_upvw, arg1, arg2, var32)
			else
				var6_upvw.onCommitFiberRoot(var5_upvw, arg1, nil, var32)
			end
		end)
		if not pcall_result1 and _G.__DEV__ and not var7_upvw then
			var7_upvw = true
			console_upvr.error("React instrumentation encountered an error: %s", pcall_result2_2)
		end
	end
	-- KONSTANTERROR: [43] 35. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [70] 58. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [70] 58. Error Block 18 end (CF ANALYSIS FAILED)
end
function module.onCommitUnmount(arg1) -- Line 151
	--[[ Upvalues[4]:
		[1]: var6_upvw (read and write)
		[2]: var5_upvw (read and write)
		[3]: var7_upvw (read and write)
		[4]: console_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var36 = var6_upvw
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 35. Error Block 20 start (CF ANALYSIS FAILED)
	if var36 then
		local pcall_result1_2, pcall_result2_5 = pcall(var6_upvw.onCommitFiberUnmount, var5_upvw, arg1)
		if not pcall_result1_2 and _G.__DEV__ and not var7_upvw then
			var7_upvw = true
			console_upvr.error("React instrumentation encountered an error: %s", pcall_result2_5)
		end
	end
	-- KONSTANTERROR: [43] 35. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [68] 55. Error Block 18 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [68] 55. Error Block 18 end (CF ANALYSIS FAILED)
end
return module