-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:50
-- Luau version 6, Types version 3
-- Time taken: 0.000483 seconds

local Parent = script:FindFirstAncestor("RoactUtils").Parent
local useIsGamepad_upvr = require(script.Parent.Hooks.useIsGamepad)
local React_upvr = require(Parent.React)
local Dash_upvr = require(Parent.Dash)
return function(arg1) -- Line 12, Named "withIsGamepadInput"
	--[[ Upvalues[3]:
		[1]: useIsGamepad_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Dash_upvr (readonly)
	]]
	return function(arg1_2) -- Line 13
		--[[ Upvalues[4]:
			[1]: useIsGamepad_upvr (copied, readonly)
			[2]: React_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Dash_upvr (copied, readonly)
		]]
		return React_upvr.createElement(arg1, Dash_upvr.join(arg1_2, {
			isGamepadInput = useIsGamepad_upvr();
		}))
	end
end