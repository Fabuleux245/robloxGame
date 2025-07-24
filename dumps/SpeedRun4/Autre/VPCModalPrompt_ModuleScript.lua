-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:45
-- Luau version 6, Types version 3
-- Time taken: 0.000850 seconds

local VerifiedParentalConsentDialog = script:FindFirstAncestor("VerifiedParentalConsentDialog")
local Parent = VerifiedParentalConsentDialog.Parent
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local AlertPrompt_upvr = require(VerifiedParentalConsentDialog.Components.AlertPrompt)
local Images_upvr = require(Parent.UIBlox).App.ImageSet.Images
return function(arg1) -- Line 22, Named "VPCModalPrompt"
	--[[ Upvalues[4]:
		[1]: useLocalization_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: AlertPrompt_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	local tbl_2 = {}
	local tbl = {}
	local var9
	if arg1.isActionable then
		var9 = "Common.VerifiedParentalConsent.Description.SpendingRestrictionWithSettings"
	else
		var9 = "Common.VerifiedParentalConsent.Description.SpendingRestrictionWithoutSettings"
	end
	tbl[1] = var9
	tbl_2.EnablePurchase = tbl
	var9 = {}
	var9.title = "Common.VerifiedParentalConsent.Label.AskParent"
	var9.message = tbl_2[arg1.modalType]
	local useLocalization_upvr_result1 = useLocalization_upvr(var9)
	var9 = React_upvr.createElement
	var9 = var9(AlertPrompt_upvr, {
		title = useLocalization_upvr_result1.title;
		titleIcon = Images_upvr["icons/graphic/lock_xxlarge"];
		bodyText = useLocalization_upvr_result1.message;
		onDismiss = arg1.onDismiss;
		isActionable = arg1.isActionable;
		screenSize = arg1.screenSize;
		onAction = arg1.onAction;
	})
	return var9
end