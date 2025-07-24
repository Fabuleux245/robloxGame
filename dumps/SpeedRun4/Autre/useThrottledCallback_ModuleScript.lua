-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:43
-- Luau version 6, Types version 3
-- Time taken: 0.001693 seconds

local Parent = script:FindFirstAncestor("RoactUtils").Parent
local React_upvr = require(Parent.React)
local Promise_upvr = require(Parent.Promise)
return function(arg1, arg2) -- Line 20, Named "useThrottledCallback"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Promise_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(arg1)
	local any_useRef_result1_upvr_3 = React_upvr.useRef(arg2)
	any_useRef_result1_upvr.current = arg1
	any_useRef_result1_upvr_3.current = arg2
	local any_useRef_result1_upvr_2 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_4 = React_upvr.useRef(0)
	React_upvr.useEffect(function() -- Line 53
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: any_useRef_result1_upvr (readonly)
		]]
		return function() -- Line 54
			--[[ Upvalues[2]:
				[1]: any_useRef_result1_upvr_2 (copied, readonly)
				[2]: any_useRef_result1_upvr (copied, readonly)
			]]
			local current = any_useRef_result1_upvr_2.current
			if current then
				current:cancel()
				any_useRef_result1_upvr.current()
			end
		end
	end, {})
	return React_upvr.useCallback(function() -- Line 30
		--[[ Upvalues[5]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: any_useRef_result1_upvr_3 (readonly)
			[3]: any_useRef_result1_upvr_4 (readonly)
			[4]: any_useRef_result1_upvr (readonly)
			[5]: Promise_upvr (copied, readonly)
		]]
		if any_useRef_result1_upvr_2.current then
		else
			local var9 = any_useRef_result1_upvr_4.current + (any_useRef_result1_upvr_3.current or 0) - tick()
			if 0 < var9 then
				any_useRef_result1_upvr_2.current = Promise_upvr.delay(var9):andThen(function() -- Line 39, Named "runCallback"
					--[[ Upvalues[3]:
						[1]: any_useRef_result1_upvr (copied, readonly)
						[2]: any_useRef_result1_upvr_4 (copied, readonly)
						[3]: any_useRef_result1_upvr_2 (copied, readonly)
					]]
					any_useRef_result1_upvr.current()
					any_useRef_result1_upvr_4.current = tick()
					any_useRef_result1_upvr_2.current = nil
				end)
				return
			end
			any_useRef_result1_upvr.current()
			any_useRef_result1_upvr_4.current = tick()
			any_useRef_result1_upvr_2.current = nil
		end
	end)
end