-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:55:53
-- Luau version 6, Types version 3
-- Time taken: 0.000521 seconds

local React_upvr = require(script.Parent.Parent.Parent.React)
local PresenceContext_upvr = require(script.Parent.PresenceContext)
return {
	useIsPresent = function() -- Line 39, Named "useIsPresent"
		--[[ Upvalues[2]:
			[1]: React_upvr (readonly)
			[2]: PresenceContext_upvr (readonly)
		]]
		local any_useContext_result1 = React_upvr.useContext(PresenceContext_upvr)
		if any_useContext_result1 == nil then
			return true
		end
		return any_useContext_result1.isPresent
	end;
	isPresent = function(arg1) -- Line 27, Named "isPresent"
		if arg1 == nil then
			return true
		end
		return arg1.isPresent
	end;
}