-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:40
-- Luau version 6, Types version 3
-- Time taken: 0.002817 seconds

local CorePackages = game:GetService("CorePackages")
local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("TrustAndSafetyApp")
any_extend_result1.validateProps = t.strictInterface({
	setScreenSize = t.callback;
	visible = t.boolean;
})
function any_extend_result1.init(arg1) -- Line 30
end
local VoiceStateContext_upvr = require(RobloxGui.Modules.VoiceChat.VoiceStateContext)
local ReportCategoryDialog_upvr = require(Parent.Components.ReportCategoryDialog)
local ReportMenu_upvr = require(Parent.Components.ReportMenu)
local ReportDialog_upvr = require(Parent.Components.ReportDialog)
local ReportSentDialog_upvr = require(Parent.Components.ReportSentDialog)
local Toast_upvr = require(Parent.Components.Toast)
local renderWithCoreScriptsStyleProvider_upvr = require(RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)
function any_extend_result1.render(arg1) -- Line 32
	--[[ Upvalues[8]:
		[1]: Roact_upvr (readonly)
		[2]: VoiceStateContext_upvr (readonly)
		[3]: ReportCategoryDialog_upvr (readonly)
		[4]: ReportMenu_upvr (readonly)
		[5]: ReportDialog_upvr (readonly)
		[6]: ReportSentDialog_upvr (readonly)
		[7]: Toast_upvr (readonly)
		[8]: renderWithCoreScriptsStyleProvider_upvr (readonly)
	]]
	return renderWithCoreScriptsStyleProvider_upvr({
		VoiceStateContextProvider = Roact_upvr.createElement(VoiceStateContext_upvr.Provider, {}, {
			Gui = Roact_upvr.createElement("ScreenGui", {
				AutoLocalize = false;
				DisplayOrder = 8;
				IgnoreGuiInset = true;
				OnTopOfCoreBlur = true;
				ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
				[Roact_upvr.Change.AbsoluteSize] = arg1.props.setScreenSize;
			}, {
				Content = Roact_upvr.createElement("Frame", {
					BackgroundTransparency = 1;
					Size = UDim2.new(1, 0, 1, 0);
					Visible = arg1.props.visible;
				}, {
					ReportCategoryDialog = Roact_upvr.createElement(ReportCategoryDialog_upvr);
					ReportMenu = Roact_upvr.createElement(ReportMenu_upvr);
					ReportDialog = Roact_upvr.createElement(ReportDialog_upvr);
					ReportSentDialog = Roact_upvr.createElement(ReportSentDialog_upvr);
					Toast = Roact_upvr.createElement(Toast_upvr);
				});
			});
		});
	})
end
local SetScreenSize_upvr = require(Parent.Actions.SetScreenSize)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 60
	return {
		visible = arg1.displayOptions.visible;
	}
end, function(arg1) -- Line 64
	--[[ Upvalues[1]:
		[1]: SetScreenSize_upvr (readonly)
	]]
	return {
		setScreenSize = function(arg1_2) -- Line 66, Named "setScreenSize"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetScreenSize_upvr (copied, readonly)
			]]
			arg1(SetScreenSize_upvr(arg1_2.AbsoluteSize))
		end;
	}
end)(any_extend_result1)