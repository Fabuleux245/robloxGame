-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:43
-- Luau version 6, Types version 3
-- Time taken: 0.000546 seconds

local RbxAnalyticsService = game:GetService("RbxAnalyticsService")
local GameInvite = script:FindFirstAncestor("GameInvite")
local Parent = GameInvite.Parent
return require(GameInvite.analytics.GameInviteAnalytics).new():withEventStream(require(Parent.Analytics).AnalyticsReporters.EventStream.new(RbxAnalyticsService)):withDiag(require(Parent.Analytics).AnalyticsReporters.Diag.new(RbxAnalyticsService))