-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:17
-- Luau version 6, Types version 3
-- Time taken: 0.002098 seconds

local AmpUpsell = script:FindFirstAncestor("AmpUpsell")
local Parent = AmpUpsell.Parent
local UIBlox = require(Parent.UIBlox)
local function selectScreenSize_upvr(arg1) -- Line 27, Named "selectScreenSize"
	return arg1.ScreenSize
end
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getRetryBehaviorFromErrorCodeAndRetryNum_upvr = require(AmpUpsell.Common.VPCErrorUtils).getRetryBehaviorFromErrorCodeAndRetryNum
local getStringsFromErrorCodeAndRetryNum_upvr = require(AmpUpsell.Common.VPCErrorUtils).getStringsFromErrorCodeAndRetryNum
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Cryo_upvr = require(Parent.Cryo)
local vpcErrorScreenStrings_upvr = require(AmpUpsell.Common.LocalizationStrings).vpcErrorScreenStrings
local VPCRetryBehaviorEnum_upvr = require(AmpUpsell.Common.Enums).VPCRetryBehaviorEnum
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local React_upvr = require(Parent.React)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
return function(arg1) -- Line 31, Named "VPCErrorScreen"
	--[[ Upvalues[11]:
		[1]: useSelector_upvr (readonly)
		[2]: selectScreenSize_upvr (readonly)
		[3]: getRetryBehaviorFromErrorCodeAndRetryNum_upvr (readonly)
		[4]: getStringsFromErrorCodeAndRetryNum_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: Cryo_upvr (readonly)
		[7]: vpcErrorScreenStrings_upvr (readonly)
		[8]: VPCRetryBehaviorEnum_upvr (readonly)
		[9]: ButtonType_upvr (readonly)
		[10]: React_upvr (readonly)
		[11]: InteractiveAlert_upvr (readonly)
	]]
	local errorCode = arg1.errorCode
	local retryNum = arg1.retryNum
	local var5_result1 = getRetryBehaviorFromErrorCodeAndRetryNum_upvr(errorCode, retryNum)
	local getStringsFromErrorCodeAndRetryNum_upvr_result1 = getStringsFromErrorCodeAndRetryNum_upvr(errorCode, retryNum)
	local var7_result1 = useLocalization_upvr(Cryo_upvr.Dictionary.join(vpcErrorScreenStrings_upvr, {
		titleText = getStringsFromErrorCodeAndRetryNum_upvr_result1.title;
		bodyText = getStringsFromErrorCodeAndRetryNum_upvr_result1.body;
	}))
	local tbl = {}
	if var5_result1 == VPCRetryBehaviorEnum_upvr.RetryVPC or var5_result1 == VPCRetryBehaviorEnum_upvr.RetryAMP then
		local var21
		if var5_result1 == VPCRetryBehaviorEnum_upvr.RetryVPC then
			var21 = arg1.onRetryVPC
		else
			var21 = arg1.onRetryAmp
		end
		tbl = {{
			buttonType = ButtonType_upvr.Secondary;
			props = {
				onActivated = arg1.onCancel;
				text = var7_result1.cancelButton;
			};
		}, {
			buttonType = ButtonType_upvr.PrimarySystem;
			props = {
				onActivated = var21;
				text = var7_result1.retryButton;
			};
		}}
	elseif var5_result1 == VPCRetryBehaviorEnum_upvr.Success then
		tbl = {{
			buttonType = ButtonType_upvr.PrimarySystem;
			props = {
				onActivated = arg1.onSuccess;
				text = var7_result1.okButton;
			};
		}}
	else
		local tbl_2 = {}
		local tbl_3 = {
			buttonType = ButtonType_upvr.PrimarySystem;
		}
		local tbl_4 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_4.onActivated = arg1.onCancel
		tbl_4.text = var7_result1.okButton
		tbl_3.props = tbl_4
		tbl_2[1] = tbl_3
		tbl = tbl_2
	end
	return React_upvr.createElement(InteractiveAlert_upvr, {
		anchorPoint = Vector2.new(0.5, 0.5);
		position = UDim2.new(0.5, 0, 0.5, 0);
		screenSize = useSelector_upvr(selectScreenSize_upvr);
		title = var7_result1.titleText;
		bodyText = var7_result1.bodyText;
		buttonStackInfo = {
			buttons = tbl;
		};
	})
end