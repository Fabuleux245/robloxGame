-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:37
-- Luau version 6, Types version 3
-- Time taken: 0.004999 seconds

local Parent = script:FindFirstAncestor("RoactUtils").Parent
local function var2_upvr(arg1, arg2) -- Line 52
	if arg1 ~= arg2 then
	else
	end
	return true
end
local React_upvr = require(Parent.React)
function useSelectorWithStore(arg1, arg2, arg3) -- Line 56
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useReducer_result1, any_useReducer_result2_upvr = React_upvr.useReducer(function(arg1_2) -- Line 61
		return arg1_2 + 1
	end, 0)
	local any_useRef_result1_upvr_4 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_3 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_getState_result1_upvr_2 = arg3:getState()
	local var12_upvw
	local pcall_result1_2, pcall_result2 = pcall(function() -- Line 73
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: any_useRef_result1_upvr_3 (readonly)
			[3]: any_getState_result1_upvr_2 (readonly)
			[4]: any_useRef_result1_upvr_2 (readonly)
			[5]: any_useRef_result1_upvr_4 (readonly)
			[6]: any_useRef_result1_upvr (readonly)
			[7]: arg2 (readonly)
			[8]: var12_upvw (read and write)
		]]
		if arg1 ~= any_useRef_result1_upvr_3.current or any_getState_result1_upvr_2 ~= any_useRef_result1_upvr_2.current or any_useRef_result1_upvr_4.current then
			local arg1_result1 = arg1(any_getState_result1_upvr_2)
			if any_useRef_result1_upvr.current == nil or not arg2(arg1_result1, any_useRef_result1_upvr.current) then
				var12_upvw = arg1_result1
			else
				var12_upvw = any_useRef_result1_upvr.current
			end
		end
		var12_upvw = any_useRef_result1_upvr.current
	end)
	if not pcall_result1_2 then
		if any_useRef_result1_upvr_4.current then
			pcall_result2 = string.format("%s\nThe error may be correlated with this previous error:\n%s\n\n", tostring(pcall_result2), tostring(any_useRef_result1_upvr_4.current))
		end
		error(pcall_result2)
	end
	React_upvr.useLayoutEffect(function() -- Line 103
		--[[ Upvalues[7]:
			[1]: any_useRef_result1_upvr_3 (readonly)
			[2]: arg1 (readonly)
			[3]: any_useRef_result1_upvr_2 (readonly)
			[4]: any_getState_result1_upvr_2 (readonly)
			[5]: any_useRef_result1_upvr (readonly)
			[6]: var12_upvw (read and write)
			[7]: any_useRef_result1_upvr_4 (readonly)
		]]
		any_useRef_result1_upvr_3.current = arg1
		any_useRef_result1_upvr_2.current = any_getState_result1_upvr_2
		any_useRef_result1_upvr.current = var12_upvw
		any_useRef_result1_upvr_4.current = nil
	end)
	local tbl = {}
	tbl[1] = arg3
	React_upvr.useLayoutEffect(function() -- Line 110
		--[[ Upvalues[7]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: any_useRef_result1_upvr_3 (readonly)
			[3]: arg2 (readonly)
			[4]: any_useRef_result1_upvr (readonly)
			[5]: any_useRef_result1_upvr_4 (readonly)
			[6]: any_useReducer_result2_upvr (readonly)
			[7]: arg3 (readonly)
		]]
		local any_getState_result1_upvr = arg3:getState()
		local pcall_result1, pcall_result2_2 = pcall(function() -- Line 112
			--[[ Upvalues[5]:
				[1]: any_getState_result1_upvr (readonly)
				[2]: any_useRef_result1_upvr_2 (copied, readonly)
				[3]: any_useRef_result1_upvr_3 (copied, readonly)
				[4]: arg2 (copied, readonly)
				[5]: any_useRef_result1_upvr (copied, readonly)
			]]
			if any_getState_result1_upvr == any_useRef_result1_upvr_2.current then
				return false
			end
			assert(any_useRef_result1_upvr_3.current, "latestSelector")
			local any_current_result1_2 = any_useRef_result1_upvr_3.current(any_getState_result1_upvr)
			if arg2(any_current_result1_2, any_useRef_result1_upvr.current) then
				return false
			end
			any_useRef_result1_upvr.current = any_current_result1_2
			any_useRef_result1_upvr_2.current = any_getState_result1_upvr
			return true
		end)
		if not pcall_result1 then
			pcall_result2_2 = pcall_result2_2 or "Error"
			any_useRef_result1_upvr_4.current = pcall_result2_2
		end
		if pcall_result2_2 then
			any_useReducer_result2_upvr(nil)
		end
		local any_connect_result1_upvr = arg3.changed:connect(function(arg1_3) -- Line 111, Named "checkForUpdates"
			--[[ Upvalues[6]:
				[1]: any_useRef_result1_upvr_2 (copied, readonly)
				[2]: any_useRef_result1_upvr_3 (copied, readonly)
				[3]: arg2 (copied, readonly)
				[4]: any_useRef_result1_upvr (copied, readonly)
				[5]: any_useRef_result1_upvr_4 (copied, readonly)
				[6]: any_useReducer_result2_upvr (copied, readonly)
			]]
			local pcall_result1_3, pcall_result2_3 = pcall(function() -- Line 112
				--[[ Upvalues[5]:
					[1]: arg1_3 (readonly)
					[2]: any_useRef_result1_upvr_2 (copied, readonly)
					[3]: any_useRef_result1_upvr_3 (copied, readonly)
					[4]: arg2 (copied, readonly)
					[5]: any_useRef_result1_upvr (copied, readonly)
				]]
				if arg1_3 == any_useRef_result1_upvr_2.current then
					return false
				end
				assert(any_useRef_result1_upvr_3.current, "latestSelector")
				local any_current_result1 = any_useRef_result1_upvr_3.current(arg1_3)
				if arg2(any_current_result1, any_useRef_result1_upvr.current) then
					return false
				end
				any_useRef_result1_upvr.current = any_current_result1
				any_useRef_result1_upvr_2.current = arg1_3
				return true
			end)
			if not pcall_result1_3 then
				pcall_result2_3 = pcall_result2_3 or "Error"
				any_useRef_result1_upvr_4.current = pcall_result2_3
			end
			if pcall_result2_3 then
				any_useReducer_result2_upvr(nil)
			end
		end)
		function any_getState_result1_upvr() -- Line 146
			--[[ Upvalues[1]:
				[1]: any_connect_result1_upvr (readonly)
			]]
			any_connect_result1_upvr:disconnect()
		end
		return any_getState_result1_upvr
	end, tbl)
	return var12_upvw
end
local ArgCheck_upvr = require(Parent.ArgCheck)
local Dash_upvr = require(Parent.Dash)
local useStore_upvr = require(script.Parent.useStore)
function useSelector(arg1, arg2) -- Line 154
	--[[ Upvalues[4]:
		[1]: ArgCheck_upvr (readonly)
		[2]: Dash_upvr (readonly)
		[3]: var2_upvr (readonly)
		[4]: useStore_upvr (readonly)
	]]
	ArgCheck_upvr.isNotNil(arg1, "selector")
	ArgCheck_upvr.assert(Dash_upvr.isCallable(arg1), "useSelector expects 'selector' to be callable")
	ArgCheck_upvr.isTypeOrNil(arg2, "function", "equalityFn")
	local var34 = arg2
	if not var34 then
		var34 = var2_upvr
	end
	return useSelectorWithStore(arg1, var34, useStore_upvr())
end
return useSelector