-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:53
-- Luau version 6, Types version 3
-- Time taken: 0.000304 seconds

local FocusOffChromeSignal_upvr = require(script.Parent.Parent.FocusUtils.FocusOffChromeSignal)
return function(arg1) -- Line 6, Named "focusOffChrome"
	--[[ Upvalues[1]:
		[1]: FocusOffChromeSignal_upvr (readonly)
	]]
	FocusOffChromeSignal_upvr:fire()
	if arg1 then
		arg1()
	end
end