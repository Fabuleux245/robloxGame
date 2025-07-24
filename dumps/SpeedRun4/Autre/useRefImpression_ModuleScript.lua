-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:58
-- Luau version 6, Types version 3
-- Time taken: 0.002162 seconds

local React_upvr = require(script:FindFirstAncestor("VirtualEvents").Parent.React)
return function(arg1, arg2) -- Line 5, Named "useRefImpression"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(false)
	local tbl = {}
	tbl[1] = arg2
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_2, arg2_2) -- Line 8
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: arg2 (readonly)
		]]
		if arg1_2.AbsolutePosition.Y <= arg2_2.AbsoluteSize.Y then
			any_useRef_result1_upvr.current = true
			arg2()
		end
	end, tbl)
	React_upvr.useEffect(function() -- Line 15
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: any_useCallback_result1_upvr (readonly)
		]]
		if any_useRef_result1_upvr.current then return end
		local current_upvr_2 = arg1.current
		local var13_upvw
		if current_upvr_2 then
			local class_ScreenGui_upvr = current_upvr_2:FindFirstAncestorWhichIsA("ScreenGui")
			if class_ScreenGui_upvr then
				any_useCallback_result1_upvr(current_upvr_2, class_ScreenGui_upvr)
				var13_upvw = current_upvr_2:GetPropertyChangedSignal("AbsolutePosition"):Connect(function() -- Line 29
					--[[ Upvalues[4]:
						[1]: any_useRef_result1_upvr (copied, readonly)
						[2]: any_useCallback_result1_upvr (copied, readonly)
						[3]: current_upvr_2 (readonly)
						[4]: class_ScreenGui_upvr (readonly)
					]]
					if any_useRef_result1_upvr.current then
					else
						any_useCallback_result1_upvr(current_upvr_2, class_ScreenGui_upvr)
					end
				end)
			end
		end
		function class_ScreenGui_upvr() -- Line 39
			--[[ Upvalues[1]:
				[1]: var13_upvw (read and write)
			]]
			if var13_upvw then
				var13_upvw:Disconnect()
			end
		end
		return class_ScreenGui_upvr
	end)
end