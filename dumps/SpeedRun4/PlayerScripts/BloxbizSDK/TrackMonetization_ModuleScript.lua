-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:38
-- Luau version 6, Types version 3
-- Time taken: 0.009791 seconds

local module_upvr = {}
local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Players_upvr = game:GetService("Players")
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local MarketplaceServiceWrapper_upvr = require(ReplicatedStorage_upvr:WaitForChild("BloxbizSDK").MarketplaceServiceWrapper)
local Utils_upvr = require(script.Parent.Utils)
local Enum_AssetType_GetEnumItems_result1_upvr = Enum.AssetType:GetEnumItems()
local tbl_8_upvr = {}
local tbl_4_upvr = {}
local tbl_upvr = {}
local tbl_7_upvr = {}
local function _(arg1) -- Line 40, Named "getAssetTypeName"
	--[[ Upvalues[1]:
		[1]: Enum_AssetType_GetEnumItems_result1_upvr (readonly)
	]]
	for _, v in ipairs(Enum_AssetType_GetEnumItems_result1_upvr) do
		if v.Value == tonumber(arg1) then
			return v.Name
		end
	end
	return ""
end
local function GetProductInfo_upvr(arg1, arg2) -- Line 53, Named "GetProductInfo"
	--[[ Upvalues[2]:
		[1]: MarketplaceService_upvr (readonly)
		[2]: MarketplaceServiceWrapper_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local module = {}
	local pcall_result1_3, pcall_result2_4 = pcall(function() -- Line 55
		--[[ Upvalues[3]:
			[1]: MarketplaceService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		return MarketplaceService_upvr:GetProductInfo(arg1, arg2)
	end)
	local var22
	if MarketplaceServiceWrapper_upvr:getBaseIdFromGenericId(arg1) == arg1 then
	else
		local var24_upvw
		local pcall_result1_5, pcall_result2 = pcall(function() -- Line 64
			--[[ Upvalues[3]:
				[1]: MarketplaceService_upvr (copied, readonly)
				[2]: var24_upvw (read and write)
				[3]: arg2 (readonly)
			]]
			return MarketplaceService_upvr:GetProductInfo(var24_upvw, arg2)
		end)
		pcall_result1_3 = pcall_result1_5
		var22 = pcall_result2
	end
	if pcall_result1_3 then
		pcall_result1_5 = var22.Name
		local var27 = pcall_result1_5
		if not var27 then
			var27 = pcall_result2_4.Name
		end
		module.asset_name = var27
		module.asset_type_id = pcall_result2_4.AssetTypeId
		module.price_in_robux = pcall_result2_4.PriceInRobux
		module.is_for_sale = pcall_result2_4.IsForSale
		module.creator_id = pcall_result2_4.Creator.CreatorTargetId
		if arg2 == Enum.InfoType.Product then
			module.item_id = pcall_result2_4.ProductId
		elseif arg2 == Enum.InfoType.GamePass then
			module.item_id = arg1
		else
			module.item_id = pcall_result2_4.AssetId
		end
		module.base_item_id = var24_upvw
		module.variant_item_id = MarketplaceServiceWrapper_upvr:getVariantIdFromExperimentVariantId(arg1)
		return module
	end
	return nil
end
local function PlayerOwnsAsset_upvr(arg1, arg2, arg3) -- Line 95, Named "PlayerOwnsAsset"
	--[[ Upvalues[3]:
		[1]: MarketplaceService_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: tbl_8_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
	local var28
	if arg3 == Enum.InfoType.Asset then
		local pcall_result1_7, _ = pcall(function() -- Line 99
			--[[ Upvalues[3]:
				[1]: MarketplaceService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: arg2 (readonly)
			]]
			return MarketplaceService_upvr:PlayerOwnsAsset(arg1, arg2)
		end)
		var28 = pcall_result1_7
		-- KONSTANTWARNING: GOTO [75] #58
	end
	-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 14. Error Block 42 start (CF ANALYSIS FAILED)
	if arg3 == Enum.InfoType.Bundle then
		local pcall_result1_4, _ = pcall(function() -- Line 103
			--[[ Upvalues[3]:
				[1]: MarketplaceService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: arg2 (readonly)
			]]
			return MarketplaceService_upvr:PlayerOwnsBundle(arg1, arg2)
		end)
		var28 = pcall_result1_4
	elseif arg3 == Enum.InfoType.GamePass then
		local pcall_result1_6, _ = pcall(function() -- Line 107
			--[[ Upvalues[3]:
				[1]: MarketplaceService_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: arg2 (readonly)
			]]
			return MarketplaceService_upvr:UserOwnsGamePassAsync(arg1.UserId, arg2)
		end)
		var28 = pcall_result1_6
	elseif arg3 == Enum.InfoType.Product then
	elseif arg3.Name == "Premium" then
		var28 = true
		if tbl_upvr[arg1] then
			if tbl_8_upvr[arg1] ~= Enum.MembershipType.Premium then
			else
			end
		elseif arg1.MembershipType ~= Enum.MembershipType.Premium then
		else
		end
	end
	if var28 == false then
	end
	do
		return nil
	end
	-- KONSTANTERROR: [16] 14. Error Block 42 end (CF ANALYSIS FAILED)
end
local function _(arg1, arg2, arg3, arg4) -- Line 133, Named "CheckValidity"
	--[[ Upvalues[1]:
		[1]: PlayerOwnsAsset_upvr (readonly)
	]]
	local PlayerOwnsAsset_result1_4 = PlayerOwnsAsset_upvr(arg1, arg3, arg4)
	if arg2 == nil or PlayerOwnsAsset_result1_4 == nil then
		return nil
	end
	if PlayerOwnsAsset_result1_4 or arg2.is_for_sale == false then
		return false
	end
	return true
end
local AdRequestStats_upvr = require(script.Parent.AdRequestStats)
local HttpService_upvr = game:GetService("HttpService")
local merge_upvr = Utils_upvr.merge
local BatchHTTP_upvr = require(script.Parent.BatchHTTP)
local function queuePrompt_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 158, Named "queuePrompt"
	--[[ Upvalues[8]:
		[1]: tbl_7_upvr (readonly)
		[2]: MarketplaceServiceWrapper_upvr (readonly)
		[3]: Enum_AssetType_GetEnumItems_result1_upvr (readonly)
		[4]: AdRequestStats_upvr (readonly)
		[5]: HttpService_upvr (readonly)
		[6]: merge_upvr (readonly)
		[7]: Utils_upvr (readonly)
		[8]: BatchHTTP_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 45 start (CF ANALYSIS FAILED)
	local tbl_5 = {}
	if arg2 == Enum.InfoType.Subscription then
		tbl_5.asset_name = arg3.Name
		tbl_5.price_tier = arg3.PriceTier
		tbl_5.display_price = arg3.DisplayPrice
		tbl_5.subscription_period = arg3.SubscriptionPeriod
		tbl_5.subscription_provider_name = arg3.SubscriptionProviderName
		tbl_5.display_subscription_period = arg3.DisplaySubscriptionPeriod
		-- KONSTANTWARNING: GOTO [69] #39
	end
	-- KONSTANTERROR: [0] 1. Error Block 45 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 19. Error Block 40 start (CF ANALYSIS FAILED)
	tbl_5.asset_name = arg3.asset_name
	tbl_5.base_item_id = arg3.base_item_id
	tbl_5.price_in_robux = arg3.price_in_robux
	if arg3.creator_id == game.CreatorId then
		-- KONSTANTWARNING: GOTO [55] #31
	end
	-- KONSTANTERROR: [33] 19. Error Block 40 end (CF ANALYSIS FAILED)
end
function module_upvr.RegularPurchase(arg1, arg2, arg3) -- Line 229
	--[[ Upvalues[3]:
		[1]: GetProductInfo_upvr (readonly)
		[2]: PlayerOwnsAsset_upvr (readonly)
		[3]: queuePrompt_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
	local Asset = Enum.InfoType.Asset
	if arg3 then
		-- KONSTANTWARNING: GOTO [31] #27
	end
	-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 10. Error Block 23 start (CF ANALYSIS FAILED)
	if GetProductInfo_upvr(arg2, Asset) == nil or PlayerOwnsAsset_upvr(arg1, arg2, Asset) == nil then
		-- KONSTANTWARNING: GOTO [31] #27
	end
	-- KONSTANTERROR: [10] 10. Error Block 23 end (CF ANALYSIS FAILED)
end
MarketplaceService_upvr.PromptPurchaseFinished:Connect(module_upvr.RegularPurchase)
function module_upvr.GamepassPurchase(arg1, arg2, arg3) -- Line 249
	--[[ Upvalues[3]:
		[1]: GetProductInfo_upvr (readonly)
		[2]: PlayerOwnsAsset_upvr (readonly)
		[3]: queuePrompt_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
	local GamePass = Enum.InfoType.GamePass
	if arg3 then
		-- KONSTANTWARNING: GOTO [31] #27
	end
	-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 10. Error Block 23 start (CF ANALYSIS FAILED)
	if GetProductInfo_upvr(arg2, GamePass) == nil or PlayerOwnsAsset_upvr(arg1, arg2, GamePass) == nil then
		-- KONSTANTWARNING: GOTO [31] #27
	end
	-- KONSTANTERROR: [10] 10. Error Block 23 end (CF ANALYSIS FAILED)
end
MarketplaceService_upvr.PromptGamePassPurchaseFinished:Connect(module_upvr.GamepassPurchase)
MarketplaceService_upvr.PromptProductPurchaseFinished:Connect(function(arg1, arg2, arg3) -- Line 267, Named "ProductPurchase"
	--[[ Upvalues[4]:
		[1]: Players_upvr (readonly)
		[2]: GetProductInfo_upvr (readonly)
		[3]: PlayerOwnsAsset_upvr (readonly)
		[4]: queuePrompt_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(arg1)
	local Product = Enum.InfoType.Product
	local GetProductInfo_result1 = GetProductInfo_upvr(arg2, Product)
	local PlayerOwnsAsset_result1 = PlayerOwnsAsset_upvr(any_GetPlayerByUserId_result1, arg2, Product)
	local var50
	if GetProductInfo_result1 == nil or PlayerOwnsAsset_result1 == nil then
		-- KONSTANTWARNING: GOTO [32] #27
	end
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 20. Error Block 20 start (CF ANALYSIS FAILED)
	if PlayerOwnsAsset_result1 or GetProductInfo_result1.is_for_sale == false then
		var50 = false
	else
		var50 = true
	end
	local var51 = var50
	if var51 ~= nil then
		var50 = queuePrompt_upvr
		var50(any_GetPlayerByUserId_result1, Product, GetProductInfo_result1, var51, arg3)
	end
	-- KONSTANTERROR: [23] 20. Error Block 20 end (CF ANALYSIS FAILED)
end)
local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
MarketplaceService_upvr.PromptBundlePurchaseFinished:Connect(function(arg1, arg2, arg3) -- Line 280, Named "BundlePurchase"
	--[[ Upvalues[3]:
		[1]: AvatarEditorService_upvr (readonly)
		[2]: PlayerOwnsAsset_upvr (readonly)
		[3]: queuePrompt_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	local any_GetItemDetails_result1 = AvatarEditorService_upvr:GetItemDetails(arg2, Enum.AvatarItemType.Bundle)
	local tbl_6 = {
		asset_name = any_GetItemDetails_result1.Name;
		asset_type_id = any_GetItemDetails_result1.AssetTypeId;
		price_in_robux = any_GetItemDetails_result1.Price;
		is_for_sale = any_GetItemDetails_result1.IsPurchasable;
		creator_id = any_GetItemDetails_result1.CreatorTargetId;
	}
	tbl_6.item_id = arg2
	local Bundle = Enum.InfoType.Bundle
	local PlayerOwnsAsset_result1_5 = PlayerOwnsAsset_upvr(arg1, arg2, Bundle)
	local var57
	if tbl_6 == nil or PlayerOwnsAsset_result1_5 == nil then
		-- KONSTANTWARNING: GOTO [54] #36
	end
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [45] 29. Error Block 20 start (CF ANALYSIS FAILED)
	if PlayerOwnsAsset_result1_5 or tbl_6.is_for_sale == false then
		var57 = false
	else
		var57 = true
	end
	local var58 = var57
	if var58 ~= nil then
		var57 = queuePrompt_upvr
		var57(arg1, Bundle, tbl_6, var58, arg3)
	end
	-- KONSTANTERROR: [45] 29. Error Block 20 end (CF ANALYSIS FAILED)
end)
local function _(arg1, arg2) -- Line 301, Named "isValidSubscription"
	--[[ Upvalues[1]:
		[1]: MarketplaceService_upvr (readonly)
	]]
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 302
		--[[ Upvalues[3]:
			[1]: MarketplaceService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		return MarketplaceService_upvr:GetUserSubscriptionStatusAsync(arg1, arg2)
	end)
	if not pcall_result1 then return end
	if pcall_result2_2.IsSubscribed then
		return true
	end
	return false
end
local function validateParams_upvr(arg1) -- Line 317, Named "validateParams"
	local SubscriptionPeriod = arg1.SubscriptionPeriod
	if typeof(arg1.Name) ~= "string" then return end
	if typeof(arg1.IsForSale) ~= "boolean" then return end
	if typeof(arg1.PriceTier) ~= "number" then return end
	if typeof(arg1.DisplayPrice) ~= "string" then return end
	if typeof(SubscriptionPeriod) ~= "EnumItem" then return end
	if not table.find(Enum.SubscriptionPeriod:GetEnumItems(), SubscriptionPeriod) then return end
	if typeof(arg1.SubscriptionProviderName) ~= "string" then return end
	if typeof(arg1.DisplaySubscriptionPeriod) ~= "string" then return end
	return true
end
local getSubscriptionProductInfo_upvr = game.ReplicatedStorage:WaitForChild("BloxbizRemotes"):WaitForChild("getSubscriptionProductInfo")
Players_upvr.UserSubscriptionStatusChanged:Connect(function(arg1, arg2) -- Line 363, Named "SubscriptionPurchase"
	--[[ Upvalues[4]:
		[1]: MarketplaceService_upvr (readonly)
		[2]: getSubscriptionProductInfo_upvr (readonly)
		[3]: validateParams_upvr (readonly)
		[4]: queuePrompt_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
	local pcall_result1_2, pcall_result2_3 = pcall(function() -- Line 302
		--[[ Upvalues[3]:
			[1]: MarketplaceService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
		]]
		return MarketplaceService_upvr:GetUserSubscriptionStatusAsync(arg1, arg2)
	end)
	local var67
	if not pcall_result1_2 then
		var67 = nil
		-- KONSTANTWARNING: GOTO [16] #15
	end
	-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 10. Error Block 22 start (CF ANALYSIS FAILED)
	if pcall_result2_3.IsSubscribed then
		var67 = true
	else
		var67 = false
	end
	if var67 == nil then
	else
		local any_InvokeClient_result1, any_InvokeClient_result2 = getSubscriptionProductInfo_upvr:InvokeClient(arg1, arg2)
		if not any_InvokeClient_result1 then return end
		var67 = validateParams_upvr(any_InvokeClient_result2)
		if not var67 then return end
		any_InvokeClient_result2.item_id = arg2
		queuePrompt_upvr(arg1, Enum.InfoType.Subscription, any_InvokeClient_result2, var67, var67)
		-- KONSTANTERROR: [10] 10. Error Block 22 end (CF ANALYSIS FAILED)
	end
end)
local function promptWaitTimePassed_upvr(arg1) -- Line 392, Named "promptWaitTimePassed"
	--[[ Upvalues[4]:
		[1]: PlayerOwnsAsset_upvr (readonly)
		[2]: tbl_4_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: queuePrompt_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
	local tbl = {
		creator_id = -1;
	}
	local PlayerOwnsAsset_result1_2 = PlayerOwnsAsset_upvr(arg1, 0, {
		Name = "Premium";
	})
	local var78
	if tbl == nil or PlayerOwnsAsset_result1_2 == nil then
		-- KONSTANTWARNING: GOTO [30] #25
	end
	-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 18. Error Block 25 start (CF ANALYSIS FAILED)
	if PlayerOwnsAsset_result1_2 or tbl.is_for_sale == false then
		var78 = false
	else
		var78 = true
	end
	var78 = tbl_4_upvr[arg1]
	-- KONSTANTERROR: [21] 18. Error Block 25 end (CF ANALYSIS FAILED)
end
Players_upvr.PlayerMembershipChanged:Connect(function(arg1) -- Line 410
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_8_upvr (readonly)
	]]
	tbl_upvr[arg1] = true
	tbl_8_upvr[arg1] = nil
end)
Players_upvr.PlayerAdded:Connect(function(arg1) -- Line 417
	--[[ Upvalues[1]:
		[1]: tbl_8_upvr (readonly)
	]]
	tbl_8_upvr[arg1] = arg1.MembershipType
end)
Players_upvr.PlayerRemoving:Connect(function(arg1) -- Line 421
	--[[ Upvalues[1]:
		[1]: tbl_8_upvr (readonly)
	]]
	tbl_8_upvr[arg1] = nil
end)
local RateLimiter_upvr = require(script.Parent.Utils.RateLimiter)
function module_upvr.createMonetizationRemotes(arg1) -- Line 425
	--[[ Upvalues[5]:
		[1]: ReplicatedStorage_upvr (readonly)
		[2]: RateLimiter_upvr (readonly)
		[3]: tbl_4_upvr (readonly)
		[4]: promptWaitTimePassed_upvr (readonly)
		[5]: tbl_7_upvr (readonly)
	]]
	local BloxbizRemotes = ReplicatedStorage_upvr:WaitForChild("BloxbizRemotes")
	local RemoteEvent = Instance.new("RemoteEvent")
	RemoteEvent.Name = "PremiumPromptEvent"
	RemoteEvent.Parent = BloxbizRemotes
	RemoteEvent.OnServerEvent:Connect(function(arg1_2) -- Line 433
		--[[ Upvalues[3]:
			[1]: RateLimiter_upvr (copied, readonly)
			[2]: tbl_4_upvr (copied, readonly)
			[3]: promptWaitTimePassed_upvr (copied, readonly)
		]]
		if RateLimiter_upvr:checkRateLimiting(arg1_2) then
		else
			task.delay(30, function() -- Line 438
				--[[ Upvalues[3]:
					[1]: tbl_4_upvr (copied, readonly)
					[2]: arg1_2 (readonly)
					[3]: promptWaitTimePassed_upvr (copied, readonly)
				]]
				if not tbl_4_upvr[arg1_2] then
				elseif 29 <= tick() - tbl_4_upvr[arg1_2] then
					promptWaitTimePassed_upvr(arg1_2)
				end
			end)
		end
	end)
	local RemoteEvent_2 = Instance.new("RemoteEvent")
	RemoteEvent_2.Name = "catalogItemPromptEvent"
	RemoteEvent_2.Parent = BloxbizRemotes
	RemoteEvent_2.OnServerEvent:Connect(function(arg1_3, arg2) -- Line 454
		--[[ Upvalues[2]:
			[1]: RateLimiter_upvr (copied, readonly)
			[2]: tbl_7_upvr (copied, readonly)
		]]
		if RateLimiter_upvr:checkRateLimiting(arg1_3) then
		else
			if type(arg2) ~= "string" then return end
			tbl_7_upvr[arg1_3] = arg2
		end
	end)
end
function module_upvr.init(arg1) -- Line 467
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	module_upvr:createMonetizationRemotes()
end
return module_upvr