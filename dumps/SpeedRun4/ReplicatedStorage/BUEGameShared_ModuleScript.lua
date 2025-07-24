-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:41
-- Luau version 6, Types version 3
-- Time taken: 0.002600 seconds

local module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local ResolveProduct_upvr
if ResolveProduct_upvr then
	ResolveProduct_upvr = module_upvr.IsSpeedRun4
end
module.UseTestBadges = ResolveProduct_upvr
function ResolveProduct_upvr(arg1, ...) -- Line 18, Named "ResolveProduct"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local any_ResolveGamepassId_result1 = module_upvr.ResolveGamepassId(...)
	local var6
	if any_ResolveGamepassId_result1 then
		local tbl = {
			Id = any_ResolveGamepassId_result1;
		}
		tbl.Price = arg1
		var6 = tbl
	end
	return var6
end
local function AssertProduct(arg1, ...) -- Line 42
	--[[ Upvalues[1]:
		[1]: ResolveProduct_upvr (readonly)
	]]
	return assert(ResolveProduct_upvr(arg1, ...), "Product not configured for game type.")
end
local _1 = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Gamepasses")).Gamepasses.VIP[1]
local var9
if _1 and not _1.Disabled then
	var9 = _1.GamepassId
else
	var9 = nil
end
module.GameData = {
	ChallengeKind = require(ReplicatedStorage:WaitForChild("BUEShared")).ChallengeKind.scavenger_hunt;
	VIP = var9;
	Products = {
		UnlockAutoLocator = AssertProduct(299, 1769459255, 1910709874, 1925289831, 1931771891);
		UnlockDailyLogin1 = AssertProduct(80, 1769459251, 1910710127, 1925289954, 1931771990);
		UnlockDailyLogin2 = AssertProduct(90, 1769459249, 1910710298, 1925290041, 1931772047);
		UnlockDailyLogin3 = AssertProduct(120, 1769459248, 1910710479, 1925290127, 1931772096);
		UnlockDailyLogin4 = AssertProduct(150, 1769459250, 1910710678, 1925290193, 1931772153);
		UnlockDailyLogin5 = AssertProduct(199, 1769459257, 1910710904, 1925290273, 1931772218);
		UnlockPlaytime1 = AssertProduct(60, 1769459239, 1910711134, 1925290342, 1931772729);
		UnlockPlaytime2 = AssertProduct(60, 1769459238, 1910711290, 1925290433, 1931772796);
		UnlockPlaytime3 = AssertProduct(120, 1769459242, 1910711443, 1925290484, 1931772853);
		UnlockPlaytime4 = AssertProduct(199, 1769459244, 1910714635, 1925290553, 1931772915);
		UnlockPlaytime5 = AssertProduct(350, 1769459243, 1910714782, 1925290642, 1931772956);
		UnlockMultiverse = ResolveProduct_upvr(299, 1769459240, nil, nil, nil);
		UnlockSpecial = ResolveProduct_upvr(299, 1769459241, nil, nil, nil);
	};
}
module.RewardType = {
	Item = 1;
	Counter = 2;
}
return module