-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:35
-- Luau version 6, Types version 3
-- Time taken: 0.000527 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Analytics_upvr = require(Parent.Analytics).Analytics
local Roact_upvr = require(Parent.Roact)
local AnalyticsContext_upvr = require(script.Parent.Parent.AnalyticsContext)
local RoactChatAnalytics_upvr = require(script.Parent.Parent.RoactChatAnalytics)
return function(arg1) -- Line 9
	--[[ Upvalues[4]:
		[1]: Analytics_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: AnalyticsContext_upvr (readonly)
		[4]: RoactChatAnalytics_upvr (readonly)
	]]
	return Roact_upvr.createElement(AnalyticsContext_upvr.Provider, {
		value = RoactChatAnalytics_upvr.new(Analytics_upvr.mock(), tostring(math.random(999999999)));
	}, Roact_upvr.oneChild(arg1[Roact_upvr.Children]))
end