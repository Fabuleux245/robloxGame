-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:54
-- Luau version 6, Types version 3
-- Time taken: 0.000492 seconds

local Parent = script.Parent.Parent
local StackRouter_upvr = require(Parent.routers.StackRouter)
local createNavigator_upvr = require(script.Parent.createNavigator)
local StackView_upvr = require(Parent.views.RobloxStackView.StackView)
return function(arg1, arg2) -- Line 6
	--[[ Upvalues[3]:
		[1]: StackRouter_upvr (readonly)
		[2]: createNavigator_upvr (readonly)
		[3]: StackView_upvr (readonly)
	]]
	local var6 = arg2
	if not var6 then
		var6 = {}
	end
	return createNavigator_upvr(StackView_upvr, StackRouter_upvr(arg1, arg2), var6)
end