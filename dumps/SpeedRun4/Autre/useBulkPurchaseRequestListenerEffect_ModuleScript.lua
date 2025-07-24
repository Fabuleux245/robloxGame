-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:43
-- Luau version 6, Types version 3
-- Time taken: 0.001669 seconds

local BulkPurchaseApp = script:FindFirstAncestor("BulkPurchaseApp")
local Parent = BulkPurchaseApp.Parent
local PurchasableStateEnum_upvr = require(BulkPurchaseApp.Enums.PurchasableStateEnum)
local function transformItemDataToBulkPurchaseItemData_upvr(arg1) -- Line 18, Named "transformItemDataToBulkPurchaseItemData"
	--[[ Upvalues[1]:
		[1]: PurchasableStateEnum_upvr (readonly)
	]]
	local module = {}
	for _, v in arg1 do
		local tbl = {
			id = v.id;
			name = v.name;
			description = v.description;
			priceRobux = v.priceRobux;
			type = v.type;
			ownedCount = v.ownedCount;
			quantityLimitPerUser = v.quantityLimitPerUser;
		}
		local isLimited = v.isLimited
		tbl.isLimited = isLimited
		if v.purchaseableState == "Purchaseable" then
			isLimited = PurchasableStateEnum_upvr.Purchasable
		else
			isLimited = v.purchaseableState
		end
		tbl.purchasableState = isLimited
		table.insert(module, tbl)
	end
	return module
end
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useNetwork_upvr = require(Parent.EconomyCommonCoreScriptHooks).useNetwork
local React_upvr = require(Parent.React)
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local Players_upvr = game:GetService("Players")
local InitiateBulkPurchaseFlow_upvr = require(BulkPurchaseApp.Store.Thunks.InitiateBulkPurchaseFlow)
return function() -- Line 39, Named "useBulkPurchaseRequestListenerEffect"
	--[[ Upvalues[7]:
		[1]: useDispatch_upvr (readonly)
		[2]: useNetwork_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: MarketplaceService_upvr (readonly)
		[5]: Players_upvr (readonly)
		[6]: InitiateBulkPurchaseFlow_upvr (readonly)
		[7]: transformItemDataToBulkPurchaseItemData_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var12_result1_upvr = useNetwork_upvr()
	React_upvr.useEffect(function() -- Line 42
		--[[ Upvalues[6]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: var12_result1_upvr (readonly)
			[3]: MarketplaceService_upvr (copied, readonly)
			[4]: Players_upvr (copied, readonly)
			[5]: InitiateBulkPurchaseFlow_upvr (copied, readonly)
			[6]: transformItemDataToBulkPurchaseItemData_upvr (copied, readonly)
		]]
		local var20_upvw
		if useDispatch_upvr_result1_upvr and var12_result1_upvr then
			var20_upvw = MarketplaceService_upvr.PromptBulkPurchaseRequested:Connect(function(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 46
				--[[ Upvalues[5]:
					[1]: Players_upvr (copied, readonly)
					[2]: useDispatch_upvr_result1_upvr (copied, readonly)
					[3]: InitiateBulkPurchaseFlow_upvr (copied, readonly)
					[4]: var12_result1_upvr (copied, readonly)
					[5]: transformItemDataToBulkPurchaseItemData_upvr (copied, readonly)
				]]
				if arg1 == Players_upvr.LocalPlayer then
					useDispatch_upvr_result1_upvr(InitiateBulkPurchaseFlow_upvr(var12_result1_upvr, transformItemDataToBulkPurchaseItemData_upvr(arg2), arg3, arg4, arg5, arg6))
				end
			end)
		end
		return function() -- Line 69
			--[[ Upvalues[1]:
				[1]: var20_upvw (read and write)
			]]
			if var20_upvw then
				var20_upvw:Disconnect()
				var20_upvw = nil
			end
		end
	end, {useDispatch_upvr_result1_upvr, var12_result1_upvr})
end