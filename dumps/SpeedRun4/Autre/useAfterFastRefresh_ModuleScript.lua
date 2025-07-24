-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:44:01
-- Luau version 6, Types version 3
-- Time taken: 0.000688 seconds

local module = {}
local React = require(script.Parent.Parent.Parent.Parent.Parent.React)
local useRef_upvr = React.useRef
local useEffect_upvr = React.useEffect
function module.useAfterFastRefresh(arg1) -- Line 16
	--[[ Upvalues[2]:
		[1]: useRef_upvr (readonly)
		[2]: useEffect_upvr (readonly)
	]]
	if _G.__DEV__ then
		local useRef_upvr_result1_upvr = useRef_upvr(false)
		useEffect_upvr(function() -- Line 19
			--[[ Upvalues[1]:
				[1]: useRef_upvr_result1_upvr (readonly)
			]]
			return function() -- Line 20
				--[[ Upvalues[1]:
					[1]: useRef_upvr_result1_upvr (copied, readonly)
				]]
				useRef_upvr_result1_upvr.current = true
			end
		end, {})
		useEffect_upvr(function() -- Line 24
			--[[ Upvalues[2]:
				[1]: useRef_upvr_result1_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			if useRef_upvr_result1_upvr.current == true then
				useRef_upvr_result1_upvr.current = false
				arg1()
			end
		end, {})
	end
end
return module