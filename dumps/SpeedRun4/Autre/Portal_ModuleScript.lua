-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:22
-- Luau version 6, Types version 3
-- Time taken: 0.000423 seconds

local warnOnce_upvr = require(script.Parent.warnOnce)
local ReactRoblox_upvr = require(script.Parent.Parent.ReactRoblox)
return function(arg1) -- Line 22, Named "PortalComponent"
	--[[ Upvalues[2]:
		[1]: warnOnce_upvr (readonly)
		[2]: ReactRoblox_upvr (readonly)
	]]
	if _G.__DEV__ and _G.__COMPAT_WARNINGS__ then
		warnOnce_upvr("Roact.Portal", "Please use the createPortal API on ReactRoblox instead")
	end
	return ReactRoblox_upvr.createPortal(arg1.children, arg1.target)
end