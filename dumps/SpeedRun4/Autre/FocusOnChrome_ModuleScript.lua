-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:54
-- Luau version 6, Types version 3
-- Time taken: 0.000453 seconds

local FocusOnChromeSignal_upvr = require(script.Parent.Parent.FocusUtils.FocusOnChromeSignal)
return function(arg1, arg2) -- Line 6, Named "focusOnChrome"
	--[[ Upvalues[1]:
		[1]: FocusOnChromeSignal_upvr (readonly)
	]]
	if arg1 then
		arg1()
	end
	FocusOnChromeSignal_upvr:fire(arg2)
end