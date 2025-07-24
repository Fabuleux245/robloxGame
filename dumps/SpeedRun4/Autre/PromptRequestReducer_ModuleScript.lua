-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:50:40
-- Luau version 6, Types version 3
-- Time taken: 0.003280 seconds

local Parent = script.Parent.Parent
local HttpService_upvr = game:GetService("HttpService")
local RequestType_upvr = require(Parent.Enums.RequestType)
local module_upvr = {
	requestType = RequestType_upvr.None;
}
return require(game:GetService("CorePackages").Workspace.Packages.PurchasePromptDeps).Rodux.createReducer(module_upvr, {
	[require(Parent.Actions.RequestAssetPurchase).name] = function(arg1, arg2) -- Line 22
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (readonly)
			[2]: RequestType_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local idempotencyKey = arg2.idempotencyKey
		if idempotencyKey == nil or idempotencyKey == "" then
		end
		return {
			id = arg2.id;
			infoType = Enum.InfoType.Asset;
			requestType = RequestType_upvr.Asset;
			equipIfPurchased = arg2.equipIfPurchased;
			isRobloxPurchase = arg2.isRobloxPurchase;
			idempotencyKey = HttpService_upvr:GenerateGUID(false);
			purchaseAuthToken = arg2.purchaseAuthToken or "";
			collectibleItemId = arg2.collectibleItemId or "";
			collectibleItemInstanceId = arg2.collectibleItemInstanceId or "";
			collectibleProductId = arg2.collectibleProductId or "";
			expectedPrice = arg2.expectedPrice or 0;
		}
	end;
	[require(Parent.Actions.RequestGamepassPurchase).name] = function(arg1, arg2) -- Line 41
		--[[ Upvalues[1]:
			[1]: RequestType_upvr (readonly)
		]]
		return {
			id = arg2.id;
			infoType = Enum.InfoType.GamePass;
			requestType = RequestType_upvr.GamePass;
			isRobloxPurchase = false;
		}
	end;
	[require(Parent.Actions.RequestProductPurchase).name] = function(arg1, arg2) -- Line 49
		--[[ Upvalues[1]:
			[1]: RequestType_upvr (readonly)
		]]
		return {
			id = arg2.id;
			infoType = Enum.InfoType.Product;
			requestType = RequestType_upvr.Product;
			isRobloxPurchase = false;
		}
	end;
	[require(Parent.Actions.RequestBundlePurchase).name] = function(arg1, arg2) -- Line 57
		--[[ Upvalues[2]:
			[1]: HttpService_upvr (readonly)
			[2]: RequestType_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local idempotencyKey_2 = arg2.idempotencyKey
		if idempotencyKey_2 == nil or idempotencyKey_2 == "" then
		end
		return {
			id = arg2.id;
			infoType = Enum.InfoType.Bundle;
			requestType = RequestType_upvr.Bundle;
			isRobloxPurchase = true;
			idempotencyKey = HttpService_upvr:GenerateGUID(false);
			purchaseAuthToken = arg2.purchaseAuthToken or "";
			collectibleItemId = arg2.collectibleItemId or "";
			collectibleItemInstanceId = arg2.collectibleItemInstanceId or "";
			collectibleProductId = arg2.collectibleProductId or "";
			expectedPrice = arg2.expectedPrice or 0;
		}
	end;
	[require(Parent.Actions.RequestPremiumPurchase).name] = function(arg1, arg2) -- Line 75
		--[[ Upvalues[1]:
			[1]: RequestType_upvr (readonly)
		]]
		return {
			requestType = RequestType_upvr.Premium;
		}
	end;
	[require(Parent.Actions.RequestSubscriptionPurchase).name] = function(arg1, arg2) -- Line 80
		--[[ Upvalues[1]:
			[1]: RequestType_upvr (readonly)
		]]
		return {
			id = arg2.id;
			requestType = RequestType_upvr.Subscription;
		}
	end;
	[require(Parent.Actions.RequestAvatarCreationFeePurchase).name] = function(arg1, arg2) -- Line 86
		--[[ Upvalues[1]:
			[1]: RequestType_upvr (readonly)
		]]
		return {
			requestType = RequestType_upvr.AvatarCreationFee;
			humanoidModel = arg2.humanoidModel;
			id = arg2.guid;
		}
	end;
	[require(Parent.Actions.CompleteRequest).name] = function(arg1, arg2) -- Line 93
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		return module_upvr
	end;
})