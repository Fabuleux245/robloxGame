-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:46
-- Luau version 6, Types version 3
-- Time taken: 0.003835 seconds

local RobloxGui = game:GetService("CoreGui"):WaitForChild("RobloxGui")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("LeavePrompt")
any_extend_result1.validateProps = t.strictInterface({
	titleText = t.string;
	bodyText = t.string;
	confirmText = t.string;
	cancelText = t.string;
	onConfirm = t.callback;
	onCancel = t.callback;
	canGamepadCaptureFocus = t.boolean;
	canKeyboardCaptureFocus = t.boolean;
})
any_extend_result1.defaultProps = {
	canGamepadCaptureFocus = false;
	canKeyboardCaptureFocus = false;
}
function any_extend_result1.init(arg1) -- Line 58
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.leaveButtonRef = Roact_upvr.createRef()
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local GameIcon_upvr = require(Parent.GameIcon)
local ThemedTextLabel_upvr = require(Parent.ThemedTextLabel)
local GetFFlagEnableVRFTUXExperience_upvr = require(RobloxGui.Modules.FTUX.Flags.GetFFlagEnableVRFTUXExperience)
local IsFTUXExperience_upvr = require(RobloxGui.Modules.FTUX.Utility.IsFTUXExperience)
local PlatformEnum_upvr = require(RobloxGui.Modules.FTUX.Enums.PlatformEnum)
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local FocusHandler_upvr = require(Parent.Connection.FocusHandler)
local GuiService_upvr = game:GetService("GuiService")
local ZonePortal_upvr = require(Parent.ZonePortal)
local Direction_upvr = require(Parent.Parent.Enums.Direction)
local ContextActionService_upvr = game:GetService("ContextActionService")
function any_extend_result1.render(arg1) -- Line 62
	--[[ Upvalues[14]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: GameIcon_upvr (readonly)
		[4]: ThemedTextLabel_upvr (readonly)
		[5]: GetFFlagEnableVRFTUXExperience_upvr (readonly)
		[6]: IsFTUXExperience_upvr (readonly)
		[7]: PlatformEnum_upvr (readonly)
		[8]: Button_upvr (readonly)
		[9]: ButtonType_upvr (readonly)
		[10]: FocusHandler_upvr (readonly)
		[11]: GuiService_upvr (readonly)
		[12]: ZonePortal_upvr (readonly)
		[13]: Direction_upvr (readonly)
		[14]: ContextActionService_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 63
		--[[ Upvalues[14]:
			[1]: Roact_upvr (copied, readonly)
			[2]: GameIcon_upvr (copied, readonly)
			[3]: ThemedTextLabel_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: GetFFlagEnableVRFTUXExperience_upvr (copied, readonly)
			[6]: IsFTUXExperience_upvr (copied, readonly)
			[7]: PlatformEnum_upvr (copied, readonly)
			[8]: Button_upvr (copied, readonly)
			[9]: ButtonType_upvr (copied, readonly)
			[10]: FocusHandler_upvr (copied, readonly)
			[11]: GuiService_upvr (copied, readonly)
			[12]: ZonePortal_upvr (copied, readonly)
			[13]: Direction_upvr (copied, readonly)
			[14]: ContextActionService_upvr (copied, readonly)
		]]
		local Font = arg1_2.Font
		local tbl_3 = {
			Layout = Roact_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				Padding = UDim.new(0, 24);
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
			GameThumbnail = Roact_upvr.createElement(GameIcon_upvr, {
				gameId = game.GameId;
				iconSize = 100;
				layoutOrder = 1;
			});
			TitleText = Roact_upvr.createElement(ThemedTextLabel_upvr, {
				fontKey = "Header1";
				themeKey = "TextEmphasis";
				LayoutOrder = 2;
				Size = UDim2.new(1, 0, 0, Font.Header1.RelativeSize * Font.BaseSize + 4);
				Text = arg1.props.titleText;
			});
		}
		local tbl = {
			fontKey = "Body";
			themeKey = "TextDefault";
			LayoutOrder = 3;
		}
		local var30
		if GetFFlagEnableVRFTUXExperience_upvr() and IsFTUXExperience_upvr(PlatformEnum_upvr.QuestVR) then
			var30 = UDim2.fromOffset(353, 4 * (Font.Body.RelativeSize * Font.BaseSize + 4))
		else
			var30 = UDim2.fromOffset(353, 2 * (Font.Body.RelativeSize * Font.BaseSize + 4))
		end
		tbl.Size = var30
		var30 = arg1.props.bodyText
		tbl.Text = var30
		var30 = true
		tbl.TextWrapped = var30
		tbl_3.BodyText = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl)
		local tbl_2 = {}
		var30 = 1
		tbl_2.BackgroundTransparency = var30
		var30 = UDim2.fromOffset(353, 84)
		tbl_2.Size = var30
		var30 = 4
		tbl_2.LayoutOrder = var30
		var30 = {}
		var30.ConfirmButton = Roact_upvr.createElement(Button_upvr, {
			buttonType = ButtonType_upvr.PrimarySystem;
			layoutOrder = 4;
			position = UDim2.fromOffset(0, 0);
			size = UDim2.fromOffset(353, 36);
			onActivated = arg1.props.onConfirm;
			text = arg1.props.confirmText;
			buttonRef = arg1.leaveButtonRef;
		})
		var30.CancelButton = Roact_upvr.createElement(Button_upvr, {
			buttonType = ButtonType_upvr.Secondary;
			layoutOrder = 5;
			position = UDim2.fromOffset(0, 48);
			size = UDim2.fromOffset(353, 36);
			onActivated = arg1.props.onCancel;
			text = arg1.props.cancelText;
		})
		tbl_3.ButtonGroup = Roact_upvr.createElement("Frame", tbl_2, var30)
		local module = {}
		var30 = {}
		var30.Size = UDim2.fromScale(1, 1)
		var30.BackgroundTransparency = 1
		var30.Selectable = false
		module.Content = Roact_upvr.createElement("Frame", var30, tbl_3)
		var30 = {}
		var30.isFocused = arg1.props.canGamepadCaptureFocus
		local function didFocus() -- Line 130
			--[[ Upvalues[2]:
				[1]: GuiService_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
			]]
			GuiService_upvr.SelectedCoreObject = arg1.leaveButtonRef.current
		end
		var30.didFocus = didFocus
		module.FocusHandler = Roact_upvr.createElement(FocusHandler_upvr, var30)
		var30 = {}
		var30.targetZone = 0
		var30.direction = Direction_upvr.Left
		module.ZonePortal = Roact_upvr.createElement(ZonePortal_upvr, var30)
		var30 = Roact_upvr
		var30 = FocusHandler_upvr
		module.KeyboardFocusHandler = var30.createElement(var30, {
			isFocused = arg1.props.canKeyboardCaptureFocus;
			didFocus = function() -- Line 141, Named "didFocus"
				--[[ Upvalues[2]:
					[1]: ContextActionService_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				ContextActionService_upvr:BindCoreAction("LeavePromptConfirm", function(arg1_3, arg2) -- Line 142
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					if arg2 == Enum.UserInputState.End then
						arg1.props.onConfirm()
						return Enum.ContextActionResult.Sink
					end
					return Enum.ContextActionResult.Pass
				end, false, Enum.KeyCode.Return)
			end;
			didBlur = function() -- Line 151, Named "didBlur"
				--[[ Upvalues[1]:
					[1]: ContextActionService_upvr (copied, readonly)
				]]
				ContextActionService_upvr:UnbindCoreAction("LeavePromptConfirm")
			end;
		}) or nil
		var30 = {}
		var30.Size = UDim2.fromScale(1, 1)
		var30.AutoButtonColor = false
		var30.BackgroundColor3 = arg1_2.Theme.BackgroundDefault.Color
		var30.BackgroundTransparency = arg1_2.Theme.BackgroundDefault.Transparency
		var30.Selectable = false
		return Roact_upvr.createElement("ImageButton", var30, module)
	end)
end
return any_extend_result1