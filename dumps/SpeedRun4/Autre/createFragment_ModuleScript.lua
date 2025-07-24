-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:21
-- Luau version 6, Types version 3
-- Time taken: 0.000659 seconds

local warnOnce_upvr = require(script.Parent.warnOnce)
local React_upvr = require(script.Parent.Parent.React)
return function(arg1) -- Line 21
	--[[ Upvalues[2]:
		[1]: warnOnce_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	if _G.__DEV__ and _G.__COMPAT_WARNINGS__ then
		warnOnce_upvr("createFragment", "Please instead use:\n\tReact.createElement(React.Fragment, ...)")
	end
	return React_upvr.createElement(React_upvr.Fragment, nil, arg1)
end