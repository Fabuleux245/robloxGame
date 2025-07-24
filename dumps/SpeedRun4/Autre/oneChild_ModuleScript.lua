-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:21
-- Luau version 6, Types version 3
-- Time taken: 0.000622 seconds

local warnOnce_upvr = require(script.Parent.warnOnce)
local React_upvr = require(script.Parent.Parent.React)
return function(arg1) -- Line 21, Named "oneChild"
	--[[ Upvalues[2]:
		[1]: warnOnce_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	if _G.__DEV__ and _G.__COMPAT_WARNINGS__ then
		warnOnce_upvr("oneChild", "You likely don't need this at all! If you were assigning children ".."via `React.oneChild(someChildren)`, you can simply use ".."`someChildren` directly.")
	end
	if not arg1 then
		return nil
	end
	local next_result1, next_result2 = next(arg1)
	if not next_result2 then
		return nil
	end
	if next(arg1, next_result1) then
		error("Expected at most one child, had more than one child.", 2)
	end
	return React_upvr.Children.only(next_result2)
end