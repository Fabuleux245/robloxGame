-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:38
-- Luau version 6, Types version 3
-- Time taken: 0.000515 seconds

local Roact_upvr = require(script:FindFirstAncestor("AppChat").Parent.Roact)
local RoactChatAnalyticsConsumer_upvr = require(script.Parent.RoactChatAnalyticsConsumer)
return function(arg1) -- Line 12
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: RoactChatAnalyticsConsumer_upvr (readonly)
	]]
	local var4
	if type(arg1) ~= "function" then
		var4 = false
	else
		var4 = true
	end
	assert(var4, "Expect renderCallback to be a function.")
	var4 = Roact_upvr
	var4 = RoactChatAnalyticsConsumer_upvr
	local module = {}
	module.render = arg1
	return var4.createElement(var4, module)
end