-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:49:09
-- Luau version 6, Types version 3
-- Time taken: 0.006675 seconds

local Parent = script.Parent.Parent.Parent
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local GetFFlagEnablePromptPurchaseRequestedV2_upvr = require(Parent.Flags.GetFFlagEnablePromptPurchaseRequestedV2)
local GetFFlagEnablePromptPurchaseRequestedV2Take2_upvr = require(Parent.Flags.GetFFlagEnablePromptPurchaseRequestedV2Take2)
local Roact_upvr = require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Roact
local ExternalEventConnection_upvr = require(script.Parent.ExternalEventConnection)
local Players_upvr = game:GetService("Players")
local initiatePurchase_upvr = require(Parent.Thunks.initiatePurchase)
local ErrorOccurred_upvr = require(Parent.Actions.ErrorOccurred)
local PurchaseError_upvr = require(Parent.Enums.PurchaseError)
local completePurchase_upvr = require(Parent.Thunks.completePurchase)
local initiateBundlePurchase_upvr = require(Parent.Thunks.initiateBundlePurchase)
local initiatePremiumPurchase_upvr = require(Parent.Thunks.initiatePremiumPurchase)
local initiateSubscriptionPurchase_upvr = require(Parent.Thunks.initiateSubscriptionPurchase)
return require(Parent.connectToStore)(nil, function(arg1) -- Line 118
	--[[ Upvalues[8]:
		[1]: Players_upvr (readonly)
		[2]: initiatePurchase_upvr (readonly)
		[3]: ErrorOccurred_upvr (readonly)
		[4]: PurchaseError_upvr (readonly)
		[5]: completePurchase_upvr (readonly)
		[6]: initiateBundlePurchase_upvr (readonly)
		[7]: initiatePremiumPurchase_upvr (readonly)
		[8]: initiateSubscriptionPurchase_upvr (readonly)
	]]
	return {
		onPurchaseRequest = function(arg1_2, arg2, arg3, arg4) -- Line 119, Named "onPurchaseRequest"
			--[[ Upvalues[3]:
				[1]: Players_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: initiatePurchase_upvr (copied, readonly)
			]]
			if arg1_2 == Players_upvr.LocalPlayer then
				arg1(initiatePurchase_upvr(arg2, Enum.InfoType.Asset, arg3, false, "", ""))
			end
		end;
		onPurchaseRequestV2 = function(arg1_3, arg2, arg3, arg4, arg5, arg6) -- Line 125, Named "onPurchaseRequestV2"
			--[[ Upvalues[3]:
				[1]: Players_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: initiatePurchase_upvr (copied, readonly)
			]]
			if arg1_3 == Players_upvr.LocalPlayer then
				arg1(initiatePurchase_upvr(arg2, Enum.InfoType.Asset, arg3, false, arg5, arg6))
			end
		end;
		onRobloxPurchaseRequest = function(arg1_4, arg2) -- Line 147, Named "onRobloxPurchaseRequest"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: initiatePurchase_upvr (copied, readonly)
			]]
			arg1(initiatePurchase_upvr(arg1_4, Enum.InfoType.Asset, arg2, true))
		end;
		onProductPurchaseRequest = function(arg1_5, arg2, arg3, arg4) -- Line 151, Named "onProductPurchaseRequest"
			--[[ Upvalues[3]:
				[1]: Players_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: initiatePurchase_upvr (copied, readonly)
			]]
			if arg1_5 == Players_upvr.LocalPlayer then
				arg1(initiatePurchase_upvr(arg2, Enum.InfoType.Product, arg3))
			end
		end;
		onPurchaseGamePassRequest = function(arg1_6, arg2) -- Line 157, Named "onPurchaseGamePassRequest"
			--[[ Upvalues[3]:
				[1]: Players_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: initiatePurchase_upvr (copied, readonly)
			]]
			if arg1_6 == Players_upvr.LocalPlayer then
				arg1(initiatePurchase_upvr(arg2, Enum.InfoType.GamePass, false))
			end
		end;
		onServerPurchaseVerification = function(arg1_8) -- Line 192, Named "onServerPurchaseVerification"
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: ErrorOccurred_upvr (copied, readonly)
				[3]: PurchaseError_upvr (copied, readonly)
				[4]: Players_upvr (copied, readonly)
				[5]: completePurchase_upvr (copied, readonly)
			]]
			if not arg1_8 then
				arg1(ErrorOccurred_upvr(PurchaseError_upvr.UnknownFailure))
			else
				local playerId = arg1_8.playerId
				if playerId ~= nil then
					playerId = tonumber(arg1_8.playerId)
				end
				if playerId == Players_upvr.LocalPlayer.UserId then
					arg1(completePurchase_upvr())
				end
			end
		end;
		onBundlePurchaseRequest = function(arg1_9, arg2) -- Line 206, Named "onBundlePurchaseRequest"
			--[[ Upvalues[3]:
				[1]: Players_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: initiateBundlePurchase_upvr (copied, readonly)
			]]
			if arg1_9 == Players_upvr.LocalPlayer then
				arg1(initiateBundlePurchase_upvr(arg2))
			end
		end;
		onPremiumPurchaseRequest = function(arg1_11) -- Line 237, Named "onPremiumPurchaseRequest"
			--[[ Upvalues[3]:
				[1]: Players_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: initiatePremiumPurchase_upvr (copied, readonly)
			]]
			if arg1_11 == Players_upvr.LocalPlayer then
				arg1(initiatePremiumPurchase_upvr())
			end
		end;
		onPromptCollectiblesPurchaseRequest = function(arg1_7, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 163, Named "onPromptCollectiblesPurchaseRequest"
			--[[ Upvalues[3]:
				[1]: Players_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: initiatePurchase_upvr (copied, readonly)
			]]
			if arg1_7 == Players_upvr.LocalPlayer then
				arg1(initiatePurchase_upvr(arg2, Enum.InfoType.Asset, false, true, arg7, arg8, arg3, arg4, arg5, arg6))
			end
		end;
		onSubscriptionPurchaseRequest = function(arg1_12) -- Line 243, Named "onSubscriptionPurchaseRequest"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: initiateSubscriptionPurchase_upvr (copied, readonly)
			]]
			arg1(initiateSubscriptionPurchase_upvr(arg1_12))
		end;
		onCollectibleBundlePurchaseRequest = function(arg1_10, arg2, arg3, arg4, arg5, arg6, arg7, arg8) -- Line 212, Named "onCollectibleBundlePurchaseRequest"
			--[[ Upvalues[3]:
				[1]: Players_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: initiateBundlePurchase_upvr (copied, readonly)
			]]
			if arg1_10 == Players_upvr.LocalPlayer then
				arg1(initiateBundlePurchase_upvr(arg2, arg7, arg8, arg3, arg4, arg5, arg6))
			end
		end;
	}
end)(function(arg1) -- Line 27, Named "MarketplaceServiceEventConnector"
	--[[ Upvalues[5]:
		[1]: MarketplaceService_upvr (readonly)
		[2]: GetFFlagEnablePromptPurchaseRequestedV2_upvr (readonly)
		[3]: GetFFlagEnablePromptPurchaseRequestedV2Take2_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ExternalEventConnection_upvr (readonly)
	]]
	local var7
	if GetFFlagEnablePromptPurchaseRequestedV2_upvr() or GetFFlagEnablePromptPurchaseRequestedV2Take2_upvr() and pcall(function() -- Line 40, Named "checkNewEventExists"
		--[[ Upvalues[1]:
			[1]: MarketplaceService_upvr (copied, readonly)
		]]
		return MarketplaceService_upvr.PromptPurchaseRequestedV2
	end) then
		var7 = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = MarketplaceService_upvr.PromptPurchaseRequestedV2;
			callback = arg1.onPurchaseRequestV2;
		})
	else
		var7 = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = MarketplaceService_upvr.PromptPurchaseRequested;
			callback = arg1.onPurchaseRequest;
		})
	end
	local var10
	if pcall(function() -- Line 60, Named "checkPromptCollectiblesPurchaseRequestedEventExists"
		--[[ Upvalues[1]:
			[1]: MarketplaceService_upvr (copied, readonly)
		]]
		return MarketplaceService_upvr.PromptCollectiblesPurchaseRequested
	end) then
		var10 = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = MarketplaceService_upvr.PromptCollectiblesPurchaseRequested;
			callback = arg1.onPromptCollectiblesPurchaseRequest;
		})
	end
	local var12
	if pcall(function() -- Line 71, Named "checkCollectibleBundlePurchaseEventExists"
		--[[ Upvalues[1]:
			[1]: MarketplaceService_upvr (copied, readonly)
		]]
		return MarketplaceService_upvr.PromptCollectibleBundlePurchaseRequested
	end) then
		var12 = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = MarketplaceService_upvr.PromptCollectibleBundlePurchaseRequested;
			callback = arg1.onCollectibleBundlePurchaseRequest;
		})
	end
	return Roact_upvr.createFragment({
		RobloxPurchase = Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = MarketplaceService_upvr.PromptRobloxPurchaseRequested;
			callback = arg1.onRobloxPurchaseRequest;
		});
		
		var7, var10, var12, Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = MarketplaceService_upvr.PromptProductPurchaseRequested;
			callback = arg1.onProductPurchaseRequest;
		}), Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = MarketplaceService_upvr.PromptGamePassPurchaseRequested;
			callback = arg1.onPurchaseGamePassRequest;
		}), Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = MarketplaceService_upvr.ServerPurchaseVerification;
			callback = arg1.onServerPurchaseVerification;
		}), Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = MarketplaceService_upvr.PromptBundlePurchaseRequested;
			callback = arg1.onBundlePurchaseRequest;
		}), Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = MarketplaceService_upvr.PromptPremiumPurchaseRequested;
			callback = arg1.onPremiumPurchaseRequest;
		}), Roact_upvr.createElement(ExternalEventConnection_upvr, {
			event = MarketplaceService_upvr.PromptSubscriptionPurchaseRequested;
			callback = arg1.onSubscriptionPurchaseRequest;
		})
	})
end)