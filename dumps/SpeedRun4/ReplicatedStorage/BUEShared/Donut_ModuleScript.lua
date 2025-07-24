-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:42
-- Luau version 6, Types version 3
-- Time taken: 0.006010 seconds

-- KONSTANTERROR: [0] 1. Error Block 38 start (CF ANALYSIS FAILED)
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_2_upvr = require(ReplicatedStorage:WaitForChild("BUEGameShared"))
local module_upvr_3 = require(ReplicatedStorage:WaitForChild("CommonData"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module = require(Modules:WaitForChild("Worlds"))
local _ = {
	Background = Color3.fromRGB(85, 49, 25);
	BackgroundSection = Color3.fromRGB(118, 77, 43);
	NormalButton = {
		Base = Color3.fromRGB(47, 21, 17);
		Midtone = Color3.fromRGB(70, 33, 18);
		Highlight = Color3.fromRGB(134, 66, 35);
		Gradient = Color3.fromRGB(189, 134, 75);
	};
	FancyButton = {
		Base = Color3.fromRGB(85, 47, 13);
		Midtone = Color3.fromRGB(168, 104, 26);
		Highlight = Color3.fromRGB(253, 170, 17);
		Gradient = Color3.fromRGB(255, 207, 129);
	};
	Text = Color3.fromRGB(235, 235, 235);
}
local _ = {{
	Name = "Avocado Donut";
	Icon = 14891470625;
}, {
	Name = "Pineapple Donut";
	Icon = 14648436941;
}, {
	Name = "Watermelon Donut";
	Icon = 14890510129;
}, {
	Name = "Grape Donut";
	Icon = 14890579608;
}, {
	Name = "Strawberry Donut";
	Icon = 14890367476;
}, {
	Name = "Waffle Donut";
	Icon = 16525981080;
}, {
	Name = "Grass Donut";
	Icon = 14640175984;
}, {
	Name = "Pizza Donut";
	Icon = 16525707589;
}, {
	Name = "Sprinkles Donut";
	Icon = 14890722506;
}, {
	Name = "Gears Donut";
	Icon = 16525984696;
}, {
	Name = "Broccoli Donut";
	Icon = 14745989895;
}, {
	Name = "Chocolate Donut";
	Icon = 14890426187;
}, {
	Name = "Hotdog Donut";
	Icon = 14839106262;
}, {
	Name = "Cyber Donut";
	Icon = 16525707058;
}, {
	Name = "Cheese Donut";
	Icon = 14720638335;
}, {
	Name = "Pickles Donut";
	Icon = 14899983993;
}, {
	Name = "Water Donut";
	Icon = 14685690343;
}, {
	Name = "Ramen Donut";
	Icon = 14838719548;
}, {
	Name = "Flower Donut";
	Icon = 14753097946;
}, {
	Name = "Rock Donut";
	Icon = 14649255750;
}, {
	Name = "Candycane Donut";
	Icon = 14831392440;
}, {
	Name = "Lettuce Donut";
	Icon = 14783679511;
}, {
	Name = "Ice Donut";
	Icon = 14761046423;
}, {
	Name = "Beans Donut";
	Icon = 14795102272;
}, {
	Name = "Butter Donut";
	Icon = 14775841792;
}, {
	Name = "Bacon Donut";
	Icon = 14890655725;
}, {
	Name = "Egg Donut";
	Icon = 14775217712;
}, {
	Name = "Icecream Donut";
	Icon = 16525709069;
}, {
	Name = "Mustache Donut";
	Icon = 14650482863;
}, {
	Name = "Moon Donut";
	Icon = 16526721593;
}, {
	Name = "Microchip Donut";
	Icon = 16525708665;
}, {
	Name = "Burger Donut";
	Icon = 16525710217;
}, {
	Name = "Frenchfries Donut";
	Icon = 14848853304;
}, {
	Name = "Cosmic Donut";
	Icon = 16525709590;
}, {
	Name = "Duck Donut";
	Icon = 14565681007;
}, {
	Name = "Pixel Donut";
	Icon = 16526721217;
}, {
	Name = "Fire Donut";
	Icon = 14694502212;
}, {
	Name = "Salt Donut";
	Icon = 14754348604;
}, {
	Name = "Macaroni Donut";
	Icon = 14839223426;
}, {
	Name = "Slime Donut";
	Icon = 16525981706;
}, {
	Name = "Popcorn Donut";
	Icon = 14831372267;
}, {
	Name = "Syrup Donut";
	Icon = 14839312919;
}, {
	Name = "Electric Donut";
	Icon = 16525983909;
}, {
	Name = "Castle Donut";
	Icon = 16525981901;
}, {
	Name = "Milk Donut";
	Icon = 14761747243;
}, {
	Name = "Rat Donut";
	Icon = 14683832608;
}, {
	Name = "Banana Donut";
	Icon = 14638856698;
}, {
	Name = "Ketchup Donut";
	Icon = 14782875576;
}, {
	Name = "Cake Donut";
	Icon = 16525985312;
}, {
	Name = "Fried Donut";
	Icon = 14899932250;
}}
local module_upvr_2 = require(Modules:WaitForChild("ItemDataUtility"))
local module_3_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local module_upvr = require(Modules:WaitForChild("Utility"))
local function BuildRewardFromItemData(arg1, arg2, arg3) -- Line 243
	--[[ Upvalues[5]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: module_3_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: module_upvr (readonly)
	]]
	local var63 = module_upvr_2.ItemModule_ByItemType[arg1].Data_ById[arg2]
	local var64
	if not var63 then
		var64 = error
		var64(module_upvr_3.FormatOutput("Invalid ItemType-ItemId combination '%s-%s'", "DonutEvent", nil, arg1, arg2))
	end
	var64 = {}
	local ShopImageId = var63.ShopImageId
	if not ShopImageId then
		ShopImageId = module_3_upvr.FALLBACK_SHOP_IMAGE
	end
	var64.Icon = ShopImageId
	var64.Name = var63.Name
	local tbl = {}
	tbl[1] = arg1
	tbl[2] = var63
	var64.RewardData = tbl
	var64.RewardType = module_2_upvr.RewardType.Item
	if arg3 then
		var64 = module_upvr.TableMerge(arg3, var64)
	end
	return var64
end
local _ = {BuildRewardFromItemData(module_upvr_3.ItemType.Trail, "DntChc"), BuildRewardFromItemData(module_upvr_3.ItemType.Trail, "DntWtr"), BuildRewardFromItemData(module_upvr_3.ItemType.Trail, "DntDth"), BuildRewardFromItemData(module_upvr_3.ItemType.Trail, "DntGld"), {
	Name = "New Secret Level";
	Icon = "rbxassetid://17081945180";
	RewardData = {module_upvr_3.CounterType.SecretLevels, 1};
	RewardType = module_2_upvr.RewardType.Counter;
}}
local _ = {{
	Name = "Donut Level 5";
	Icon = "rbxassetid://17081945467";
	Requirement = 3;
	RewardData = {module_upvr_3.ItemType.Level, module.Level_ById.Don5};
	RewardType = module_2_upvr.RewardType.Item;
}, BuildRewardFromItemData(module_upvr_3.ItemType.Trail, "DntFir", {
	Requirement = 6;
}), {
	Name = "Donut Level 6";
	Icon = "rbxassetid://17081945467";
	Requirement = 9;
	RewardData = {module_upvr_3.ItemType.Level, module.Level_ById.Don6};
	RewardType = module_2_upvr.RewardType.Item;
}, BuildRewardFromItemData(module_upvr_3.ItemType.Trail, "DntKit", {
	Requirement = 12;
}), {
	Name = "Donut Level 7";
	Icon = "rbxassetid://17081945467";
	Requirement = 16;
	RewardData = {module_upvr_3.ItemType.Level, module.Level_ById.Don7};
	RewardType = module_2_upvr.RewardType.Item;
}, BuildRewardFromItemData(module_upvr_3.ItemType.Trail, "DntEye", {
	Requirement = 20;
}), {
	Name = "Donut Level 8";
	Icon = "rbxassetid://17081945467";
	Requirement = 25;
	RewardData = {module_upvr_3.ItemType.Level, module.Level_ById.Don8};
	RewardType = module_2_upvr.RewardType.Item;
}, BuildRewardFromItemData(module_upvr_3.ItemType.Trail, "DntRbw", {
	Requirement = 30;
}), {
	Name = "Donut Level 9";
	Icon = "rbxassetid://17081945467";
	Requirement = 35;
	RewardData = {module_upvr_3.ItemType.Level, module.Level_ById.Don9};
	RewardType = module_2_upvr.RewardType.Item;
}, BuildRewardFromItemData(module_upvr_3.ItemType.Trail, "Dnt3D", {
	Requirement = 40;
}), {
	Name = "Donut Level 10";
	Icon = "rbxassetid://17081945467";
	Requirement = 45;
	RewardData = {module_upvr_3.ItemType.Level, module.Level_ById.Don10};
	RewardType = module_2_upvr.RewardType.Item;
}, {
	Name = "New Forbidden Level";
	Icon = "rbxassetid://17081945369";
	Requirement = 50;
	RewardData = {module_upvr_3.CounterType.ForbiddenLevels, 1};
	RewardType = module_2_upvr.RewardType.Counter;
}}
local tbl_2 = {BuildRewardFromItemData(module_upvr_3.ItemType.Trail, "DntLng", {
	Requirement = 600;
}), BuildRewardFromItemData(module_upvr_3.ItemType.Trail, "DntHrt", {
	Requirement = 1200;
}), BuildRewardFromItemData(module_upvr_3.ItemType.Trail, "DntGst", {
	Requirement = 3600;
}), BuildRewardFromItemData(module_upvr_3.ItemType.Trail, "DntGxy", {
	Requirement = 21600;
}), {
	Name = "New Secret Level";
	Icon = "rbxassetid://17081945180";
	Requirement = 43200;
	RewardData = {module_upvr_3.CounterType.SecretLevels, 1};
	RewardType = module_2_upvr.RewardType.Counter;
}}
local _ = {2466925370169696, 1100976795300638, 4064414004649999, 431650757012031, 752411246380950, 1954909979039860, 1254746439881357, 3200543342504040, 3617891199031464, 4182701835118908, 30388910483845, 1412667791579748, 1650137873747797, 3999831084926546, 1918327042737552, 2977670702170212, 1146781854914348, 539527438935911, 997502713333966, 1946100288037134, 3882448448090082, 518214136598055, 795149836490182, 1452397241962827}
local _ = {961908503005440, 4088637071783717, 4349085291616479, 3904913017965614, 2763087884553395, 493074111923113, 1934006764778083, 3156789427812680, 3721643573164746, 3638011806170277, 2620922152398661, 1133052561846192, 456348155152759, 4310960851173048, 378164837511657, 994384673216178, 2608202108950336, 21424603604312, 4355189939406208, 4007224058124939, 1644280658591965, 2376850635578071, 3631765670194841, 210517699042288}
if module_2_upvr.UseTestBadges then
else
end
local _ = {3781566750506613, 3893933643701531, 2327771344747947, 3864164488046589, 4044982485741554, 295396706616895, 3862489702145709, 3362213757599261, 2712476434681461, 531739411968554, 2976875870304954, 1779848786764483, 4232484750395265, 78875925479288, 592801331088614, 500594869520935, 3946061668428271, 1542233207820621, 513914544294602, 3243677120517761}
local _ = {4016605224399785, 2541103489525359, 554536964837869, 1090401302792934, 2823277018328338, 3032423491312271, 2931986941113314, 1572704527881710, 4155485694140233, 3083877368759160, 2027611016469101, 296354047774069, 2993261140379703, 1478238167226186, 4340145434174115, 1858395329359750, 2316558722386829, 3481267725309848, 793460959822302, 2241957516605630}
if module_2_upvr.UseTestBadges then
	-- KONSTANTWARNING: GOTO [1052] #739
end
-- KONSTANTERROR: [0] 1. Error Block 38 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [1051] 738. Error Block 43 start (CF ANALYSIS FAILED)
local _ = {4451327947328390, 4329987183191764, 787221968524094, 4309995196726946, 3046091333104606, 2907859677314801, 2908630200006869, 14292500251941, 1593796142446699, 1814882195917861, 2598703848931451, 3783793733701171, 784948831963121, 1245012774114675, 2847847586941651}
local _ = {1512209243785534, 3836207230182690, 4332052009505288, 1452723749915508, 2804710794721526, 80595025738800, 1110470229907189, 4376981543472609, 3957965602387854, 3108342329158029, 1943409644253629, 2766089319833854, 2898017451995315, 1332670816781583, 1840982772341937}
if module_2_upvr.UseTestBadges then
	-- KONSTANTWARNING: GOTO [1098] #779
end
-- KONSTANTERROR: [1051] 738. Error Block 43 end (CF ANALYSIS FAILED)