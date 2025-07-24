-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:16
-- Luau version 6, Types version 3
-- Time taken: 0.014110 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local tbl_17_upvr = {
	[Enum.AssetType.TShirtAccessory] = true;
	[Enum.AssetType.ShirtAccessory] = true;
	[Enum.AssetType.PantsAccessory] = true;
	[Enum.AssetType.JacketAccessory] = true;
	[Enum.AssetType.SweaterAccessory] = true;
	[Enum.AssetType.ShortsAccessory] = true;
	[Enum.AssetType.LeftShoeAccessory] = true;
	[Enum.AssetType.RightShoeAccessory] = true;
	[Enum.AssetType.DressSkirtAccessory] = true;
	[Enum.AssetType.HairAccessory] = true;
}
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("EnableEmotePublish")
local any_extend_result1 = Roact_upvr.PureComponent:extend("PublishAssetPromptSingleStep")
any_extend_result1.validateProps = t.strictInterface({
	screenSize = t.Vector2;
	assetInstance = t.Instance;
	assetType = t.enum(Enum.AssetType);
	guid = t.any;
	scopes = t.any;
	closePrompt = t.callback;
})
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
function any_extend_result1.getDefaultText(arg1) -- Line 92
	--[[ Upvalues[2]:
		[1]: RobloxTranslator_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
	]]
	local var12
	if arg1.props.assetType == Enum.AssetType.Model then
		local module_3 = {}
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var12 = LocalPlayer_upvr.Name
			return var12
		end
		if not LocalPlayer_upvr or not INLINED() then
			var12 = ""
		end
		module_3.RBX_NAME = var12
		return RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.PackagesDefaultName", module_3)
	end
	return ""
end
local EmoteThumbnailParameters_upvr = require(script.Parent.EmoteThumbnailParameters)
local ExperienceAuthService_upvr = game:GetService("ExperienceAuthService")
local GetFFlagValidateDescription_upvr = require(script.Parent.Parent.GetFFlagValidateDescription)
function any_extend_result1.init(arg1) -- Line 102
	--[[ Upvalues[5]:
		[1]: EmoteThumbnailParameters_upvr (readonly)
		[2]: ExperienceAuthService_upvr (readonly)
		[3]: GetFFlagValidateDescription_upvr (readonly)
		[4]: game_GetEngineFeature_result1_upvr (readonly)
		[5]: Roact_upvr (readonly)
	]]
	arg1.assetName = arg1:getDefaultText()
	arg1.assetDescription = arg1:getDefaultText()
	arg1.isNameValid = true
	arg1.isDescriptionValid = true
	arg1:setState({
		thumbnailParameters = EmoteThumbnailParameters_upvr.defaultParameters;
		showingThumbnailEditor = false;
		showingAssetPreview = false;
	})
	function arg1.closePrompt() -- Line 114
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.closePrompt()
	end
	function arg1.openThumbnailEditor() -- Line 118
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showingThumbnailEditor = true;
		})
	end
	function arg1.closeThumbnailEditor() -- Line 124
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showingThumbnailEditor = false;
		})
	end
	function arg1.openAssetPreview() -- Line 130
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showingAssetPreview = true;
		})
	end
	function arg1.closeAssetPreview() -- Line 136
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showingAssetPreview = false;
		})
	end
	function arg1.updateThumbnailParameters(arg1_2) -- Line 142
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_25 = {}
		tbl_25.thumbnailParameters = arg1_2
		arg1:setState(tbl_25)
	end
	function arg1.denyAndClose() -- Line 148
		--[[ Upvalues[2]:
			[1]: ExperienceAuthService_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		ExperienceAuthService_upvr:ScopeCheckUIComplete(arg1.props.guid, arg1.props.scopes, Enum.ScopeCheckResult.ConsentDenied, {})
		arg1.closePrompt()
	end
	function arg1.confirmAndUpload() -- Line 158
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: GetFFlagValidateDescription_upvr (copied, readonly)
			[3]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[4]: EmoteThumbnailParameters_upvr (copied, readonly)
			[5]: ExperienceAuthService_upvr (copied, readonly)
		]]
		if not arg1.isNameValid then
		else
			if GetFFlagValidateDescription_upvr() and not arg1.isDescriptionValid then return end
			local tbl_22 = {
				assetName = arg1.assetName;
				assetDescription = arg1.assetDescription;
			}
			if game_GetEngineFeature_result1_upvr and arg1.props.assetType == Enum.AssetType.EmoteAnimation then
				tbl_22.emoteThumbnailParameters = EmoteThumbnailParameters_upvr.encodeAsATable(arg1.state.thumbnailParameters)
			end
			ExperienceAuthService_upvr:ScopeCheckUIComplete(arg1.props.guid, arg1.props.scopes, Enum.ScopeCheckResult.ConsentAccepted, tbl_22)
			arg1.closePrompt()
		end
	end
	function arg1.onAssetNameUpdated(arg1_3, arg2) -- Line 188
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 then
			arg1.assetName = arg1_3
			arg1.isNameValid = true
		else
			arg1.isNameValid = false
		end
	end
	function arg1.onAssetDescriptionUpdated(arg1_4, arg2) -- Line 197
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.assetDescription = arg1_4
		arg1.isDescriptionValid = arg2
	end
	arg1.nameTextBoxRef = Roact_upvr.createRef()
	arg1.descriptionTextBoxRef = Roact_upvr.createRef()
end
local withStyle_upvr = UIBlox.Style.withStyle
local RoactGamepad_upvr = require(CorePackages.Packages.RoactGamepad)
local ObjectViewport_upvr = require(script.Parent.ObjectViewport)
local EmoteThumbnailView_upvr = require(script.Parent.EmoteThumbnailView)
local IconButton_upvr = UIBlox.App.Button.IconButton
local icons_actions_previewExpand_upvr = Images["icons/actions/previewExpand"]
local icons_actions_edit_edit_upvr = Images["icons/actions/edit/edit"]
local NameTextBox_upvr = require(script.Parent.Common.NameTextBox)
local AssetDescriptionTextBox_upvr = require(script.Parent.AssetDescriptionTextBox)
function any_extend_result1.renderMiddle(arg1, arg2) -- Line 206
	--[[ Upvalues[11]:
		[1]: withStyle_upvr (readonly)
		[2]: game_GetEngineFeature_result1_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: RoactGamepad_upvr (readonly)
		[5]: ObjectViewport_upvr (readonly)
		[6]: EmoteThumbnailView_upvr (readonly)
		[7]: IconButton_upvr (readonly)
		[8]: icons_actions_previewExpand_upvr (readonly)
		[9]: icons_actions_edit_edit_upvr (readonly)
		[10]: NameTextBox_upvr (readonly)
		[11]: AssetDescriptionTextBox_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_5) -- Line 207
		--[[ Upvalues[12]:
			[1]: game_GetEngineFeature_result1_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: RoactGamepad_upvr (copied, readonly)
			[5]: ObjectViewport_upvr (copied, readonly)
			[6]: EmoteThumbnailView_upvr (copied, readonly)
			[7]: IconButton_upvr (copied, readonly)
			[8]: icons_actions_previewExpand_upvr (copied, readonly)
			[9]: icons_actions_edit_edit_upvr (copied, readonly)
			[10]: arg2 (readonly)
			[11]: NameTextBox_upvr (copied, readonly)
			[12]: AssetDescriptionTextBox_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local Font = arg1_5.Font
		local Theme_2 = arg1_5.Theme
		local var72 = game_GetEngineFeature_result1_upvr
		if var72 then
			var72 = false
			if arg1.props.assetType == Enum.AssetType.EmoteAnimation then
				var72 = arg1.props.assetInstance:IsA("AnimationClip")
			end
		end
		local module_5 = {
			UISizeConstraint = Roact_upvr.createElement("UISizeConstraint", {
				MinSize = Vector2.new(200, 200);
			});
		}
		local tbl_21 = {}
		local tbl_23 = {}
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			tbl_26.model = arg1.props.assetInstance
			local tbl_26 = {}
			return Roact_upvr.createElement(ObjectViewport_upvr, tbl_26)
		end
		if var72 or not INLINED_4() then
		end
		tbl_23.ObjectViewport = nil
		local function INLINED_5() -- Internal function, doesn't exist in bytecode
			tbl_14.EditButton = Roact_upvr.createElement(IconButton_upvr, tbl_18)
			tbl_18.onActivated = arg1.openThumbnailEditor
			tbl_18.showBackground = true
			tbl_18.size = UDim2.new(0, 30, 0, 30)
			tbl_18.icon = icons_actions_edit_edit_upvr
			tbl_18.anchorPoint = Vector2.new(0, 1)
			tbl_18.position = UDim2.new(0, 2, 1, -2)
			local tbl_18 = {}
			tbl_14.PreviewButton = Roact_upvr.createElement(IconButton_upvr, tbl_38)
			tbl_38.onActivated = arg1.openAssetPreview
			tbl_38.showBackground = true
			tbl_38.size = UDim2.new(0, 30, 0, 30)
			tbl_38.icon = icons_actions_previewExpand_upvr
			tbl_38.anchorPoint = Vector2.new(1, 1)
			tbl_38.position = UDim2.new(1, -2, 1, -2)
			local tbl_38 = {}
			tbl_14.EmoteThumbnailView = Roact_upvr.createElement(EmoteThumbnailView_upvr, tbl_12)
			tbl_12.thumbnailParameters = arg1.state.thumbnailParameters
			tbl_12.animationClip = arg1.props.assetInstance
			local tbl_12 = {}
			tbl_14.AspectRatioConstraint = Roact_upvr.createElement("UIAspectRatioConstraint", tbl_29)
			tbl_29.DominantAxis = Enum.DominantAxis.Width
			tbl_29.AspectType = Enum.AspectType.FitWithinMaxSize
			tbl_29.AspectRatio = 1
			local tbl_29 = {}
			local tbl_14 = {}
			tbl_24.BackgroundTransparency = 1
			tbl_24.Size = UDim2.fromScale(1, 1)
			local tbl_24 = {}
			return Roact_upvr.createElement("Frame", tbl_24, tbl_14)
		end
		if not var72 or not INLINED_5() then
		end
		tbl_23.EmoteThumbnailParent = nil
		tbl_21.ViewportParent = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(0.4, 0, 1, 0);
			BackgroundTransparency = 1;
		}, tbl_23)
		tbl_21.NameDescriptionFields = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(0.6, -10, 1, 0);
			AnchorPoint = Vector2.new(1, 0);
			Position = UDim2.fromScale(1, 0);
			BackgroundTransparency = 1;
		}, {
			NameLabel = Roact_upvr.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, 15);
				Font = Font.Body.Font;
				Text = arg2.name;
				TextSize = 12;
				TextColor3 = Theme_2.TextDefault.Color;
				BackgroundTransparency = 1;
				TextXAlignment = Enum.TextXAlignment.Left;
			});
			NameInput = Roact_upvr.createElement(NameTextBox_upvr, {
				Size = UDim2.new(1, 0, 0, 30);
				Position = UDim2.new(0, 0, 0, 15);
				onNameUpdated = arg1.onAssetNameUpdated;
				nameTextBoxRef = arg1.nameTextBoxRef;
				NextSelectionDown = arg1.descriptionTextBoxRef;
				defaultName = arg1.assetName;
			});
			DescriptionLabel = Roact_upvr.createElement("TextLabel", {
				Size = UDim2.new(1, 0, 0, 15);
				Position = UDim2.new(0, 0, 0, 60);
				Font = Font.Body.Font;
				TextSize = 12;
				Text = arg2.description;
				TextColor3 = Theme_2.TextDefault.Color;
				BackgroundTransparency = 1;
				TextXAlignment = Enum.TextXAlignment.Left;
			});
			DescriptionInput = Roact_upvr.createElement(AssetDescriptionTextBox_upvr, {
				Size = UDim2.new(1, 0, 0, 80);
				Position = UDim2.new(0, 0, 0, 75);
				onAssetDescriptionUpdated = arg1.onAssetDescriptionUpdated;
				descriptionTextBoxRef = arg1.descriptionTextBoxRef;
				NextSelectionUp = arg1.nameTextBoxRef;
				defaultDescription = arg1.assetDescription;
			});
		})
		module_5.TopSection = Roact_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, -50);
			BackgroundTransparency = 1;
		}, tbl_21)
		module_5.Disclaimer = Roact_upvr.createElement("TextLabel", {
			Size = UDim2.new(1, 0, 0, 50);
			Text = arg2.disclaimer;
			Font = Font.Body.Font;
			TextSize = 12;
			TextColor3 = Theme_2.TextEmphasis.Color;
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(0, 1);
			Position = UDim2.fromScale(0, 1);
			TextWrapped = true;
		})
		return Roact_upvr.createElement(RoactGamepad_upvr.Focusable.Frame, {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, 0, 0, 150);
			defaultChild = arg1.nameTextBoxRef;
			[Roact_upvr.Ref] = arg1.middleContentRef;
		}, module_5)
	end)
end
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("SendConsentDeniedOnCancel", false)
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local EmoteThumbnailEditor_upvr = require(script.Parent.EmoteThumbnailEditor)
local PreviewViewport_upvr = require(script.Parent.Common.PreviewViewport)
function any_extend_result1.renderAlertLocalized(arg1, arg2) -- Line 332
	--[[ Upvalues[7]:
		[1]: Roact_upvr (readonly)
		[2]: InteractiveAlert_upvr (readonly)
		[3]: game_DefineFastFlag_result1_upvr (readonly)
		[4]: ButtonType_upvr (readonly)
		[5]: game_GetEngineFeature_result1_upvr (readonly)
		[6]: EmoteThumbnailEditor_upvr (readonly)
		[7]: PreviewViewport_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_34 = {
		title = arg2.title;
	}
	local tbl_7 = {}
	local tbl_9 = {}
	local tbl_36 = {}
	local var103
	if game_DefineFastFlag_result1_upvr then
		var103 = arg1.denyAndClose
	else
		var103 = arg1.closePrompt
	end
	tbl_36.onActivated = var103
	local var104
	var103 = arg2.cancel
	tbl_36.text = var103
	tbl_9.props = tbl_36
	tbl_9.isDefaultChild = true
	local tbl_33 = {}
	var103 = ButtonType_upvr.PrimarySystem
	tbl_33.buttonType = var103
	var103 = {}
	var103.onActivated = arg1.confirmAndUpload
	var103.text = arg2.submit
	var103.isDelayedInput = true
	var103.enableInputDelayed = true
	var103.delayInputSeconds = 3
	tbl_33.props = var103
	var103 = false
	tbl_33.isDefaultChild = var103
	tbl_7[1] = tbl_9
	tbl_7[2] = tbl_33
	var104.buttons = tbl_7
	tbl_34.buttonStackInfo = var104
	function tbl_34.middleContent() -- Line 357
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		return arg1:renderMiddle(arg2)
	end
	tbl_34.screenSize = arg1.props.screenSize
	tbl_34.defaultChildRef = arg1.props.defaultChildRef
	tbl_34.isMiddleContentFocusable = true
	local any_createElement_result1 = Roact_upvr.createElement(InteractiveAlert_upvr, tbl_34)
	if game_GetEngineFeature_result1_upvr then
		local module_2 = {
			Prompt = any_createElement_result1;
		}
		local function INLINED_6() -- Internal function, doesn't exist in bytecode
			tbl_3.closePromptCallback = arg1.closeThumbnailEditor
			tbl_3.updateThumbnailCallback = arg1.updateThumbnailParameters
			tbl_3.screenSize = var103.screenSize
			var103 = arg1.props
			tbl_3.initialThumbnailParameters = var103.thumbnailParameters
			var103 = arg1.state
			tbl_3.animationClip = var103.assetInstance
			var103 = arg1.props
			local tbl_3 = {}
			return Roact_upvr.createElement(EmoteThumbnailEditor_upvr, tbl_3)
		end
		if not arg1.state.showingThumbnailEditor or not INLINED_6() then
		end
		module_2.ThumbnailEditor = nil
		local function INLINED_7() -- Internal function, doesn't exist in bytecode
			tbl_13.PreviewViewport = var103
			var103 = var103(PreviewViewport_upvr, tbl_40)
			tbl_40.closePreviewView = arg1.closeAssetPreview
			tbl_40.asset = arg1.props.assetInstance
			local tbl_40 = {}
			var103 = Roact_upvr.createElement
			local tbl_13 = {}
			tbl_28.BackgroundTransparency = 0
			tbl_28.Position = UDim2.fromScale(var103, 0.5)
			var103 = 0.5
			tbl_28.AnchorPoint = Vector2.new(var103, 0.5)
			var103 = 0.5
			tbl_28.BackgroundColor3 = Color3.new(var103, 0.2, 0.2)
			var103 = 0.2
			tbl_28.Size = UDim2.new(var103, 0, 0.5, 0)
			var103 = 0.5
			local tbl_28 = {}
			return Roact_upvr.createElement("Frame", tbl_28, tbl_13)
		end
		if not arg1.state.showingAssetPreview or not INLINED_7() then
		end
		module_2.PreviewFrame = nil
		return Roact_upvr.createFragment(module_2)
	end
	return any_createElement_result1
end
local function _(arg1) -- Line 395, Named "IsLayeredClothingType"
	--[[ Upvalues[1]:
		[1]: tbl_17_upvr (readonly)
	]]
	if tbl_17_upvr[arg1] == true then
		return true
	end
	return false
end
local function GetLocalizedStringsForAssetType_upvr(arg1) -- Line 403, Named "GetLocalizedStringsForAssetType"
	--[[ Upvalues[2]:
		[1]: RobloxTranslator_upvr (readonly)
		[2]: tbl_17_upvr (readonly)
	]]
	local module_6 = {
		name = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.Name");
		description = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.Description");
		invalidName = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.InvalidName");
		invalidDescription = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.InvalidDescription");
		cancel = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.Cancel");
	}
	local any_FormatByKey_result1 = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.Submit")
	module_6.submit = any_FormatByKey_result1
	if tbl_17_upvr[arg1] == true then
		any_FormatByKey_result1 = true
	else
		any_FormatByKey_result1 = false
	end
	if any_FormatByKey_result1 then
		module_6.title = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.TitleTextClothing")
		module_6.disclaimer = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.DisclaimerAvatar")
		return module_6
	end
	if arg1 == Enum.AssetType.EmoteAnimation then
		module_6.title = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.TitleTextEmote")
		module_6.disclaimer = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.DisclaimerEmote")
		return module_6
	end
	if arg1 == Enum.AssetType.Model then
		module_6.title = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.TitleTextModel")
		module_6.disclaimer = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.DisclaimerModel")
		return module_6
	end
	if arg1 == Enum.AssetType.Package then
		module_6.title = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.TitleTextPackage")
		module_6.disclaimer = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.DisclaimerModel")
	end
	return module_6
end
function any_extend_result1.render(arg1) -- Line 432
	--[[ Upvalues[1]:
		[1]: GetLocalizedStringsForAssetType_upvr (readonly)
	]]
	return arg1:renderAlertLocalized(GetLocalizedStringsForAssetType_upvr(arg1.props.assetType))
end
local CloseOpenPrompt_upvr = require(script.Parent.Parent.Actions.CloseOpenPrompt)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 437, Named "mapStateToProps"
	return {
		assetInstance = arg1.promptRequest.promptInfo.assetInstance;
		assetType = arg1.promptRequest.promptInfo.assetType;
		guid = arg1.promptRequest.promptInfo.guid;
		scopes = arg1.promptRequest.promptInfo.scopes;
	}
end, function(arg1) -- Line 446, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: CloseOpenPrompt_upvr (readonly)
	]]
	return {
		closePrompt = function() -- Line 448, Named "closePrompt"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CloseOpenPrompt_upvr (copied, readonly)
			]]
			return arg1(CloseOpenPrompt_upvr())
		end;
	}
end)(any_extend_result1)