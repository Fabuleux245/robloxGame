-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:33
-- Luau version 6, Types version 3
-- Time taken: 0.007594 seconds

local Parent = script.Parent.Parent
local console_upvr = require(Parent.Shared).console
local ReactCurrentDispatcher_upvr = require(Parent.Shared).ReactSharedInternals.ReactCurrentDispatcher
local function _() -- Line 45, Named "resolveDispatcher"
	--[[ Upvalues[2]:
		[1]: ReactCurrentDispatcher_upvr (readonly)
		[2]: console_upvr (readonly)
	]]
	local current_2 = ReactCurrentDispatcher_upvr.current
	if _G.__DEV__ and current_2 == nil then
		console_upvr.error("Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for".." one of the following reasons:\n".."1. You might have mismatching versions of React and the renderer (such as React DOM)\n".."2. You might be breaking the Rules of Hooks\n".."3. You might have more than one copy of React in the same app\n".."See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem.")
	end
	return current_2
end
local module = {}
local Array_upvr = require(Parent.LuauPolyfill).Array
function module.useContext(arg1, arg2, ...) -- Line 68
	--[[ Upvalues[3]:
		[1]: ReactCurrentDispatcher_upvr (readonly)
		[2]: console_upvr (readonly)
		[3]: Array_upvr (readonly)
	]]
	local current_11 = ReactCurrentDispatcher_upvr.current
	if _G.__DEV__ and current_11 == nil then
		console_upvr.error("Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for".." one of the following reasons:\n".."1. You might have mismatching versions of React and the renderer (such as React DOM)\n".."2. You might be breaking the Rules of Hooks\n".."3. You might have more than one copy of React in the same app\n".."See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem.")
	end
	local var8
	if _G.__DEV__ then
		if arg2 ~= nil then
			var8 = "use in React. Passing it is not supported. "
			local function INLINED() -- Internal function, doesn't exist in bytecode
				tbl[1] = ...
				local tbl = {}
				return Array_upvr.isArray(tbl)
			end
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var8 = "\n\nDid you call Array.map(useContext)? ".."Calling Hooks inside a loop is not supported. ".."Learn more at https://reactjs.org/link/rules-of-hooks"
				return var8
			end
			if typeof(arg2) ~= "number" or not INLINED() or not INLINED_2() then
				var8 = ""
			end
			console_upvr.error("useContext() second argument is reserved for future "..var8.."You passed: %s.%s", arg2, var8)
		end
		if arg1._context ~= nil then
			local _context = arg1._context
			if _context.Consumer == arg1 then
				var8 = "Calling useContext(Context.Consumer) is not supported, may cause bugs, and will be "
				console_upvr.error(var8.."removed in a future major release. Did you mean to call useContext(Context) instead?")
			elseif _context.Provider == arg1 then
				var8 = "Calling useContext(Context.Provider) is not supported. "
				console_upvr.error(var8.."Did you mean to call useContext(Context) instead?")
			end
		end
	end
	return current_11.useContext(arg1, arg2)
end
function module.useState(arg1, ...) -- Line 109
	--[[ Upvalues[2]:
		[1]: ReactCurrentDispatcher_upvr (readonly)
		[2]: console_upvr (readonly)
	]]
	local current = ReactCurrentDispatcher_upvr.current
	if _G.__DEV__ and current == nil then
		console_upvr.error("Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for".." one of the following reasons:\n".."1. You might have mismatching versions of React and the renderer (such as React DOM)\n".."2. You might be breaking the Rules of Hooks\n".."3. You might have more than one copy of React in the same app\n".."See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem.")
	end
	return current.useState(arg1, ...)
end
function module.useReducer(arg1, arg2, arg3) -- Line 118
	--[[ Upvalues[2]:
		[1]: ReactCurrentDispatcher_upvr (readonly)
		[2]: console_upvr (readonly)
	]]
	local current_5 = ReactCurrentDispatcher_upvr.current
	if _G.__DEV__ and current_5 == nil then
		console_upvr.error("Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for".." one of the following reasons:\n".."1. You might have mismatching versions of React and the renderer (such as React DOM)\n".."2. You might be breaking the Rules of Hooks\n".."3. You might have more than one copy of React in the same app\n".."See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem.")
	end
	return current_5.useReducer(arg1, arg2, arg3)
end
function module.useRef(arg1) -- Line 129
	--[[ Upvalues[2]:
		[1]: ReactCurrentDispatcher_upvr (readonly)
		[2]: console_upvr (readonly)
	]]
	local current_7 = ReactCurrentDispatcher_upvr.current
	if _G.__DEV__ and current_7 == nil then
		console_upvr.error("Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for".." one of the following reasons:\n".."1. You might have mismatching versions of React and the renderer (such as React DOM)\n".."2. You might be breaking the Rules of Hooks\n".."3. You might have more than one copy of React in the same app\n".."See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem.")
	end
	return current_7.useRef(arg1)
end
function module.useBinding(arg1) -- Line 136
	--[[ Upvalues[2]:
		[1]: ReactCurrentDispatcher_upvr (readonly)
		[2]: console_upvr (readonly)
	]]
	local current_13 = ReactCurrentDispatcher_upvr.current
	if _G.__DEV__ and current_13 == nil then
		console_upvr.error("Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for".." one of the following reasons:\n".."1. You might have mismatching versions of React and the renderer (such as React DOM)\n".."2. You might be breaking the Rules of Hooks\n".."3. You might have more than one copy of React in the same app\n".."See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem.")
	end
	return current_13.useBinding(arg1)
end
function module.useEffect(arg1, arg2) -- Line 148
	--[[ Upvalues[2]:
		[1]: ReactCurrentDispatcher_upvr (readonly)
		[2]: console_upvr (readonly)
	]]
	local current_6 = ReactCurrentDispatcher_upvr.current
	if _G.__DEV__ and current_6 == nil then
		console_upvr.error("Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for".." one of the following reasons:\n".."1. You might have mismatching versions of React and the renderer (such as React DOM)\n".."2. You might be breaking the Rules of Hooks\n".."3. You might have more than one copy of React in the same app\n".."See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem.")
	end
	return current_6.useEffect(arg1, arg2)
end
function module.useLayoutEffect(arg1, arg2) -- Line 158
	--[[ Upvalues[2]:
		[1]: ReactCurrentDispatcher_upvr (readonly)
		[2]: console_upvr (readonly)
	]]
	local current_3 = ReactCurrentDispatcher_upvr.current
	if _G.__DEV__ and current_3 == nil then
		console_upvr.error("Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for".." one of the following reasons:\n".."1. You might have mismatching versions of React and the renderer (such as React DOM)\n".."2. You might be breaking the Rules of Hooks\n".."3. You might have more than one copy of React in the same app\n".."See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem.")
	end
	return current_3.useLayoutEffect(arg1, arg2)
end
function module.useCallback(arg1, arg2) -- Line 168
	--[[ Upvalues[2]:
		[1]: ReactCurrentDispatcher_upvr (readonly)
		[2]: console_upvr (readonly)
	]]
	local current_4 = ReactCurrentDispatcher_upvr.current
	if _G.__DEV__ and current_4 == nil then
		console_upvr.error("Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for".." one of the following reasons:\n".."1. You might have mismatching versions of React and the renderer (such as React DOM)\n".."2. You might be breaking the Rules of Hooks\n".."3. You might have more than one copy of React in the same app\n".."See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem.")
	end
	return current_4.useCallback(arg1, arg2)
end
function module.useMemo(arg1, arg2) -- Line 174
	--[[ Upvalues[2]:
		[1]: ReactCurrentDispatcher_upvr (readonly)
		[2]: console_upvr (readonly)
	]]
	local current_12 = ReactCurrentDispatcher_upvr.current
	if _G.__DEV__ and current_12 == nil then
		console_upvr.error("Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for".." one of the following reasons:\n".."1. You might have mismatching versions of React and the renderer (such as React DOM)\n".."2. You might be breaking the Rules of Hooks\n".."3. You might have more than one copy of React in the same app\n".."See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem.")
	end
	return current_12.useMemo(arg1, arg2)
end
function module.useImperativeHandle(arg1, arg2, arg3) -- Line 180
	--[[ Upvalues[2]:
		[1]: ReactCurrentDispatcher_upvr (readonly)
		[2]: console_upvr (readonly)
	]]
	local current_8 = ReactCurrentDispatcher_upvr.current
	if _G.__DEV__ and current_8 == nil then
		console_upvr.error("Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for".." one of the following reasons:\n".."1. You might have mismatching versions of React and the renderer (such as React DOM)\n".."2. You might be breaking the Rules of Hooks\n".."3. You might have more than one copy of React in the same app\n".."See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem.")
	end
	return current_8.useImperativeHandle(arg1, arg2, arg3)
end
function module.useDebugValue(arg1, arg2) -- Line 190
	--[[ Upvalues[2]:
		[1]: ReactCurrentDispatcher_upvr (readonly)
		[2]: console_upvr (readonly)
	]]
	if _G.__DEV__ then
		if _G.__DEV__ and ReactCurrentDispatcher_upvr.current == nil then
			console_upvr.error("Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for".." one of the following reasons:\n".."1. You might have mismatching versions of React and the renderer (such as React DOM)\n".."2. You might be breaking the Rules of Hooks\n".."3. You might have more than one copy of React in the same app\n".."See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem.")
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return ReactCurrentDispatcher_upvr.current.useDebugValue(arg1, arg2)
	end
	return nil
end
module.emptyObject = {}
function module.useOpaqueIdentifier() -- Line 215
	--[[ Upvalues[2]:
		[1]: ReactCurrentDispatcher_upvr (readonly)
		[2]: console_upvr (readonly)
	]]
	local current_9 = ReactCurrentDispatcher_upvr.current
	if _G.__DEV__ and current_9 == nil then
		console_upvr.error("Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for".." one of the following reasons:\n".."1. You might have mismatching versions of React and the renderer (such as React DOM)\n".."2. You might be breaking the Rules of Hooks\n".."3. You might have more than one copy of React in the same app\n".."See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem.")
	end
	return current_9.useOpaqueIdentifier()
end
function module.useMutableSource(arg1, arg2, arg3) -- Line 220
	--[[ Upvalues[2]:
		[1]: ReactCurrentDispatcher_upvr (readonly)
		[2]: console_upvr (readonly)
	]]
	local current_10 = ReactCurrentDispatcher_upvr.current
	if _G.__DEV__ and current_10 == nil then
		console_upvr.error("Invalid hook call. Hooks can only be called inside of the body of a function component. This could happen for".." one of the following reasons:\n".."1. You might have mismatching versions of React and the renderer (such as React DOM)\n".."2. You might be breaking the Rules of Hooks\n".."3. You might have more than one copy of React in the same app\n".."See https://reactjs.org/link/invalid-hook-call for tips about how to debug and fix this problem.")
	end
	return current_10.useMutableSource(arg1, arg2, arg3)
end
return module