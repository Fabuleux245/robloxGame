-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:12
-- Luau version 6, Types version 3
-- Time taken: 0.000796 seconds

local ReactRoblox_upvr = require(script.Parent.Parent.Parent.Dev.ReactRoblox)
return function(arg1, arg2) -- Line 6
	--[[ Upvalues[1]:
		[1]: ReactRoblox_upvr (readonly)
	]]
	local var3_upvw = 0
	while var3_upvw < (arg2 or 1) and not arg1() do
		ReactRoblox_upvr.act(function() -- Line 10
			--[[ Upvalues[1]:
				[1]: var3_upvw (read and write)
			]]
			var3_upvw += task.wait()
		end)
	end
end