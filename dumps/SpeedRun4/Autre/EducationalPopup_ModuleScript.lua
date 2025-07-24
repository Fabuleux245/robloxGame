-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:17
-- Luau version 6, Types version 3
-- Time taken: 0.002999 seconds

local GuiService_upvr = game:GetService("GuiService")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
local tbl_upvr = {
	EventContext = "educational_popup";
	ConfirmName = "educational_confirmed";
	CancelName = "educational_close_app";
	DismissName = "educational_dismiss_prompt";
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("EducationalPopup")
any_extend_result1.validateProps = t.strictInterface({
	screenSize = t.Vector2;
	onDismiss = t.callback;
	onConfirm = t.callback;
	isClosingApp = t.boolean;
})
local any_GetNotificationTypeList_result1_upvr = GuiService_upvr:GetNotificationTypeList()
function any_extend_result1.init(arg1) -- Line 39
	--[[ Upvalues[4]:
		[1]: SendAnalytics_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: any_GetNotificationTypeList_result1_upvr (readonly)
	]]
	function arg1.onCancel() -- Line 40
		--[[ Upvalues[4]:
			[1]: SendAnalytics_upvr (copied, readonly)
			[2]: tbl_upvr (copied, readonly)
			[3]: GuiService_upvr (copied, readonly)
			[4]: any_GetNotificationTypeList_result1_upvr (copied, readonly)
		]]
		SendAnalytics_upvr(tbl_upvr.EventContext, tbl_upvr.CancelName, {})
		GuiService_upvr:BroadcastNotification("", any_GetNotificationTypeList_result1_upvr.NATIVE_EXIT)
	end
end
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local EducationalPopupDialog_upvr = require(script.Parent.EducationalPopupDialog)
local Images_upvr = InGameMenuDependencies.UIBlox.App.ImageSet.Images
function any_extend_result1.render(arg1) -- Line 46
	--[[ Upvalues[4]:
		[1]: withLocalization_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: EducationalPopupDialog_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	return withLocalization_upvr({
		title = "CoreScripts.InGameMenu.ExitModal.Title";
		subtitle = "CoreScripts.InGameMenu.ExitModal.Subtitle";
		bodyTextOpenMenu = "CoreScripts.InGameMenu.ExitModal.BodyTextOpenMenu";
		bodyTextClickHome = "CoreScripts.InGameMenu.ExitModal.BodyTextClickHome";
		actionExit = "CoreScripts.InGameMenu.ExitModal.ActionExit";
		actionHome = "CoreScripts.InGameMenu.ExitModal.ActionHome";
	})(function(arg1_2) -- Line 54
		--[[ Upvalues[4]:
			[1]: Roact_upvr (copied, readonly)
			[2]: EducationalPopupDialog_upvr (copied, readonly)
			[3]: Images_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		return Roact_upvr.createElement(EducationalPopupDialog_upvr, {
			bodyContents = {{
				text = arg1_2.bodyTextOpenMenu;
				isSystemMenuIcon = true;
			}, {
				icon = Images_upvr["icons/menu/home_off"];
				text = arg1_2.bodyTextClickHome;
			}};
			cancelText = arg1_2.actionExit;
			confirmText = arg1_2.actionHome;
			titleBackgroundImageProps = {
				image = "rbxasset://textures/ui/LuaApp/graphic/Auth/GridBackground.jpg";
				imageHeight = 200;
				text = "<font face=\"GothamBlack\" size=\"42\">"..arg1_2.title.."</font><font size=\"4\"><br /></font><br />"..arg1_2.subtitle;
			};
			screenSize = arg1.props.screenSize;
			onDismiss = arg1.props.onDismiss;
			onCancel = arg1.onCancel;
			onConfirm = arg1.props.onConfirm;
			blurBackground = true;
			visible = arg1.props.isClosingApp;
		})
	end)
end
function any_extend_result1.didUpdate(arg1) -- Line 86
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	GuiService_upvr:SetMenuIsOpen(arg1.props.isClosingApp, "EducationalPopup")
end
local CloseNativeClosePrompt_upvr = require(Parent.Actions.CloseNativeClosePrompt)
local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local LeaveGame_upvr = require(Parent.Utility.LeaveGame)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1, arg2) -- Line 91
	return {
		isClosingApp = arg1.nativeClosePrompt.closingApp;
		screenSize = arg1.screenSize;
	}
end, function(arg1) -- Line 96
	--[[ Upvalues[5]:
		[1]: CloseNativeClosePrompt_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
		[3]: SendAnalytics_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: LeaveGame_upvr (readonly)
	]]
	return {
		onDismiss = function() -- Line 98, Named "onDismiss"
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: CloseNativeClosePrompt_upvr (copied, readonly)
				[3]: RbxAnalyticsService_upvr (copied, readonly)
				[4]: SendAnalytics_upvr (copied, readonly)
				[5]: tbl_upvr (copied, readonly)
			]]
			arg1(CloseNativeClosePrompt_upvr())
			RbxAnalyticsService_upvr:ReportCounter("EducationalPopup_Dismiss", 1)
			SendAnalytics_upvr(tbl_upvr.EventContext, tbl_upvr.DismissName, {})
		end;
		onConfirm = function() -- Line 103, Named "onConfirm"
			--[[ Upvalues[4]:
				[1]: RbxAnalyticsService_upvr (copied, readonly)
				[2]: SendAnalytics_upvr (copied, readonly)
				[3]: tbl_upvr (copied, readonly)
				[4]: LeaveGame_upvr (copied, readonly)
			]]
			RbxAnalyticsService_upvr:ReportCounter("EducationalPopup_Confirm", 1)
			SendAnalytics_upvr(tbl_upvr.EventContext, tbl_upvr.ConfirmName, {})
			LeaveGame_upvr()
		end;
	}
end)(any_extend_result1)