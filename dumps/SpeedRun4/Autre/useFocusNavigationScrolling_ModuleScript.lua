-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:16:01
-- Luau version 6, Types version 3
-- Time taken: 0.002373 seconds

local React_upvr = require(script.Parent.Parent.Parent.Parent.React)
return function(arg1) -- Line 40, Named "useFocusNavigationScrolling"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local var2_upvr
	if arg1.cellRendererKey then
		var2_upvr = arg1.cellRendererKey
	else
		var2_upvr = "CellRendererView"
	end
	if arg1.initialIndex then
		-- KONSTANTWARNING: GOTO [14] #11
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 10. Error Block 22 start (CF ANALYSIS FAILED)
	local listRef_upvr = arg1.listRef
	local onSelectedIndexChanged_upvr = arg1.onSelectedIndexChanged
	local viewOffset_upvr = arg1.viewOffset
	if arg1.animated ~= nil then
		local animated = arg1.animated
	else
	end
	local any_useRef_result1_upvr = React_upvr.useRef(1)
	local data_upvr = arg1.data
	local var13_upvr = true
	do
		return React_upvr.useCallback(function(arg1_3, arg2, arg3, arg4) -- Line 64
			--[[ Upvalues[7]:
				[1]: var2_upvr (readonly)
				[2]: any_useRef_result1_upvr (readonly)
				[3]: data_upvr (readonly)
				[4]: onSelectedIndexChanged_upvr (readonly)
				[5]: listRef_upvr (readonly)
				[6]: var13_upvr (readonly)
				[7]: viewOffset_upvr (readonly)
			]]
			if arg4 and arg4:IsDescendantOf(arg1_3) then
				local SOME = arg4:FindFirstAncestor(var2_upvr)
				if not SOME or not SOME.LayoutOrder then
					return nil
				end
				if SOME.LayoutOrder == any_useRef_result1_upvr.current or #data_upvr < SOME.LayoutOrder or SOME.LayoutOrder < 1 then
					return nil
				end
				any_useRef_result1_upvr.current = SOME.LayoutOrder
				if onSelectedIndexChanged_upvr then
					onSelectedIndexChanged_upvr(any_useRef_result1_upvr.current)
				end
				if not listRef_upvr or not listRef_upvr.current then
					return nil
				end
				listRef_upvr.current:scrollToIndex({
					index = any_useRef_result1_upvr.current;
					animated = var13_upvr;
					viewOffset = viewOffset_upvr;
				})
			end
			return nil
		end, {listRef_upvr, any_useRef_result1_upvr, var2_upvr, onSelectedIndexChanged_upvr, var13_upvr, viewOffset_upvr, data_upvr}), React_upvr.useCallback(function(arg1_2) -- Line 50
			--[[ Upvalues[1]:
				[1]: listRef_upvr (readonly)
			]]
			if listRef_upvr and listRef_upvr.current then
				listRef_upvr.current:scrollToOffset({
					offset = arg1_2.index * arg1_2.averageItemLength;
				})
			else
				warn("Animated scrolling failed, the ref to the ScrollView is nil.".."This could indicate that you are selecting focus before the ScrollView has mounted.")
			end
		end, {listRef_upvr})
	end
	-- KONSTANTERROR: [13] 10. Error Block 22 end (CF ANALYSIS FAILED)
end