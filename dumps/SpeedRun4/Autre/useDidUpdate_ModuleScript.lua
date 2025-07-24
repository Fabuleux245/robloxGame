-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:38
-- Luau version 6, Types version 3
-- Time taken: 0.000572 seconds

local React_upvr = require(script:FindFirstAncestor("RoactUtils").Parent.React)
return function(arg1) -- Line 10
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local any_useRef_result1_upvr_2 = React_upvr.useRef(false)
	local any_useRef_result1_upvr = React_upvr.useRef(false)
	React_upvr.useEffect(function() -- Line 14
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useRef_result1_upvr_2 (readonly)
			[3]: arg1 (readonly)
		]]
		if not any_useRef_result1_upvr.current then
			any_useRef_result1_upvr.current = true
		else
			if not any_useRef_result1_upvr_2.current then
				any_useRef_result1_upvr_2.current = true
			end
			if arg1 then
				arg1()
			end
		end
	end)
	return any_useRef_result1_upvr_2
end