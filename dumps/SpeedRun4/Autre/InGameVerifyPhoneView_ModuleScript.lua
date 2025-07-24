-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:32
-- Luau version 6, Types version 3
-- Time taken: 0.006579 seconds

local Parent = script:FindFirstAncestor("PhoneUpsell").Parent
local UIBlox = require(Parent.UIBlox)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local function getButtonStackProps_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 35, Named "getButtonStackProps"
	--[[ Upvalues[1]:
		[1]: ButtonType_upvr (readonly)
	]]
	local tbl = {}
	local tbl_8 = {
		buttonType = ButtonType_upvr.Secondary;
	}
	local tbl_4 = {}
	tbl_4.onActivated = arg2
	tbl_4.text = arg1
	tbl_4.isDisabled = arg3
	tbl_8.props = tbl_4
	tbl[1] = tbl_8
	if arg5 and arg4 and arg4 ~= "" then
		local tbl_10 = {
			buttonType = ButtonType_upvr.Secondary;
		}
		local tbl_9 = {}
		tbl_9.onActivated = arg5
		tbl_9.text = arg4
		tbl_9.isDisabled = false
		tbl_10.props = tbl_9
		table.insert(tbl, 1, tbl_10)
	end
	return {
		buttonHeight = 48;
		forcedFillDirection = Enum.FillDirection.Horizontal;
		buttons = tbl;
	}
end
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local TextField_upvr = UIBlox.App.Input.TextField
local GetFFlagAddMorePhoneUpsellEvents_upvr = require(Parent.SharedFlags).GetFFlagAddMorePhoneUpsellEvents
return function(arg1) -- Line 72, Named "InGameVerifyPhoneView"
	--[[ Upvalues[7]:
		[1]: useStyle_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: InteractiveAlert_upvr (readonly)
		[5]: getButtonStackProps_upvr (readonly)
		[6]: TextField_upvr (readonly)
		[7]: GetFFlagAddMorePhoneUpsellEvents_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var10_result1_upvr = useStyle_upvr()
	local tbl_5 = {
		titleKey = "Feature.VerificationUpsell.Heading.VerifyYourPhone";
		verificationCodeKey = "Feature.VerificationUpsell.Heading.VerificationCode";
		placeholderKey = "Feature.VerificationUpsell.Label.SixDigitCode";
		descriptionKey = "Feature.VerificationUpsell.Label.EnterCode";
		buttonKey = "Feature.VerificationUpsell.Action.ResendCode";
		buttonDisabledKey = "Feature.VerificationUpsell.Action.CodeResent";
		changePhoneNumberKey = "Feature.VerificationUpsell.Action.ChangePhoneNumber";
		editPhoneDescriptionKey = "Feature.VerificationUpsell.Action.EditPhoneNumber";
	}
	local var18
	if arg1.extraButtonKey and arg1.extraButtonKey ~= "" then
		tbl_5.extraButtonKey = arg1.extraButtonKey
	end
	local useLocalization_upvr_result1_upvr = useLocalization_upvr(tbl_5)
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(0)
	if any_useState_result1 == 0 then
		var18 = false
	else
		var18 = true
	end
	local function _(arg1_2) -- Line 97, Named "getBodyText"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1_2:gsub("{phoneNumber}", '+'..arg1.prefix..arg1.phoneNumber)
	end
	if var18 then
	else
	end
	if arg1.errorMessage then
		if arg1.errorMessage == "" then
		else
		end
	end
	local module_2 = {
		title = useLocalization_upvr_result1_upvr.titleKey;
		screenSize = arg1.screenSize;
		buttonStackInfo = getButtonStackProps_upvr(useLocalization_upvr_result1_upvr.buttonKey, function() -- Line 101, Named "handleResendButtonClick"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: any_useState_result2_upvr (readonly)
			]]
			arg1.onResendPhoneCode()
			any_useState_result2_upvr(10)
			local tick_result1_upvr = tick()
			local function countDown_upvr() -- Line 106, Named "countDown"
				--[[ Upvalues[3]:
					[1]: tick_result1_upvr (readonly)
					[2]: any_useState_result2_upvr (copied, readonly)
					[3]: countDown_upvr (readonly)
				]]
				local var23 = (10) - (tick() - tick_result1_upvr)
				if 0 < var23 then
					any_useState_result2_upvr(math.ceil(var23))
					task.delay(1, countDown_upvr)
				else
					any_useState_result2_upvr(0)
				end
			end
			local var24 = (10) - (tick() - tick_result1_upvr)
			if 0 < var24 then
				any_useState_result2_upvr(math.ceil(var24))
				task.delay(1, countDown_upvr)
			else
				any_useState_result2_upvr(0)
			end
		end, var18, useLocalization_upvr_result1_upvr.editPhoneDescriptionKey, arg1.onExtraButtonClick);
		onCloseClicked = arg1.onClose;
	}
	if not arg1.isKeyboardShowing or not UDim2.new(0.5, 0, 1, -arg1.keyboardHeight) then
	end
	module_2.position = nil
	if not arg1.isKeyboardShowing or not Vector2.new(0.5, 1) then
	end
	module_2.anchorPoint = nil
	local Tokens_upvr = var10_result1_upvr.Tokens
	local var27_upvr = true
	function module_2.middleContent() -- Line 139
		--[[ Upvalues[8]:
			[1]: React_upvr (copied, readonly)
			[2]: Tokens_upvr (readonly)
			[3]: TextField_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: var27_upvr (readonly)
			[6]: GetFFlagAddMorePhoneUpsellEvents_upvr (copied, readonly)
			[7]: var10_result1_upvr (readonly)
			[8]: useLocalization_upvr_result1_upvr (readonly)
		]]
		local module = {
			ListLayout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				Padding = UDim.new(0, Tokens_upvr.Global.Space_100);
			});
		}
		local tbl_11 = {
			ListLayout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				Padding = UDim.new(0, Tokens_upvr.Global.Space_100);
			});
		}
		local tbl_3 = {
			text = arg1.code;
			placeholder = "";
			required = true;
			onChange = function(arg1_3) -- Line 165, Named "onChange"
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				local tbl_2 = {}
				tbl_2.Text = arg1_3
				arg1.onCodeTextChange(tbl_2)
			end;
			LayoutOrder = 1;
			width = UDim.new(1, 0);
		}
		local var36 = var27_upvr
		tbl_3.error = var36
		if arg1.useOTPInputType then
			var36 = Enum.TextInputType.OneTimePassword
		else
			var36 = Enum.TextInputType.Number
		end
		tbl_3.textInputType = var36
		if GetFFlagAddMorePhoneUpsellEvents_upvr() then
			var36 = arg1.onCodeInputFocus
		else
			var36 = nil
		end
		tbl_3.onFocusGained = var36
		tbl_11.TextBox = React_upvr.createElement(TextField_upvr, tbl_3)
		local var37 = var27_upvr
		if var37 then
			var37 = React_upvr.createElement
			local tbl_7 = {}
			var36 = arg1.errorMessage
			tbl_7.Text = var36
			var36 = 0
			tbl_7.TextTransparency = var36
			var36 = Enum.TextXAlignment.Left
			tbl_7.TextXAlignment = var36
			var36 = Enum.TextYAlignment.Top
			tbl_7.TextYAlignment = var36
			var36 = true
			tbl_7.TextWrapped = var36
			var36 = 1
			tbl_7.BackgroundTransparency = var36
			var36 = Tokens_upvr.Global.Color.Red.Color3
			tbl_7.TextColor3 = var36
			var36 = var10_result1_upvr.Font.Body.Font
			tbl_7.Font = var36
			var36 = var10_result1_upvr.Font.BaseSize * var10_result1_upvr.Font.CaptionSmall.RelativeSize
			tbl_7.TextSize = var36
			var36 = UDim2.new(1, 0, 0, 0)
			tbl_7.Size = var36
			var36 = Enum.AutomaticSize.Y
			tbl_7.AutomaticSize = var36
			var36 = 2
			tbl_7.LayoutOrder = var36
			var37 = var37("TextLabel", tbl_7)
		end
		tbl_11.ErrorText = var37
		module[1] = React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			LayoutOrder = 0;
		}, tbl_11)
		local tbl_6 = {
			LayoutOrder = 3;
			BackgroundTransparency = 1;
			Text = useLocalization_upvr_result1_upvr.descriptionKey:gsub("{phoneNumber}", '+'..arg1.prefix..arg1.phoneNumber);
		}
		var36 = var10_result1_upvr
		var36 = var10_result1_upvr.Font.CaptionHeader
		tbl_6.TextSize = var36.Font.BaseSize * var36.RelativeSize
		var36 = var10_result1_upvr
		tbl_6.TextColor3 = var36.Theme.TextDefault.Color
		var36 = var10_result1_upvr
		tbl_6.TextTransparency = var36.Theme.TextDefault.Transparency
		var36 = var10_result1_upvr
		tbl_6.Font = var36.Font.Body.Font
		tbl_6.TextXAlignment = Enum.TextXAlignment.Left
		tbl_6.AutomaticSize = Enum.AutomaticSize.Y
		tbl_6.TextWrapped = true
		var36 = 0
		tbl_6.Size = UDim2.new(1, 0, var36, 0)
		module.BodyText = React_upvr.createElement("TextLabel", tbl_6)
		return React_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.new(1, 0, 0, 0);
		}, module)
	end
	return React_upvr.createElement(InteractiveAlert_upvr, module_2)
end