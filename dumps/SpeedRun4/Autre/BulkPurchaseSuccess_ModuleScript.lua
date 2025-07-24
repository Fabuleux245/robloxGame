-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:40
-- Luau version 6, Types version 3
-- Time taken: 0.000573 seconds

local BulkPurchaseApp = script:FindFirstAncestor("BulkPurchaseApp")
local Parent = BulkPurchaseApp.Parent
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local AlertPrompt_upvr = require(BulkPurchaseApp.Components.AlertPrompt)
return function(arg1) -- Line 13, Named "BulkPurchaseSuccess"
	--[[ Upvalues[3]:
		[1]: useLocalization_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: AlertPrompt_upvr (readonly)
	]]
	local useLocalization_upvr_result1 = useLocalization_upvr({
		title = "CoreScripts.BulkPurchasePrompt.SuccessPrompt.Heading";
		bodyText = "CoreScripts.BulkPurchasePrompt.SuccessPrompt.Body";
		dismissCTA = "CoreScripts.BulkPurchasePrompt.CompletedPrompt.DismissCTA";
	})
	return React_upvr.createElement(AlertPrompt_upvr, {
		title = useLocalization_upvr_result1.title;
		bodyText = useLocalization_upvr_result1.bodyText:gsub("{.*}", tostring(arg1.itemCount));
		dismissCTA = useLocalization_upvr_result1.dismissCTA;
		onDismiss = arg1.onDismiss;
	})
end