-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:59:51
-- Luau version 6, Types version 3
-- Time taken: 0.000725 seconds

local React_upvr = require(script:FindFirstAncestor("ReactUtils").Parent.React)
return function(arg1) -- Line 12, Named "ContextStack"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local children = arg1.children
	for i = #arg1.providers, 1, -1 do
		children = React_upvr.cloneElement(arg1.providers[i], nil, children)
	end
	return children
end