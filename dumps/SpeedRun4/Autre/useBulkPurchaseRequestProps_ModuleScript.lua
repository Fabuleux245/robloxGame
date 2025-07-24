-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:39
-- Luau version 6, Types version 3
-- Time taken: 0.006064 seconds

local BulkPurchaseApp = script:FindFirstAncestor("BulkPurchaseApp")
local Parent = BulkPurchaseApp.Parent
local PurchasableStateEnum_upvr = require(BulkPurchaseApp.Enums.PurchasableStateEnum)
local PurchasableStateToItemPurchaseStatusMap_upvr = require(BulkPurchaseApp.Enums.PurchasableStateToItemPurchaseStatusMap)
local getThumbnailUrl_upvr = require(BulkPurchaseApp.Utils.getThumbnailUrl)
local tbl_2_upvr = {
	INSUFFICIENT_ROBUX = Enum.MarketplaceItemPurchaseStatus.InsufficientRobux;
	QUOTA_EXCEEDED = Enum.MarketplaceItemPurchaseStatus.QuotaExceeded;
	NOT_FOR_SALE = Enum.MarketplaceItemPurchaseStatus.NotForSale;
	NOT_AVAILABLE_FOR_PURCHASER = Enum.MarketplaceItemPurchaseStatus.NotAvailableForPurchaser;
	PRICE_MISMATCH = Enum.MarketplaceItemPurchaseStatus.PriceMismatch;
	SOLD_OUT = Enum.MarketplaceItemPurchaseStatus.SoldOut;
	PURCHASER_IS_SELLER = Enum.MarketplaceItemPurchaseStatus.PurchaserIsSeller;
	QUANTITY_LIMIT_EXCEEDED = Enum.MarketplaceItemPurchaseStatus.QuantityLimitExceeded;
	ALREADY_OWNED = Enum.MarketplaceItemPurchaseStatus.AlreadyOwned;
	INSUFFICIENT_MEMBERSHIP = Enum.MarketplaceItemPurchaseStatus.InsufficientMembership;
	PURCHASE_PLACE_INVALID = Enum.MarketplaceItemPurchaseStatus.PlaceInvalid;
}
local function _(arg1) -- Line 73, Named "lineItemToStatus"
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	local var7 = tbl_2_upvr[arg1.errorReason]
	if arg1.status == "SUCCEEDED" then
		return Enum.MarketplaceItemPurchaseStatus.Success
	end
	if var7 then
		return var7
	end
	return Enum.MarketplaceItemPurchaseStatus.SystemError
end
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("BulkPurchaseHandleMissingFulfillmentGroupsKey", false)
local function getLineItemsFromPurchaseResponse_upvr(arg1) -- Line 84, Named "getLineItemsFromPurchaseResponse"
	--[[ Upvalues[1]:
		[1]: game_DefineFastFlag_result1_upvr_2 (readonly)
	]]
	if game_DefineFastFlag_result1_upvr_2 then
		if arg1.fulfillmentGroups and arg1.fulfillmentGroups[1] and arg1.fulfillmentGroups[1].lineItems then
			return arg1.fulfillmentGroups[1].lineItems
		end
		return {}
	end
	if arg1.fulfillmentGroups[1] then
		return arg1.fulfillmentGroups[1].lineItems
	end
	return {}
end
local function filterPurchasableItems_upvr(arg1) -- Line 94, Named "filterPurchasableItems"
	--[[ Upvalues[1]:
		[1]: PurchasableStateEnum_upvr (readonly)
	]]
	for _, v in arg1 do
		if v.purchasableState == PurchasableStateEnum_upvr.Purchasable then
			table.insert({}, v)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local function getItemResultsFromResponse_upvr(arg1, arg2) -- Line 111, Named "getItemResultsFromResponse"
	--[[ Upvalues[3]:
		[1]: filterPurchasableItems_upvr (readonly)
		[2]: getLineItemsFromPurchaseResponse_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
	]]
	for i_2, v_2 in filterPurchasableItems_upvr(arg2), nil do
		local var15 = getLineItemsFromPurchaseResponse_upvr(arg1)[i_2]
		local var16
		if var15 then
			local var17 = tbl_2_upvr[var15.errorReason]
			if var15.status == "SUCCEEDED" then
				var16 = Enum.MarketplaceItemPurchaseStatus.Success
			elseif var17 then
				var16 = var17
			else
				var16 = Enum.MarketplaceItemPurchaseStatus.SystemError
			end
			;({})[v_2.id] = var16
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local function _(arg1) -- Line 128, Named "getCommonItemStatus"
	local var22
	for _, v_3 in arg1 do
		if var22 ~= nil and v_3 ~= var22 then
			return nil
		end
		if var22 == nil then
			var22 = v_3
		end
	end
	return var22
end
local function _(arg1) -- Line 141, Named "createOwnedItem"
	--[[ Upvalues[1]:
		[1]: getThumbnailUrl_upvr (readonly)
	]]
	return {
		id = arg1.id;
		name = arg1.name;
		image = getThumbnailUrl_upvr(arg1.id, arg1.type);
		ownedCount = arg1.ownedCount;
	}
end
local function _(arg1) -- Line 150, Named "createPurchasableItem"
	--[[ Upvalues[1]:
		[1]: getThumbnailUrl_upvr (readonly)
	]]
	return {
		id = arg1.id;
		cost = arg1.priceRobux;
		name = arg1.name;
		image = getThumbnailUrl_upvr(arg1.id, arg1.type);
	}
end
local function _(arg1) -- Line 159, Named "createUnpurchasableItem"
	--[[ Upvalues[2]:
		[1]: getThumbnailUrl_upvr (readonly)
		[2]: PurchasableStateToItemPurchaseStatusMap_upvr (readonly)
	]]
	local module = {
		id = arg1.id;
		name = arg1.name;
		image = getThumbnailUrl_upvr(arg1.id, arg1.type);
	}
	local var26 = PurchasableStateToItemPurchaseStatusMap_upvr[arg1.purchasableState]
	if not var26 then
		var26 = Enum.MarketplaceItemPurchaseStatus.SystemError
	end
	module.status = var26
	return module
end
local function selectBulkPurchaseRequestState_upvr(arg1) -- Line 169, Named "selectBulkPurchaseRequestState"
	--[[ Upvalues[3]:
		[1]: PurchasableStateEnum_upvr (readonly)
		[2]: getThumbnailUrl_upvr (readonly)
		[3]: PurchasableStateToItemPurchaseStatusMap_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [122] 75. Error Block 16 start (CF ANALYSIS FAILED)
	do
		return {
			totalCost = arg1.totalCost or 0;
			items = {};
			ownedItems = {};
			unpurchasableItems = {};
			balance = arg1.balance or 0;
		}
	end
	-- KONSTANTERROR: [122] 75. Error Block 16 end (CF ANALYSIS FAILED)
end
local function selectOptions_upvr(arg1) -- Line 195, Named "selectOptions"
	return arg1.options
end
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local selectPurchaseResults_upvr = require(BulkPurchaseApp.Store.Selectors.selectPurchaseResults)
local selectOrderRequest_upvr = require(BulkPurchaseApp.Store.Selectors.selectOrderRequest)
local selectItemData_upvr = require(BulkPurchaseApp.Store.Selectors.selectItemData)
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local BulkPurchaseEnded_upvr = require(BulkPurchaseApp.Store.Actions.BulkPurchaseEnded)
local BulkPurchaseSucceeded_upvr = require(BulkPurchaseApp.Store.Actions.BulkPurchaseSucceeded)
local BulkPurchasePromptStateEnum_upvr = require(BulkPurchaseApp.Enums.BulkPurchasePromptStateEnum)
local BulkPurchaseFailed_upvr = require(BulkPurchaseApp.Store.Actions.BulkPurchaseFailed)
local ItemStatusToErrorCodeMap_upvr = require(BulkPurchaseApp.Enums.ItemStatusToErrorCodeMap)
local ErrorCodeEnum_upvr = require(BulkPurchaseApp.Enums.ErrorCodeEnum)
local getPaymentPlatform_upvr = require(BulkPurchaseApp.Utils.getPaymentPlatform)
local PaymentPlatformEnum_upvr = require(BulkPurchaseApp.Enums.PaymentPlatformEnum)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixBuyRobuxForAndroid", false)
local HttpService_upvr = game:GetService("HttpService")
local getRobuxStoreUrl_upvr = require(BulkPurchaseApp.Utils.getRobuxStoreUrl)
local BrowserService_upvr = game:GetService("BrowserService")
local FFlagFixVP8143_upvr = require(BulkPurchaseApp.Flags.FFlagFixVP8143)
local React_upvr = require(Parent.React)
local RunService_upvr = game:GetService("RunService")
local getGuiObjectIsObscured_upvr = require(BulkPurchaseApp.Utils.getGuiObjectIsObscured)
return function() -- Line 199, Named "useBulkPurchaseRequestProps"
	--[[ Upvalues[25]:
		[1]: useDispatch_upvr (readonly)
		[2]: useSelector_upvr (readonly)
		[3]: selectBulkPurchaseRequestState_upvr (readonly)
		[4]: selectPurchaseResults_upvr (readonly)
		[5]: selectOrderRequest_upvr (readonly)
		[6]: selectOptions_upvr (readonly)
		[7]: selectItemData_upvr (readonly)
		[8]: MarketplaceService_upvr (readonly)
		[9]: BulkPurchaseEnded_upvr (readonly)
		[10]: getItemResultsFromResponse_upvr (readonly)
		[11]: BulkPurchaseSucceeded_upvr (readonly)
		[12]: BulkPurchasePromptStateEnum_upvr (readonly)
		[13]: BulkPurchaseFailed_upvr (readonly)
		[14]: ItemStatusToErrorCodeMap_upvr (readonly)
		[15]: ErrorCodeEnum_upvr (readonly)
		[16]: getPaymentPlatform_upvr (readonly)
		[17]: PaymentPlatformEnum_upvr (readonly)
		[18]: game_DefineFastFlag_result1_upvr (readonly)
		[19]: HttpService_upvr (readonly)
		[20]: getRobuxStoreUrl_upvr (readonly)
		[21]: BrowserService_upvr (readonly)
		[22]: FFlagFixVP8143_upvr (readonly)
		[23]: React_upvr (readonly)
		[24]: RunService_upvr (readonly)
		[25]: getGuiObjectIsObscured_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var29_result1 = useSelector_upvr(selectBulkPurchaseRequestState_upvr)
	local useSelector_upvr_result1_upvr = useSelector_upvr(selectPurchaseResults_upvr)
	local var29_result1_4_upvr = useSelector_upvr(selectOrderRequest_upvr)
	local var29_result1_3_upvr = useSelector_upvr(selectOptions_upvr)
	local var29_result1_2_upvr = useSelector_upvr(selectItemData_upvr)
	local var65
	if FFlagFixVP8143_upvr then
		local any_useState_result1, any_useState_result2_upvw = React_upvr.useState(true)
		var65 = any_useState_result1
		local any_useRef_result1_upvw = React_upvr.useRef(nil)
		React_upvr.useEffect(function() -- Line 279
			--[[ Upvalues[4]:
				[1]: RunService_upvr (copied, readonly)
				[2]: any_useRef_result1_upvw (read and write)
				[3]: getGuiObjectIsObscured_upvr (copied, readonly)
				[4]: any_useState_result2_upvw (read and write)
			]]
			local any_Connect_result1_upvr = RunService_upvr.Heartbeat:Connect(function() -- Line 280
				--[[ Upvalues[3]:
					[1]: any_useRef_result1_upvw (copied, read and write)
					[2]: getGuiObjectIsObscured_upvr (copied, readonly)
					[3]: any_useState_result2_upvw (copied, read and write)
				]]
				if any_useRef_result1_upvw.current and typeof(any_useRef_result1_upvw.current) == "Instance" and any_useRef_result1_upvw.current:IsA("GuiObject") then
					any_useState_result2_upvw(getGuiObjectIsObscured_upvr(any_useRef_result1_upvw.current) or game.StarterGui:GetCore("DevConsoleVisible"))
				end
			end)
			return function() -- Line 291
				--[[ Upvalues[1]:
					[1]: any_Connect_result1_upvr (readonly)
				]]
				any_Connect_result1_upvr:Disconnect()
			end
		end, {})
	end
	local tbl = {
		currentBalance = var29_result1.balance;
		items = var29_result1.items;
		ownedItems = var29_result1.ownedItems;
	}
	local unpurchasableItems = var29_result1.unpurchasableItems
	tbl.unpurchasableItems = unpurchasableItems
	function tbl.onClose() -- Line 209
		--[[ Upvalues[4]:
			[1]: MarketplaceService_upvr (copied, readonly)
			[2]: useSelector_upvr_result1_upvr (readonly)
			[3]: useDispatch_upvr_result1_upvr (readonly)
			[4]: BulkPurchaseEnded_upvr (copied, readonly)
		]]
		MarketplaceService_upvr:signalPromptBulkPurchaseFinished(2, useSelector_upvr_result1_upvr)
		useDispatch_upvr_result1_upvr(BulkPurchaseEnded_upvr())
	end
	if var29_result1.balance < var29_result1.totalCost then
		function unpurchasableItems() -- Line 248
			--[[ Upvalues[10]:
				[1]: getPaymentPlatform_upvr (copied, readonly)
				[2]: PaymentPlatformEnum_upvr (copied, readonly)
				[3]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[4]: HttpService_upvr (copied, readonly)
				[5]: getRobuxStoreUrl_upvr (copied, readonly)
				[6]: BrowserService_upvr (copied, readonly)
				[7]: useDispatch_upvr_result1_upvr (readonly)
				[8]: BulkPurchaseEnded_upvr (copied, readonly)
				[9]: BulkPurchaseFailed_upvr (copied, readonly)
				[10]: ErrorCodeEnum_upvr (copied, readonly)
			]]
			local var40_result1 = getPaymentPlatform_upvr()
			if var40_result1 == PaymentPlatformEnum_upvr.Desktop or var40_result1 == PaymentPlatformEnum_upvr.Mobile then
				if game_DefineFastFlag_result1_upvr then
					BrowserService_upvr:SendCommand(HttpService_upvr:JSONEncode({
						command = "open";
						url = getRobuxStoreUrl_upvr();
					}))
				else
					BrowserService_upvr:OpenBrowserWindow(getRobuxStoreUrl_upvr())
				end
				useDispatch_upvr_result1_upvr(BulkPurchaseEnded_upvr())
			else
				useDispatch_upvr_result1_upvr(BulkPurchaseFailed_upvr(ErrorCodeEnum_upvr.InsufficientRobux))
			end
		end
	else
		unpurchasableItems = function() -- Line 216
			--[[ Upvalues[11]:
				[1]: MarketplaceService_upvr (copied, readonly)
				[2]: var29_result1_4_upvr (readonly)
				[3]: var29_result1_3_upvr (readonly)
				[4]: getItemResultsFromResponse_upvr (copied, readonly)
				[5]: var29_result1_2_upvr (readonly)
				[6]: useDispatch_upvr_result1_upvr (readonly)
				[7]: BulkPurchaseSucceeded_upvr (copied, readonly)
				[8]: BulkPurchasePromptStateEnum_upvr (copied, readonly)
				[9]: BulkPurchaseFailed_upvr (copied, readonly)
				[10]: ItemStatusToErrorCodeMap_upvr (copied, readonly)
				[11]: ErrorCodeEnum_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local pcall_result1, pcall_result2 = pcall(function() -- Line 217
				--[[ Upvalues[3]:
					[1]: MarketplaceService_upvr (copied, readonly)
					[2]: var29_result1_4_upvr (copied, readonly)
					[3]: var29_result1_3_upvr (copied, readonly)
				]]
				return MarketplaceService_upvr:PerformBulkPurchase(var29_result1_4_upvr, var29_result1_3_upvr)
			end)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [8] 8. Error Block 2 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [8] 8. Error Block 2 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [29] 25. Error Block 27 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [29.4]
			local var61
			if not var61 then
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [36.2]
				useDispatch_upvr_result1_upvr(BulkPurchaseSucceeded_upvr(BulkPurchasePromptStateEnum_upvr.PartialSuccess, nil))
			else
				if var61 == Enum.MarketplaceItemPurchaseStatus.Success then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					useDispatch_upvr_result1_upvr(BulkPurchaseSucceeded_upvr(BulkPurchasePromptStateEnum_upvr.Success, nil))
					return
				end
				useDispatch_upvr_result1_upvr(BulkPurchaseFailed_upvr(ItemStatusToErrorCodeMap_upvr[var61]))
				do
					return
				end
				-- KONSTANTERROR: [29] 25. Error Block 27 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [64] 54. Error Block 25 start (CF ANALYSIS FAILED)
				if string.find(pcall_result2, "403") then
					useDispatch_upvr_result1_upvr(BulkPurchaseFailed_upvr(ErrorCodeEnum_upvr.TwoStepVerificationRequired))
					return
				end
				useDispatch_upvr_result1_upvr(BulkPurchaseFailed_upvr(ErrorCodeEnum_upvr.Generic))
				-- KONSTANTERROR: [64] 54. Error Block 25 end (CF ANALYSIS FAILED)
			end
		end
	end
	tbl.onAccept = unpurchasableItems
	tbl.totalCost = var29_result1.totalCost
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [110] 92. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [110] 92. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [112] 94. Error Block 23 start (CF ANALYSIS FAILED)
	if #var29_result1.items ~= 0 then
		-- KONSTANTWARNING: GOTO [119] #99
	end
	-- KONSTANTERROR: [112] 94. Error Block 23 end (CF ANALYSIS FAILED)
end