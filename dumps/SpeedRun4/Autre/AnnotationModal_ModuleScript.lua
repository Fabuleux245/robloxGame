-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:46
-- Luau version 6, Types version 3
-- Time taken: 0.003363 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local AbuseReportMenu = script:FindFirstAncestor("AbuseReportMenu")
local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Chrome = CoreGui_upvr:WaitForChild("RobloxGui").Modules.Chrome
local Enabled_upvr = Chrome.Enabled
local Enabled_upvr_2_upvr = require(Enabled_upvr)
if Enabled_upvr_2_upvr() then
	Enabled_upvr = require(Chrome.Service)
else
	Enabled_upvr = nil
end
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagChromeEnabledShortcutBarFix_upvr = SharedFlags.FFlagChromeEnabledShortcutBarFix
local FFlagChromeHideShortcutBarOnAnnotationModal_upvr = SharedFlags.FFlagChromeHideShortcutBarOnAnnotationModal
local tbl_5_upvr = {
	annotationPageHandle = nil;
	annotationPageFrame = nil;
	annotationPageScreenGui = nil;
}
local function unmountAnnotationPage_upvr() -- Line 29, Named "unmountAnnotationPage"
	--[[ Upvalues[6]:
		[1]: FFlagChromeHideShortcutBarOnAnnotationModal_upvr (readonly)
		[2]: FFlagChromeEnabledShortcutBarFix_upvr (readonly)
		[3]: Enabled_upvr_2_upvr (readonly)
		[4]: Enabled_upvr (readonly)
		[5]: tbl_5_upvr (readonly)
		[6]: Roact_upvr (readonly)
	]]
	local var12 = FFlagChromeHideShortcutBarOnAnnotationModal_upvr
	if var12 then
		if FFlagChromeEnabledShortcutBarFix_upvr then
			var12 = Enabled_upvr_2_upvr()
		else
			var12 = Enabled_upvr_2_upvr
		end
		if var12 then
			var12 = Enabled_upvr:setHideShortcutBar
			var12("AnnotationModal", false)
		end
	end
	if tbl_5_upvr.annotationPageHandle ~= nil then
		Roact_upvr.unmount(tbl_5_upvr.annotationPageHandle)
		tbl_5_upvr.annotationPageHandle = nil
	end
	if tbl_5_upvr.annotationPageScreenGui ~= nil then
		tbl_5_upvr.annotationPageFrame.Parent = nil
		tbl_5_upvr.annotationPageFrame = nil
		tbl_5_upvr.annotationPageScreenGui = nil
	end
end
local GuiService_upvr = game:GetService("GuiService")
local Constants_upvr = require(AbuseReportMenu.Components.Constants)
local ScreenshotFlowStepHandlerContainer_upvr = require(AbuseReportMenu.ReportAnything.Components.ScreenshotFlowStepHandlerContainer)
return {
	mountAnnotationPage = function(arg1, arg2, arg3, arg4, arg5) -- Line 47, Named "mountAnnotationPage"
		--[[ Upvalues[11]:
			[1]: FFlagChromeHideShortcutBarOnAnnotationModal_upvr (readonly)
			[2]: FFlagChromeEnabledShortcutBarFix_upvr (readonly)
			[3]: Enabled_upvr_2_upvr (readonly)
			[4]: Enabled_upvr (readonly)
			[5]: GuiService_upvr (readonly)
			[6]: tbl_5_upvr (readonly)
			[7]: CoreGui_upvr (readonly)
			[8]: Constants_upvr (readonly)
			[9]: Roact_upvr (readonly)
			[10]: ScreenshotFlowStepHandlerContainer_upvr (readonly)
			[11]: unmountAnnotationPage_upvr (readonly)
		]]
		local var16 = FFlagChromeHideShortcutBarOnAnnotationModal_upvr
		if var16 then
			if FFlagChromeEnabledShortcutBarFix_upvr then
				var16 = Enabled_upvr_2_upvr()
			else
				var16 = Enabled_upvr_2_upvr
			end
			if var16 then
				var16 = Enabled_upvr:setHideShortcutBar
				var16("AnnotationModal", true)
			end
		end
		local any_GetGuiInset_result1, any_GetGuiInset_result2 = GuiService_upvr:GetGuiInset()
		if not tbl_5_upvr.annotationPageScreenGui then
			local ScreenGui = Instance.new("ScreenGui")
			ScreenGui.Name = "AnnotationPageContents"
			ScreenGui.DisplayOrder = 7
			ScreenGui.Enabled = true
			ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			ScreenGui.Parent = CoreGui_upvr:FindFirstChild(Constants_upvr.AbuseReportMenuPlaceholderFrame, true)
			tbl_5_upvr.annotationPageScreenGui = ScreenGui
			local Frame = Instance.new("Frame")
			Frame.BackgroundTransparency = 1
			Frame.Position = UDim2.new(0, 0, 0, -any_GetGuiInset_result1.Y)
			Frame.Size = UDim2.new(1, 0, 1, any_GetGuiInset_result1.Y)
			Frame.Parent = tbl_5_upvr.annotationPageScreenGui
			tbl_5_upvr.annotationPageFrame = Frame
		end
		local tbl_4 = {
			screenshot = arg4.screenshotContentId;
		}
		tbl_4.entryPoint = arg1
		function tbl_4.backAction() -- Line 83
			--[[ Upvalues[1]:
				[1]: unmountAnnotationPage_upvr (copied, readonly)
			]]
			unmountAnnotationPage_upvr()
		end
		function tbl_4.dismissAction() -- Line 86
			--[[ Upvalues[1]:
				[1]: unmountAnnotationPage_upvr (copied, readonly)
			]]
			unmountAnnotationPage_upvr()
		end
		function tbl_4.finishAnnotationAction(arg1_2) -- Line 89
			--[[ Upvalues[3]:
				[1]: unmountAnnotationPage_upvr (copied, readonly)
				[2]: arg5 (readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			unmountAnnotationPage_upvr()
			local tbl_2 = {
				type = Constants_upvr.ReportAnythingActions.SetAnnotationPoints;
			}
			tbl_2.annotationPoints = arg1_2
			arg5(tbl_2)
			arg5({
				type = Constants_upvr.ReportAnythingActions.CompleteAttachment;
			})
		end
		function tbl_4.restartAction() -- Line 99
			--[[ Upvalues[4]:
				[1]: unmountAnnotationPage_upvr (copied, readonly)
				[2]: arg5 (readonly)
				[3]: Constants_upvr (copied, readonly)
				[4]: arg2 (readonly)
			]]
			unmountAnnotationPage_upvr()
			arg5({
				type = Constants_upvr.ReportAnythingActions.ClearAll;
			})
			arg2()
		end
		function tbl_4.skipAnnotationAction() -- Line 109
			--[[ Upvalues[3]:
				[1]: unmountAnnotationPage_upvr (copied, readonly)
				[2]: arg5 (readonly)
				[3]: Constants_upvr (copied, readonly)
			]]
			unmountAnnotationPage_upvr()
			arg5({
				type = Constants_upvr.ReportAnythingActions.CompleteAttachment;
			})
		end
		function tbl_4.setAnnotationCircleRadius(arg1_3) -- Line 115
			--[[ Upvalues[2]:
				[1]: arg5 (readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			local tbl_3 = {
				type = Constants_upvr.ReportAnythingActions.SetAnnotationCircleRadius;
			}
			tbl_3.radius = arg1_3
			arg5(tbl_3)
		end
		function tbl_4.setAnnotationAreaDimensions(arg1_4, arg2_2) -- Line 121
			--[[ Upvalues[2]:
				[1]: arg5 (readonly)
				[2]: Constants_upvr (copied, readonly)
			]]
			local tbl = {
				type = Constants_upvr.ReportAnythingActions.SetAnnotationAreaDimensions;
			}
			tbl.width = arg1_4
			tbl.height = arg2_2
			arg5(tbl)
		end
		tbl_4.initialAnnotationPoints = {}
		tbl_4.initialPageNumber = 1
		tbl_4.viewportInfo = arg4.identificationResults.avatarIDStats.viewportInfo
		tbl_4.reportAnythingAnalytics = arg3
		arg5({
			type = Constants_upvr.ReportAnythingActions.SetAnnotationOptionSeen;
		})
		tbl_5_upvr.annotationPageHandle = Roact_upvr.mount(Roact_upvr.createElement(ScreenshotFlowStepHandlerContainer_upvr, tbl_4), tbl_5_upvr.annotationPageFrame, "AnnotationFlow")
	end;
	unmountAnnotationPage = unmountAnnotationPage_upvr;
}