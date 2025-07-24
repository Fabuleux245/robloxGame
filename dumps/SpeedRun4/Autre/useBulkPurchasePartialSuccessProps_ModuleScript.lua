-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:37
-- Luau version 6, Types version 3
-- Time taken: 0.001536 seconds

local BulkPurchaseApp = script:FindFirstAncestor("BulkPurchaseApp")
local Parent = BulkPurchaseApp.Parent
local getThumbnailUrl_upvr = require(BulkPurchaseApp.Utils.getThumbnailUrl)
local function _(arg1, arg2) -- Line 18, Named "createBulkPurchasePartialSuccessItem"
	--[[ Upvalues[1]:
		[1]: getThumbnailUrl_upvr (readonly)
	]]
	local module = {
		id = arg1.id;
		image = getThumbnailUrl_upvr(arg1.id, arg1.type);
		name = arg1.name;
	}
	module.status = arg2
	return module
end
local function selectBulkPurchasePartialSuccessState_upvr(arg1) -- Line 30, Named "selectBulkPurchasePartialSuccessState"
	--[[ Upvalues[1]:
		[1]: getThumbnailUrl_upvr (readonly)
	]]
	local var9
	if arg1.itemData and arg1.itemStatuses then
		for _, v in arg1.itemData do
			local var10 = arg1.itemStatuses[v.id]
			local tbl = {
				id = v.id;
				image = getThumbnailUrl_upvr(v.id, v.type);
				name = v.name;
				status = var10;
			}
			if var10 == Enum.MarketplaceItemPurchaseStatus.Success then
				var9 += v.priceRobux
				table.insert({}, tbl)
			elseif var10 then
				table.insert({}, tbl)
			end
		end
	end
	local module_2 = {
		robuxSpent = var9;
		currentBalance = arg1.balance or 0;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_2.unsuccessfulItems = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module_2.successfulItems = {}
	return module_2
end
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local selectPurchaseResults_upvr = require(BulkPurchaseApp.Store.Selectors.selectPurchaseResults)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local BulkPurchaseEnded_upvr = require(BulkPurchaseApp.Store.Actions.BulkPurchaseEnded)
return function() -- Line 54, Named "useBulkPurchasePartialSuccessProps"
	--[[ Upvalues[7]:
		[1]: useSelector_upvr (readonly)
		[2]: selectPurchaseResults_upvr (readonly)
		[3]: selectBulkPurchasePartialSuccessState_upvr (readonly)
		[4]: useDispatch_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: MarketplaceService_upvr (readonly)
		[7]: BulkPurchaseEnded_upvr (readonly)
	]]
	local useSelector_upvr_result1_upvr = useSelector_upvr(selectPurchaseResults_upvr)
	local useSelector_upvr_result1 = useSelector_upvr(selectBulkPurchasePartialSuccessState_upvr)
	local var15_result1_upvr = useDispatch_upvr()
	return {
		onDismiss = React_upvr.useCallback(function() -- Line 59
			--[[ Upvalues[4]:
				[1]: MarketplaceService_upvr (copied, readonly)
				[2]: useSelector_upvr_result1_upvr (readonly)
				[3]: var15_result1_upvr (readonly)
				[4]: BulkPurchaseEnded_upvr (copied, readonly)
			]]
			MarketplaceService_upvr:signalPromptBulkPurchaseFinished(1, useSelector_upvr_result1_upvr)
			var15_result1_upvr(BulkPurchaseEnded_upvr())
		end, {useSelector_upvr_result1_upvr, var15_result1_upvr});
		successfulItems = useSelector_upvr_result1.successfulItems;
		unsuccessfulItems = useSelector_upvr_result1.unsuccessfulItems;
		robuxSpent = useSelector_upvr_result1.robuxSpent;
		currentBalance = useSelector_upvr_result1.currentBalance;
	}
end