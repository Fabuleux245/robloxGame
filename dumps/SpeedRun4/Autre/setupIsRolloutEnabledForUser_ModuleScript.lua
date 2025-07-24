-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:56
-- Luau version 6, Types version 3
-- Time taken: 0.000786 seconds

local dependencies_upvr = require(script.Parent.Parent.dependencies)
local throttleUserId_upvr = require(script.Parent.throttleUserId)
return function(arg1) -- Line 5
	--[[ Upvalues[2]:
		[1]: dependencies_upvr (readonly)
		[2]: throttleUserId_upvr (readonly)
	]]
	return function() -- Line 6
		--[[ Upvalues[3]:
			[1]: dependencies_upvr (copied, readonly)
			[2]: throttleUserId_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local LocalPlayer = dependencies_upvr.Players.LocalPlayer
		if not LocalPlayer or not LocalPlayer.UserId then
			return false
		end
		return throttleUserId_upvr({
			throttle = arg1();
			userId = LocalPlayer.UserId;
		})
	end
end