-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:38
-- Luau version 6, Types version 3
-- Time taken: 0.003031 seconds

local React_upvr = require(script:FindFirstAncestor("CollectionViews").Parent.React)
return function(arg1, arg2, arg3, arg4) -- Line 6, Named "useHorizontalScrolledToEndThreshold"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(false)
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = arg4
	tbl[3] = arg2
	tbl[4] = arg3
	React_upvr.useEffect(function() -- Line 21
		--[[ Upvalues[5]:
			[1]: arg4 (readonly)
			[2]: arg1 (readonly)
			[3]: arg3 (readonly)
			[4]: arg2 (readonly)
			[5]: any_useRef_result1_upvr (readonly)
		]]
		if not arg4 then
			return nil
		end
		local tbl_upvr = {}
		if arg1.current ~= nil and arg3 ~= nil and arg2 ~= nil then
			local current_upvr = arg1.current
			local function _() -- Line 30, Named "checkThreshold"
				--[[ Upvalues[4]:
					[1]: current_upvr (readonly)
					[2]: arg2 (copied, readonly)
					[3]: any_useRef_result1_upvr (copied, readonly)
					[4]: arg3 (copied, readonly)
				]]
				local var6 = current_upvr.AbsoluteCanvasSize.X - current_upvr.AbsoluteWindowSize.X - arg2
				local X_4 = current_upvr.CanvasPosition.X
				if X_4 < var6 and any_useRef_result1_upvr.current then
					any_useRef_result1_upvr.current = false
				elseif var6 < X_4 and not any_useRef_result1_upvr.current then
					any_useRef_result1_upvr.current = true
					arg3()
				end
			end
			table.insert(tbl_upvr, current_upvr:GetPropertyChangedSignal("AbsoluteWindowSize"):Connect(function() -- Line 44
				--[[ Upvalues[4]:
					[1]: current_upvr (readonly)
					[2]: arg2 (copied, readonly)
					[3]: any_useRef_result1_upvr (copied, readonly)
					[4]: arg3 (copied, readonly)
				]]
				local var9 = current_upvr.AbsoluteCanvasSize.X - current_upvr.AbsoluteWindowSize.X - arg2
				local X_2 = current_upvr.CanvasPosition.X
				if X_2 < var9 and any_useRef_result1_upvr.current then
					any_useRef_result1_upvr.current = false
				elseif var9 < X_2 and not any_useRef_result1_upvr.current then
					any_useRef_result1_upvr.current = true
					arg3()
				end
			end))
			table.insert(tbl_upvr, current_upvr:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect(function() -- Line 51
				--[[ Upvalues[4]:
					[1]: current_upvr (readonly)
					[2]: arg2 (copied, readonly)
					[3]: any_useRef_result1_upvr (copied, readonly)
					[4]: arg3 (copied, readonly)
				]]
				local var12 = current_upvr.AbsoluteCanvasSize.X - current_upvr.AbsoluteWindowSize.X - arg2
				local X = current_upvr.CanvasPosition.X
				if X < var12 and any_useRef_result1_upvr.current then
					any_useRef_result1_upvr.current = false
				elseif var12 < X and not any_useRef_result1_upvr.current then
					any_useRef_result1_upvr.current = true
					arg3()
				end
			end))
			table.insert(tbl_upvr, current_upvr:GetPropertyChangedSignal("CanvasPosition"):Connect(function() -- Line 57
				--[[ Upvalues[4]:
					[1]: current_upvr (readonly)
					[2]: arg2 (copied, readonly)
					[3]: any_useRef_result1_upvr (copied, readonly)
					[4]: arg3 (copied, readonly)
				]]
				local var15 = current_upvr.AbsoluteCanvasSize.X - current_upvr.AbsoluteWindowSize.X - arg2
				local X_3 = current_upvr.CanvasPosition.X
				if X_3 < var15 and any_useRef_result1_upvr.current then
					any_useRef_result1_upvr.current = false
				elseif var15 < X_3 and not any_useRef_result1_upvr.current then
					any_useRef_result1_upvr.current = true
					arg3()
				end
			end))
		end
		function current_upvr() -- Line 62
			--[[ Upvalues[1]:
				[1]: tbl_upvr (readonly)
			]]
			for _, v in tbl_upvr do
				v:Disconnect()
			end
		end
		return current_upvr
	end, tbl)
end