-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:55
-- Luau version 6, Types version 3
-- Time taken: 0.000486 seconds

local Parent = script.Parent.Parent
local SwitchRouter_upvr = require(Parent.routers.SwitchRouter)
local createNavigator_upvr = require(script.Parent.createNavigator)
local RobloxSwitchView_upvr = require(Parent.views.RobloxSwitchView)
return function(arg1, arg2) -- Line 21
	--[[ Upvalues[3]:
		[1]: SwitchRouter_upvr (readonly)
		[2]: createNavigator_upvr (readonly)
		[3]: RobloxSwitchView_upvr (readonly)
	]]
	local var6 = arg2
	if not var6 then
		var6 = {}
	end
	return createNavigator_upvr(RobloxSwitchView_upvr, SwitchRouter_upvr(arg1, arg2), var6)
end