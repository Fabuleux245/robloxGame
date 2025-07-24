-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:18
-- Luau version 6, Types version 3
-- Time taken: 0.006596 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module_upvr = {}
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_3 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("Settings"))
local ResolveProductId = module_upvr_2.ResolveProductId
local ResolveGamepassId = module_upvr_2.ResolveGamepassId
local module_upvr_4 = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Utility"))
local tbl_2_upvr = {
	CachedProductInfo_ByGamepass = {};
}
module_upvr.GamepassType = table.freeze({
	Luck = 1;
	Permission = 2;
	Tool = 3;
	Trail = 4;
	World = 5;
	VIP = 6;
})
module_upvr.Gamepasses = {}
module_upvr.Data_ByType = {}
module_upvr.Data_ById = {}
local function ProcessGamepassArray(arg1, arg2) -- Line 76
	--[[ Upvalues[3]:
		[1]: module_upvr_4 (readonly)
		[2]: module_upvr (readonly)
		[3]: module_upvr_3 (readonly)
	]]
	local any_TableBuildSub_result1 = module_upvr_4.TableBuildSub(module_upvr.Data_ByType, arg1)
	for _, v in ipairs(arg2) do
		if v.GamepassId then
			if not v.GamepassId then
				error(module_upvr_3.FormatOutput("Missing GamepassId for pass in array type '%i'", "Gamepasses", nil, arg1))
			end
			v.Type = arg1
			if module_upvr.Data_ById[v.GamepassId] and module_upvr.Data_ById[v.GamepassId] ~= v then
				error(module_upvr_3.FormatOutput("Duplicate entries for Gamepass '%i'", "Gamepasses", nil, v.GamepassId))
			end
			module_upvr.Data_ById[v.GamepassId] = v
			if not table.find(any_TableBuildSub_result1, v) then
				any_TableBuildSub_result1[#any_TableBuildSub_result1 + 1] = v
			end
		end
	end
	return arg2
end
module_upvr.Gamepasses.Luck = ProcessGamepassArray(module_upvr.GamepassType.Luck, {{
	GamepassId = ResolveGamepassId(892953032, 894648839, 913625769, 919869029);
	GiftId = ResolveProductId(1914598814, 1914605125, 1925220433, 1931768619);
	Factor = 2;
}, {
	GamepassId = ResolveGamepassId(892864067, 894766685, nil, nil);
	Disabled = true;
	Factor = 3;
}, {
	GamepassId = ResolveGamepassId(892580607, 894829588, nil, nil);
	Disabled = true;
	Factor = 4;
}})
module_upvr.Gamepasses.Permissions = ProcessGamepassArray(module_upvr.GamepassType.Permission, {{
	GamepassId = ResolveGamepassId(849446279, 895016192, 913487207, 919781649);
	GiftId = ResolveProductId(1914598516, 1914605295, 1925220690, 1931768706);
	PermisionType = module_upvr_3.PermissionType.EggsOpen3;
}, {
	GamepassId = ResolveGamepassId(849252667, 894751803, 913362312, 919645685);
	GiftId = ResolveProductId(1914598662, 1914605747, 1925221472, 1931768956);
	PermisionType = module_upvr_3.PermissionType.EggsOpen8;
}})
module_upvr.GamepassPermission_ByPermissionType = {}
for _, v_2 in module_upvr.Gamepasses.Permissions do
	module_upvr.GamepassPermission_ByPermissionType[v_2.PermisionType] = v_2
end
module_upvr.Gamepasses.Tools = ProcessGamepassArray(module_upvr.GamepassType.Tool, {{
	GamepassId = ResolveGamepassId(979843, 895687562, 913547204, 919892699);
	GiftId = ResolveProductId(1914597673, 1914606461, 1925222824, 1931769466);
	ToolType = module_upvr_3.ToolType.GravityCoil;
}, {
	GamepassId = ResolveGamepassId(980700, 895027215, 913735641, 920610126);
	GiftId = ResolveProductId(1914597523, 1914606993, 1925224555, 1931770271);
	ToolType = module_upvr_3.ToolType.SpeedCoil;
}, {
	GamepassId = ResolveGamepassId(980499, 895011144, 913492198, 919564584);
	GiftId = ResolveProductId(1914597830, 1914606264, 1925222143, 1931769182);
	ToolType = module_upvr_3.ToolType.Cloud;
}})
module_upvr.GamepassTools_ByToolType = {}
for _, v_3 in module_upvr.Gamepasses.Tools do
	module_upvr.GamepassTools_ByToolType[v_3.ToolType] = v_3
end
module_upvr.Gamepasses.Worlds = ProcessGamepassArray(module_upvr.GamepassType.World, {{
	GamepassId = ResolveGamepassId(4599289, 894685854, 913772801, 919416058);
	GiftId = ResolveProductId(1914598167, 1914605922, 1925221644, 1931769030);
	ItemType = module_upvr_3.ItemType.World;
	ItemId = "FD";
	_LegacyPlaceId = 244532931;
}, {
	GamepassId = ResolveGamepassId(989943, 894994327, 913414674, 920708657);
	GiftId = ResolveProductId(1914601281, 1914606663, 1925223645, 1931769820);
	ItemType = module_upvr_3.ItemType.World;
	ItemId = "Retro";
	_LegacyPlaceId = 190590056;
}})
module_upvr.Gamepasses.Trails = ProcessGamepassArray(module_upvr.GamepassType.Trail, {{
	GamepassId = ResolveGamepassId(980684, 894959348, 913389711, 919771653);
	GiftId = ResolveProductId(1914597200, 1914606075, 1925221951, 1931769111);
	ItemType = module_upvr_3.ItemType.Trail;
	ItemId = "FireGP";
}, {
	GamepassId = ResolveGamepassId(980005, 894644929, 913467102, 919605651);
	GiftId = ResolveProductId(1914596790, 1914606860, 1925224374, 1931770087);
	ItemType = module_upvr_3.ItemType.Trail;
	ItemId = "SpkGP";
}})
module_upvr.Gamepasses.VIP = ProcessGamepassArray(module_upvr.GamepassType.VIP, {{
	GamepassId = ResolveGamepassId(798164730, nil, nil, nil);
	GiftId = ResolveProductId(1914598292, 1914607122, 1925225295, 1931770717);
}})
module_upvr.GamepassItems_ByItemType = {}
for i_4, v_4 in {
	[module_upvr_3.ItemType.World] = module_upvr.Gamepasses.Worlds;
	[module_upvr_3.ItemType.Trail] = module_upvr.Gamepasses.Trails;
} do
	local tbl = {}
	for _, v_5 in ipairs(v_4) do
		tbl[v_5.ItemId] = v_5
	end
	module_upvr.GamepassItems_ByItemType[i_4] = tbl
end
function module_upvr.GamepassBuy(arg1, arg2) -- Line 259
	--[[ Upvalues[1]:
		[1]: MarketplaceService_upvr (readonly)
	]]
	if arg2.IsInGame and not arg1.Disabled then
		MarketplaceService_upvr:PromptGamePassPurchase(arg2.Player, arg1.GamepassId)
	end
end
function module_upvr.GamepassGetProductInfo(arg1, arg2) -- Line 271
	--[[ Upvalues[3]:
		[1]: tbl_2_upvr (readonly)
		[2]: MarketplaceService_upvr (readonly)
		[3]: module_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var74
	if not var74 or arg2 then
		repeat
			local pcall_result1, pcall_result2 = pcall(MarketplaceService_upvr.GetProductInfo, MarketplaceService_upvr, arg1.GamepassId, Enum.InfoType.GamePass)
			local var77 = pcall_result1
			var74 = pcall_result2
			local var78 = var74
			if not var77 then
				task.wait(module_upvr_2.MarketplaceFetchRetryDelay)
			end
		until not var77 or var78
		assert(var78)
		if var78.IconImageAssetId == 0 and arg1.FallbackImageId then
			var78.IconImageAssetId = arg1.FallbackImageId
		end
		tbl_2_upvr.CachedProductInfo_ByGamepass[arg1] = var78
	end
	return var78
end
local function RunGamepassGetProductInfoAsync_upvr(arg1, arg2, arg3) -- Line 308, Named "RunGamepassGetProductInfoAsync"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	arg1(module_upvr.GamepassGetProductInfo(arg2, arg3))
end
function module_upvr.GamepassGetProductInfoAsync(arg1, arg2, arg3) -- Line 317
	--[[ Upvalues[2]:
		[1]: module_upvr_4 (readonly)
		[2]: RunGamepassGetProductInfoAsync_upvr (readonly)
	]]
	module_upvr_4.RunFunction(RunGamepassGetProductInfoAsync_upvr, arg2, arg1, arg3)
end
module_upvr_4.TableFreezeAll(module_upvr)
return module_upvr