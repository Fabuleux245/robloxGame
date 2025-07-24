-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:45
-- Luau version 6, Types version 3
-- Time taken: 0.003348 seconds

local module_upvr = {}
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_2_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module = require(Modules:WaitForChild("Signal"))
local module_upvr_2 = require(Modules:WaitForChild("Utility"))
local tbl_upvr = {
	CachedSubscriptionInfo_BySubscription = {};
}
module_upvr.SubscriptionType = table.freeze({
	Test = 0;
	VIP = 1;
})
module_upvr.Subscriptions = {}
module_upvr.Data_ByType = {}
module_upvr.Data_ById = {}
module_upvr.Data_ByNetworkId = {}
local any_ByteCounterCreate_result1_upvr = module_upvr_2.ByteCounterCreate()
local function ProcessSubscriptionArray(arg1, arg2) -- Line 58
	--[[ Upvalues[4]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: any_ByteCounterCreate_result1_upvr (readonly)
	]]
	local any_TableBuildSub_result1 = module_upvr_2.TableBuildSub(module_upvr.Data_ByType, arg1)
	for _, v in ipairs(arg2) do
		if not v.SubscriptionId then
			error(module_2_upvr.FormatOutput("Missing SubscriptionId for pass in array type '%i'", "Subscriptions", nil, arg1))
		end
		module_upvr_2.ByteCounterIncrement(any_ByteCounterCreate_result1_upvr)
		v.Type = arg1
		v.NetworkId = module_upvr_2.ByteCounterRead(any_ByteCounterCreate_result1_upvr)
		if module_upvr.Data_ById[v.SubscriptionId] and module_upvr.Data_ById[v.SubscriptionId] ~= v then
			error(module_2_upvr.FormatOutput("Duplicate entries for Subscription '%s'", "Subscriptions", nil, v.SubscriptionId))
		end
		module_upvr.Data_ById[v.SubscriptionId] = v
		module_upvr.Data_ByNetworkId[v.NetworkId] = v
		if not table.find(any_TableBuildSub_result1, v) then
			any_TableBuildSub_result1[#any_TableBuildSub_result1 + 1] = v
		end
	end
	return arg2
end
module_upvr.Subscriptions.Test = ProcessSubscriptionArray(module_upvr.SubscriptionType.Test, {{
	Disabled = true;
	SubscriptionId = "EXP-0";
}, {
	Disabled = true;
	SubscriptionId = "EXP-1";
}, {
	Disabled = true;
	SubscriptionId = "EXP-2";
}, {
	Disabled = true;
	SubscriptionId = "EXP-3";
}})
module_upvr.TestSubscriptions = {
	Active = module_upvr.Subscriptions.Test[1];
	Returning = module_upvr.Subscriptions.Test[2];
	Refunded = module_upvr.Subscriptions.Test[3];
	PaymentPending = module_upvr.Subscriptions.Test[4];
}
module_upvr.Subscriptions.VIP = ProcessSubscriptionArray(module_upvr.SubscriptionType.VIP, {{
	SubscriptionId = "EXP-3645104455154401494";
}})
function module_upvr.SubscriptionBuy(arg1, arg2) -- Line 136
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: MarketplaceService_upvr (readonly)
	]]
	if arg2.IsInGame and not arg1.Disabled and arg1.Type ~= module_upvr.SubscriptionType.Test then
		MarketplaceService_upvr:PromptSubscriptionPurchase(arg2.Player, arg1.SubscriptionId)
	end
end
local RunService_upvr = game:GetService("RunService")
local module_3_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
function module_upvr.SubscriptionGetSubscriptionInfo(arg1, arg2) -- Line 151
	--[[ Upvalues[5]:
		[1]: RunService_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: MarketplaceService_upvr (readonly)
		[5]: module_3_upvr (readonly)
	]]
	if not RunService_upvr:IsClient() then
		error(module_2_upvr.FormatOutput("Only client can request SubscriptionInfo", "Subscriptions"), 2)
	end
	local var29 = tbl_upvr.CachedSubscriptionInfo_BySubscription[arg1]
	if not var29 or arg2 then
		repeat
			local pcall_result1, pcall_result2 = pcall(MarketplaceService_upvr.GetSubscriptionProductInfoAsync, MarketplaceService_upvr, arg1.SubscriptionId)
			local var32 = pcall_result1
			var29 = pcall_result2
			if not var32 then
				task.wait(module_3_upvr.MarketplaceFetchRetryDelay)
			end
		until not var32 or var29
		tbl_upvr.CachedSubscriptionInfo_BySubscription[arg1] = var29
	end
	return var29
end
for _, v_2 in module_upvr do
	if type(v_2) == "table" then
		module_upvr_2.TableFreezeAll(v_2)
	end
end
module_upvr.SubscriptionStatusChanged = module.new()
module_upvr.LegacyVIPStatusChanged = module.new()
local _1_upvr = module_upvr.Subscriptions.VIP[1]
function module_upvr.PlayerStateResolveLegacyVIP(arg1, arg2, arg3) -- Line 198
	--[[ Upvalues[3]:
		[1]: _1_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local var34 = _1_upvr
	if arg2 == var34 then
		if arg3.Status == module_2_upvr.SubscriptionStatus.Active then
			var34 = true
		else
			var34 = nil
		end
		if arg1.PlayerIdentity.IsLegacyVIP ~= var34 then
			arg1.PlayerIdentity.IsLegacyVIP = var34
			module_upvr.LegacyVIPStatusChanged:Fire(arg1)
		end
	end
end
table.freeze(module_upvr)
return module_upvr