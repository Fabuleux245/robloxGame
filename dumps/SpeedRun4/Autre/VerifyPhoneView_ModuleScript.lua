-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:38
-- Luau version 6, Types version 3
-- Time taken: 0.005644 seconds

local PhoneUpsell = script:FindFirstAncestor("PhoneUpsell")
local Parent = PhoneUpsell.Parent
local UIBlox = require(Parent.UIBlox)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local GetFFlagDisableVerifyPhoneViewOnSuccess_upvr = require(PhoneUpsell.Flags.GetFFlagDisableVerifyPhoneViewOnSuccess)
local getPartialPageModalMiddleContentWidth_upvr = UIBlox.App.Dialog.Modal.getPartialPageModalMiddleContentWidth
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local TextInputBoxWithBorder_upvr = require(Parent.AuthCommon).Components.TextInputBoxWithBorder
local LinkButton_upvr = UIBlox.App.Button.LinkButton
return function(arg1) -- Line 42, Named "VerifyPhoneView"
	--[[ Upvalues[9]:
		[1]: useStyle_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
		[5]: GetFFlagDisableVerifyPhoneViewOnSuccess_upvr (readonly)
		[6]: getPartialPageModalMiddleContentWidth_upvr (readonly)
		[7]: PartialPageModal_upvr (readonly)
		[8]: TextInputBoxWithBorder_upvr (readonly)
		[9]: LinkButton_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useStyle_upvr_result1 = useStyle_upvr()
	local tbl_6 = {
		titleKey = "Feature.VerificationUpsell.Heading.VerifyYourPhone";
		verificationCodeKey = "Feature.VerificationUpsell.Heading.VerificationCode";
		placeholderKey = "Feature.VerificationUpsell.Label.SixDigitCode";
		descriptionKey = "Feature.VerificationUpsell.Label.EnterCode";
		buttonKey = "Feature.VerificationUpsell.Action.ResendCode";
		buttonDisabledKey = "Feature.VerificationUpsell.Action.CodeResent";
		changePhoneNumberKey = "Feature.VerificationUpsell.Action.ChangePhoneNumber";
	}
	local var15
	if arg1.extraButtonKey and arg1.extraButtonKey ~= "" then
		tbl_6.extraButtonKey = arg1.extraButtonKey
	end
	local var5_result1 = useLocalization_upvr(tbl_6)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useState_result1_upvr_2, any_useState_result2_upvr_2 = React_upvr.useState(0)
	local function _(arg1_2, arg2, arg3, arg4, arg5, arg6) -- Line 62, Named "getButtonStackProps"
		--[[ Upvalues[7]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: any_useState_result2_upvr_2 (readonly)
			[3]: any_useState_result1_upvr (readonly)
			[4]: any_useState_result1_upvr_2 (readonly)
			[5]: ButtonType_upvr (copied, readonly)
			[6]: GetFFlagDisableVerifyPhoneViewOnSuccess_upvr (copied, readonly)
			[7]: arg1 (readonly)
		]]
		local function _() -- Line 91, Named "getButtonText"
			--[[ Upvalues[4]:
				[1]: any_useState_result1_upvr (copied, readonly)
				[2]: arg2 (readonly)
				[3]: any_useState_result1_upvr_2 (copied, readonly)
				[4]: arg1_2 (readonly)
			]]
			if any_useState_result1_upvr then
				return arg2.." ("..any_useState_result1_upvr_2..')'
			end
			return arg1_2
		end
		local tbl_2 = {}
		local tbl_10 = {}
		local var35 = ButtonType_upvr
		tbl_10.buttonType = var35.PrimarySystem
		local tbl_9 = {
			onActivated = function() -- Line 70, Named "handleButtonClick"
				--[[ Upvalues[4]:
					[1]: arg4 (readonly)
					[2]: any_useState_result2_upvr (copied, readonly)
					[3]: any_useState_result2_upvr_2 (copied, readonly)
					[4]: arg3 (readonly)
				]]
				arg4()
				any_useState_result2_upvr(true)
				any_useState_result2_upvr_2(arg3)
				local tick_result1_upvr = tick()
				local function countDown_upvr() -- Line 76, Named "countDown"
					--[[ Upvalues[5]:
						[1]: tick_result1_upvr (readonly)
						[2]: arg3 (copied, readonly)
						[3]: any_useState_result2_upvr_2 (copied, readonly)
						[4]: countDown_upvr (readonly)
						[5]: any_useState_result2_upvr (copied, readonly)
					]]
					local var32 = (arg3) - (tick() - tick_result1_upvr)
					if 0 < var32 then
						any_useState_result2_upvr_2(math.round(var32))
						task.delay(1, countDown_upvr)
					else
						any_useState_result2_upvr_2(0)
						any_useState_result2_upvr(false)
					end
				end
				countDown_upvr()
			end;
		}
		if any_useState_result1_upvr then
			var35 = arg2.." ("..any_useState_result1_upvr_2..')'
		else
			var35 = arg1_2
		end
		tbl_9.text = var35
		var35 = any_useState_result1_upvr
		if not var35 then
			var35 = GetFFlagDisableVerifyPhoneViewOnSuccess_upvr()
			if var35 then
				var35 = arg1.isDisabled
			end
		end
		tbl_9.isDisabled = var35
		tbl_10.props = tbl_9
		tbl_2[1] = tbl_10
		if arg6 and arg5 and arg5 ~= "" then
			var35 = 1
			local tbl_7 = {
				buttonType = ButtonType_upvr.Secondary;
			}
			local tbl_3 = {}
			tbl_3.onActivated = arg6
			tbl_3.text = arg5
			local var8_result1_2 = GetFFlagDisableVerifyPhoneViewOnSuccess_upvr()
			if var8_result1_2 then
				var8_result1_2 = arg1.isDisabled
			end
			tbl_3.isDisabled = var8_result1_2
			tbl_7.props = tbl_3
			table.insert(tbl_2, var35, tbl_7)
		end
		return {
			buttonHeight = 48;
			forcedFillDirection = Enum.FillDirection.Vertical;
			buttons = tbl_2;
		}
	end
	local function _(arg1_3) -- Line 130, Named "getBodyText"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1_3:gsub("{phoneNumber}", '+'..arg1.prefix..arg1.phoneNumber)
	end
	local module = {}
	var15 = var5_result1.titleKey
	module.title = var15
	var15 = arg1.screenSize
	module.screenSize = var15
	var15 = _(var5_result1.buttonKey, var5_result1.buttonDisabledKey, 10, arg1.onResendPhoneCode, var5_result1.extraButtonKey, arg1.onExtraButtonClick)
	module.buttonStackProps = var15
	var15 = arg1.onClose
	module.onCloseClicked = var15
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var15 = UDim2.new(0.5, 0, 1, -arg1.keyboardHeight)
		return var15
	end
	if not arg1.isKeyboardShowing or not INLINED() then
		var15 = nil
	end
	module.position = var15
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var15 = Vector2.new(0.5, 1)
		return var15
	end
	if not arg1.isKeyboardShowing or not INLINED_2() then
		var15 = nil
	end
	module.anchorPoint = var15
	var15 = {}
	local tbl_8 = {
		ContentPadding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, 24);
			PaddingBottom = UDim.new(0, 24);
		});
		ListLayout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			Padding = UDim.new(0, 12);
		});
		BodyText = React_upvr.createElement("TextLabel", {
			LayoutOrder = 1;
			BackgroundTransparency = 1;
			Text = var5_result1.descriptionKey:gsub("{phoneNumber}", '+'..arg1.prefix..arg1.phoneNumber);
			TextSize = useStyle_upvr_result1.Font.BaseSize;
			TextColor3 = useStyle_upvr_result1.Theme.TextDefault.Color;
			TextTransparency = useStyle_upvr_result1.Theme.TextDefault.Transparency;
			Font = useStyle_upvr_result1.Font.Body.Font;
			TextXAlignment = Enum.TextXAlignment.Left;
			AutomaticSize = Enum.AutomaticSize.Y;
			TextWrapped = true;
			Size = UDim2.new(0, getPartialPageModalMiddleContentWidth_upvr(arg1.screenSize.X), 0, 0);
		});
	}
	local tbl = {
		text = arg1.code;
	}
	if not arg1.useOTPInputType or not Enum.TextInputType.OneTimePassword then
	end
	tbl.textInputType = Enum.TextInputType.Number
	tbl.textInputHeight = 36
	tbl.layoutOrder = 2
	tbl.placeholderText = var5_result1.placeholderKey
	tbl.errorText = arg1.errorMessage
	tbl.onChangeTextCallback = arg1.onCodeTextChange
	tbl.Size = UDim2.new(1, 0, 0, 0)
	tbl.onFocused = arg1.onCodeInputFocus
	tbl_8.TextBox = React_upvr.createElement(TextInputBoxWithBorder_upvr, tbl)
	tbl_8.ChangePhoneButton = React_upvr.createElement(LinkButton_upvr, {
		text = var5_result1.changePhoneNumberKey;
		onActivated = arg1.returnToAddPhone;
		layoutOrder = 3;
		fontStyle = "CaptionBody";
		minPaddingX = 0;
		minPaddingY = 0;
	})
	var15.Middle = React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.new(1, 0, 0, 0);
	}, tbl_8)
	return React_upvr.createElement(PartialPageModal_upvr, module, var15)
end