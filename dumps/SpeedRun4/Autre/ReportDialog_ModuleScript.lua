-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:55
-- Luau version 6, Types version 3
-- Time taken: 0.010959 seconds

local ContextActionService_upvr = game:GetService("ContextActionService")
local GuiService_upvr = game:GetService("GuiService")
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent.Parent
local GetFFlagIGMGamepadSelectionHistory_upvr = require(Parent.Flags.GetFFlagIGMGamepadSelectionHistory)
local Assets_upvr = require(Parent.Resources.Assets)
local ThemedTextLabel_upvr = require(Parent.Components.ThemedTextLabel)
local Constants_upvr = require(Parent.Resources.Constants)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local any_extend_result1 = Roact_upvr.PureComponent:extend("ReportDialog")
local tbl_11_upvr = {"Swearing", "Inappropriate Username", "Bullying", "Scamming", "Dating", "Cheating/Exploiting", "Personal Question", "Offsite Links"}
local tbl_13_upvr = {"CoreScripts.InGameMenu.Report.AbuseSwearing", "CoreScripts.InGameMenu.Report.AbuseUsername", "CoreScripts.InGameMenu.Report.AbuseBullying", "CoreScripts.InGameMenu.Report.AbuseScamming", "CoreScripts.InGameMenu.Report.AbuseDating", "CoreScripts.InGameMenu.Report.AbuseExploiting", "CoreScripts.InGameMenu.Report.AbusePersonalQuestion", "CoreScripts.InGameMenu.Report.AbuseOffsiteLink"}
any_extend_result1.validateProps = t.strictInterface({
	isOpen = t.boolean;
	userId = t.optional(t.integer);
	userName = t.optional(t.string);
	placeName = t.string;
	dispatchCloseReportDialog = t.callback;
	dispatchSendReport = t.callback;
	canCaptureFocus = t.optional(t.boolean);
	isGamepadLastInput = t.optional(t.boolean);
})
function any_extend_result1.init(arg1) -- Line 81
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.state = {
		abuseDescription = "";
		typeOfAbuseIndex = 0;
	}
	arg1.selectionGroupRef = Roact_upvr.createRef()
	arg1.reportTextEntryRef = Roact_upvr.createRef()
	arg1.reportDropDownRef = Roact_upvr.createRef()
end
function any_extend_result1.renderReportTitle(arg1, arg2, arg3, arg4) -- Line 92
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: ThemedTextLabel_upvr (readonly)
	]]
	local tbl_4 = {
		fontKey = "Header1";
		themeKey = "TextEmphasis";
		LayoutOrder = 1;
		Size = UDim2.new(1, 0, 0, 48);
	}
	tbl_4.Text = arg4
	arg3.Title = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl_4)
	arg3.Divider = Roact_upvr.createElement("Frame", {
		BackgroundColor3 = arg2.Theme.Divider.Color;
		BackgroundTransparency = arg2.Theme.Divider.Transparency;
		BorderSizePixel = 0;
		LayoutOrder = 2;
		Size = UDim2.new(0.8, 0, 0, 1);
	})
end
local TextEntryField_upvr = require(script.Parent.TextEntryField)
function any_extend_result1.renderTextEntryField(arg1, arg2, arg3, arg4) -- Line 111
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: TextEntryField_upvr (readonly)
	]]
	local tbl_7 = {
		enabled = arg1.props.isOpen;
		text = arg1.state.abuseDescription;
		textChanged = function(arg1_2) -- Line 115, Named "textChanged"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local tbl_5 = {}
			tbl_5.abuseDescription = arg1_2
			arg1:setState(tbl_5)
		end;
		maxTextLength = 160;
		autoFocusOnEnabled = not arg1.props.isGamepadLastInput;
		PlaceholderText = arg2.textboxPlaceHolder;
		LayoutOrder = 5;
	}
	tbl_7.Size = arg4
	tbl_7[Roact_upvr.Ref] = arg1.reportTextEntryRef
	arg3.ReportDescription = Roact_upvr.createElement(TextEntryField_upvr, tbl_7)
end
local Button_upvr = UIBlox.App.Button.Button
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
function any_extend_result1.renderButtons(arg1, arg2, arg3, arg4) -- Line 130
	--[[ Upvalues[4]:
		[1]: tbl_11_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: Button_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
	]]
	local utf8_len_result1 = utf8.len(utf8.nfcnormalize(arg1.state.abuseDescription))
	local var26 = false
	if 0 <= utf8_len_result1 then
		if utf8_len_result1 > 160 then
			var26 = false
		else
			var26 = true
		end
	end
	local var27 = true
	if 0 >= arg1.state.typeOfAbuseIndex then
		if arg1.props.userId ~= nil then
			var27 = false
		else
			var27 = true
		end
	end
	arg4.ButtonContainer = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = 6;
		Size = UDim2.new(1, 0, 0, 60);
	}, {
		Layout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Right;
			Padding = UDim.new(0, 12);
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Bottom;
		});
		CancelButton = Roact_upvr.createElement(Button_upvr, {
			buttonType = ButtonType_upvr.Secondary;
			layoutOrder = 1;
			size = UDim2.fromOffset(144, 36);
			text = arg3.cancel;
			onActivated = arg1.props.dispatchCloseReportDialog;
		});
		ConfirmButton = Roact_upvr.createElement(Button_upvr, {
			buttonType = ButtonType_upvr.PrimarySystem;
			layoutOrder = 2;
			size = UDim2.fromOffset(144, 36);
			isDisabled = not (var26 and var27);
			text = arg3.report;
			onActivated = function() -- Line 135
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: tbl_11_upvr (copied, readonly)
				]]
				local var29 = "Inappropriate Content"
				if arg1.props.userId ~= nil then
					var29 = tbl_11_upvr[arg1.state.typeOfAbuseIndex]
				end
				arg1.props.dispatchSendReport(var29, arg1.state.abuseDescription, arg1.props.userId)
				arg1.props.dispatchCloseReportDialog()
			end;
		});
	})
end
local Cryo_upvr = InGameMenuDependencies.Cryo
local DropDownSelection_upvr = require(Parent.Components.DropDownSelection)
function any_extend_result1.renderReportPlayer(arg1, arg2, arg3, arg4) -- Line 174
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: ImageSetLabel_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: Assets_upvr (readonly)
		[5]: ThemedTextLabel_upvr (readonly)
		[6]: DropDownSelection_upvr (readonly)
		[7]: tbl_13_upvr (readonly)
	]]
	arg1:renderReportTitle(arg2, arg4, arg3.reportPlayerTitle)
	local tbl_12 = {
		AnchorPoint = Vector2.new(0, 0.5);
		Position = UDim2.new(0.5, -140, 0.5, 0);
		Size = UDim2.new(0, 44, 0, 44);
	}
	local userId = arg1.props.userId
	local tbl_10 = {
		PlayerCutout = Roact_upvr.createElement(ImageSetLabel_upvr, Cryo_upvr.Dictionary.join(tbl_12, {
			BackgroundTransparency = 1;
			Image = Assets_upvr.Images.CircleCutout;
			ImageColor3 = arg2.Theme.BackgroundUIDefault.Color;
			ZIndex = 2;
		}));
	}
	local tbl_9 = {
		BackgroundTransparency = 1;
	}
	local var43
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var43 = "rbxthumb://type=AvatarHeadShot&id="..userId.."&w=48&h=48"
		return var43
	end
	if 0 >= userId or not INLINED() then
		var43 = ""
	end
	tbl_9.Image = var43
	tbl_10.PlayerIcon = Roact_upvr.createElement(ImageSetLabel_upvr, Cryo_upvr.Dictionary.join(tbl_12, tbl_9))
	local tbl_14 = {}
	var43 = arg2.Theme.UIDefault.Color
	tbl_14.BackgroundColor3 = var43
	var43 = 0
	tbl_14.BackgroundTransparency = var43
	var43 = 0
	tbl_14.BorderSizePixel = var43
	var43 = 0
	tbl_14.ZIndex = var43
	tbl_10.PlayerBackground = Roact_upvr.createElement("Frame", Cryo_upvr.Dictionary.join(tbl_12, tbl_14))
	local tbl_15 = {
		fontKey = "Body";
		themeKey = "TextEmphasis";
	}
	var43 = 0.5
	tbl_15.AnchorPoint = Vector2.new(0, var43)
	var43 = -76
	tbl_15.Position = UDim2.new(0.5, var43, 0.5, 0)
	var43 = 76
	tbl_15.Size = UDim2.new(0.5, var43, 0, 44)
	tbl_15.Text = arg1.props.userName
	tbl_15.TextXAlignment = Enum.TextXAlignment.Left
	tbl_10.PlayerName = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl_15)
	arg4.ReportPlayerTextContainer = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = 3;
		Size = UDim2.new(1, 0, 0, 68);
	}, tbl_10)
	local tbl = {}
	local tbl_16 = {}
	var43 = 0
	tbl_16.Size = UDim2.new(1, var43, 0, 44)
	tbl_16.placeHolderText = arg3.selectTypeOfAbuse
	tbl_16.selections = tbl_13_upvr
	tbl_16.localize = true
	tbl_16.selectedIndex = arg1.state.typeOfAbuseIndex
	tbl_16.enabled = true
	tbl_16.selectionParentName = "abuseTypeDropDown"
	tbl_16.canOpen = arg1.props.canCaptureFocus
	tbl_16.canCaptureFocus = arg1.props.isGamepadLastInput
	function tbl_16.selectionChanged(arg1_3) -- Line 244
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_3 = {}
		tbl_3.typeOfAbuseIndex = arg1_3
		arg1:setState(tbl_3)
	end
	tbl_16.ButtonRef = arg1.reportDropDownRef
	tbl.DropDown = Roact_upvr.createElement(DropDownSelection_upvr, tbl_16)
	arg4.AbuseTypeDropDown = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = 4;
		Size = UDim2.new(1, 0, 0, 68);
	}, tbl)
	arg1:renderTextEntryField(arg3, arg4, UDim2.new(1, 0, 0, 180))
	arg1:renderButtons(arg2, arg3, arg4)
end
function any_extend_result1.renderReportGame(arg1, arg2, arg3, arg4) -- Line 257
	--[[ Upvalues[4]:
		[1]: Assets_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: ThemedTextLabel_upvr (readonly)
	]]
	arg1:renderReportTitle(arg2, arg4, "Report "..arg1.props.placeName)
	local PlaceholderGameIcon = Assets_upvr.Images.PlaceholderGameIcon
	if 0 < game.GameId then
		PlaceholderGameIcon = "rbxthumb://type=GameIcon&id="..game.GameId.."&w=150&h=150"
	end
	arg4.ReportGameTextContainer = Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		LayoutOrder = 3;
		Size = UDim2.new(1, 0, 0, 126);
	}, {
		GameIcon = Roact_upvr.createElement(ImageSetLabel_upvr, {
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.new(0, 17, 0.5, 0);
			Size = UDim2.new(0, 64, 0, 64);
			BackgroundTransparency = 1;
			Image = PlaceholderGameIcon;
		});
		GameName = Roact_upvr.createElement(ThemedTextLabel_upvr, {
			fontKey = "Body";
			themeKey = "TextEmphasis";
			AnchorPoint = Vector2.new(0, 0.5);
			Position = UDim2.new(0, 104, 0.5, 0);
			Size = UDim2.new(1, -104, 0, 44);
			Text = arg3.flagingGame;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextWrapped = true;
		});
	})
	arg1:renderTextEntryField(arg3, arg4, UDim2.new(1, 0, 0, 191))
	arg1:renderButtons(arg2, arg3, arg4)
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local withLocalization_upvr = require(Parent.Localization.withLocalization)
local FocusHandler_upvr = require(script.Parent.Parent.Connection.FocusHandler)
function any_extend_result1.render(arg1) -- Line 295
	--[[ Upvalues[8]:
		[1]: withStyle_upvr (readonly)
		[2]: withLocalization_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
		[5]: Assets_upvr (readonly)
		[6]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[7]: FocusHandler_upvr (readonly)
		[8]: GuiService_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_4) -- Line 296
		--[[ Upvalues[8]:
			[1]: withLocalization_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: ImageSetLabel_upvr (copied, readonly)
			[5]: Assets_upvr (copied, readonly)
			[6]: GetFFlagIGMGamepadSelectionHistory_upvr (copied, readonly)
			[7]: FocusHandler_upvr (copied, readonly)
			[8]: GuiService_upvr (copied, readonly)
		]]
		return withLocalization_upvr({
			flagingGame = {
				RBX_NAME = arg1.props.placeName;
				"CoreScripts.InGameMenu.Report.FlagingGame"
			};
			reportGameTitle = {
				RBX_NAME = arg1.props.placeName;
				"CoreScripts.InGameMenu.Report.ReportGameTitle"
			};
			reportPlayerTitle = "CoreScripts.InGameMenu.Report.ReportPlayerTitle";
			selectTypeOfAbuse = "CoreScripts.InGameMenu.Report.SelectAbuseType";
			cancel = "CoreScripts.InGameMenu.Cancel";
			report = "CoreScripts.InGameMenu.Report.SendReport";
			textboxPlaceHolder = "CoreScripts.InGameMenu.Report.AdditionalDetails";
		})(function(arg1_5) -- Line 308
			--[[ Upvalues[8]:
				[1]: Roact_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: arg1_4 (readonly)
				[4]: ImageSetLabel_upvr (copied, readonly)
				[5]: Assets_upvr (copied, readonly)
				[6]: GetFFlagIGMGamepadSelectionHistory_upvr (copied, readonly)
				[7]: FocusHandler_upvr (copied, readonly)
				[8]: GuiService_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
			local tbl_2 = {
				Padding = Roact_upvr.createElement("UIPadding", {
					PaddingBottom = UDim.new(0, 24);
					PaddingLeft = UDim.new(0, 24);
					PaddingRight = UDim.new(0, 24);
				});
				Layout = Roact_upvr.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					SortOrder = Enum.SortOrder.LayoutOrder;
				});
			}
			if arg1.props.userId == nil then
				arg1:renderReportGame(arg1_4, arg1_5, tbl_2)
			else
				arg1:renderReportPlayer(arg1_4, arg1_5, tbl_2)
			end
			local module_2 = {
				Overlay = Roact_upvr.createElement("TextButton", {
					AutoButtonColor = false;
					BackgroundColor3 = arg1_4.Theme.Overlay.Color;
					BackgroundTransparency = arg1_4.Theme.Overlay.Transparency;
					BorderSizePixel = 0;
					Size = UDim2.new(1, 0, 1, 0);
					Text = "";
					Selectable = false;
				});
				DialogMainFrame = Roact_upvr.createElement(ImageSetLabel_upvr, {
					AnchorPoint = Vector2.new(0.5, 0.5);
					BackgroundTransparency = 1;
					Image = Assets_upvr.Images.RoundedRect.Image;
					ImageColor3 = arg1_4.Theme.BackgroundUIDefault.Color;
					ImageTransparency = arg1_4.Theme.BackgroundUIDefault.Transparency;
					Position = UDim2.new(0.5, 0, 0.5, 0);
					ScaleType = Assets_upvr.Images.RoundedRect.ScaleType;
					Size = UDim2.new(0, 600, 0, 450);
					SliceCenter = Assets_upvr.Images.RoundedRect.SliceCenter;
				}, tbl_2);
			}
			-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [241] 164. Error Block 14 start (CF ANALYSIS FAILED)
			local tbl_8 = {}
			local canCaptureFocus = arg1.props.canCaptureFocus
			if canCaptureFocus then
				canCaptureFocus = arg1.props.isGamepadLastInput
			end
			tbl_8.isFocused = canCaptureFocus
			tbl_8.shouldForgetPreviousSelection = not arg1.props.isOpen
			function tbl_8.didFocus(arg1_6) -- Line 358
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: GuiService_upvr (copied, readonly)
				]]
				local var72
				if arg1.props.userId then
					var72 = arg1.reportDropDownRef:getValue()
				else
					var72 = arg1.reportTextEntryRef:getValue()
				end
				GuiService_upvr.SelectedCoreObject = arg1_6 or var72
			end
			local any_createElement_result1 = Roact_upvr.createElement(FocusHandler_upvr, tbl_8)
			if not any_createElement_result1 then
				-- KONSTANTERROR: [274] 187. Error Block 9 start (CF ANALYSIS FAILED)
				any_createElement_result1 = nil
				-- KONSTANTERROR: [274] 187. Error Block 9 end (CF ANALYSIS FAILED)
			end
			module_2.FocusHandler = any_createElement_result1
			do
				return Roact_upvr.createElement("Frame", {
					Size = UDim2.new(1, 0, 1, 0);
					BackgroundTransparency = 1;
					ZIndex = 8;
					Visible = arg1.props.isOpen;
					[Roact_upvr.Ref] = arg1.selectionGroupRef;
				}, module_2)
			end
			-- KONSTANTERROR: [241] 164. Error Block 14 end (CF ANALYSIS FAILED)
		end)
	end)
end
function any_extend_result1.bindActions(arg1) -- Line 373
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:BindCoreAction("InGameMenuReportModalClose", function(arg1_7, arg2, arg3) -- Line 374, Named "closeReportFunc"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 == Enum.UserInputState.Begin then
			arg1.props.dispatchCloseReportDialog()
		end
	end, false, Enum.KeyCode.Escape)
end
function any_extend_result1.unbindActions(arg1) -- Line 383
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("InGameMenuReportModalClose")
end
function any_extend_result1.didMount(arg1) -- Line 387
	--[[ Upvalues[1]:
		[1]: GuiService_upvr (readonly)
	]]
	GuiService_upvr:RemoveSelectionGroup("ReportDialogGroup")
	GuiService_upvr:AddSelectionParent("ReportDialogGroup", arg1.selectionGroupRef:getValue())
	if arg1.props.isOpen then
		arg1:bindActions()
	end
end
function any_extend_result1.didUpdate(arg1, arg2) -- Line 396
	--[[ Upvalues[2]:
		[1]: GetFFlagIGMGamepadSelectionHistory_upvr (readonly)
		[2]: GuiService_upvr (readonly)
	]]
	if arg2.isOpen and not arg1.props.isOpen then
		arg1:setState({
			typeOfAbuseIndex = 0;
			abuseDescription = "";
		})
	end
	if not GetFFlagIGMGamepadSelectionHistory_upvr() and (not arg2.canCaptureFocus or not arg2.isGamepadLastInput) or arg1.props.canCaptureFocus and arg1.props.isGamepadLastInput then
		local var75
		if arg1.props.userId then
			var75 = arg1.reportDropDownRef:getValue()
		else
			var75 = arg1.reportTextEntryRef:getValue()
		end
		GuiService_upvr.SelectedCoreObject = var75
	end
	if arg1.props.isOpen then
		arg1:bindActions()
	else
		arg1:unbindActions()
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 428
	arg1:unbindActions()
end
local CloseReportDialog_upvr = require(Parent.Actions.CloseReportDialog)
local SendReport_upvr = require(Parent.Thunks.SendReport)
local SendAnalytics_upvr = require(Parent.Utility.SendAnalytics)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(function(arg1, arg2) -- Line 432
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local module = {
		isOpen = arg1.report.dialogOpen;
		userId = arg1.report.userId;
		userName = arg1.report.userName;
		placeName = arg1.gameInfo.name;
	}
	local var78
	if var78 then
		var78 = not arg1.respawn.dialogOpen
	end
	module.canCaptureFocus = var78
	if arg1.displayOptions.inputType ~= Constants_upvr.InputType.Gamepad then
		var78 = false
	else
		var78 = true
	end
	module.isGamepadLastInput = var78
	return module
end, function(arg1) -- Line 441
	--[[ Upvalues[4]:
		[1]: CloseReportDialog_upvr (readonly)
		[2]: SendReport_upvr (readonly)
		[3]: SendAnalytics_upvr (readonly)
		[4]: Constants_upvr (readonly)
	]]
	return {
		dispatchCloseReportDialog = function() -- Line 443, Named "dispatchCloseReportDialog"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CloseReportDialog_upvr (copied, readonly)
			]]
			arg1(CloseReportDialog_upvr())
		end;
		dispatchSendReport = function(arg1_8, arg2, arg3) -- Line 446, Named "dispatchSendReport"
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: SendReport_upvr (copied, readonly)
				[3]: SendAnalytics_upvr (copied, readonly)
				[4]: Constants_upvr (copied, readonly)
			]]
			arg1(SendReport_upvr(arg1_8, arg2, arg3))
			local tbl_6 = {}
			if arg1_8 == "Inappropriate Content" then
				table.insert(tbl_6, "report_type=game")
				table.insert(tbl_6, "reported_entity_id="..tostring(game.GameId))
			else
				table.insert(tbl_6, "report_type=user")
				table.insert(tbl_6, "reported_entity_id="..tostring(arg3))
			end
			table.insert(tbl_6, "report_source=ingame")
			SendAnalytics_upvr(Constants_upvr.AnalyticsReportSubmittedName, table.concat(tbl_6, '&'), {})
		end;
	}
end)(any_extend_result1)