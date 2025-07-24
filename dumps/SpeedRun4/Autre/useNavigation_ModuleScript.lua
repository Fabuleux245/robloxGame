-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:14:45
-- Luau version 6, Types version 3
-- Time taken: 0.000494 seconds

local Parent = script:FindFirstAncestor("Navigation").Parent
local React_upvr = require(Parent.React)
local RoactNavigation_upvr = require(Parent.RoactNavigation)
return function() -- Line 11, Named "useNavigation"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: RoactNavigation_upvr (readonly)
	]]
	return React_upvr.useContext(RoactNavigation_upvr.Context)
end