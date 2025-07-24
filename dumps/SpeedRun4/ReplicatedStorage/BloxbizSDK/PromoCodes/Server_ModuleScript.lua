-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:00
-- Luau version 6, Types version 3
-- Time taken: 0.001923 seconds

local ConfigReader_upvr = require(script.Parent.Parent.ConfigReader)
local Distributors_upvr = require(script.Parent.Distributors)
local Validators_upvr = require(script.Parent.Validators)
local module_upvr = {
	init = function() -- Line 7, Named "init"
		--[[ Upvalues[2]:
			[1]: ConfigReader_upvr (readonly)
			[2]: Validators_upvr (readonly)
		]]
		if ConfigReader_upvr:read("AutoValidatePromoCodesClaims") then
			Validators_upvr.validateOnJoin()
		end
	end;
	getCampaignId = function() -- Line 14, Named "getCampaignId"
		--[[ Upvalues[1]:
			[1]: ConfigReader_upvr (readonly)
		]]
		return ConfigReader_upvr:read("PromoCodesCampaignID")
	end;
}
function module_upvr.distributeCode(arg1, arg2) -- Line 20
	--[[ Upvalues[2]:
		[1]: Distributors_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var5 = arg2
	if not var5 then
		var5 = {}
	end
	local var6 = var5
	local campaign = var6.campaign
	if not campaign then
		campaign = module_upvr.getCampaignId()
	end
	return Distributors_upvr.distributeCode(arg1, campaign, var6)
end
function module_upvr.currentBatch(arg1) -- Line 28
	--[[ Upvalues[2]:
		[1]: Distributors_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var8 = arg1
	if not var8 then
		var8 = {}
	end
	local var9 = var8
	local campaign_2 = var9.campaign
	if not campaign_2 then
		campaign_2 = module_upvr.getCampaignId()
	end
	return Distributors_upvr.getCurrentBatch(campaign_2, var9)
end
function module_upvr.validateClaim(arg1, arg2) -- Line 36
	--[[ Upvalues[1]:
		[1]: Validators_upvr (readonly)
	]]
	return Validators_upvr.validateClaim(arg1, arg2)
end
module_upvr.PlayerReceivedReward = Validators_upvr._playerReceivedRewardServer.Event
return module_upvr