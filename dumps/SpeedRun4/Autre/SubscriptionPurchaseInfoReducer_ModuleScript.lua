-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:44
-- Luau version 6, Types version 3
-- Time taken: 0.000808 seconds

local Parent = script.Parent.Parent
local module = {}
local getPreviewImageUrl_upvr = require(Parent.getPreviewImageUrl)
module[require(Parent.Actions.SubscriptionPurchaseInfoReceived).name] = function(arg1, arg2) -- Line 12
	--[[ Upvalues[1]:
		[1]: getPreviewImageUrl_upvr (readonly)
	]]
	arg2.subscriptionPurchaseInfo.ImageUrl = getPreviewImageUrl_upvr(arg2.subscriptionPurchaseInfo)
	return arg2.subscriptionPurchaseInfo
end
module[require(Parent.Actions.CompleteRequest).name] = function(arg1, arg2) -- Line 16
	return {}
end
return require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Rodux.createReducer({}, module)