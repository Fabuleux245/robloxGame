-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:04
-- Luau version 6, Types version 3
-- Time taken: 0.001586 seconds

local Enums = require(script.Parent.Enums)
local ActionTypeEnum = Enums.ActionTypeEnum
local VPCErrorCategoriesEnum = Enums.VPCErrorCategoriesEnum
return {
	accountSettingsUpsellStrings = {
		[ActionTypeEnum.GovernmentId] = {
			title = "Feature.AgeVerificationUpsell.Modal.Title";
			message = "Feature.AgeVerificationUpsell.Modal.ContentText";
			buttonCancel = "Feature.AgeVerificationUpsell.Button.Cancel";
			buttonSettings = "Feature.AgeVerificationUpsell.Button.Settings";
		};
		[ActionTypeEnum.Phone] = {
			title = "Amp.AccountSettingsUpsell.Phone.Modal.Title";
			message = "Amp.AccountSettingsUpsell.Phone.Modal.ContentText";
			buttonCancel = "Amp.AccountSettingsUpsell.Phone.Button.Cancel";
			buttonSettings = "Amp.AccountSettingsUpsell.Phone.Button.Settings";
		};
		[ActionTypeEnum.Email] = {
			title = "Amp.AccountSettingsUpsell.Email.Modal.Title";
			message = "Amp.AccountSettingsUpsell.Email.Modal.ContentText";
			buttonCancel = "Amp.AccountSettingsUpsell.Email.Button.Cancel";
			buttonSettings = "Amp.AccountSettingsUpsell.Email.Button.Settings";
		};
		[ActionTypeEnum.AddedEmail] = {
			title = "Amp.AccountSettingsUpsell.Email.Modal.Title";
			message = "Amp.AccountSettingsUpsell.Email.Modal.ContentText";
			buttonCancel = "Amp.AccountSettingsUpsell.Email.Button.Cancel";
			buttonSettings = "Amp.AccountSettingsUpsell.Email.Button.Settings";
		};
	};
	idvWithQRCodeUpsellStrings = {
		title = "Amp.IDVUpsell.Modal.Title";
		beginText = "Amp.IDVUpsell.Modal.QRHeaderText";
		disclaimer = "Amp.IDVUpsell.Modal.Disclaimer";
		privacyLinkText = "Amp.IDVUpsell.Modal.PrivacyLinkText";
		idDirectionsHeader = "Amp.IDVUpsell.Directions.IDHeader";
		idDirectionsBody = "Amp.IDVUpsell.Directions.IDBody";
		phoneDirectionsHeader = "Amp.IDVUpsell.Directions.PhoneHeader";
		phoneDirectionsBody = "Amp.IDVUpsell.Directions.PhoneBody";
		privacyPageHeader = "Amp.IDVUpsell.PrivacyPageHeader";
		ageVerifyPrompt = "Verification.Identity.Label.AgeVerifyPrompt";
		verifyInBrowser = "Verification.Identity.Label.VerifyInBrowser";
		dontCloseWindowDisclaimer = "Verification.Identity.Label.PleaseDoNotClose";
		havingTroubleInfoText = "Verification.Identity.Label.HavingTroubleScanCode";
		startVerification = "Amp.IDVUpsell.Button.StartVerification";
		cancel = "Amp.IDVUpsell.Button.Cancel";
	};
	idvErrorScreenStrings = {
		timeout = "Amp.IDVErrorScreen.Timeout";
		declined = "Amp.IDVErrorScreen.Declined";
		retry = "Amp.IDVErrorScreen.Retry";
		close = "Amp.IDVErrorScreen.Close";
		title = "Amp.IDVErrorScreen.Title";
	};
	vpcUpsellGatherEmailStrings = {
		titleText = "Feature.Parents.Title.EnterParentEmailV2";
		buttonText = "Feature.Parents.Action.SendEmail";
		textFieldHeaderText = "Feature.Parents.Label.EmailCapitalized";
		errorText = "Feature.Parents.Message.InvalidEmail";
		emailPlaceholder = "Feature.Parents.Label.Email";
		privacyLinkText = "Amp.IDVUpsell.PrivacyPageHeader";
	};
	vpcErrorCategoryToMessageStrings = {
		[VPCErrorCategoriesEnum.InternalVPCError] = {
			title = "Feature.Parents.Title.SomethingWentWrong";
			body = "Feature.Parents.Message.SomethingWentWrong";
		};
		[VPCErrorCategoriesEnum.InvalidEmail] = {
			title = "Feature.Parents.Title.SomethingWentWrong";
			body = "Feature.Parents.Message.EmailIneligible";
		};
		[VPCErrorCategoriesEnum.Flooded] = {
			title = "Feature.Parents.Title.SomethingWentWrong";
			body = "Feature.Parents.Message.TooManyAttempts";
		};
		[VPCErrorCategoriesEnum.SenderFlooded] = {
			title = "Feature.Parents.Title.SomethingWentWrong";
			body = "Feature.Parents.Message.TooManyAttemptAskParent";
		};
		[VPCErrorCategoriesEnum.ReceiverFlooded] = {
			title = "Feature.Parents.Title.SomethingWentWrong";
			body = "Feature.Parents.Message.TooManyAttempts";
		};
		[VPCErrorCategoriesEnum.BadUserInput] = {
			title = "Feature.Parents.Title.SomethingWentWrong";
			body = "Feature.Parents.Message.SomethingWentWrong";
		};
		[VPCErrorCategoriesEnum.UserStateRecoursePathMismatch] = {
			title = "Feature.Parents.Title.SomethingWentWrong";
			body = "Feature.Parents.Message.SomethingWentWrong";
		};
		[VPCErrorCategoriesEnum.SenderFloodedRequestCreated] = {
			title = "Amp.Upsell.Title.RequestSent";
			body = "Feature.Parents.Message.RequestCreatedEmailNotSent";
		};
		[VPCErrorCategoriesEnum.GenericError] = {
			title = "Feature.Parents.Title.SomethingWentWrong";
			body = "Feature.Parents.Message.SomethingWentWrong";
		};
		[VPCErrorCategoriesEnum.ConflictingPendingConsent] = {
			title = "Feature.Parents.Title.SomethingWentWrong";
			body = "Feature.Parents.Message.ConflictingPendingConsent";
		};
	};
	vpcErrorScreenStrings = {
		retryButton = "Amp.ErrorScreen.Retry";
		cancelButton = "Amp.ErrorScreen.Cancel";
		okButton = "CommonUI.Controls.Action.OK";
	};
	vpcConfirmationScreenStrings = {
		title = "Amp.Upsell.Title.RequestSent";
		oneParentBody = "Amp.Upsell.Message.EmailSent";
		multipleParentsBody = "Amp.Upsell.Message.EmailSentPluralParent";
		buttonText = "CommonUI.Controls.Action.OK";
	};
}