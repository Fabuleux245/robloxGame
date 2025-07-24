-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:39
-- Luau version 6, Types version 3
-- Time taken: 0.000517 seconds

local React_upvr = require(script.Parent.Parent.Parent.Parent.React)
local CursorContext_upvr = require(script.Parent.CursorContext)
return function(arg1) -- Line 7, Named "useCursorByType"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: CursorContext_upvr (readonly)
	]]
	return React_upvr.useContext(CursorContext_upvr).getCursorByType(arg1)
end