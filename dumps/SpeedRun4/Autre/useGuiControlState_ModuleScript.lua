-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:55
-- Luau version 6, Types version 3
-- Time taken: 0.002909 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local React_upvr = require(Parent_2.React)
local ControlState_upvr = require(Parent.Core.Control.Enum.ControlState)
local createGuiControlStateTable_upvr = require(Parent.Core.Control.createGuiControlStateTable)
local ControlStateEvent_upvr = require(Parent.Core.Control.Enum.ControlStateEvent)
local useForwardRef_upvr = require(Parent_2.ReactUtils).useForwardRef
return function(arg1, arg2, arg3) -- Line 20, Named "useGuiControlState"
	--[[ Upvalues[5]:
		[1]: React_upvr (readonly)
		[2]: ControlState_upvr (readonly)
		[3]: createGuiControlStateTable_upvr (readonly)
		[4]: ControlStateEvent_upvr (readonly)
		[5]: useForwardRef_upvr (readonly)
	]]
	local any_useRef_result1_upvr_2 = React_upvr.useRef(arg3)
	local any_useRef_result1_upvr_3 = React_upvr.useRef(false)
	local any_useRef_result1_upvr = React_upvr.useRef(ControlState_upvr.Initialize)
	local tbl_2 = {}
	tbl_2[1] = arg2
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2, arg2_2) -- Line 35
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: arg2 (readonly)
		]]
		any_useRef_result1_upvr.current = arg2_2
		arg2(arg1_2, arg2_2)
	end, tbl_2)
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 40
		--[[ Upvalues[2]:
			[1]: createGuiControlStateTable_upvr (copied, readonly)
			[2]: any_useCallback_result1_upvr (readonly)
		]]
		return createGuiControlStateTable_upvr(any_useCallback_result1_upvr)
	end, {})
	React_upvr.useEffect(function() -- Line 44
		--[[ Upvalues[2]:
			[1]: any_useMemo_result1_upvr (readonly)
			[2]: any_useCallback_result1_upvr (readonly)
		]]
		any_useMemo_result1_upvr:onStateChange(any_useCallback_result1_upvr)
	end, {any_useCallback_result1_upvr})
	local tbl = {}
	tbl[1] = arg3
	React_upvr.useEffect(function() -- Line 148
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: arg3 (readonly)
		]]
		any_useRef_result1_upvr_2.current = arg3
	end, tbl)
	return useForwardRef_upvr(arg1, React_upvr.useCallback(function(arg1_3) -- Line 48
		--[[ Upvalues[4]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: any_useMemo_result1_upvr (readonly)
			[3]: ControlStateEvent_upvr (copied, readonly)
			[4]: any_useRef_result1_upvr_3 (readonly)
		]]
		local tbl_3_upvr = {}
		if arg1_3 then
			table.insert(tbl_3_upvr, arg1_3.InputBegan:Connect(function(arg1_4) -- Line 66
				--[[ Upvalues[3]:
					[1]: any_useRef_result1_upvr_2 (copied, readonly)
					[2]: any_useMemo_result1_upvr (copied, readonly)
					[3]: ControlStateEvent_upvr (copied, readonly)
				]]
				if not any_useRef_result1_upvr_2.current then
					return nil
				end
				if arg1_4.UserInputType == Enum.UserInputType.MouseButton1 or arg1_4.UserInputType == Enum.UserInputType.Touch or arg1_4.KeyCode == Enum.KeyCode.ButtonA or arg1_4.KeyCode == Enum.KeyCode.Return then
					any_useMemo_result1_upvr.events[ControlStateEvent_upvr.PrimaryPressed]()
				end
			end))
			table.insert(tbl_3_upvr, arg1_3.InputEnded:Connect(function(arg1_5) -- Line 82
				--[[ Upvalues[3]:
					[1]: any_useRef_result1_upvr_2 (copied, readonly)
					[2]: any_useMemo_result1_upvr (copied, readonly)
					[3]: ControlStateEvent_upvr (copied, readonly)
				]]
				if not any_useRef_result1_upvr_2.current then
					return nil
				end
				if arg1_5.UserInputType == Enum.UserInputType.MouseButton1 then
					any_useMemo_result1_upvr.events[ControlStateEvent_upvr.PrimaryReleasedHover]()
				elseif arg1_5.UserInputType == Enum.UserInputType.Touch or arg1_5.KeyCode == Enum.KeyCode.ButtonA or arg1_5.KeyCode == Enum.KeyCode.Return then
					any_useMemo_result1_upvr.events[ControlStateEvent_upvr.PrimaryReleased]()
				end
			end))
			table.insert(tbl_3_upvr, arg1_3.SelectionGained:Connect(function() -- Line 101
				--[[ Upvalues[3]:
					[1]: any_useRef_result1_upvr_2 (copied, readonly)
					[2]: any_useMemo_result1_upvr (copied, readonly)
					[3]: ControlStateEvent_upvr (copied, readonly)
				]]
				if not any_useRef_result1_upvr_2.current then
					return nil
				end
				any_useMemo_result1_upvr.events[ControlStateEvent_upvr.SelectionGained]()
			end))
			table.insert(tbl_3_upvr, arg1_3.SelectionLost:Connect(function() -- Line 110
				--[[ Upvalues[3]:
					[1]: any_useRef_result1_upvr_2 (copied, readonly)
					[2]: any_useMemo_result1_upvr (copied, readonly)
					[3]: ControlStateEvent_upvr (copied, readonly)
				]]
				if not any_useRef_result1_upvr_2.current then
					return nil
				end
				any_useMemo_result1_upvr.events[ControlStateEvent_upvr.SelectionLost]()
			end))
			table.insert(tbl_3_upvr, arg1_3.MouseEnter:Connect(function() -- Line 121
				--[[ Upvalues[4]:
					[1]: any_useRef_result1_upvr_2 (copied, readonly)
					[2]: any_useRef_result1_upvr_3 (copied, readonly)
					[3]: any_useMemo_result1_upvr (copied, readonly)
					[4]: ControlStateEvent_upvr (copied, readonly)
				]]
				if not any_useRef_result1_upvr_2.current then
					return nil
				end
				any_useRef_result1_upvr_3.current = true
				any_useMemo_result1_upvr.events[ControlStateEvent_upvr.PointerHover]()
			end))
			table.insert(tbl_3_upvr, arg1_3.MouseLeave:Connect(function() -- Line 131
				--[[ Upvalues[4]:
					[1]: any_useRef_result1_upvr_2 (copied, readonly)
					[2]: any_useRef_result1_upvr_3 (copied, readonly)
					[3]: any_useMemo_result1_upvr (copied, readonly)
					[4]: ControlStateEvent_upvr (copied, readonly)
				]]
				if not any_useRef_result1_upvr_2.current then
					return nil
				end
				any_useRef_result1_upvr_3.current = false
				any_useMemo_result1_upvr.events[ControlStateEvent_upvr.PointerHoverEnd]()
			end))
		end
		return function() -- Line 141
			--[[ Upvalues[1]:
				[1]: tbl_3_upvr (readonly)
			]]
			for _, v in ipairs(tbl_3_upvr) do
				v:Disconnect()
			end
		end
	end, {any_useMemo_result1_upvr, any_useRef_result1_upvr_3})), any_useMemo_result1_upvr
end