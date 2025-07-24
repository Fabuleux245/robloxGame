-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:11
-- Luau version 6, Types version 3
-- Time taken: 0.005872 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local function useConnectSignals_upvr(arg1, arg2, arg3) -- Line 25, Named "useConnectSignals"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef({})
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = arg3
	React_upvr.useEffect(function() -- Line 32
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: any_useRef_result1_upvr (readonly)
			[4]: arg3 (readonly)
		]]
		if arg1 ~= nil then
			for _, v in arg2 do
				local var10 = v
				if type(arg3) == "table" then
					function var10() -- Line 37
						--[[ Upvalues[1]:
							[1]: arg3 (copied, readonly)
						]]
						arg3.current()
					end
				else
					var10 = arg3
				end
				any_useRef_result1_upvr.current[v] = arg1:GetPropertyChangedSignal(var10):Connect(var10)
			end
		end
		return function() -- Line 44
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr (copied, readonly)
			]]
			for _, v_2 in any_useRef_result1_upvr.current do
				v_2:Disconnect()
			end
		end
	end, tbl)
end
local positioning_upvr = require(script.Parent.positioning)
local Flags_upvr = require(Foundation.Utility.Flags)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 52, Named "useFloating"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: positioning_upvr (readonly)
		[3]: Flags_upvr (readonly)
		[4]: useConnectSignals_upvr (readonly)
	]]
	local any_useBinding_result1_2, any_useBinding_result2_upvr_5 = React_upvr.useBinding(Vector2.new())
	local any_useBinding_result1_4, any_useBinding_result2_upvr_4 = React_upvr.useBinding(true)
	local any_useBinding_result1_5, any_useBinding_result2_upvr = React_upvr.useBinding(UDim2.new())
	local any_useBinding_result1_3, any_useBinding_result2_upvr_3 = React_upvr.useBinding(Vector2.new())
	local any_useBinding_result1, any_useBinding_result2_upvr_2 = React_upvr.useBinding(Vector2.new())
	local any_useRef_result1 = React_upvr.useRef(function() -- Line 66
	end)
	local function var29() -- Line 68
		--[[ Upvalues[13]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: arg3 (readonly)
			[4]: arg4 (readonly)
			[5]: any_useBinding_result2_upvr_4 (readonly)
			[6]: positioning_upvr (copied, readonly)
			[7]: arg5 (readonly)
			[8]: arg6 (readonly)
			[9]: arg7 (readonly)
			[10]: any_useBinding_result2_upvr (readonly)
			[11]: any_useBinding_result2_upvr_3 (readonly)
			[12]: any_useBinding_result2_upvr_2 (readonly)
			[13]: any_useBinding_result2_upvr_5 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var30
		if not arg1 or not arg2 or not arg3 or not arg4 then
			any_useBinding_result2_upvr_4(false)
		else
			local AbsolutePosition_2 = arg2.AbsolutePosition
			local AbsoluteSize_2 = arg3.AbsoluteSize
			local AbsoluteSize = arg4.AbsoluteSize
			local AbsolutePosition = arg4.AbsolutePosition
			var30 = AbsolutePosition_2 + arg2.AbsoluteSize
			local Rect_new_result1 = Rect.new(AbsolutePosition_2, var30)
			var30 = AbsolutePosition
			local Rect_new_result1_2 = Rect.new(var30, AbsolutePosition + AbsoluteSize)
			var30 = positioning_upvr.isOnScreen(Rect_new_result1, Rect_new_result1_2)
			if not var30 then
				var30 = any_useBinding_result2_upvr_4
				var30(false)
				return
			end
			if type(arg5) == "table" then
				var30 = arg5.position
			else
				var30 = arg5
			end
			if type(arg5) == "table" then
				-- KONSTANTWARNING: GOTO [72] #59
			end
			local const_number = 0
			if type(arg6) == "table" then
				-- KONSTANTWARNING: GOTO [84] #68
			end
			if type(arg6) == "table" then
			else
			end
			local var38 = arg7 or 0
			var30 = positioning_upvr.calculateSide(var30, const_number, Rect_new_result1, Rect_new_result1_2, var38, AbsoluteSize_2)
			local any_calculatePositions_result1, any_calculatePositions_result2 = positioning_upvr.calculatePositions(var30, const_number, arg6, 0, Rect_new_result1, Rect_new_result1_2, var38, AbsoluteSize_2)
			any_useBinding_result2_upvr(UDim2.fromOffset(AbsoluteSize_2.X, AbsoluteSize_2.Y))
			any_useBinding_result2_upvr_3(AbsoluteSize)
			any_useBinding_result2_upvr_2(any_calculatePositions_result2 + any_calculatePositions_result1)
			any_useBinding_result2_upvr_5(any_calculatePositions_result1)
			any_useBinding_result2_upvr_4(true)
		end
	end
	local tbl_2 = {}
	tbl_2[1] = arg1
	tbl_2[2] = arg2
	tbl_2[3] = arg3
	tbl_2[4] = arg4
	tbl_2[5] = arg5
	tbl_2[6] = arg6
	tbl_2[7] = arg7
	local any_useCallback_result1_upvr = React_upvr.useCallback(var29, tbl_2)
	any_useRef_result1.current = any_useCallback_result1_upvr
	var29 = React_upvr.useLayoutEffect
	local var43 = var29
	var43(function() -- Line 120
		--[[ Upvalues[1]:
			[1]: any_useCallback_result1_upvr (readonly)
		]]
		any_useCallback_result1_upvr()
	end, {any_useCallback_result1_upvr})
	if Flags_upvr.FoundationFixUseFloatingContentSize then
		var43 = any_useRef_result1
	else
		var43 = any_useCallback_result1_upvr
	end
	useConnectSignals_upvr(arg2, {"AbsolutePosition", "AbsoluteSize"}, var43)
	useConnectSignals_upvr(arg3, {"AbsoluteSize"}, var43)
	useConnectSignals_upvr(arg4, {"AbsoluteSize"}, var43)
	return any_useBinding_result1_2, any_useBinding_result1_4, any_useBinding_result1_5, any_useBinding_result1, any_useBinding_result1_3
end