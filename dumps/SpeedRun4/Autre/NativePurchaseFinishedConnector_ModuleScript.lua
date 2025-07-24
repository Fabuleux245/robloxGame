-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:10
-- Luau version 6, Types version 3
-- Time taken: 0.001428 seconds

local Parent = script.Parent.Parent.Parent
local Roact_upvr = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Roact
local ExternalEventConnection_upvr = require(script.Parent.ExternalEventConnection)
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local retryAfterUpsell_upvr = require(Parent.Thunks.retryAfterUpsell)
local ErrorOccurred_upvr = require(Parent.Actions.ErrorOccurred)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local sendCounter_upvr = require(Parent.Thunks.sendCounter)
local Counter_upvr = require(Parent.Enums.Counter)
return require(Parent.connectToStore)(nil, function(arg1) -- Line 49, Named "mapDispatchToProps"
	--[[ Upvalues[5]:
		[1]: retryAfterUpsell_upvr (readonly)
		[2]: ErrorOccurred_upvr (readonly)
		[3]: PurchaseError_upvr (readonly)
		[4]: sendCounter_upvr (readonly)
		[5]: Counter_upvr (readonly)
	]]
	return {
		nativePurchaseFinished = function(arg1_2, arg2, arg3) -- Line 51, Named "nativePurchaseFinished"
			--[[ Upvalues[6]:
				[1]: arg1 (readonly)
				[2]: retryAfterUpsell_upvr (copied, readonly)
				[3]: ErrorOccurred_upvr (copied, readonly)
				[4]: PurchaseError_upvr (copied, readonly)
				[5]: sendCounter_upvr (copied, readonly)
				[6]: Counter_upvr (copied, readonly)
			]]
			if arg3 then
				arg1(retryAfterUpsell_upvr())
			else
				arg1(ErrorOccurred_upvr(PurchaseError_upvr.InvalidFundsUnknown))
				arg1(sendCounter_upvr(Counter_upvr.UpsellFailedNativePurchase))
			end
		end;
		nativePurchaseFinishedWithLocalPlayer = function(arg1_3, arg2) -- Line 59, Named "nativePurchaseFinishedWithLocalPlayer"
			--[[ Upvalues[6]:
				[1]: arg1 (readonly)
				[2]: retryAfterUpsell_upvr (copied, readonly)
				[3]: ErrorOccurred_upvr (copied, readonly)
				[4]: PurchaseError_upvr (copied, readonly)
				[5]: sendCounter_upvr (copied, readonly)
				[6]: Counter_upvr (copied, readonly)
			]]
			if arg2 then
				arg1(retryAfterUpsell_upvr())
			else
				arg1(ErrorOccurred_upvr(PurchaseError_upvr.InvalidFundsUnknown))
				arg1(sendCounter_upvr(Counter_upvr.UpsellFailedNativePurchase))
			end
		end;
	}
end)(function(arg1) -- Line 26, Named "NativePurchaseFinishedConnector"
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ExternalEventConnection_upvr (readonly)
		[3]: MarketplaceService_upvr (readonly)
	]]
	local nativePurchaseFinished = arg1.nativePurchaseFinished
	if game:GetEngineFeature("NativePurchaseWithLocalPlayer") then
		return Roact_upvr.createFragment({
			NativePurchase = Roact_upvr.createElement(ExternalEventConnection_upvr, {
				event = MarketplaceService_upvr.NativePurchaseFinished;
				callback = nativePurchaseFinished;
			});
			NativePurchaseWithLocalPlayer = Roact_upvr.createElement(ExternalEventConnection_upvr, {
				event = MarketplaceService_upvr.NativePurchaseFinishedWithLocalPlayer;
				callback = arg1.nativePurchaseFinishedWithLocalPlayer;
			});
		})
	end
	return Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = MarketplaceService_upvr.NativePurchaseFinished;
		callback = nativePurchaseFinished;
	})
end)