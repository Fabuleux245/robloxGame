-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:02
-- Luau version 6, Types version 3
-- Time taken: 0.001353 seconds

local CommercePurchaseApp = script:FindFirstAncestor("CommercePurchaseApp")
local Parent = CommercePurchaseApp.Parent
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local selectPromptState_upvr = require(CommercePurchaseApp.Store.Selectors.selectPromptState)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local FFlagAddCommerceErrors_upvr = require(CommercePurchaseApp.Flags.FFlagAddCommerceErrors)
local React_upvr = require(Parent.React)
local CommerceService_upvr = game:GetService("CommerceService")
local CommercePurchasePromptStateEnum_upvr = require(CommercePurchaseApp.Enums.CommercePurchasePromptStateEnum)
local InitiateCommercePurchaseFlow_upvr = require(CommercePurchaseApp.Store.Thunks.InitiateCommercePurchaseFlow)
return function() -- Line 15, Named "useCommercePurchaseRequestListenerEffect"
	--[[ Upvalues[9]:
		[1]: useDispatch_upvr (readonly)
		[2]: useSelector_upvr (readonly)
		[3]: selectPromptState_upvr (readonly)
		[4]: useLocalization_upvr (readonly)
		[5]: FFlagAddCommerceErrors_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: CommerceService_upvr (readonly)
		[8]: CommercePurchasePromptStateEnum_upvr (readonly)
		[9]: InitiateCommercePurchaseFlow_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local tbl = {}
	local var16
	if FFlagAddCommerceErrors_upvr then
		var16 = "CoreScripts.CommercePurchasePrompt.ErrorPrompt.Body.ErrorLoading"
	else
		var16 = "CoreScripts.CommercePurchasePrompt.ErrorPrompt.GenericError"
	end
	tbl.genericError = var16
	local var6_result1_upvr = useLocalization_upvr(tbl)
	var16 = React_upvr
	local useSelector_upvr_result1_upvr = useSelector_upvr(selectPromptState_upvr)
	function var16() -- Line 24
		--[[ Upvalues[6]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: CommerceService_upvr (copied, readonly)
			[3]: useSelector_upvr_result1_upvr (readonly)
			[4]: CommercePurchasePromptStateEnum_upvr (copied, readonly)
			[5]: InitiateCommercePurchaseFlow_upvr (copied, readonly)
			[6]: var6_result1_upvr (readonly)
		]]
		local var18_upvw
		if useDispatch_upvr_result1_upvr then
			var18_upvw = CommerceService_upvr.PromptCommerceProductPurchaseRequested:Connect(function(arg1) -- Line 28
				--[[ Upvalues[5]:
					[1]: useSelector_upvr_result1_upvr (copied, readonly)
					[2]: CommercePurchasePromptStateEnum_upvr (copied, readonly)
					[3]: useDispatch_upvr_result1_upvr (copied, readonly)
					[4]: InitiateCommercePurchaseFlow_upvr (copied, readonly)
					[5]: var6_result1_upvr (copied, readonly)
				]]
				if useSelector_upvr_result1_upvr == CommercePurchasePromptStateEnum_upvr.None then
					useDispatch_upvr_result1_upvr(InitiateCommercePurchaseFlow_upvr(arg1, var6_result1_upvr.genericError))
				end
			end)
		end
		return function() -- Line 35
			--[[ Upvalues[1]:
				[1]: var18_upvw (read and write)
			]]
			if var18_upvw then
				var18_upvw:Disconnect()
				var18_upvw = nil
			end
		end
	end
	var16.useEffect(var16, {useDispatch_upvr_result1_upvr, var6_result1_upvr})
end