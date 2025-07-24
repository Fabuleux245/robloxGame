-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:17
-- Luau version 6, Types version 3
-- Time taken: 0.002333 seconds

local MarketplaceService = game:GetService("MarketplaceService")
local module_upvr = {
	fetchedDonations = {};
}
local function _(arg1, arg2) -- Line 13, Named "isPopfeedDonation"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var3 = module_upvr.fetchedDonations[arg1.UserId]
	if not var3 then
		return false
	end
	if not var3[arg2] then
		return false
	end
	return true
end
local BatchHTTP_upvr = require(script.Parent.Parent.BatchHTTP)
local HttpService_upvr = game:GetService("HttpService")
local function sendDonationConfirmation_upvr(arg1, arg2) -- Line 26, Named "sendDonationConfirmation"
	--[[ Upvalues[3]:
		[1]: BatchHTTP_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local any_getNewUrl_result1_upvr = BatchHTTP_upvr.getNewUrl("popfeed/donations/verify")
	local pcall_result1, pcall_result2 = pcall(function() -- Line 29
		--[[ Upvalues[6]:
			[1]: HttpService_upvr (copied, readonly)
			[2]: any_getNewUrl_result1_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: module_upvr (copied, readonly)
			[5]: arg2 (readonly)
			[6]: BatchHTTP_upvr (copied, readonly)
		]]
		local module = {
			donor = arg1.UserId;
			recipient = module_upvr.fetchedDonations[arg1.UserId][arg2].sellerId;
		}
		module.item_id = arg2
		module.donation_type = module_upvr.fetchedDonations[arg1.UserId][arg2].itemType
		module.game_id = game.GameId
		return HttpService_upvr:PostAsync(any_getNewUrl_result1_upvr, HttpService_upvr:JSONEncode(module), nil, nil, BatchHTTP_upvr.getGeneralRequestHeaders())
	end)
	if not pcall_result1 then
		warn("Donation confirmation failed", pcall_result2)
		return
	end
	return HttpService_upvr:JSONDecode(pcall_result2)
end
function module_upvr.cacheDonations(arg1, arg2, arg3) -- Line 75
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var17
	if not var17 then
		module_upvr.fetchedDonations[arg1.UserId] = {}
		var17 = module_upvr.fetchedDonations[arg1.UserId]
	end
	for _, v in arg3 do
		local tbl = {}
		tbl.sellerId = arg2
		tbl.itemType = v.item_type
		tbl.price = v.robux
		var17[v.item_id] = tbl
	end
end
MarketplaceService.PromptGamePassPurchaseFinished:Connect(function(arg1, arg2, arg3) -- Line 49, Named "onGamePassPurchase"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: sendDonationConfirmation_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
	if not arg3 then
	else
		local var11 = module_upvr.fetchedDonations[arg1.UserId]
		if not var11 then
			-- KONSTANTWARNING: GOTO [16] #15
		end
		-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 10. Error Block 19 start (CF ANALYSIS FAILED)
		if not var11[arg2] then
		else
		end
		if true then
			sendDonationConfirmation_upvr(arg1, arg2)
		end
		-- KONSTANTERROR: [11] 10. Error Block 19 end (CF ANALYSIS FAILED)
	end
end)
MarketplaceService.PromptPurchaseFinished:Connect(function(arg1, arg2, arg3) -- Line 59, Named "onClothesPurchase"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: sendDonationConfirmation_upvr (readonly)
	]]
	if not arg3 then
	else
		local var12 = module_upvr.fetchedDonations[arg1.UserId]
		if not var12 then
		elseif not var12[arg2] then
		else
		end
		if true then
			sendDonationConfirmation_upvr(arg1, arg2)
		end
	end
end)
game:GetService("Players").PlayerRemoving:Connect(function(arg1) -- Line 69, Named "onPlayerRemoving"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr.fetchedDonations[arg1] then
		module_upvr.fetchedDonations[arg1] = nil
	end
end)
return module_upvr