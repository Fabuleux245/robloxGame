-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:43
-- Luau version 6, Types version 3
-- Time taken: 0.000618 seconds

local React_upvr = require(script.Parent.Parent.React)
local createRefCache_upvr = require(script.Parent.createRefCache)
return function() -- Line 18, Named "useRefCache"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: createRefCache_upvr (readonly)
	]]
	local any_useRef_result1 = React_upvr.useRef(nil)
	if any_useRef_result1.current == nil then
		any_useRef_result1.current = createRefCache_upvr()
	end
	return any_useRef_result1.current
end