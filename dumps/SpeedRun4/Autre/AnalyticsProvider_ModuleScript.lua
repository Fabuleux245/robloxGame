-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:34
-- Luau version 6, Types version 3
-- Time taken: 0.000558 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Analytics_upvr = require(Parent.Analytics).Analytics
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local Roact_upvr = require(Parent.Roact)
local AnalyticsContext_upvr = require(AppChat.LegacyAnalytics.AnalyticsContext)
local RoactChatAnalytics_upvr = require(script.Parent.RoactChatAnalytics)
return function(arg1) -- Line 17
	--[[ Upvalues[5]:
		[1]: Analytics_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: AnalyticsContext_upvr (readonly)
		[5]: RoactChatAnalytics_upvr (readonly)
	]]
	return Roact_upvr.createElement(AnalyticsContext_upvr.Provider, {
		value = RoactChatAnalytics_upvr.new(Analytics_upvr.new(RbxAnalyticsService_upvr), arg1.localUserId);
	}, Roact_upvr.oneChild(arg1[Roact_upvr.Children]))
end