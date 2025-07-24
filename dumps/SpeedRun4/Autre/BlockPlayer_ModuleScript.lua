-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:43
-- Luau version 6, Types version 3
-- Time taken: 0.000889 seconds

local BlockingUtility_upvr = require(game:GetService("CorePackages").Workspace.Packages.BlockingUtility)
local SetPlayerIsBlocked_upvr = require(script.Parent.Parent.Actions.SetPlayerIsBlocked)
return function(arg1) -- Line 9, Named "BlockPlayer"
	--[[ Upvalues[2]:
		[1]: BlockingUtility_upvr (readonly)
		[2]: SetPlayerIsBlocked_upvr (readonly)
	]]
	return function(arg1_2) -- Line 10
		--[[ Upvalues[3]:
			[1]: BlockingUtility_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: SetPlayerIsBlocked_upvr (copied, readonly)
		]]
		coroutine.wrap(function() -- Line 11
			--[[ Upvalues[4]:
				[1]: BlockingUtility_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg1_2 (readonly)
				[4]: SetPlayerIsBlocked_upvr (copied, readonly)
			]]
			if BlockingUtility_upvr:BlockPlayerAsync(arg1) then
				arg1_2:dispatch(SetPlayerIsBlocked_upvr(arg1, true))
			end
		end)()
	end
end