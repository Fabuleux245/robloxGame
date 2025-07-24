-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:20:07
-- Luau version 6, Types version 3
-- Time taken: 0.000728 seconds

local module = {}
local any_new_result1_upvr = require(script:FindFirstAncestor("AuthCommon").dependencies).Analytics.AnalyticsReporters.EventIngest.new(game:GetService("EventIngestService"))
local IosKeychainEventConstants_upvr = require(script.Parent.IosKeychainEventConstants)
function module.sendPageLoadEvent(arg1, arg2) -- Line 8
	--[[ Upvalues[2]:
		[1]: any_new_result1_upvr (readonly)
		[2]: IosKeychainEventConstants_upvr (readonly)
	]]
	local tbl = {}
	tbl.origin = arg1
	tbl.state = arg2 or ""
	any_new_result1_upvr:sendEventDeferred(IosKeychainEventConstants_upvr.ctx.iosKeychainLogin, IosKeychainEventConstants_upvr.eventNames.pageLoad, tbl)
end
return module