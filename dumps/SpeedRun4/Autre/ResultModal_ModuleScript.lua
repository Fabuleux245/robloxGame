-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:19
-- Luau version 6, Types version 3
-- Time taken: 0.002788 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local InputType_upvr = require(CorePackages.Workspace.Packages.InputType)
local getInputGroup_upvr = require(CorePackages.Workspace.Packages.InputType).getInputGroup
local any_extend_result1 = Roact_upvr.PureComponent:extend("ResultModal")
any_extend_result1.validateProps = t.strictInterface({
	screenSize = t.Vector2;
	resultModalType = t.enum(Enum.PromptPublishAssetResult);
	closeResultModal = t.callback;
})
local function _(arg1) -- Line 38, Named "isGamepadInput"
	--[[ Upvalues[2]:
		[1]: getInputGroup_upvr (readonly)
		[2]: InputType_upvr (readonly)
	]]
	local var10 = arg1
	if getInputGroup_upvr(var10) ~= InputType_upvr.InputTypeConstants.Gamepad then
		var10 = false
	else
		var10 = true
	end
	return var10
end
local UserInputService_upvr = game:GetService("UserInputService")
function any_extend_result1.init(arg1) -- Line 43
	--[[ Upvalues[3]:
		[1]: UserInputService_upvr (readonly)
		[2]: getInputGroup_upvr (readonly)
		[3]: InputType_upvr (readonly)
	]]
	local tbl = {}
	local var13
	if getInputGroup_upvr(UserInputService_upvr:GetLastInputType()) ~= InputType_upvr.InputTypeConstants.Gamepad then
		var13 = false
	else
		var13 = true
	end
	tbl.isGamepad = var13
	arg1:setState(tbl)
end
function any_extend_result1.getLocalizedStringForResultPrompt(arg1, arg2) -- Line 49
	--[[ Upvalues[1]:
		[1]: RobloxTranslator_upvr (readonly)
	]]
	if arg2 == Enum.PromptPublishAssetResult.Success then
		return RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.PublishSuccessMessage")
	end
	if arg2 == Enum.PromptPublishAssetResult.UploadFailed then
		return RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.PublishFailed")
	end
	if arg2 == Enum.PromptPublishAssetResult.NoUserInput then
		return RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.NoUserInput")
	end
	return RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.UndefinedError", {
		RESULT_TYPE = tostring(arg2);
	})
end
function any_extend_result1.getLocalizedTitleForResultPrompt(arg1, arg2) -- Line 64
	--[[ Upvalues[1]:
		[1]: RobloxTranslator_upvr (readonly)
	]]
	if arg2 == Enum.PromptPublishAssetResult.Success then
		return RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.PublishSuccessTitle")
	end
	return RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.PublishFailedTitle")
end
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local GetFFlagValidateDescription_upvr = require(script.Parent.Parent.GetFFlagValidateDescription)
local icons_controls_keys_xboxA_upvr = UIBlox.App.ImageSet.Images["icons/controls/keys/xboxA"]
function any_extend_result1.render(arg1) -- Line 72
	--[[ Upvalues[6]:
		[1]: Roact_upvr (readonly)
		[2]: InteractiveAlert_upvr (readonly)
		[3]: ButtonType_upvr (readonly)
		[4]: GetFFlagValidateDescription_upvr (readonly)
		[5]: RobloxTranslator_upvr (readonly)
		[6]: icons_controls_keys_xboxA_upvr (readonly)
	]]
	local module = {
		title = arg1:getLocalizedTitleForResultPrompt(arg1.props.resultModalType);
		bodyText = arg1:getLocalizedStringForResultPrompt(arg1.props.resultModalType);
		screenSize = arg1.props.screenSize;
	}
	local tbl_5 = {}
	local tbl_4 = {}
	local tbl_2 = {
		buttonType = ButtonType_upvr.PrimarySystem;
	}
	local tbl_3 = {}
	local closeResultModal = arg1.props.closeResultModal
	tbl_3.onActivated = closeResultModal
	if GetFFlagValidateDescription_upvr() then
		closeResultModal = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.ResultModalOk")
	else
		closeResultModal = RobloxTranslator_upvr:FormatByKey("InGame.CommonUI.Button.Ok")
	end
	tbl_3.text = closeResultModal
	local function INLINED() -- Internal function, doesn't exist in bytecode
		closeResultModal = icons_controls_keys_xboxA_upvr
		return closeResultModal
	end
	if not arg1.state.isGamepad or not INLINED() then
		closeResultModal = nil
	end
	tbl_3.inputIcon = closeResultModal
	tbl_2.props = tbl_3
	tbl_4[1] = tbl_2
	tbl_5.buttons = tbl_4
	module.buttonStackInfo = tbl_5
	return Roact_upvr.createElement(InteractiveAlert_upvr, module)
end
local CloseResultModal_upvr = require(script.Parent.Parent.Thunks.CloseResultModal)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 94, Named "mapStateToProps"
	return {
		resultModalType = arg1.promptRequest.resultModalType;
	}
end, function(arg1) -- Line 100, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: CloseResultModal_upvr (readonly)
	]]
	return {
		closeResultModal = function() -- Line 102, Named "closeResultModal"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CloseResultModal_upvr (copied, readonly)
			]]
			return arg1(CloseResultModal_upvr)
		end;
	}
end)(any_extend_result1)