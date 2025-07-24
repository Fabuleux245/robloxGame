-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:02
-- Luau version 6, Types version 3
-- Time taken: 0.001594 seconds

local SessionService_upvr = game:GetService("SessionService")
local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Resources.Constants)
local GetFFlagEnableARFlowSession_upvr = require(Parent.Flags.GetFFlagEnableARFlowSession)
local module = {}
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
function module.startAbuseReportSession(arg1) -- Line 12
	--[[ Upvalues[4]:
		[1]: GetFFlagEnableARFlowSession_upvr (readonly)
		[2]: SessionService_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: SendAnalytics_upvr (readonly)
	]]
	if GetFFlagEnableARFlowSession_upvr() then
		if not SessionService_upvr:SessionExists(Constants_upvr.Session.StructuralIdentifier.AbuseReport) then
			SessionService_upvr:SetSession(Constants_upvr.Session.StructuralIdentifier.Level1, Constants_upvr.Session.StructuralIdentifier.AbuseReport, Constants_upvr.Session.StructuralIdentifier.AbuseReport)
		end
		SessionService_upvr:SetMetadata(Constants_upvr.Session.StructuralIdentifier.AbuseReport, Constants_upvr.Session.Metadata.EntryPoint, arg1)
		SessionService_upvr:SetMetadata(Constants_upvr.Session.StructuralIdentifier.AbuseReport, Constants_upvr.Session.Metadata.DeleteOnGameLeave, "True")
		local tbl = {}
		tbl.source = arg1
		SendAnalytics_upvr(Constants_upvr.Analytics.ReportFlowOpened, Constants_upvr.Analytics.ReportFlowOpened, tbl)
	end
end
function module.endAbuseReportSession() -- Line 43
	--[[ Upvalues[3]:
		[1]: GetFFlagEnableARFlowSession_upvr (readonly)
		[2]: SessionService_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	if GetFFlagEnableARFlowSession_upvr() and SessionService_upvr:SessionExists(Constants_upvr.Session.StructuralIdentifier.AbuseReport) then
		SessionService_upvr:RemoveSession(Constants_upvr.Session.StructuralIdentifier.AbuseReport)
	end
end
return module