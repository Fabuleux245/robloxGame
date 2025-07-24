-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:39
-- Luau version 6, Types version 3
-- Time taken: 0.001991 seconds

local React_upvr = require(script:FindFirstAncestor("CollectionViews").Parent.React)
return function(arg1, arg2, arg3, arg4) -- Line 8, Named "useHorizontalWindowStartIndex"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(1)
	local tbl = {}
	tbl[1] = arg4
	tbl[2] = arg1
	tbl[3] = arg2
	tbl[4] = arg3
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 18
		--[[ Upvalues[5]:
			[1]: arg4 (readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: any_useState_result2_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [7] 6. Error Block 9 start (CF ANALYSIS FAILED)
		local var5 = arg2:getValue().X + arg3
		if 0 < var5 then
			any_useState_result2_upvr(math.max(1, math.floor(arg1.current.CanvasPosition.X / var5)))
			return
		end
		any_useState_result2_upvr(1)
		do
			return
		end
		-- KONSTANTERROR: [7] 6. Error Block 9 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [43] 33. Error Block 6 start (CF ANALYSIS FAILED)
		any_useState_result2_upvr(1)
		-- KONSTANTERROR: [43] 33. Error Block 6 end (CF ANALYSIS FAILED)
	end, tbl)
	React_upvr.useEffect(function() -- Line 43
		--[[ Upvalues[1]:
			[1]: any_useCallback_result1_upvr (readonly)
		]]
		any_useCallback_result1_upvr()
	end, {any_useCallback_result1_upvr})
	local tbl_2 = {}
	tbl_2[1] = arg1
	tbl_2[2] = any_useCallback_result1_upvr
	tbl_2[3] = arg4
	React_upvr.useEffect(function() -- Line 51
		--[[ Upvalues[3]:
			[1]: arg4 (readonly)
			[2]: arg1 (readonly)
			[3]: any_useCallback_result1_upvr (readonly)
		]]
		if not arg4 then
			return nil
		end
		local tbl_upvr = {}
		if arg1.current ~= nil then
			any_useCallback_result1_upvr()
			table.insert(tbl_upvr, arg1.current:GetPropertyChangedSignal("CanvasPosition"):Connect(any_useCallback_result1_upvr))
			table.insert(tbl_upvr, arg1.current:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(any_useCallback_result1_upvr))
		end
		return function() -- Line 67
			--[[ Upvalues[1]:
				[1]: tbl_upvr (readonly)
			]]
			for _, v in tbl_upvr do
				v:Disconnect()
			end
		end
	end, tbl_2)
	return any_useState_result1
end