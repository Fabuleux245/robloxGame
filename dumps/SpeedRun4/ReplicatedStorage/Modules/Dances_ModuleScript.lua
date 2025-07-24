-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:27
-- Luau version 6, Types version 3
-- Time taken: 0.004852 seconds

local module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_3_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_2 = require(ReplicatedStorage:WaitForChild("Settings"))
local ResolveAnimationId = module_2.ResolveAnimationId
local tbl = {{
	Id = "MBoss";
	Name = "Meme Boss";
	Price = 0;
	CreatedAt = 0;
	PointsPerSecond = 2;
	MustOwn = true;
	AnimationId = ResolveAnimationId(2671567251, 139034067205074);
	ShopImageId = "rbxassetid://2704323025";
	ToolImageId = "rbxassetid://2704323025";
}, {
	Id = "OrgJust";
	Name = "Orange Justice";
	Price = 30;
	CreatedAt = 0;
	PointsPerSecond = 3;
	AnimationId = ResolveAnimationId(2671572670, 136028317595332);
	ShopImageId = "rbxassetid://2704322805";
	ToolImageId = "rbxassetid://2704322805";
}, {
	Id = "Worm";
	Name = "Worm";
	Price = 100;
	CreatedAt = 0;
	PointsPerSecond = 4;
	AnimationId = ResolveAnimationId(2671578542, 94841721294958);
	ShopImageId = "rbxassetid://2704288189";
	ToolImageId = "rbxassetid://2704288189";
}, {
	Id = "Floss";
	Name = "Floss";
	Price = 150;
	CreatedAt = 0;
	PointsPerSecond = 5;
	AnimationId = ResolveAnimationId(2671582404, 94804695615041);
	ShopImageId = "rbxassetid://2704287415";
	ToolImageId = "rbxassetid://2704287415";
}, {
	Id = "Mates";
	Name = "Best Mates";
	Price = 220;
	CreatedAt = 0;
	PointsPerSecond = 6;
	AnimationId = ResolveAnimationId(2671565293, 88719077615899);
	ShopImageId = "rbxassetid://2715417982";
	ToolImageId = "rbxassetid://2715417982";
}, {
	Id = "Jub";
	Name = "Jubilation";
	Price = 300;
	CreatedAt = 0;
	PointsPerSecond = 7;
	AnimationId = ResolveAnimationId(2671571456, 118089647667583);
	ShopImageId = "rbxassetid://2715423752";
	ToolImageId = "rbxassetid://2715423752";
}, {
	Id = "BLess";
	Name = "Boneless";
	Price = 400;
	CreatedAt = 0;
	PointsPerSecond = 8;
	AnimationId = ResolveAnimationId(2671565702, 83401700678252);
	ShopImageId = "rbxassetid://2715418240";
	ToolImageId = "rbxassetid://2715418240";
}, {
	Id = "Dab";
	Name = "Dab";
	Price = 500;
	CreatedAt = 0;
	PointsPerSecond = 9;
	AnimationId = ResolveAnimationId(2671566840, 113574263057320);
	ShopImageId = "rbxassetid://2715419175";
	ToolImageId = "rbxassetid://2715419175";
}, {
	Id = "BDown";
	Name = "Breakdown";
	Price = 750;
	CreatedAt = 0;
	PointsPerSecond = 10;
	AnimationId = ResolveAnimationId(2671566126, 116377164744888);
	ShopImageId = "rbxassetid://2715418415";
	ToolImageId = "rbxassetid://2715418415";
}, {
	Id = "Robot";
	Name = "Robot";
	Price = 1000;
	CreatedAt = 0;
	PointsPerSecond = 11;
	AnimationId = ResolveAnimationId(2671576944, 135889620980528);
	ShopImageId = "rbxassetid://2715429497";
	ToolImageId = "rbxassetid://2715429497";
}, {
	Id = "EleShuf";
	Name = "Electro Shuffle";
	Price = 1500;
	CreatedAt = 0;
	PointsPerSecond = 12;
	AnimationId = ResolveAnimationId(2671568168, 105296692637553);
	ShopImageId = "rbxassetid://2715420594";
	ToolImageId = "rbxassetid://2715420594";
}, {
	Id = "Bunny";
	Name = "Bunny";
	Price = 2000;
	CreatedAt = 0;
	PointsPerSecond = 13;
	AnimationId = ResolveAnimationId(2671566452, 119777683965741);
	ShopImageId = "rbxassetid://2715418718";
	ToolImageId = "rbxassetid://2715418718";
}, {
	Id = "Eagle";
	Name = "Eagle";
	Price = 2500;
	CreatedAt = 0;
	PointsPerSecond = 14;
	AnimationId = ResolveAnimationId(2671567687, 118296437296589);
	ShopImageId = "rbxassetid://2715420348";
	ToolImageId = "rbxassetid://2715420348";
}, {
	Id = "Esquiva";
	Name = "Esquiva";
	Price = 3000;
	CreatedAt = 0;
	PointsPerSecond = 15;
	AnimationId = ResolveAnimationId(2671568614, 86477910963246);
	ShopImageId = "rbxassetid://2715420843";
	ToolImageId = "rbxassetid://2715420843";
}, {
	Id = "Excited";
	Name = "Excited";
	Price = 3500;
	CreatedAt = 0;
	PointsPerSecond = 16;
	AnimationId = ResolveAnimationId(2671569309, 130612053174882);
	ShopImageId = "rbxassetid://2715421066";
	ToolImageId = "rbxassetid://2715421066";
}, {
	Id = "Flapper";
	Name = "Flapper";
	Price = 4000;
	CreatedAt = 0;
	PointsPerSecond = 17;
	AnimationId = ResolveAnimationId(2671569775, 92061561881617);
	ShopImageId = "rbxassetid://2715421320";
	ToolImageId = "rbxassetid://2715421320";
}, {
	Id = "Fresh";
	Name = "Fresh";
	Price = 4500;
	CreatedAt = 0;
	PointsPerSecond = 18;
	AnimationId = ResolveAnimationId(2671570226, 114391030218376);
	ShopImageId = "rbxassetid://2715422114";
	ToolImageId = "rbxassetid://2715422114";
}, {
	Id = "Hype";
	Name = "Hype";
	Price = 5000;
	CreatedAt = 0;
	PointsPerSecond = 19;
	AnimationId = ResolveAnimationId(2671570961, 102035320496014);
	ShopImageId = "rbxassetid://2715422816";
	ToolImageId = "rbxassetid://2715422816";
}, {
	Id = "JJacks";
	Name = "Jumping Jacks";
	Price = 6000;
	CreatedAt = 0;
	PointsPerSecond = 20;
	AnimationId = ResolveAnimationId(2671571882, 112582604538404);
	ShopImageId = "rbxassetid://2715424342";
	ToolImageId = "rbxassetid://2715424342";
}, {
	Id = "MartDC";
	Name = "Martelo Do Chau";
	Price = 8000;
	CreatedAt = 0;
	PointsPerSecond = 21;
	AnimationId = ResolveAnimationId(2671572298, 97566441841493);
	ShopImageId = "rbxassetid://2715427053";
	ToolImageId = "rbxassetid://2715427053";
}, {
	Id = "PLock";
	Name = "Pop Lock";
	Price = 10100;
	CreatedAt = 0;
	PointsPerSecond = 22;
	AnimationId = ResolveAnimationId(2671573092, 133519687342016);
	ShopImageId = "rbxassetid://2715428092";
	ToolImageId = "rbxassetid://2715428092";
}, {
	Id = "RPony";
	Name = "Ride The Pony";
	Price = 12000;
	CreatedAt = 0;
	PointsPerSecond = 23;
	AnimationId = ResolveAnimationId(2671573738, 74506551879735);
	ShopImageId = "rbxassetid://2715429158";
	ToolImageId = "rbxassetid://2715429158";
}, {
	Id = "Salute";
	Name = "Salute";
	Price = 14000;
	CreatedAt = 0;
	PointsPerSecond = 24;
	AnimationId = ResolveAnimationId(2671574138, 104706255011813);
	ShopImageId = "rbxassetid://2715429792";
	ToolImageId = "rbxassetid://2715429792";
}, {
	Id = "Samba";
	Name = "Samba";
	Price = 18000;
	CreatedAt = 0;
	PointsPerSecond = 25;
	AnimationId = ResolveAnimationId(2671574508, 94013257250285);
	ShopImageId = "rbxassetid://2715430081";
	ToolImageId = "rbxassetid://2715430081";
}, {
	Id = "Silly";
	Name = "Silly";
	Price = 21000;
	CreatedAt = 0;
	PointsPerSecond = 26;
	AnimationId = ResolveAnimationId(2671575883, 119404827163389);
	ShopImageId = "rbxassetid://2715430840";
	ToolImageId = "rbxassetid://2715430840";
}, {
	Id = "TakeL";
	Name = "TakeTheL";
	Price = 25000;
	CreatedAt = 0;
	PointsPerSecond = 27;
	AnimationId = ResolveAnimationId(2671576438, 138866730291645);
	ShopImageId = "rbxassetid://2715431404";
	ToolImageId = "rbxassetid://2715431404";
}, {
	Id = "HeliT";
	Name = "Helicopter T-Pose";
	Price = 31000;
	CreatedAt = 0;
	PointsPerSecond = 28;
	AnimationId = ResolveAnimationId(2671570544, 99625702753961);
	ShopImageId = "rbxassetid://2715422417";
	ToolImageId = "rbxassetid://2715422417";
}, {
	Id = "URock";
	Name = "Up Rock";
	Price = 35000;
	CreatedAt = 0;
	PointsPerSecond = 29;
	AnimationId = ResolveAnimationId(2671566840, 113574263057320);
	ShopImageId = "rbxassetid://2715431848";
	ToolImageId = "rbxassetid://2715431848";
}, {
	Id = "Wiggle";
	Name = "Wiggle";
	Price = 45000;
	CreatedAt = 0;
	PointsPerSecond = 30;
	AnimationId = ResolveAnimationId(2671577825, 71098581518226);
	ShopImageId = "rbxassetid://2715432653";
	ToolImageId = "rbxassetid://2715432653";
}, {
	Id = "YUgly";
	Name = "Yall Ugly";
	Price = 55000;
	CreatedAt = 0;
	PointsPerSecond = 31;
	AnimationId = ResolveAnimationId(2671578968, 85583331904305);
	ShopImageId = "rbxassetid://2715432941";
	ToolImageId = "rbxassetid://2715432941";
}, {
	Id = "YAwe";
	Name = "You're Awesome";
	Price = 75000;
	CreatedAt = 0;
	PointsPerSecond = 32;
	AnimationId = ResolveAnimationId(2671581538, 81121735814257);
	ShopImageId = "rbxassetid://2715433576";
	ToolImageId = "rbxassetid://2715433576";
}, {
	Id = "FlipI";
	Name = "Flippin Incredible";
	Price = 99000;
	CreatedAt = 0;
	PointsPerSecond = 33;
	AnimationId = ResolveAnimationId(2671581921, 94120496810134);
	ShopImageId = "rbxassetid://2715421533";
	ToolImageId = "rbxassetid://2715421533";
}, {
	Id = "Pumpn";
	Name = "Pumpernickel";
	Price = 125000;
	CreatedAt = 0;
	PointsPerSecond = 34;
	AnimationId = ResolveAnimationId(2671583872, 123862895463379);
	ShopImageId = "rbxassetid://2715428637";
	ToolImageId = "rbxassetid://2715428637";
}, {
	Id = "Yeet";
	Name = "Yeet";
	Price = 150000;
	CreatedAt = 0;
	PointsPerSecond = 35;
	AnimationId = ResolveAnimationId(2671584927, 96703051129633);
	ShopImageId = "rbxassetid://2715433260";
	ToolImageId = "rbxassetid://2715433260";
}, {
	Id = "Whip";
	Name = "Whip";
	Price = 250000;
	CreatedAt = 0;
	PointsPerSecond = 36;
	AnimationId = ResolveAnimationId(2671584345, 96682397272946);
	ShopImageId = "rbxassetid://2715432311";
	ToolImageId = "rbxassetid://2715432311";
}, {
	Id = "Frees";
	Name = "Freestyle";
	Price = 575000;
	CreatedAt = 0;
	PointsPerSecond = 37;
	AnimationId = ResolveAnimationId(2671582803, 90004708324799);
	ShopImageId = "rbxassetid://2715421877";
	ToolImageId = "rbxassetid://2715421877";
}, {
	Id = "InfDab";
	Name = "Infinite Dab";
	Price = 1000000;
	CreatedAt = 0;
	PointsPerSecond = 38;
	AnimationId = ResolveAnimationId(2671583105, 81022066915833);
	ShopImageId = "rbxassetid://2715423464";
	ToolImageId = "rbxassetid://2715423464";
}, {
	Id = "S2S";
	Name = "Side To Side";
	Price = 10200300;
	CreatedAt = 0;
	PointsPerSecond = 39;
	AnimationId = ResolveAnimationId(2671574947, 138054666830919);
	ShopImageId = "rbxassetid://2715430510";
	ToolImageId = "rbxassetid://2715430510";
}}
if not module_2.DancesEnabled then
	table.clear(tbl)
end
table.sort(tbl, module_3_upvr.SortItemData)
module.DataArray = tbl
module.Data_ById = {}
for _, v in ipairs(tbl) do
	if module.Data_ById[v.Id] then
		error(string.format("[Dances] - Duplicate DanceId '%s'", v.Id))
	end
	module.Data_ById[v.Id] = v
end
function module.AnimationCreate(arg1) -- Line 444
	--[[ Upvalues[1]:
		[1]: module_3_upvr (readonly)
	]]
	local AnimationId = arg1.AnimationId
	if not AnimationId then
		error(module_3_upvr.FormatOutput("Invalid dance data", "Dances"), 2)
	end
	local Animation = Instance.new("Animation")
	Animation.AnimationId = AnimationId
	return Animation
end
require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Utility")).TableFreezeAll(module)
return module