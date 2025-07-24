-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:23
-- Luau version 6, Types version 3
-- Time taken: 0.000392 seconds

local warnOnce_upvr = require(script.Parent.warnOnce)
return function(arg1) -- Line 19
	--[[ Upvalues[1]:
		[1]: warnOnce_upvr (readonly)
	]]
	if _G.__DEV__ and _G.__COMPAT_WARNINGS__ then
		warnOnce_upvr("setGlobalConfig", "Roact 17 uses a `_G.__DEV__` flag to enable development behavior. ".."If you're seeing this warning, you already have it enabled. ".."Please remove any redundant uses of `setGlobalConfig`.")
	end
end