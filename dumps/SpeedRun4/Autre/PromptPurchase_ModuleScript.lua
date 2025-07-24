-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:52:40
-- Luau version 6, Types version 3
-- Time taken: 0.001606 seconds

local Parent = script.Parent.Parent
local Analytics_upvr = require(Parent.Services.Analytics)
local module_upvr = {Analytics_upvr}
local Thunk_upvr = require(Parent.Thunk)
local SetItemBeingPurchased_upvr = require(Parent.Actions.SetItemBeingPurchased)
local Constants_upvr = require(Parent.Constants)
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local Players_upvr = game:GetService("Players")
local SendCounter_upvr = require(Parent.Thunks.SendCounter)
return function(arg1, arg2, arg3, arg4, arg5, arg6, arg7) -- Line 18, Named "PromptPurchase"
	--[[ Upvalues[8]:
		[1]: Thunk_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: Analytics_upvr (readonly)
		[4]: SetItemBeingPurchased_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: MarketplaceService_upvr (readonly)
		[7]: Players_upvr (readonly)
		[8]: SendCounter_upvr (readonly)
	]]
	return Thunk_upvr.new(script.Name, module_upvr, function(arg1_2, arg2_2) -- Line 27
		--[[ Upvalues[13]:
			[1]: Analytics_upvr (copied, readonly)
			[2]: SetItemBeingPurchased_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: arg2 (readonly)
			[5]: arg4 (readonly)
			[6]: Constants_upvr (copied, readonly)
			[7]: MarketplaceService_upvr (copied, readonly)
			[8]: Players_upvr (copied, readonly)
			[9]: arg3 (readonly)
			[10]: arg5 (readonly)
			[11]: arg6 (readonly)
			[12]: SendCounter_upvr (copied, readonly)
			[13]: arg7 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 30 start (CF ANALYSIS FAILED)
		arg1_2:dispatch(SetItemBeingPurchased_upvr(arg1, arg2))
		local var11 = false
		if arg4 ~= nil then
			if arg2 == Constants_upvr.ItemType.Bundle then
				var11 = false
			else
				var11 = true
			end
		end
		if var11 then
			MarketplaceService_upvr:PromptCollectiblesPurchase(Players_upvr.LocalPlayer, arg1, arg3, arg5, arg4, arg6)
			arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.PromptLimitedCollectiblesPurchase))
			-- KONSTANTWARNING: GOTO [135] #102
		end
		-- KONSTANTERROR: [0] 1. Error Block 30 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [47] 38. Error Block 27 start (CF ANALYSIS FAILED)
		if arg2 == Constants_upvr.ItemType.Bundle then
			MarketplaceService_upvr:PromptBundlePurchase(Players_upvr.LocalPlayer, arg1)
			arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.PromptBundlePurchase))
		elseif arg2 == Constants_upvr.ItemType.Asset then
			if arg3 ~= nil and not arg7 then
				MarketplaceService_upvr:PromptPurchase(Players_upvr.LocalPlayer, arg1, false)
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.PromptUnlimitedCollectiblePurchase))
			else
				MarketplaceService_upvr:PromptRobloxPurchase(arg1, false)
				arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.PromptRobloxPurchase))
			end
		else
			arg1_2:dispatch(SendCounter_upvr(Constants_upvr.Counters.PromptPurchaseUnknownItemType))
		end
		-- KONSTANTERROR: [47] 38. Error Block 27 end (CF ANALYSIS FAILED)
	end)
end