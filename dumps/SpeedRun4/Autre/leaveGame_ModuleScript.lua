-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:39
-- Luau version 6, Types version 3
-- Time taken: 0.000929 seconds

local Parent = script.Parent.Parent
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local Constants_upvr = require(Parent.Resources.Constants)
local GuiService_upvr = game:GetService("GuiService")
local RunService_upvr = game:GetService("RunService")
local GetDefaultQualityLevel_upvr = require(game:GetService("CorePackages").Workspace.Packages.AppCommonLib).GetDefaultQualityLevel
return function() -- Line 12
	--[[ Upvalues[5]:
		[1]: SendAnalytics_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: RunService_upvr (readonly)
		[5]: GetDefaultQualityLevel_upvr (readonly)
	]]
	SendAnalytics_upvr(Constants_upvr.AnalyticsInGameMenuName, Constants_upvr.AnalyticsLeaveGameName, {
		confirmed = Constants_upvr.AnalyticsConfirmedName;
	})
	GuiService_upvr.SelectedCoreObject = nil
	RunService_upvr.RenderStepped:Wait()
	RunService_upvr.RenderStepped:Wait()
	game:Shutdown()
	settings().Rendering.QualityLevel = GetDefaultQualityLevel_upvr()
end