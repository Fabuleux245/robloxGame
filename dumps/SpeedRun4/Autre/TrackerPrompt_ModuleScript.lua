-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:12
-- Luau version 6, Types version 3
-- Time taken: 0.005631 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local TrackerPromptType_upvr = require(RobloxGui.Modules.Tracker.TrackerPromptType)
local any_extend_result1 = Roact_upvr.PureComponent:extend("TrackerPrompt")
any_extend_result1.validateProps = t.strictInterface({
	promptType = t.optional(t.string);
})
local tbl_5_upvr = {
	[TrackerPromptType_upvr.None] = "";
	[TrackerPromptType_upvr.VideoNoPermission] = RobloxTranslator_upvr:FormatByKey("Feature.FaceChat.Heading.UnableToAccessCamera");
	[TrackerPromptType_upvr.NotAvailable] = RobloxTranslator_upvr:FormatByKey("Feature.FaceChat.Heading.NotAvailable");
}
local any_FormatByKey_result1 = RobloxTranslator_upvr:FormatByKey("Feature.FaceChat.Heading.FacialAnimation")
tbl_5_upvr[TrackerPromptType_upvr.FeatureDisabled] = any_FormatByKey_result1
if game:DefineFastFlag("TrackerPromptNewCopyForCameraPerformanceEnabled", false) then
	any_FormatByKey_result1 = RobloxTranslator_upvr:FormatByKey("Feature.FaceChat.Heading.LowPerformanceDetected")
else
	any_FormatByKey_result1 = RobloxTranslator_upvr:FormatByKey("Feature.FaceChat.Heading.VideoPerformancePromptDisable")
end
tbl_5_upvr[TrackerPromptType_upvr.LODCameraRecommendDisable] = any_FormatByKey_result1
tbl_5_upvr[TrackerPromptType_upvr.NoDynamicHeadEquipped] = RobloxTranslator_upvr:FormatByKey("Feature.FaceChat.Heading.PromptNoDynamicHeadEquipped")
tbl_5_upvr[TrackerPromptType_upvr.VideoUnsupported] = RobloxTranslator_upvr:FormatByKey("Feature.FaceChat.Heading.VideoUnsupported")
tbl_5_upvr[TrackerPromptType_upvr.UnsupportedDevice] = RobloxTranslator_upvr:FormatByKey("Feature.FaceChat.Heading.NotAvailable")
tbl_5_upvr[TrackerPromptType_upvr.CameraUnavailable] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.CameraUnavailable")
local tbl_2_upvr = {
	[TrackerPromptType_upvr.None] = "";
	[TrackerPromptType_upvr.VideoNoPermission] = RobloxTranslator_upvr:FormatByKey("Feature.FaceChat.Subtitle.UnableToAccessCamera");
	[TrackerPromptType_upvr.NotAvailable] = RobloxTranslator_upvr:FormatByKey("Feature.FaceChat.Subtitle.NotAvailable");
	[TrackerPromptType_upvr.FeatureDisabled] = RobloxTranslator_upvr:FormatByKey("Feature.FaceChat.Subtitle.FeatureDisabled");
	[TrackerPromptType_upvr.LODCameraRecommendDisable] = RobloxTranslator_upvr:FormatByKey("Feature.FaceChat.Subtitle.VideoPerformancePromptDisable");
	[TrackerPromptType_upvr.NoDynamicHeadEquipped] = RobloxTranslator_upvr:FormatByKey("Feature.FaceChat.Subtitle.PromptNoDynamicHeadEquipped");
	[TrackerPromptType_upvr.VideoUnsupported] = RobloxTranslator_upvr:FormatByKey("Feature.FaceChat.Subtitle.VideoUnsupported");
	[TrackerPromptType_upvr.UnsupportedDevice] = RobloxTranslator_upvr:FormatByKey("Feature.FaceChat.Subtitle.UnsupportedDevice");
	[TrackerPromptType_upvr.CameraUnavailable] = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.Subtitle.CameraUnavailable");
}
local tbl_4_upvr = {
	FullScreen = 0;
	FormSheet = 2;
}
local HttpService_upvr = game:GetService("HttpService")
local GuiService_upvr = game:GetService("GuiService")
local function openWebview_upvr(arg1) -- Line 77, Named "openWebview"
	--[[ Upvalues[4]:
		[1]: HttpService_upvr (readonly)
		[2]: RobloxTranslator_upvr (readonly)
		[3]: tbl_4_upvr (readonly)
		[4]: GuiService_upvr (readonly)
	]]
	local tbl = {}
	local var17
	if game:GetEngineFeature("SetWebViewTitle") then
		var17 = RobloxTranslator_upvr:FormatByKey("Feature.SettingsHub.Prompt.CameraUnavailable")
	else
		var17 = nil
	end
	tbl.title = var17
	var17 = tbl_4_upvr.FormSheet
	tbl.presentationStyle = var17
	var17 = true
	tbl.visible = var17
	tbl.url = arg1
	var17 = HttpService_upvr:JSONEncode(tbl)
	GuiService_upvr:BroadcastNotification(var17, 20)
end
function any_extend_result1.init(arg1) -- Line 90
	arg1.promptType = arg1.props.promptType
end
local Toast_upvr = UIBlox.App.Dialog.Toast
local Images_upvr = UIBlox.App.ImageSet.Images
local game_DefineFastString_result1_upvr = game:DefineFastString("CameraUnavailableUrl", "https://help.roblox.com/hc/articles/17877687557396")
local renderWithCoreScriptsStyleProvider_upvr = require(RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)
function any_extend_result1.render(arg1) -- Line 94
	--[[ Upvalues[9]:
		[1]: Roact_upvr (readonly)
		[2]: TrackerPromptType_upvr (readonly)
		[3]: Toast_upvr (readonly)
		[4]: Images_upvr (readonly)
		[5]: tbl_5_upvr (readonly)
		[6]: tbl_2_upvr (readonly)
		[7]: openWebview_upvr (readonly)
		[8]: game_DefineFastString_result1_upvr (readonly)
		[9]: renderWithCoreScriptsStyleProvider_upvr (readonly)
	]]
	arg1.promptType = arg1.props.promptType
	local tbl_3 = {}
	local var24 = false
	if arg1.promptType ~= TrackerPromptType_upvr.None then
		var24 = Roact_upvr.createElement
		var24 = var24(Toast_upvr, {
			duration = 8;
			toastContent = {
				iconImage = Images_upvr["icons/status/alert"];
				toastTitle = tbl_5_upvr[arg1.promptType];
				toastSubtitle = tbl_2_upvr[arg1.promptType];
				onDismissed = function() -- Line 106, Named "onDismissed"
				end;
				onActivated = function() -- Line 107, Named "onActivated"
					--[[ Upvalues[4]:
						[1]: arg1 (readonly)
						[2]: TrackerPromptType_upvr (copied, readonly)
						[3]: openWebview_upvr (copied, readonly)
						[4]: game_DefineFastString_result1_upvr (copied, readonly)
					]]
					if arg1.promptType == TrackerPromptType_upvr.CameraUnavailable then
						openWebview_upvr(game_DefineFastString_result1_upvr)
					end
				end;
			};
		})
	end
	tbl_3.Toast = var24
	return Roact_upvr.createElement("ScreenGui", {
		AutoLocalize = false;
		DisplayOrder = 10;
		IgnoreGuiInset = true;
		OnTopOfCoreBlur = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	}, {
		Content = renderWithCoreScriptsStyleProvider_upvr({
			TrackerPrompt = Roact_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(1, 1);
			}, tbl_3);
		});
	})
end
return any_extend_result1