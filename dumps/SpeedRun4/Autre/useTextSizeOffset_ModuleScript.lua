-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:17
-- Luau version 6, Types version 3
-- Time taken: 0.000492 seconds

local Parent = script.Parent
local React_upvr = require(Parent.Parent.Parent.Parent.React)
local StyleContext_upvr = require(Parent.StyleContext)
return function() -- Line 13, Named "useTextSizeOffset"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: StyleContext_upvr (readonly)
	]]
	return React_upvr.useContext(StyleContext_upvr).derivedValues.textSizeOffset
end