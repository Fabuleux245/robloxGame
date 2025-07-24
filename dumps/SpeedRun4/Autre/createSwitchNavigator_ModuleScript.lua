-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:55
-- Luau version 6, Types version 3
-- Time taken: 0.000753 seconds

local Parent = script.Parent.Parent
local SwitchRouter_upvr = require(Parent.routers.SwitchRouter)
local createNavigator_upvr = require(script.Parent.createNavigator)
local SwitchView_upvr = require(Parent.views.SwitchView.SwitchView)
return function(arg1, arg2) -- Line 7
	--[[ Upvalues[3]:
		[1]: SwitchRouter_upvr (readonly)
		[2]: createNavigator_upvr (readonly)
		[3]: SwitchView_upvr (readonly)
	]]
	if arg2 == nil then
		local module = {}
	end
	return createNavigator_upvr(SwitchView_upvr, SwitchRouter_upvr(arg1, module), module)
end