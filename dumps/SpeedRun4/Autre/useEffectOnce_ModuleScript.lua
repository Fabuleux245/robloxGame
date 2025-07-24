-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:38
-- Luau version 6, Types version 3
-- Time taken: 0.000609 seconds

local React_upvr = require(script:FindFirstAncestor("RoactUtils").Parent.React)
local dependencyArray_upvr = require(script.Parent.dependencyArray)
return function(arg1, arg2) -- Line 11
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: dependencyArray_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(false)
	React_upvr.useEffect(function() -- Line 14
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		if arg2 and not any_useRef_result1_upvr.current then
			arg1()
			any_useRef_result1_upvr.current = true
		end
	end, dependencyArray_upvr(arg2))
end