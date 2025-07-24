-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:19:13
-- Luau version 6, Types version 3
-- Time taken: 0.000330 seconds

local Parent = script:FindFirstAncestor("RobloxAppHooks").Parent
local React_upvr = require(Parent.React)
local RoactServicesContext_upvr = require(Parent.RoactServices).RoactServicesContext
return function(arg1) -- Line 23, Named "useRoactService"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: RoactServicesContext_upvr (readonly)
	]]
	return arg1.get(React_upvr.useContext(RoactServicesContext_upvr))
end