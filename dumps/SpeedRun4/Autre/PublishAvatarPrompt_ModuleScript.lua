-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:19
-- Luau version 6, Types version 3
-- Time taken: 0.006655 seconds

local CorePackages = game:GetService("CorePackages")
local Players_upvr = game:GetService("Players")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local mutedError_upvr = require(CorePackages.Workspace.Packages.Loggers).mutedError
local Parent = script.Parent.Parent
local PurchasePrompt_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.PurchasePrompt)
local PublishAssetAnalytics_upvr = PurchasePrompt_upvr.PublishAssetAnalytics
local any_extend_result1 = Roact_upvr.PureComponent:extend("PublishAvatarPrompt")
any_extend_result1.validateProps = t.strictInterface({
	screenSize = t.Vector2;
	humanoidModel = t.optional(t.instanceOf("Model"));
	guid = t.any;
	scopes = t.any;
	SetPromptVisibility = t.callback;
})
function any_extend_result1.init(arg1) -- Line 52
	--[[ Upvalues[4]:
		[1]: Players_upvr (readonly)
		[2]: PublishAssetAnalytics_upvr (readonly)
		[3]: PurchasePrompt_upvr (readonly)
		[4]: mutedError_upvr (readonly)
	]]
	local LocalPlayer = Players_upvr.LocalPlayer
	assert(LocalPlayer, "LocalPlayer must not be nil")
	arg1:setState({
		showingPreviewView = false;
		name = LocalPlayer.Name.."'s Body";
		isNameValid = true;
		description = LocalPlayer.Name.."'s Body";
		isDescValid = true;
		showTopScrim = false;
		purchasePromptReady = true;
	})
	function arg1.openPreviewView() -- Line 67
		--[[ Upvalues[2]:
			[1]: PublishAssetAnalytics_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		PublishAssetAnalytics_upvr.sendButtonClicked(PublishAssetAnalytics_upvr.Section.BuyCreationPage, PublishAssetAnalytics_upvr.Element.Expand)
		arg1:setState({
			showingPreviewView = true;
		})
	end
	function arg1.closePreviewView() -- Line 73
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			showingPreviewView = false;
		})
	end
	function arg1.canSubmit() -- Line 80
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local isNameValid = arg1.state.isNameValid
		if isNameValid then
			isNameValid = arg1.state.isDescValid
			if isNameValid then
				isNameValid = false
				if arg1.props.humanoidModel ~= nil then
					isNameValid = arg1.state.purchasePromptReady
				end
			end
		end
		return isNameValid
	end
	function arg1.onSubmit() -- Line 87
		--[[ Upvalues[4]:
			[1]: PublishAssetAnalytics_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: PurchasePrompt_upvr (copied, readonly)
			[4]: mutedError_upvr (copied, readonly)
		]]
		PublishAssetAnalytics_upvr.sendButtonClicked(PublishAssetAnalytics_upvr.Section.BuyCreationPage, PublishAssetAnalytics_upvr.Element.Buy)
		if PurchasePrompt_upvr.initiateAvatarCreationFeePurchase then
			PurchasePrompt_upvr.initiateAvatarCreationFeePurchase({
				name = arg1.state.name;
				description = arg1.state.description;
			}, arg1.props.guid, arg1.props.humanoidModel, arg1.props.priceInRobux)
		else
			mutedError_upvr("PurchasePrompt.initiateAvatarCreationFeePurchase is not available")
		end
	end
	function arg1.onNameUpdated(arg1_2, arg2) -- Line 106
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: PublishAssetAnalytics_upvr (copied, readonly)
		]]
		local tbl_2 = {}
		tbl_2.name = arg1_2
		tbl_2.isNameValid = arg2
		arg1:setState(tbl_2)
		if not arg1.sentNameFieldTouched then
			arg1.sentNameFieldTouched = true
			PublishAssetAnalytics_upvr.sendFieldTouched(PublishAssetAnalytics_upvr.Section.BuyCreationPage, PublishAssetAnalytics_upvr.Element.Name)
		end
	end
	function arg1.onDescriptionUpdated(arg1_3, arg2) -- Line 118
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: PublishAssetAnalytics_upvr (copied, readonly)
		]]
		local tbl = {}
		tbl.description = arg1_3
		tbl.isDescValid = arg2
		arg1:setState(tbl)
		if not arg1.sentDescriptionFieldTouched then
			arg1.sentDescriptionFieldTouched = true
			PublishAssetAnalytics_upvr.sendFieldTouched(PublishAssetAnalytics_upvr.Section.BuyCreationPage, PublishAssetAnalytics_upvr.Element.Description)
		end
	end
	function arg1.onWindowStateChanged(arg1_4) -- Line 130
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local isShown = arg1_4.isShown
		if arg1_4.hasCompletedPurchase and not isShown then
			arg1.props.SetPromptVisibility(false)
		else
			arg1:setState({
				showTopScrim = isShown;
			})
			if isShown then
				arg1:setState({
					purchasePromptReady = false;
				})
			end
		end
	end
	function arg1.onPromptStateSetToNone() -- Line 155
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			purchasePromptReady = true;
		})
	end
end
function any_extend_result1.didMount(arg1) -- Line 162
	--[[ Upvalues[3]:
		[1]: PurchasePrompt_upvr (readonly)
		[2]: mutedError_upvr (readonly)
		[3]: PublishAssetAnalytics_upvr (readonly)
	]]
	arg1.sentNameFieldTouched = false
	arg1.sentDescriptionFieldTouched = false
	local windowStateChangedEvent = PurchasePrompt_upvr.windowStateChangedEvent
	local promptStateSetToNoneEvent = PurchasePrompt_upvr.promptStateSetToNoneEvent
	if windowStateChangedEvent and promptStateSetToNoneEvent then
		arg1.windowStateChangedConnection = windowStateChangedEvent:Connect(arg1.onWindowStateChanged)
		arg1.promptStateSetToNoneConnection = promptStateSetToNoneEvent:Connect(arg1.onPromptStateSetToNone)
	else
		mutedError_upvr("PurchasePrompt.windowStateChangedEvent or PurchasePrompt.promptStateSetToNoneEvent is not available")
	end
	PublishAssetAnalytics_upvr.sendPageLoad(PublishAssetAnalytics_upvr.Section.BuyCreationPage)
end
function any_extend_result1.willUnmount(arg1) -- Line 181
	--[[ Upvalues[1]:
		[1]: mutedError_upvr (readonly)
	]]
	if arg1.windowStateChangedConnection then
		arg1.windowStateChangedConnection:Disconnect()
	else
		mutedError_upvr("windowStateChangedConnection was not established")
	end
	if arg1.promptStateSetToNoneConnection then
		arg1.promptStateSetToNoneConnection:Disconnect()
	else
		mutedError_upvr("promptStateSetToNoneConnection was not established")
	end
end
local withStyle_upvr = require(CorePackages.Packages.UIBlox).Style.withStyle
local udim_upvr = UDim.new(0, 20)
local ObjectViewport_upvr = require(Parent.Common.ObjectViewport)
local LabeledTextBox_upvr = require(Parent.Common.LabeledTextBox)
local PublishInfoList_upvr = require(Parent.Common.PublishInfoList)
local AvatarPartGrid_upvr = require(script.Parent.AvatarParts.AvatarPartGrid)
function any_extend_result1.renderPromptBody(arg1) -- Line 195
	--[[ Upvalues[8]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: udim_upvr (readonly)
		[4]: ObjectViewport_upvr (readonly)
		[5]: LabeledTextBox_upvr (readonly)
		[6]: RobloxTranslator_upvr (readonly)
		[7]: PublishInfoList_upvr (readonly)
		[8]: AvatarPartGrid_upvr (readonly)
	]]
	local var42_upvr
	if arg1.props.humanoidModel ~= nil then
		var42_upvr = false
	else
		var42_upvr = true
	end
	return withStyle_upvr(function(arg1_5) -- Line 197
		--[[ Upvalues[9]:
			[1]: Roact_upvr (copied, readonly)
			[2]: udim_upvr (copied, readonly)
			[3]: ObjectViewport_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: var42_upvr (readonly)
			[6]: LabeledTextBox_upvr (copied, readonly)
			[7]: RobloxTranslator_upvr (copied, readonly)
			[8]: PublishInfoList_upvr (copied, readonly)
			[9]: AvatarPartGrid_upvr (copied, readonly)
		]]
		return Roact_upvr.createFragment({
			UIListLayout = Roact_upvr.createElement("UIListLayout", {
				Padding = udim_upvr;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
			});
			UIPadding = Roact_upvr.createElement("UIPadding", {
				PaddingBottom = udim_upvr;
				PaddingTop = udim_upvr;
			});
			EmbeddedPreview = Roact_upvr.createElement(ObjectViewport_upvr, {
				openPreviewView = arg1.openPreviewView;
				model = arg1.props.humanoidModel;
				isLoading = var42_upvr;
				useFullBodyCameraSettings = true;
				fieldOfView = 30;
				LayoutOrder = 1;
			});
			DescriptionInput = Roact_upvr.createElement(LabeledTextBox_upvr, {
				LayoutOrder = 2;
				labelText = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.Description");
				centerText = false;
				defaultText = arg1.state.description;
				maxLength = 1000;
				onTextUpdated = arg1.onDescriptionUpdated;
				textBoxHeight = 104;
				invalidInputText = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAssetPrompt.InvalidDescription");
			});
			InfoList = Roact_upvr.createElement(PublishInfoList_upvr, {
				typeName = RobloxTranslator_upvr:FormatByKey("Feature.Catalog.Label.Body");
				LayoutOrder = 3;
			});
			AvatarPartGrid = Roact_upvr.createElement(AvatarPartGrid_upvr, {
				humanoidModel = arg1.props.humanoidModel;
				name = arg1.state.name;
				LayoutOrder = 4;
				screenSize = arg1.props.screenSize;
			});
		})
	end)
end
local BasePublishPrompt_upvr = require(Parent.BasePublishPrompt)
function any_extend_result1.render(arg1) -- Line 241
	--[[ Upvalues[4]:
		[1]: Players_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: BasePublishPrompt_upvr (readonly)
		[4]: RobloxTranslator_upvr (readonly)
	]]
	assert(Players_upvr, "Players must not be nil")
	return Roact_upvr.createElement(BasePublishPrompt_upvr, {
		promptBody = arg1:renderPromptBody();
		screenSize = arg1.props.screenSize;
		showingPreviewView = arg1.state.showingPreviewView;
		closePreviewView = arg1.closePreviewView;
		asset = arg1.props.humanoidModel;
		nameLabel = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAvatarPrompt.BodyName");
		defaultName = arg1.state.name;
		titleText = RobloxTranslator_upvr:FormatByKey("CoreScripts.PublishAvatarPrompt.BuyCreation");
		onNameUpdated = arg1.onNameUpdated;
		canSubmit = arg1.canSubmit;
		onSubmit = arg1.onSubmit;
		delayInputSeconds = 3;
		priceInRobux = arg1.props.priceInRobux;
		showTopScrim = arg1.state.showTopScrim;
	})
end
local SetPromptVisibility_upvr = require(script.Parent.Parent.Parent.Actions.SetPromptVisibility)
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 262, Named "mapStateToProps"
	return {
		humanoidModel = arg1.promptRequest.promptInfo.humanoidModel;
		guid = arg1.promptRequest.promptInfo.guid;
		scopes = arg1.promptRequest.promptInfo.scopes;
		priceInRobux = arg1.promptRequest.promptInfo.priceInRobux;
	}
end, function(arg1) -- Line 271, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetPromptVisibility_upvr (readonly)
	]]
	return {
		SetPromptVisibility = function(arg1_6) -- Line 273, Named "SetPromptVisibility"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetPromptVisibility_upvr (copied, readonly)
			]]
			arg1(SetPromptVisibility_upvr(arg1_6))
		end;
	}
end)(any_extend_result1)