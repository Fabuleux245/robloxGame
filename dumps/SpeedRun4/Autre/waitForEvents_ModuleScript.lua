-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:07
-- Luau version 6, Types version 3
-- Time taken: 0.000713 seconds

local ReactRoblox_upvr = require(script:FindFirstAncestor("ReactUtils").Parent.ReactRoblox)
return setmetatable({
	act = function() -- Line 13, Named "actWaitForEvents"
		--[[ Upvalues[1]:
			[1]: ReactRoblox_upvr (readonly)
		]]
		ReactRoblox_upvr.act(function() -- Line 14
			task.wait(0)
		end)
	end;
}, {
	__call = function() -- Line 6, Named "waitForEvents"
		task.wait(0)
	end;
})