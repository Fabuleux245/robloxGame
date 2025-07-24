-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:00:01
-- Luau version 6, Types version 3
-- Time taken: 0.001889 seconds

local Parent = script:FindFirstAncestor("CommercePurchaseApp").Parent
local ToastRodux = require(Parent.ToastRodux)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local CommerceService_upvr = game:GetService("CommerceService")
local ToastType_upvr = ToastRodux.Enums.ToastType
local SetCurrentToastMessage_upvr = ToastRodux.Actions.SetCurrentToastMessage
return function() -- Line 13, Named "useBenefitStatusReceivedListenerEffect"
	--[[ Upvalues[6]:
		[1]: useDispatch_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: CommerceService_upvr (readonly)
		[5]: ToastType_upvr (readonly)
		[6]: SetCurrentToastMessage_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var4_result1_upvr = useLocalization_upvr({
		granted = "CoreScripts.CommercePurchasePrompt.SuccessToast.Granted";
		pending = "CoreScripts.CommercePurchasePrompt.SuccessToast.GrantPending";
	})
	React_upvr.useEffect(function() -- Line 19
		--[[ Upvalues[5]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: CommerceService_upvr (copied, readonly)
			[3]: ToastType_upvr (copied, readonly)
			[4]: var4_result1_upvr (readonly)
			[5]: SetCurrentToastMessage_upvr (copied, readonly)
		]]
		local var13_upvw
		if useDispatch_upvr_result1_upvr then
			var13_upvw = CommerceService_upvr.BenefitStatusReceived:Connect(function(arg1) -- Line 22
				--[[ Upvalues[4]:
					[1]: ToastType_upvr (copied, readonly)
					[2]: var4_result1_upvr (copied, readonly)
					[3]: useDispatch_upvr_result1_upvr (copied, readonly)
					[4]: SetCurrentToastMessage_upvr (copied, readonly)
				]]
				if arg1 then
					local tbl = {
						toastType = ToastType_upvr.SuccessConfirmation;
						toastTitle = var4_result1_upvr.granted;
					}
				else
				end
				useDispatch_upvr_result1_upvr(SetCurrentToastMessage_upvr({
					toastType = ToastType_upvr.NetworkingError;
					toastTitle = var4_result1_upvr.pending;
				}))
			end)
		end
		return function() -- Line 29
			--[[ Upvalues[1]:
				[1]: var13_upvw (read and write)
			]]
			if var13_upvw then
				var13_upvw:Disconnect()
				var13_upvw = nil
			end
		end
	end, {useDispatch_upvr_result1_upvr, var4_result1_upvr})
end