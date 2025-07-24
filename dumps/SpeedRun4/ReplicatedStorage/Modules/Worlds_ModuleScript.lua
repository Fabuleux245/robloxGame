-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:25
-- Luau version 6, Types version 3
-- Time taken: 0.179878 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_9_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_4_upvr = require(Modules:WaitForChild("LevelAssets"))
local module_8_upvr = require(Modules:WaitForChild("Utility"))
local GroundednessProfiles = require(Modules:WaitForChild("HumanoidEngine"):WaitForChild("HumanoidProperties")).GroundednessProfiles
module_upvr.FormattedNameType = table.freeze({
	Abbreviated = 1;
	Expanded = 2;
	Number = 3;
	Title = 4;
	Index = 5;
})
local tbl_20 = {
	JoinWinners = 1;
	ReturnToLobby = 2;
	InformCompletion = 3;
}
module_upvr.WorldCompletionBehavior = table.freeze(tbl_20)
local tbl_5 = {}
tbl_20 = {}
local var80 = tbl_20
var80[1] = "Grassy Hills"
var80[2] = "Western Desert"
var80[3] = "Yarn Land"
var80[4] = "Crystal Cavern"
var80[5] = "White Void"
var80[6] = "Ice Land"
var80[7] = "Rainbow Void"
var80[8] = "Poison Factory"
var80[9] = "Lava Land"
var80[10] = "Urban City"
var80[11] = "Tropical Beach"
var80[12] = "Reflection Chamber"
var80[13] = "Forest Kingdom"
var80[14] = "Black Void"
var80[15] = "Ice Kingdom"
var80[16] = "Microchip Overdrive"
var80[17] = "Desert Kingdom"
var80[18] = "Snowy Hills"
var80[19] = "Volcano Kingdom"
var80[20] = "The Moon"
var80[21] = "Money Mayhem"
var80[22] = "Cyber Overdrive"
var80[23] = "Autumn Hills"
var80[24] = "Astral Crystals"
var80[25] = "Ancient Bricks"
var80[26] = "Golden Overdrive"
var80[27] = "Ice Cream Land"
var80[28] = "Breezy Clouds"
var80[29] = "Golden Clock"
var80[30] = "Rainbow Run"
local tbl_15 = {"rbxassetid://714727405", "rbxassetid://714937553", "rbxassetid://714937559", "rbxassetid://905856278", "rbxassetid://905856286", "rbxassetid://905856304", "rbxassetid://905856296", "rbxassetid://905856312", "rbxassetid://905856314", "rbxassetid://905856309", "rbxassetid://905856299", "rbxassetid://905856319", "rbxassetid://905856321", "rbxassetid://905856327", "rbxassetid://905856332", "rbxassetid://905856341", "rbxassetid://905856344", "rbxassetid://905856339", "rbxassetid://905856350", "rbxassetid://905856348", "rbxassetid://905856372", "rbxassetid://905856364", "rbxassetid://905856374", "rbxassetid://905856373", "rbxassetid://905856381", "rbxassetid://905856383", "rbxassetid://905856387", "rbxassetid://905856396", "rbxassetid://905856402", "rbxassetid://905856401"}
local var82
for i = 1, 30 do
	tbl_5[i] = {
		LegacyIndex = i;
		Name = var80[i];
		ShopImageId = tbl_15[i];
	}
end
local tbl_12_upvr = {
	AirborneGroundednessProfile = GroundednessProfiles.Legacy;
	GroundedGroundednessProfile = GroundednessProfiles.Legacy;
}
local tbl_22 = {
	Classic = 0;
	Event = 2000;
	Gamepass = 5000;
	LegacyUnique = 3000;
	LegacyStandard = 4000;
	Lobby = math.huge;
	Main = 1000;
	Winners = (-math.huge);
}
local module_6_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local function BuildLevelItemTheme(arg1, arg2, arg3, arg4, arg5) -- Line 377
	--[[ Upvalues[1]:
		[1]: module_6_upvr (readonly)
	]]
	local module = {}
	module.Adjective = arg1
	module.Color = arg4
	module.ColorAccent = arg5
	local tbl_6 = {
		Color3 = module_6_upvr.White;
		StudsPerTileU = 3;
		StudsPerTileV = 3;
	}
	tbl_6.Texture = arg2
	tbl_6.Transparency = 0.05
	module.Texture = tbl_6
	local tbl_11 = {}
	tbl_11.Color3 = arg3
	tbl_11.StudsPerTileU = 3
	tbl_11.StudsPerTileV = 3
	tbl_11.Texture = "rbxassetid://532404127"
	tbl_11.Transparency = 0.24
	module.TextureAccent = tbl_11
	return module
end
local tbl_10_upvr = {}
local tbl_19 = {
	Id = "Gamepass";
	Name = "Gamepass";
	Price = math.huge;
	CreatedAt = 0;
	SortOrder = tbl_22.Gamepass;
	IsIncomplete = true;
	IsTechnical = true;
	Unownable = true;
}
local tbl_18 = {}
local tbl_14 = {
	Id = "Bon1";
	Name = "Bonus Level";
}
var82 = module_4_upvr.Data_ById
tbl_14.LevelAsset = var82.Bonus1
tbl_14.BadgeId = 1490340174
tbl_14.StarNames = {}
local tbl_2 = {}
var82 = "Bon2"
tbl_2.Id = var82
var82 = "Bonus Level"
tbl_2.Name = var82
var82 = module_4_upvr.Data_ById.Bonus2
tbl_2.LevelAsset = var82
var82 = 1490340174
tbl_2.BadgeId = var82
var82 = {}
tbl_2.StarNames = var82
tbl_18[1] = tbl_14
tbl_18[2] = tbl_2
tbl_19.Levels = tbl_18
local tbl_8 = {
	Id = "Secret";
	Name = "Secret World";
	Price = 0;
	CreatedAt = 1708816357;
	SortOrder = tbl_22.Main + 10;
	ShopImageId = "rbxassetid://17184790662";
	CounterType = module_upvr_2.CounterType.SecretLevels;
	IsIncomplete = true;
	IsMain = true;
	Unownable = true;
	WorldCompletionBehavior = module_upvr.WorldCompletionBehavior.InformCompletion;
}
local tbl_3 = {}
local tbl_17 = {}
var82 = "Sec1"
tbl_17.Id = var82
var82 = "Sunken Sanctuary"
tbl_17.Name = var82
var82 = "rbxassetid://17184790662"
tbl_17.ShopImageId = var82
var82 = module_4_upvr.Data_ById.Secret1
tbl_17.LevelAsset = var82
var82 = 4282252686480918
tbl_17.BadgeId = var82
var82 = {}
var82.Id = "Sec2"
var82.Name = "Icy Penguin City"
var82.ShopImageId = "rbxassetid://17184759022"
var82.LevelAsset = module_4_upvr.Data_ById.Secret2
var82.BadgeId = 3071569355637596
tbl_3[1] = tbl_17
tbl_3[2] = var82
tbl_3[3] = {
	Id = "Sec3";
	Name = "Molten Clock";
	ShopImageId = "rbxassetid://17184758789";
	LevelAsset = module_4_upvr.Data_ById.Secret3;
	BadgeId = 2393116559240129;
}
tbl_3[4] = {
	Id = "Sec4";
	Name = "Cheese in the Walls";
	ShopImageId = "rbxassetid://17184758668";
	LevelAsset = module_4_upvr.Data_ById.Secret4;
	BadgeId = 802038753475769;
}
tbl_3[5] = {
	Id = "Sec5";
	Name = "Big Bone Sandland";
	ShopImageId = "rbxassetid://17184758499";
	LevelAsset = module_4_upvr.Data_ById.Secret5;
	BadgeId = 3194463695684351;
}
tbl_3[6] = {
	Id = "Sec6";
	Name = "Choccychip Cookie Dream";
	ShopImageId = "rbxassetid://17184758311";
	LevelAsset = module_4_upvr.Data_ById.Secret6;
	BadgeId = 389082373420123;
}
tbl_3[7] = {
	Id = "Sec7";
	Name = "Sacred Egyptian Starlight";
	ShopImageId = "rbxassetid://17184758139";
	LevelAsset = module_4_upvr.Data_ById.Secret7;
	BadgeId = 1165090108311074;
}
tbl_3[8] = {
	Id = "Sec8";
	Name = "Silent Shroom Sunset";
	ShopImageId = "rbxassetid://17184757857";
	LevelAsset = module_4_upvr.Data_ById.Secret8;
	BadgeId = 3860813006814098;
}
tbl_3[9] = {
	Id = "Sec9";
	Name = "Tranquil Tundra";
	ShopImageId = "rbxassetid://17184757602";
	LevelAsset = module_4_upvr.Data_ById.Secret9;
	BadgeId = 1934946340545816;
}
tbl_3[10] = {
	Id = "Sec10";
	Name = "Shallow Shipwrecks";
	ShopImageId = "rbxassetid://17184757477";
	LevelAsset = module_4_upvr.Data_ById.Secret10;
	BadgeId = 281834753622594;
}
tbl_8.Levels = tbl_3
local tbl_16 = {
	Id = "Forbidden";
	Name = "Forbidden World";
	Price = 0;
	CreatedAt = 1708816357;
	SortOrder = tbl_22.Main;
	ShopImageId = "rbxassetid://17184618901";
}
var82 = module_upvr_2.CounterType
tbl_16.CounterType = var82.ForbiddenLevels
tbl_16.EnemyStrengthScale = 2
tbl_16.IsIncomplete = true
tbl_16.IsMain = true
tbl_16.Unownable = true
var82 = module_upvr.WorldCompletionBehavior
tbl_16.WorldCompletionBehavior = var82.InformCompletion
local tbl_9 = {}
var82 = {}
var82.Id = "For1"
var82.Name = "Chaos Clock"
var82.ShopImageId = "rbxassetid://17184618901"
var82.LevelAsset = module_4_upvr.Data_ById.Forbidden1
var82.BadgeId = 3645454502325332
tbl_9[1] = var82
tbl_9[2] = {
	Id = "For2";
	Name = "Containment Breach";
	ShopImageId = "rbxassetid://17184618657";
	LevelAsset = module_4_upvr.Data_ById.Forbidden2;
	BadgeId = 1743980250007599;
}
tbl_9[3] = {
	Id = "For3";
	Name = "Circus of Sorrow";
	ShopImageId = "rbxassetid://17184618356";
	LevelAsset = module_4_upvr.Data_ById.Forbidden3;
	BadgeId = 3391455262999403;
}
tbl_9[4] = {
	Id = "For4";
	Name = "Cavern of Fate";
	ShopImageId = "rbxassetid://17184618119";
	LevelAsset = module_4_upvr.Data_ById.Forbidden4;
	BadgeId = 2726958585304945;
}
tbl_9[5] = {
	Id = "For5";
	Name = "The Goo Within";
	ShopImageId = "rbxassetid://17184617987";
	LevelAsset = module_4_upvr.Data_ById.Forbidden5;
	BadgeId = 634979603855118;
}
tbl_9[6] = {
	Id = "For6";
	Name = "The Bees and Flowers";
	ShopImageId = "rbxassetid://17184617510";
	LevelAsset = module_4_upvr.Data_ById.Forbidden6;
	BadgeId = 2324767633380954;
}
tbl_9[7] = {
	Id = "For7";
	Name = "Icey's Icecream Parlor";
	ShopImageId = "rbxassetid://17184617851";
	LevelAsset = module_4_upvr.Data_ById.Forbidden7;
	BadgeId = 1152867883385955;
}
tbl_9[8] = {
	Id = "For8";
	Name = "Super Meat Land";
	ShopImageId = "rbxassetid://17184617702";
	LevelAsset = module_4_upvr.Data_ById.Forbidden8;
	BadgeId = 3779580490308521;
}
tbl_16.Levels = tbl_9
local tbl_26 = {}
var82 = "Regular"
tbl_26.Id = var82
var82 = "Classic World"
tbl_26.Name = var82
var82 = 0
tbl_26.Price = var82
var82 = 0
tbl_26.CreatedAt = var82
var82 = tbl_22.Classic
tbl_26.SortOrder = var82
var82 = "rbxassetid://1853795716"
tbl_26.ShopImageId = var82
var82 = "Classic"
tbl_26.Abbreviation = var82
var82 = true
tbl_26.AwardsWorld = var82
if module_9_upvr.WorldMainWorldUsesLevelLocks then
	var82 = module_upvr_2.CounterType.MainLevels
else
	var82 = nil
end
tbl_26.CounterType = var82
var82 = true
tbl_26.IsLegacy = var82
var82 = true
tbl_26.IsMain = var82
var82 = true
tbl_26.UseGatePopup = var82
var82 = {}
var82[1] = module_8_upvr.TableMerge(tbl_5[1], {
	Id = "Re1";
	LevelAsset = module_4_upvr.Data_ById.Regular1;
	ItemTheme = BuildLevelItemTheme("Grassy", "rbxassetid://18910172386", Color3.fromRGB(149, 255, 114), Color3.fromRGB(104, 255, 104), Color3.fromRGB(103, 134, 75));
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[2] = module_8_upvr.TableMerge(tbl_5[2], {
	Id = "Re2";
	LevelAsset = module_4_upvr.Data_ById.Regular2;
	ItemTheme = BuildLevelItemTheme("Cactus", "rbxassetid://18910172060", Color3.fromRGB(147, 179, 71), Color3.fromRGB(215, 245, 81), Color3.fromRGB(89, 59, 51));
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[3] = module_8_upvr.TableMerge(tbl_5[3], {
	Id = "Re3";
	ItemTheme = BuildLevelItemTheme("Wooly", "rbxassetid://18910171660", Color3.fromRGB(141, 0, 222), Color3.fromRGB(192, 5, 191), Color3.fromRGB(89, 59, 51));
	LevelAsset = module_4_upvr.Data_ById.Regular3;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[4] = module_8_upvr.TableMerge(tbl_5[4], {
	Id = "Re4";
	ItemTheme = BuildLevelItemTheme("Crystal", "rbxassetid://18910171143", Color3.fromRGB(168, 171, 222), Color3.fromRGB(182, 174, 236), Color3.fromRGB(157, 160, 207));
	LevelAsset = module_4_upvr.Data_ById.Regular4;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[5] = module_8_upvr.TableMerge(tbl_5[5], {
	Id = "Re5";
	ItemTheme = BuildLevelItemTheme("Empty", "rbxassetid://18910170711", Color3.fromRGB(200, 200, 200), Color3.fromRGB(30, 30, 30), Color3.fromRGB(60, 60, 60));
	LevelAsset = module_4_upvr.Data_ById.Regular5;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[6] = module_8_upvr.TableMerge(tbl_5[6], {
	Id = "Re6";
	ItemTheme = BuildLevelItemTheme("Icy", "rbxassetid://18910170367", Color3.fromRGB(96, 199, 255), Color3.fromRGB(88, 234, 255), Color3.fromRGB(32, 86, 111));
	LevelAsset = module_4_upvr.Data_ById.Regular6;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[7] = module_8_upvr.TableMerge(tbl_5[7], {
	Id = "Re7";
	ItemTheme = BuildLevelItemTheme("Disco", "rbxassetid://18910170076", Color3.fromRGB(255, 220, 46), Color3.fromRGB(239, 199, 0), Color3.fromRGB(255, 220, 46));
	LevelAsset = module_4_upvr.Data_ById.Regular7;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[8] = module_8_upvr.TableMerge(tbl_5[8], {
	Id = "Re8";
	ItemTheme = BuildLevelItemTheme("Toxic", "rbxassetid://18910169566", Color3.fromRGB(182, 255, 12), Color3.fromRGB(205, 239, 0), Color3.fromRGB(182, 255, 12));
	LevelAsset = module_4_upvr.Data_ById.Regular8;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[9] = module_8_upvr.TableMerge(tbl_5[9], {
	Id = "Re9";
	ItemTheme = BuildLevelItemTheme("Molten", "rbxassetid://18910169316", Color3.fromRGB(255, 140, 0), Color3.fromRGB(255, 135, 22), Color3.fromRGB(206, 94, 49));
	LevelAsset = module_4_upvr.Data_ById.Regular9;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[10] = module_8_upvr.TableMerge(tbl_5[10], {
	Id = "Re10";
	ItemTheme = BuildLevelItemTheme("Citizen", "rbxassetid://18910169006", Color3.fromRGB(246, 255, 142), Color3.fromRGB(195, 87, 65), Color3.fromRGB(246, 255, 142));
	LevelAsset = module_4_upvr.Data_ById.Regular10;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[11] = module_8_upvr.TableMerge(tbl_5[11], {
	Id = "Re11";
	ItemTheme = BuildLevelItemTheme("Tropical", "rbxassetid://18910168607", Color3.fromRGB(235, 238, 181), Color3.fromRGB(101, 214, 210), Color3.fromRGB(235, 238, 181));
	LevelAsset = module_4_upvr.Data_ById.Regular11;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[12] = module_8_upvr.TableMerge(tbl_5[12], {
	Id = "Re12";
	ItemTheme = BuildLevelItemTheme("Reflective", "rbxassetid://18910168294", Color3.fromRGB(189, 224, 255), Color3.fromRGB(224, 210, 252), Color3.fromRGB(88, 62, 154));
	LevelAsset = module_4_upvr.Data_ById.Regular12;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[13] = module_8_upvr.TableMerge(tbl_5[13], {
	Id = "Re13";
	ItemTheme = BuildLevelItemTheme("Deciduous", "rbxassetid://18910167958", Color3.fromRGB(116, 105, 90), Color3.fromRGB(179, 211, 115), Color3.fromRGB(108, 124, 124));
	LevelAsset = module_4_upvr.Data_ById.Regular13;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[14] = module_8_upvr.TableMerge(tbl_5[14], {
	Id = "Re14";
	ItemTheme = BuildLevelItemTheme("Void", "rbxassetid://18910167636", Color3.fromRGB(255, 230, 197), Color3.fromRGB(224, 228, 232), Color3.fromRGB(255, 243, 240));
	LevelAsset = module_4_upvr.Data_ById.Regular14;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[15] = module_8_upvr.TableMerge(tbl_5[15], {
	Id = "Re15";
	ItemTheme = BuildLevelItemTheme("Slippery", "rbxassetid://18910167396", Color3.fromRGB(158, 221, 238), Color3.fromRGB(121, 175, 208), Color3.fromRGB(255, 243, 240));
	LevelAsset = module_4_upvr.Data_ById.Regular15;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[16] = module_8_upvr.TableMerge(tbl_5[16], {
	Id = "Re16";
	ItemTheme = BuildLevelItemTheme("Techno", "rbxassetid://18910166844", Color3.fromRGB(255, 234, 0), Color3.fromRGB(214, 186, 41), Color3.fromRGB(255, 234, 0));
	LevelAsset = module_4_upvr.Data_ById.Regular16;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[17] = module_8_upvr.TableMerge(tbl_5[17], {
	Id = "Re17";
	ItemTheme = BuildLevelItemTheme("Dry", "rbxassetid://18910166525", Color3.fromRGB(157, 0, 0), Color3.fromRGB(255, 211, 97), Color3.fromRGB(186, 118, 0));
	LevelAsset = module_4_upvr.Data_ById.Regular17;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[18] = module_8_upvr.TableMerge(tbl_5[18], {
	Id = "Re18";
	ItemTheme = BuildLevelItemTheme("Snowy", "rbxassetid://18910166207", Color3.fromRGB(255, 160, 76), Color3.fromRGB(255, 160, 76), Color3.fromRGB(112, 70, 33));
	LevelAsset = module_4_upvr.Data_ById.Regular18;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[19] = module_8_upvr.TableMerge(tbl_5[19], {
	Id = "Re19";
	ItemTheme = BuildLevelItemTheme("Hot", "rbxassetid://18910165921", Color3.fromRGB(255, 128, 0), Color3.fromRGB(255, 89, 0), Color3.fromRGB(129, 21, 0));
	LevelAsset = module_4_upvr.Data_ById.Regular19;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[20] = module_8_upvr.TableMerge(tbl_5[20], {
	Id = "Re20";
	ItemTheme = BuildLevelItemTheme("Lunar", "rbxassetid://18910165545", Color3.fromRGB(255, 255, 255), Color3.fromRGB(252, 254, 255), Color3.fromRGB(140, 146, 159));
	LevelAsset = module_4_upvr.Data_ById.Regular20;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[21] = module_8_upvr.TableMerge(tbl_5[21], {
	Id = "Re21";
	ItemTheme = BuildLevelItemTheme("Cash", "rbxassetid://18910165282", Color3.fromRGB(176, 255, 179), Color3.fromRGB(117, 255, 124), Color3.fromRGB(119, 172, 120));
	LevelAsset = module_4_upvr.Data_ById.Regular21;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[22] = module_8_upvr.TableMerge(tbl_5[22], {
	Id = "Re22";
	ItemTheme = BuildLevelItemTheme("Cybernetic", "rbxassetid://18910167097", Color3.fromRGB(0, 255, 247), Color3.fromRGB(13, 230, 230), Color3.fromRGB(0, 255, 247));
	LevelAsset = module_4_upvr.Data_ById.Regular22;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[23] = module_8_upvr.TableMerge(tbl_5[23], {
	Id = "Re23";
	ItemTheme = BuildLevelItemTheme("Leafy", "rbxassetid://18910164962", Color3.fromRGB(255, 188, 55), Color3.fromRGB(255, 165, 41), Color3.fromRGB(255, 178, 83));
	LevelAsset = module_4_upvr.Data_ById.Regular23;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[24] = module_8_upvr.TableMerge(tbl_5[24], {
	Id = "Re24";
	ItemTheme = BuildLevelItemTheme("Etheric", "rbxassetid://18910164587", Color3.fromRGB(255, 188, 55), Color3.fromRGB(255, 139, 253), Color3.fromRGB(255, 178, 83));
	LevelAsset = module_4_upvr.Data_ById.Regular24;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[25] = module_8_upvr.TableMerge(tbl_5[25], {
	Id = "Re25";
	ItemTheme = BuildLevelItemTheme("Ancient", "rbxassetid://18910164098", Color3.fromRGB(255, 153, 64), Color3.fromRGB(255, 188, 66), Color3.fromRGB(255, 178, 83));
	LevelAsset = module_4_upvr.Data_ById.Regular25;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[26] = module_8_upvr.TableMerge(tbl_5[26], {
	Id = "Re26";
	ItemTheme = BuildLevelItemTheme("Golden", "rbxassetid://18910163726", Color3.fromRGB(125, 80, 18), Color3.fromRGB(255, 249, 127), Color3.fromRGB(109, 73, 22));
	LevelAsset = module_4_upvr.Data_ById.Regular26;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[27] = module_8_upvr.TableMerge(tbl_5[27], {
	Id = "Re27";
	ItemTheme = BuildLevelItemTheme("Sweet", "rbxassetid://18910163423", Color3.fromRGB(86, 54, 12), Color3.fromRGB(252, 157, 168), Color3.fromRGB(74, 49, 15));
	LevelAsset = module_4_upvr.Data_ById.Regular27;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[28] = module_8_upvr.TableMerge(tbl_5[28], {
	Id = "Re28";
	ItemTheme = BuildLevelItemTheme("Windy", "rbxassetid://18910162873", Color3.fromRGB(128, 189, 255), Color3.fromRGB(196, 238, 244), Color3.fromRGB(17, 128, 179));
	LevelAsset = module_4_upvr.Data_ById.Regular28;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[29] = module_8_upvr.TableMerge(tbl_5[29], {
	Id = "Re29";
	ItemTheme = BuildLevelItemTheme("Ticking", "rbxassetid://18910162369", Color3.fromRGB(255, 213, 0), Color3.fromRGB(249, 195, 27), Color3.fromRGB(190, 101, 28));
	LevelAsset = module_4_upvr.Data_ById.Regular29;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[30] = module_8_upvr.TableMerge(tbl_5[30], {
	Id = "Re30";
	ItemTheme = BuildLevelItemTheme("Rainbow", "rbxassetid://18910156523", Color3.fromRGB(50, 50, 50), Color3.fromRGB(0, 255, 255), Color3.fromRGB(0, 0, 0));
	LevelAsset = module_4_upvr.Data_ById.RainbowRun;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
})
var82[31] = {
	Id = "Re31";
	Name = "Honeycomb";
	ShopImageId = "rbxassetid://17663009457";
	LevelAsset = module_4_upvr.Data_ById.Regular30;
	ItemTheme = BuildLevelItemTheme("Honey", "rbxassetid://18910161951", Color3.fromRGB(43, 27, 0), Color3.fromRGB(255, 202, 46), Color3.fromRGB(26, 16, 0));
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[32] = {
	Id = "Re32";
	Name = "Arcade";
	ShopImageId = "rbxassetid://17663009245";
	LevelAsset = module_4_upvr.Data_ById.Regular31;
	ItemTheme = BuildLevelItemTheme("8-Bit", "rbxassetid://18910161531", Color3.fromRGB(255, 131, 243), Color3.fromRGB(255, 130, 215), Color3.fromRGB(195, 100, 187));
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[33] = {
	Id = "Re33";
	Name = "Bathtub";
	ShopImageId = "rbxassetid://17663009038";
	LevelAsset = module_4_upvr.Data_ById.Regular32;
	ItemTheme = BuildLevelItemTheme("Bath-Time", "rbxassetid://18910161262", Color3.fromRGB(197, 238, 255), Color3.fromRGB(173, 252, 255), Color3.fromRGB(89, 139, 255));
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[34] = {
	Id = "Re34";
	Name = "Sacred Pickle Temple";
	ShopImageId = "rbxassetid://17663008792";
	LevelAsset = module_4_upvr.Data_ById.Regular33;
	ItemTheme = BuildLevelItemTheme("Pickle", "rbxassetid://18910160889", Color3.fromRGB(255, 238, 0), Color3.fromRGB(231, 255, 79), Color3.fromRGB(187, 255, 84));
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[35] = {
	Id = "Re35";
	Name = "Prehistoric Land";
	ShopImageId = "rbxassetid://17663008578";
	LevelAsset = module_4_upvr.Data_ById.Regular34;
	ItemTheme = BuildLevelItemTheme("Prehistoric", "rbxassetid://18910160533", Color3.fromRGB(255, 202, 69), Color3.fromRGB(255, 205, 145), Color3.fromRGB(106, 87, 65));
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[36] = {
	Id = "Re36";
	Name = "Watermelon Land";
	ShopImageId = "rbxassetid://17663008352";
	LevelAsset = module_4_upvr.Data_ById.Regular35;
	ItemTheme = BuildLevelItemTheme("Watermelon", "rbxassetid://18910160166", Color3.fromRGB(35, 100, 0), Color3.fromRGB(255, 145, 149), Color3.fromRGB(100, 0, 0));
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[37] = {
	Id = "Re37";
	Name = "Rainbow Volcano";
	ShopImageId = "rbxassetid://17663008171";
	LevelAsset = module_4_upvr.Data_ById.Regular36;
	ItemTheme = BuildLevelItemTheme("Molten-Rainbow", "rbxassetid://18910159842", Color3.fromRGB(255, 0, 255), Color3.fromRGB(255, 126, 151), Color3.fromRGB(141, 0, 134));
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[38] = {
	Id = "Re38";
	Name = "Waffle Industries";
	ShopImageId = "rbxassetid://17663007902";
	LevelAsset = module_4_upvr.Data_ById.Regular37;
	ItemTheme = BuildLevelItemTheme("Waffle", "rbxassetid://18910159538", Color3.fromRGB(143, 66, 3), Color3.fromRGB(255, 220, 154), Color3.fromRGB(108, 50, 2));
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[39] = {
	Id = "Re39";
	Name = "Gold Dragon Lair";
	ShopImageId = "rbxassetid://17663007748";
	LevelAsset = module_4_upvr.Data_ById.Regular38;
	ItemTheme = BuildLevelItemTheme("Draconic", "rbxassetid://18910159155", Color3.fromRGB(255, 208, 37), Color3.fromRGB(255, 211, 88), Color3.fromRGB(108, 50, 2));
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[40] = {
	Id = "Re40";
	Name = "Icecream Galaxy";
	ShopImageId = "rbxassetid://17663007587";
	LevelAsset = module_4_upvr.Data_ById.Regular39;
	ItemTheme = BuildLevelItemTheme("Space-Cream", "rbxassetid://18910158838", Color3.fromRGB(98, 57, 30), Color3.fromRGB(255, 200, 227), Color3.fromRGB(98, 57, 30));
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[41] = {
	Id = "Re41";
	Name = "Upside Down Forest";
	ShopImageId = "rbxassetid://17663007287";
	LevelAsset = module_4_upvr.Data_ById.Regular40;
	ItemTheme = BuildLevelItemTheme("Inverted", "rbxassetid://18910158145", Color3.fromRGB(75, 98, 94), Color3.fromRGB(159, 242, 208), Color3.fromRGB(44, 58, 55));
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[42] = {
	Id = "Re42";
	Name = "Birthday Cake";
	ShopImageId = "rbxassetid://17663007064";
	LevelAsset = module_4_upvr.Data_ById.Regular41;
	ItemTheme = BuildLevelItemTheme("Birthday", "rbxassetid://18910157753", Color3.fromRGB(255, 173, 115), Color3.fromRGB(255, 164, 164), Color3.fromRGB(140, 59, 96));
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[43] = {
	Id = "Re43";
	Name = "Office";
	ShopImageId = "rbxassetid://17736845219";
	LevelAsset = module_4_upvr.Data_ById.Regular42;
	ItemTheme = BuildLevelItemTheme("Office", "rbxassetid://18910157485", Color3.fromRGB(255, 127, 41), Color3.fromRGB(123, 255, 248), Color3.fromRGB(255, 161, 47));
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[44] = {
	Id = "Re44";
	Name = "Cardboard Kingdom";
	ShopImageId = "rbxassetid://17736844959";
	LevelAsset = module_4_upvr.Data_ById.Regular43;
	ItemTheme = BuildLevelItemTheme("Cardboard", "rbxassetid://18910157226", Color3.fromRGB(255, 183, 100), Color3.fromRGB(255, 188, 94), Color3.fromRGB(255, 188, 130));
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[45] = {
	Id = "Re45";
	Name = "Sanctuary of Stories";
	ShopImageId = "rbxassetid://17736844638";
	LevelAsset = module_4_upvr.Data_ById.Regular44;
	ItemTheme = BuildLevelItemTheme("Storybook", "rbxassetid://18910156935", Color3.fromRGB(255, 147, 15), Color3.fromRGB(255, 148, 66), Color3.fromRGB(199, 80, 0));
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[46] = {
	Id = "Re46";
	Name = "Dog Park";
	IsInDevelopment = true;
	ShopImageId = "rbxassetid://124391328300086";
	LevelAsset = module_4_upvr.Data_ById.Regular45;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[47] = {
	Id = "Re47";
	Name = "Tiki Island";
	IsInDevelopment = true;
	ShopImageId = "rbxassetid://125691802151625";
	LevelAsset = module_4_upvr.Data_ById.Regular46;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[48] = {
	Id = "Re48";
	Name = "Pool Party";
	IsInDevelopment = true;
	ShopImageId = "rbxassetid://74943214814963";
	LevelAsset = module_4_upvr.Data_ById.Regular47;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[49] = {
	Id = "Re49";
	Name = "Banana Land";
	IsInDevelopment = true;
	ShopImageId = "rbxassetid://90585112094265";
	LevelAsset = module_4_upvr.Data_ById.Regular48;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[50] = {
	Id = "Re50";
	Name = "Classroom";
	IsInDevelopment = true;
	ShopImageId = "rbxassetid://128174300010233";
	LevelAsset = module_4_upvr.Data_ById.Regular49;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[51] = {
	Id = "Re51";
	Name = "Heaven";
	IsInDevelopment = true;
	ShopImageId = "rbxassetid://74992456946284";
	LevelAsset = module_4_upvr.Data_ById.Regular50;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[52] = {
	Id = "Re52";
	Name = "Pizza Planet";
	IsInDevelopment = true;
	ShopImageId = "rbxassetid://125615180760472";
	LevelAsset = module_4_upvr.Data_ById.Regular51;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[53] = {
	Id = "Re53";
	Name = "Hamster Cage";
	IsInDevelopment = true;
	ShopImageId = "rbxassetid://115415791499747";
	LevelAsset = module_4_upvr.Data_ById.Regular52;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[54] = {
	Id = "Re54";
	Name = "Cinnamon Roll Land";
	IsInDevelopment = true;
	ShopImageId = "rbxassetid://108912261401314";
	LevelAsset = module_4_upvr.Data_ById.Regular53;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[55] = {
	Id = "Re55";
	Name = "Squeaky Clean Bathroom";
	IsInDevelopment = true;
	ShopImageId = "rbxassetid://81278034315261";
	LevelAsset = module_4_upvr.Data_ById.Regular54;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
var82[56] = {
	Id = "Re56";
	Name = "Kitchen";
	IsInDevelopment = true;
	ShopImageId = "rbxassetid://99515812908137";
	LevelAsset = module_4_upvr.Data_ById.Regular55;
	UnlockMethod = module_upvr_2.UnlockMethod.Currency;
}
tbl_26.Levels = var82
var82 = {}
var82.Id = "PeachDesert"
var82.Name = "Peach Desert Classic"
var82.Price = 100000
var82.CreatedAt = 0
var82.SortOrder = tbl_22.LegacyStandard
var82.ShopImageId = "rbxassetid://1853796378"
var82.Abbreviation = "Peach"
var82.AwardsWorld = true
var82.IsLegacy = true
var82.Levels = {module_8_upvr.TableMerge(tbl_5[1], {
	Id = "Pe1";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert1;
}), module_8_upvr.TableMerge(tbl_5[2], {
	Id = "Pe2";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert2;
}), module_8_upvr.TableMerge(tbl_5[3], {
	Id = "Pe3";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert3;
}), module_8_upvr.TableMerge(tbl_5[4], {
	Id = "Pe4";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert4;
}), module_8_upvr.TableMerge(tbl_5[5], {
	Id = "Pe5";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert5;
}), module_8_upvr.TableMerge(tbl_5[6], {
	Id = "Pe6";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert6;
}), module_8_upvr.TableMerge(tbl_5[7], {
	Id = "Pe7";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert7;
}), module_8_upvr.TableMerge(tbl_5[8], {
	Id = "Pe8";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert8;
}), module_8_upvr.TableMerge(tbl_5[9], {
	Id = "Pe9";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert9;
}), module_8_upvr.TableMerge(tbl_5[10], {
	Id = "Pe10";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert10;
}), module_8_upvr.TableMerge(tbl_5[11], {
	Id = "Pe11";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert11;
}), module_8_upvr.TableMerge(tbl_5[12], {
	Id = "Pe12";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert12;
}), module_8_upvr.TableMerge(tbl_5[13], {
	Id = "Pe13";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert13;
}), module_8_upvr.TableMerge(tbl_5[14], {
	Id = "Pe14";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert14;
}), module_8_upvr.TableMerge(tbl_5[15], {
	Id = "Pe15";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert15;
}), module_8_upvr.TableMerge(tbl_5[16], {
	Id = "Pe16";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert16;
}), module_8_upvr.TableMerge(tbl_5[17], {
	Id = "Pe17";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert17;
}), module_8_upvr.TableMerge(tbl_5[18], {
	Id = "Pe18";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert18;
}), module_8_upvr.TableMerge(tbl_5[19], {
	Id = "Pe19";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert19;
}), module_8_upvr.TableMerge(tbl_5[20], {
	Id = "Pe20";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert20;
}), module_8_upvr.TableMerge(tbl_5[21], {
	Id = "Pe21";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert21;
}), module_8_upvr.TableMerge(tbl_5[22], {
	Id = "Pe22";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert22;
}), module_8_upvr.TableMerge(tbl_5[23], {
	Id = "Pe23";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert23;
}), module_8_upvr.TableMerge(tbl_5[24], {
	Id = "Pe24";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert24;
}), module_8_upvr.TableMerge(tbl_5[25], {
	Id = "Pe25";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert25;
}), module_8_upvr.TableMerge(tbl_5[26], {
	Id = "Pe26";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert26;
}), module_8_upvr.TableMerge(tbl_5[27], {
	Id = "Pe27";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert27;
}), module_8_upvr.TableMerge(tbl_5[28], {
	Id = "Pe28";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert28;
}), module_8_upvr.TableMerge(tbl_5[29], {
	Id = "Pe29";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert29;
}), module_8_upvr.TableMerge(tbl_5[30], {
	Id = "Pe30";
	LevelAsset = module_4_upvr.Data_ById.PeachDesert30;
})}
local tbl = {
	Id = "Cybernaut";
	Name = "Cybernaut Classic";
	Price = 100000;
	CreatedAt = 0;
	SortOrder = tbl_22.LegacyStandard + 20;
	ShopImageId = "rbxassetid://1875425653";
	Abbreviation = "Cyber";
	AwardsWorld = true;
	IsLegacy = true;
	Levels = {module_8_upvr.TableMerge(tbl_5[1], {
		Id = "Cy1";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut1;
	}), module_8_upvr.TableMerge(tbl_5[2], {
		Id = "Cy2";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut2;
	}), module_8_upvr.TableMerge(tbl_5[3], {
		Id = "Cy3";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut3;
	}), module_8_upvr.TableMerge(tbl_5[4], {
		Id = "Cy4";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut4;
	}), module_8_upvr.TableMerge(tbl_5[5], {
		Id = "Cy5";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut5;
	}), module_8_upvr.TableMerge(tbl_5[6], {
		Id = "Cy6";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut6;
	}), module_8_upvr.TableMerge(tbl_5[7], {
		Id = "Cy7";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut7;
	}), module_8_upvr.TableMerge(tbl_5[8], {
		Id = "Cy8";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut8;
	}), module_8_upvr.TableMerge(tbl_5[9], {
		Id = "Cy9";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut9;
	}), module_8_upvr.TableMerge(tbl_5[10], {
		Id = "Cy10";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut10;
	}), module_8_upvr.TableMerge(tbl_5[11], {
		Id = "Cy11";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut11;
	}), module_8_upvr.TableMerge(tbl_5[12], {
		Id = "Cy12";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut12;
	}), module_8_upvr.TableMerge(tbl_5[13], {
		Id = "Cy13";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut13;
	}), module_8_upvr.TableMerge(tbl_5[14], {
		Id = "Cy14";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut14;
	}), module_8_upvr.TableMerge(tbl_5[15], {
		Id = "Cy15";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut15;
	}), module_8_upvr.TableMerge(tbl_5[16], {
		Id = "Cy16";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut16;
	}), module_8_upvr.TableMerge(tbl_5[17], {
		Id = "Cy17";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut17;
	}), module_8_upvr.TableMerge(tbl_5[18], {
		Id = "Cy18";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut18;
	}), module_8_upvr.TableMerge(tbl_5[19], {
		Id = "Cy19";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut19;
	}), module_8_upvr.TableMerge(tbl_5[20], {
		Id = "Cy20";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut20;
	}), module_8_upvr.TableMerge(tbl_5[21], {
		Id = "Cy21";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut21;
	}), module_8_upvr.TableMerge(tbl_5[22], {
		Id = "Cy22";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut22;
	}), module_8_upvr.TableMerge(tbl_5[23], {
		Id = "Cy23";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut23;
	}), module_8_upvr.TableMerge(tbl_5[24], {
		Id = "Cy24";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut24;
	}), module_8_upvr.TableMerge(tbl_5[25], {
		Id = "Cy25";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut25;
	}), module_8_upvr.TableMerge(tbl_5[26], {
		Id = "Cy26";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut26;
	}), module_8_upvr.TableMerge(tbl_5[27], {
		Id = "Cy27";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut27;
	}), module_8_upvr.TableMerge(tbl_5[28], {
		Id = "Cy28";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut28;
	}), module_8_upvr.TableMerge(tbl_5[29], {
		Id = "Cy29";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut29;
	}), module_8_upvr.TableMerge(tbl_5[30], {
		Id = "Cy30";
		LevelAsset = module_4_upvr.Data_ById.Cybernaut30;
	})};
}
tbl_10_upvr[1] = {
	Id = "Lobby";
	Name = "Lobby";
	Price = math.huge;
	CreatedAt = 0;
	SortOrder = tbl_22.Lobby;
	IsTechnical = true;
	Unownable = true;
	Levels = {{
		Id = "Lobby";
		Name = "Lobby";
		LevelAsset = module_4_upvr.Data_ById.Lobby1;
		StarNames = {};
	}};
}
tbl_10_upvr[2] = {
	Id = "Winners";
	Name = "Winners";
	Price = math.huge;
	CreatedAt = 0;
	SortOrder = tbl_22.Winners;
	IsTechnical = true;
	Unownable = true;
	Levels = {{
		Id = "Winners";
		Name = "Winners";
		LevelAsset = module_4_upvr.Data_ById.Winners1;
		StarNames = {};
	}};
}
tbl_10_upvr[3] = tbl_19
tbl_10_upvr[4] = tbl_8
tbl_10_upvr[5] = tbl_16
tbl_10_upvr[6] = tbl_26
tbl_10_upvr[7] = var82
tbl_10_upvr[8] = {
	Id = "Birchock";
	Name = "Birchock Classic";
	Price = 100000;
	CreatedAt = 0;
	SortOrder = tbl_22.LegacyStandard + 10;
	ShopImageId = "rbxassetid://1853796771";
	Abbreviation = "Birch";
	AwardsWorld = true;
	IsLegacy = true;
	Levels = {module_8_upvr.TableMerge(tbl_5[1], {
		Id = "Bi1";
		LevelAsset = module_4_upvr.Data_ById.Birchock1;
	}), module_8_upvr.TableMerge(tbl_5[2], {
		Id = "Bi2";
		LevelAsset = module_4_upvr.Data_ById.Birchock2;
	}), module_8_upvr.TableMerge(tbl_5[3], {
		Id = "Bi3";
		LevelAsset = module_4_upvr.Data_ById.Birchock3;
	}), module_8_upvr.TableMerge(tbl_5[4], {
		Id = "Bi4";
		LevelAsset = module_4_upvr.Data_ById.Birchock4;
	}), module_8_upvr.TableMerge(tbl_5[5], {
		Id = "Bi5";
		LevelAsset = module_4_upvr.Data_ById.Birchock5;
	}), module_8_upvr.TableMerge(tbl_5[6], {
		Id = "Bi6";
		LevelAsset = module_4_upvr.Data_ById.Birchock6;
	}), module_8_upvr.TableMerge(tbl_5[7], {
		Id = "Bi7";
		LevelAsset = module_4_upvr.Data_ById.Birchock7;
	}), module_8_upvr.TableMerge(tbl_5[8], {
		Id = "Bi8";
		LevelAsset = module_4_upvr.Data_ById.Birchock8;
	}), module_8_upvr.TableMerge(tbl_5[9], {
		Id = "Bi9";
		LevelAsset = module_4_upvr.Data_ById.Birchock9;
	}), module_8_upvr.TableMerge(tbl_5[10], {
		Id = "Bi10";
		LevelAsset = module_4_upvr.Data_ById.Birchock10;
	}), module_8_upvr.TableMerge(tbl_5[11], {
		Id = "Bi11";
		LevelAsset = module_4_upvr.Data_ById.Birchock11;
	}), module_8_upvr.TableMerge(tbl_5[12], {
		Id = "Bi12";
		LevelAsset = module_4_upvr.Data_ById.Birchock12;
	}), module_8_upvr.TableMerge(tbl_5[13], {
		Id = "Bi13";
		LevelAsset = module_4_upvr.Data_ById.Birchock13;
	}), module_8_upvr.TableMerge(tbl_5[14], {
		Id = "Bi14";
		LevelAsset = module_4_upvr.Data_ById.Birchock14;
	}), module_8_upvr.TableMerge(tbl_5[15], {
		Id = "Bi15";
		LevelAsset = module_4_upvr.Data_ById.Birchock15;
	}), module_8_upvr.TableMerge(tbl_5[16], {
		Id = "Bi16";
		LevelAsset = module_4_upvr.Data_ById.Birchock16;
	}), module_8_upvr.TableMerge(tbl_5[17], {
		Id = "Bi17";
		LevelAsset = module_4_upvr.Data_ById.Birchock17;
	}), module_8_upvr.TableMerge(tbl_5[18], {
		Id = "Bi18";
		LevelAsset = module_4_upvr.Data_ById.Birchock18;
	}), module_8_upvr.TableMerge(tbl_5[19], {
		Id = "Bi19";
		LevelAsset = module_4_upvr.Data_ById.Birchock19;
	}), module_8_upvr.TableMerge(tbl_5[20], {
		Id = "Bi20";
		LevelAsset = module_4_upvr.Data_ById.Birchock20;
	}), module_8_upvr.TableMerge(tbl_5[21], {
		Id = "Bi21";
		LevelAsset = module_4_upvr.Data_ById.Birchock21;
	}), module_8_upvr.TableMerge(tbl_5[22], {
		Id = "Bi22";
		LevelAsset = module_4_upvr.Data_ById.Birchock22;
	}), module_8_upvr.TableMerge(tbl_5[23], {
		Id = "Bi23";
		LevelAsset = module_4_upvr.Data_ById.Birchock23;
	}), module_8_upvr.TableMerge(tbl_5[24], {
		Id = "Bi24";
		LevelAsset = module_4_upvr.Data_ById.Birchock24;
	}), module_8_upvr.TableMerge(tbl_5[25], {
		Id = "Bi25";
		LevelAsset = module_4_upvr.Data_ById.Birchock25;
	}), module_8_upvr.TableMerge(tbl_5[26], {
		Id = "Bi26";
		LevelAsset = module_4_upvr.Data_ById.Birchock26;
	}), module_8_upvr.TableMerge(tbl_5[27], {
		Id = "Bi27";
		LevelAsset = module_4_upvr.Data_ById.Birchock27;
	}), module_8_upvr.TableMerge(tbl_5[28], {
		Id = "Bi28";
		LevelAsset = module_4_upvr.Data_ById.Birchock28;
	}), module_8_upvr.TableMerge(tbl_5[29], {
		Id = "Bi29";
		LevelAsset = module_4_upvr.Data_ById.Birchock29;
	}), module_8_upvr.TableMerge(tbl_5[30], {
		Id = "Bi30";
		LevelAsset = module_4_upvr.Data_ById.Birchock30;
	})};
}
tbl_10_upvr[9] = tbl
tbl_10_upvr[10] = {
	Id = "Cosmic";
	Name = "Cosmic Classic";
	Price = 100000;
	CreatedAt = 0;
	SortOrder = tbl_22.LegacyStandard + 30;
	ShopImageId = "rbxassetid://1892418407";
	Abbreviation = "Cosmic";
	AwardsWorld = true;
	IsLegacy = true;
	Levels = {module_8_upvr.TableMerge(tbl_5[1], {
		Id = "Co1";
		LevelAsset = module_4_upvr.Data_ById.Cosmic1;
	}), module_8_upvr.TableMerge(tbl_5[2], {
		Id = "Co2";
		LevelAsset = module_4_upvr.Data_ById.Cosmic2;
	}), module_8_upvr.TableMerge(tbl_5[3], {
		Id = "Co3";
		LevelAsset = module_4_upvr.Data_ById.Cosmic3;
	}), module_8_upvr.TableMerge(tbl_5[4], {
		Id = "Co4";
		LevelAsset = module_4_upvr.Data_ById.Cosmic4;
	}), module_8_upvr.TableMerge(tbl_5[5], {
		Id = "Co5";
		LevelAsset = module_4_upvr.Data_ById.Cosmic5;
	}), module_8_upvr.TableMerge(tbl_5[6], {
		Id = "Co6";
		LevelAsset = module_4_upvr.Data_ById.Cosmic6;
	}), module_8_upvr.TableMerge(tbl_5[7], {
		Id = "Co7";
		LevelAsset = module_4_upvr.Data_ById.Cosmic7;
	}), module_8_upvr.TableMerge(tbl_5[8], {
		Id = "Co8";
		LevelAsset = module_4_upvr.Data_ById.Cosmic8;
	}), module_8_upvr.TableMerge(tbl_5[9], {
		Id = "Co9";
		LevelAsset = module_4_upvr.Data_ById.Cosmic9;
	}), module_8_upvr.TableMerge(tbl_5[10], {
		Id = "Co10";
		LevelAsset = module_4_upvr.Data_ById.Cosmic10;
	}), module_8_upvr.TableMerge(tbl_5[11], {
		Id = "Co11";
		LevelAsset = module_4_upvr.Data_ById.Cosmic11;
	}), module_8_upvr.TableMerge(tbl_5[12], {
		Id = "Co12";
		LevelAsset = module_4_upvr.Data_ById.Cosmic12;
	}), module_8_upvr.TableMerge(tbl_5[13], {
		Id = "Co13";
		LevelAsset = module_4_upvr.Data_ById.Cosmic13;
	}), module_8_upvr.TableMerge(tbl_5[14], {
		Id = "Co14";
		LevelAsset = module_4_upvr.Data_ById.Cosmic14;
	}), module_8_upvr.TableMerge(tbl_5[15], {
		Id = "Co15";
		LevelAsset = module_4_upvr.Data_ById.Cosmic15;
	}), module_8_upvr.TableMerge(tbl_5[16], {
		Id = "Co16";
		LevelAsset = module_4_upvr.Data_ById.Cosmic16;
	}), module_8_upvr.TableMerge(tbl_5[17], {
		Id = "Co17";
		LevelAsset = module_4_upvr.Data_ById.Cosmic17;
	}), module_8_upvr.TableMerge(tbl_5[18], {
		Id = "Co18";
		LevelAsset = module_4_upvr.Data_ById.Cosmic18;
	}), module_8_upvr.TableMerge(tbl_5[19], {
		Id = "Co19";
		LevelAsset = module_4_upvr.Data_ById.Cosmic19;
	}), module_8_upvr.TableMerge(tbl_5[20], {
		Id = "Co20";
		LevelAsset = module_4_upvr.Data_ById.Cosmic20;
	}), module_8_upvr.TableMerge(tbl_5[21], {
		Id = "Co21";
		LevelAsset = module_4_upvr.Data_ById.Cosmic21;
	}), module_8_upvr.TableMerge(tbl_5[22], {
		Id = "Co22";
		LevelAsset = module_4_upvr.Data_ById.Cosmic22;
	}), module_8_upvr.TableMerge(tbl_5[23], {
		Id = "Co23";
		LevelAsset = module_4_upvr.Data_ById.Cosmic23;
	}), module_8_upvr.TableMerge(tbl_5[24], {
		Id = "Co24";
		LevelAsset = module_4_upvr.Data_ById.Cosmic24;
	}), module_8_upvr.TableMerge(tbl_5[25], {
		Id = "Co25";
		LevelAsset = module_4_upvr.Data_ById.Cosmic25;
	}), module_8_upvr.TableMerge(tbl_5[26], {
		Id = "Co26";
		LevelAsset = module_4_upvr.Data_ById.Cosmic26;
	}), module_8_upvr.TableMerge(tbl_5[27], {
		Id = "Co27";
		LevelAsset = module_4_upvr.Data_ById.Cosmic27;
	}), module_8_upvr.TableMerge(tbl_5[28], {
		Id = "Co28";
		LevelAsset = module_4_upvr.Data_ById.Cosmic28;
	}), module_8_upvr.TableMerge(tbl_5[29], {
		Id = "Co29";
		LevelAsset = module_4_upvr.Data_ById.Cosmic29;
	}), module_8_upvr.TableMerge(tbl_5[30], {
		Id = "Co30";
		LevelAsset = module_4_upvr.Data_ById.Cosmic30;
	})};
}
tbl_10_upvr[11] = {
	Id = "Chromium";
	Name = "Chromium Classic";
	Price = 100000;
	CreatedAt = 0;
	SortOrder = tbl_22.LegacyStandard + 40;
	ShopImageId = "rbxassetid://1893169951";
	Abbreviation = "Chrome";
	AwardsWorld = true;
	IsLegacy = true;
	Levels = {module_8_upvr.TableMerge(tbl_5[1], {
		Id = "Ch1";
		LevelAsset = module_4_upvr.Data_ById.Chromium1;
	}), module_8_upvr.TableMerge(tbl_5[2], {
		Id = "Ch2";
		LevelAsset = module_4_upvr.Data_ById.Chromium2;
	}), module_8_upvr.TableMerge(tbl_5[3], {
		Id = "Ch3";
		LevelAsset = module_4_upvr.Data_ById.Chromium3;
	}), module_8_upvr.TableMerge(tbl_5[4], {
		Id = "Ch4";
		LevelAsset = module_4_upvr.Data_ById.Chromium4;
	}), module_8_upvr.TableMerge(tbl_5[5], {
		Id = "Ch5";
		LevelAsset = module_4_upvr.Data_ById.Chromium5;
	}), module_8_upvr.TableMerge(tbl_5[6], {
		Id = "Ch6";
		LevelAsset = module_4_upvr.Data_ById.Chromium6;
	}), module_8_upvr.TableMerge(tbl_5[7], {
		Id = "Ch7";
		LevelAsset = module_4_upvr.Data_ById.Chromium7;
	}), module_8_upvr.TableMerge(tbl_5[8], {
		Id = "Ch8";
		LevelAsset = module_4_upvr.Data_ById.Chromium8;
	}), module_8_upvr.TableMerge(tbl_5[9], {
		Id = "Ch9";
		LevelAsset = module_4_upvr.Data_ById.Chromium9;
	}), module_8_upvr.TableMerge(tbl_5[10], {
		Id = "Ch10";
		LevelAsset = module_4_upvr.Data_ById.Chromium10;
	}), module_8_upvr.TableMerge(tbl_5[11], {
		Id = "Ch11";
		LevelAsset = module_4_upvr.Data_ById.Chromium11;
	}), module_8_upvr.TableMerge(tbl_5[12], {
		Id = "Ch12";
		LevelAsset = module_4_upvr.Data_ById.Chromium12;
	}), module_8_upvr.TableMerge(tbl_5[13], {
		Id = "Ch13";
		LevelAsset = module_4_upvr.Data_ById.Chromium13;
	}), module_8_upvr.TableMerge(tbl_5[14], {
		Id = "Ch14";
		LevelAsset = module_4_upvr.Data_ById.Chromium14;
	}), module_8_upvr.TableMerge(tbl_5[15], {
		Id = "Ch15";
		LevelAsset = module_4_upvr.Data_ById.Chromium15;
	}), module_8_upvr.TableMerge(tbl_5[16], {
		Id = "Ch16";
		LevelAsset = module_4_upvr.Data_ById.Chromium16;
	}), module_8_upvr.TableMerge(tbl_5[17], {
		Id = "Ch17";
		LevelAsset = module_4_upvr.Data_ById.Chromium17;
	}), module_8_upvr.TableMerge(tbl_5[18], {
		Id = "Ch18";
		LevelAsset = module_4_upvr.Data_ById.Chromium18;
	}), module_8_upvr.TableMerge(tbl_5[19], {
		Id = "Ch19";
		LevelAsset = module_4_upvr.Data_ById.Chromium19;
	}), module_8_upvr.TableMerge(tbl_5[20], {
		Id = "Ch20";
		LevelAsset = module_4_upvr.Data_ById.Chromium20;
	}), module_8_upvr.TableMerge(tbl_5[21], {
		Id = "Ch21";
		LevelAsset = module_4_upvr.Data_ById.Chromium21;
	}), module_8_upvr.TableMerge(tbl_5[22], {
		Id = "Ch22";
		LevelAsset = module_4_upvr.Data_ById.Chromium22;
	}), module_8_upvr.TableMerge(tbl_5[23], {
		Id = "Ch23";
		LevelAsset = module_4_upvr.Data_ById.Chromium23;
	}), module_8_upvr.TableMerge(tbl_5[24], {
		Id = "Ch24";
		LevelAsset = module_4_upvr.Data_ById.Chromium24;
	}), module_8_upvr.TableMerge(tbl_5[25], {
		Id = "Ch25";
		LevelAsset = module_4_upvr.Data_ById.Chromium25;
	}), module_8_upvr.TableMerge(tbl_5[26], {
		Id = "Ch26";
		LevelAsset = module_4_upvr.Data_ById.Chromium26;
	}), module_8_upvr.TableMerge(tbl_5[27], {
		Id = "Ch27";
		LevelAsset = module_4_upvr.Data_ById.Chromium27;
	}), module_8_upvr.TableMerge(tbl_5[28], {
		Id = "Ch28";
		LevelAsset = module_4_upvr.Data_ById.Chromium28;
	}), module_8_upvr.TableMerge(tbl_5[29], {
		Id = "Ch29";
		LevelAsset = module_4_upvr.Data_ById.Chromium29;
	}), module_8_upvr.TableMerge(tbl_5[30], {
		Id = "Ch30";
		LevelAsset = module_4_upvr.Data_ById.Chromium30;
	})};
}
tbl_10_upvr[12] = {
	Id = "Moon";
	Name = "Moon Classic";
	Price = 100000;
	CreatedAt = 0;
	SortOrder = tbl_22.LegacyStandard + 50;
	ShopImageId = "rbxassetid://2333519852";
	Abbreviation = "Moon";
	AwardsWorld = true;
	IsLegacy = true;
	Levels = {module_8_upvr.TableMerge(tbl_5[1], {
		Id = "Mo1";
		LevelAsset = module_4_upvr.Data_ById.Moon1;
	}), module_8_upvr.TableMerge(tbl_5[2], {
		Id = "Mo2";
		LevelAsset = module_4_upvr.Data_ById.Moon2;
	}), module_8_upvr.TableMerge(tbl_5[3], {
		Id = "Mo3";
		LevelAsset = module_4_upvr.Data_ById.Moon3;
	}), module_8_upvr.TableMerge(tbl_5[4], {
		Id = "Mo4";
		LevelAsset = module_4_upvr.Data_ById.Moon4;
	}), module_8_upvr.TableMerge(tbl_5[5], {
		Id = "Mo5";
		LevelAsset = module_4_upvr.Data_ById.Moon5;
	}), module_8_upvr.TableMerge(tbl_5[6], {
		Id = "Mo6";
		LevelAsset = module_4_upvr.Data_ById.Moon6;
	}), module_8_upvr.TableMerge(tbl_5[7], {
		Id = "Mo7";
		LevelAsset = module_4_upvr.Data_ById.Moon7;
	}), module_8_upvr.TableMerge(tbl_5[8], {
		Id = "Mo8";
		LevelAsset = module_4_upvr.Data_ById.Moon8;
	}), module_8_upvr.TableMerge(tbl_5[9], {
		Id = "Mo9";
		LevelAsset = module_4_upvr.Data_ById.Moon9;
	}), module_8_upvr.TableMerge(tbl_5[10], {
		Id = "Mo10";
		LevelAsset = module_4_upvr.Data_ById.Moon10;
	}), module_8_upvr.TableMerge(tbl_5[11], {
		Id = "Mo11";
		LevelAsset = module_4_upvr.Data_ById.Moon11;
	}), module_8_upvr.TableMerge(tbl_5[12], {
		Id = "Mo12";
		LevelAsset = module_4_upvr.Data_ById.Moon12;
	}), module_8_upvr.TableMerge(tbl_5[13], {
		Id = "Mo13";
		LevelAsset = module_4_upvr.Data_ById.Moon13;
	}), module_8_upvr.TableMerge(tbl_5[14], {
		Id = "Mo14";
		LevelAsset = module_4_upvr.Data_ById.Moon14;
	}), module_8_upvr.TableMerge(tbl_5[15], {
		Id = "Mo15";
		LevelAsset = module_4_upvr.Data_ById.Moon15;
	}), module_8_upvr.TableMerge(tbl_5[16], {
		Id = "Mo16";
		LevelAsset = module_4_upvr.Data_ById.Moon16;
	}), module_8_upvr.TableMerge(tbl_5[17], {
		Id = "Mo17";
		LevelAsset = module_4_upvr.Data_ById.Moon17;
	}), module_8_upvr.TableMerge(tbl_5[18], {
		Id = "Mo18";
		LevelAsset = module_4_upvr.Data_ById.Moon18;
	}), module_8_upvr.TableMerge(tbl_5[19], {
		Id = "Mo19";
		LevelAsset = module_4_upvr.Data_ById.Moon19;
	}), module_8_upvr.TableMerge(tbl_5[20], {
		Id = "Mo20";
		LevelAsset = module_4_upvr.Data_ById.Moon20;
	}), module_8_upvr.TableMerge(tbl_5[21], {
		Id = "Mo21";
		LevelAsset = module_4_upvr.Data_ById.Moon21;
	}), module_8_upvr.TableMerge(tbl_5[22], {
		Id = "Mo22";
		LevelAsset = module_4_upvr.Data_ById.Moon22;
	}), module_8_upvr.TableMerge(tbl_5[23], {
		Id = "Mo23";
		LevelAsset = module_4_upvr.Data_ById.Moon23;
	}), module_8_upvr.TableMerge(tbl_5[24], {
		Id = "Mo24";
		LevelAsset = module_4_upvr.Data_ById.Moon24;
	}), module_8_upvr.TableMerge(tbl_5[25], {
		Id = "Mo25";
		LevelAsset = module_4_upvr.Data_ById.Moon25;
	}), module_8_upvr.TableMerge(tbl_5[26], {
		Id = "Mo26";
		LevelAsset = module_4_upvr.Data_ById.Moon26;
	}), module_8_upvr.TableMerge(tbl_5[27], {
		Id = "Mo27";
		LevelAsset = module_4_upvr.Data_ById.Moon27;
	}), module_8_upvr.TableMerge(tbl_5[28], {
		Id = "Mo28";
		LevelAsset = module_4_upvr.Data_ById.Moon28;
	}), module_8_upvr.TableMerge(tbl_5[29], {
		Id = "Mo29";
		LevelAsset = module_4_upvr.Data_ById.Moon29;
	}), module_8_upvr.TableMerge(tbl_5[30], {
		Id = "Mo30";
		LevelAsset = module_4_upvr.Data_ById.Moon30;
	})};
}
tbl_10_upvr[13] = {
	Id = "Reload";
	Name = "Speed Run Reloaded";
	Price = 100000;
	CreatedAt = 0;
	SortOrder = tbl_22.LegacyUnique;
	ShopImageId = "rbxassetid://1558244794";
	Abbreviation = "Reload";
	AwardsWorld = true;
	MovementSpecs = {
		WalkSpeedInitial = 60;
		WalkSpeedRunning = 60;
	};
	Levels = {{
		Id = "Rel1";
		Name = "The Journey Begins";
		ShopImageId = "rbxassetid://17184921832";
		LevelAsset = module_4_upvr.Data_ById.Reload1;
		LevelIndex = 1;
	}, {
		Id = "Rel2";
		Name = "Dry Dunes Desert";
		ShopImageId = "rbxassetid://17184921633";
		LevelAsset = module_4_upvr.Data_ById.Reload1;
		LevelIndex = 2;
	}, {
		Id = "Rel3";
		Name = "The Deadly Swamp";
		ShopImageId = "rbxassetid://17184921283";
		LevelAsset = module_4_upvr.Data_ById.Reload1;
		LevelIndex = 3;
	}, {
		Id = "Rel4";
		Name = "Rocky Road";
		ShopImageId = "rbxassetid://17184921041";
		LevelAsset = module_4_upvr.Data_ById.Reload1;
		LevelIndex = 4;
	}, {
		Id = "Rel5";
		Name = "Ice Cold Caverns";
		ShopImageId = "rbxassetid://17184920799";
		LevelAsset = module_4_upvr.Data_ById.Reload1;
		LevelIndex = 5;
	}, {
		Id = "Rel6";
		Name = "The Snow White Lake";
		ShopImageId = "rbxassetid://17184920644";
		LevelAsset = module_4_upvr.Data_ById.Reload1;
		LevelIndex = 6;
	}, {
		Id = "Rel7";
		Name = "The Drop Down Falls";
		ShopImageId = "rbxassetid://17184920420";
		LevelAsset = module_4_upvr.Data_ById.Reload1;
		LevelIndex = 7;
	}, {
		Id = "Rel8";
		Name = "The Field of Bravery";
		ShopImageId = "rbxassetid://17184920190";
		LevelAsset = module_4_upvr.Data_ById.Reload1;
		LevelIndex = 8;
	}, {
		Id = "Rel9";
		Name = "Rocky Hills";
		ShopImageId = "rbxassetid://17184919944";
		LevelAsset = module_4_upvr.Data_ById.Reload1;
		LevelIndex = 9;
	}, {
		Id = "Rel10";
		Name = "The Dark Forest";
		ShopImageId = "rbxassetid://17184919753";
		LevelAsset = module_4_upvr.Data_ById.Reload1;
		LevelIndex = 10;
	}, {
		Id = "Rel11";
		Name = "Vale of Sakura Blossoms";
		ShopImageId = "rbxassetid://17184919434";
		LevelAsset = module_4_upvr.Data_ById.Reload1;
		LevelIndex = 11;
	}, {
		Id = "Rel12";
		Name = "The Great Gerudo Desert";
		ShopImageId = "rbxassetid://17184918999";
		LevelAsset = module_4_upvr.Data_ById.Reload1;
		LevelIndex = 12;
	}, {
		Id = "Rel13";
		Name = "Dread Lands";
		ShopImageId = "rbxassetid://17184918793";
		LevelAsset = module_4_upvr.Data_ById.Reload1;
		LevelIndex = 13;
	}, {
		Id = "Rel14";
		Name = "The Legendary House of Amnesia";
		ShopImageId = "rbxassetid://17184918578";
		LevelAsset = module_4_upvr.Data_ById.Reload1;
		LevelIndex = 14;
	}, {
		Id = "Rel15";
		Name = "The Final Rush";
		ShopImageId = "rbxassetid://17184918409";
		LevelAsset = module_4_upvr.Data_ById.Reload1;
		GemsAwarded = 50;
		LevelIndex = 15;
	}};
}
tbl_10_upvr[14] = {
	Id = "Retro";
	Name = "Retro Level Pack";
	Price = math.huge;
	CreatedAt = 0;
	SortOrder = tbl_22.Gamepass + 10;
	ShopImageId = "rbxassetid://16619069667";
	Unrollable = true;
	Abbreviation = "Retro";
	Levels = {{
		Id = "Ret1";
		Name = "Retro 1";
		ShopImageId = "rbxassetid://16619069667";
		LevelAsset = module_4_upvr.Data_ById.Retro1;
		StarNames = {};
	}, {
		Id = "Ret2";
		Name = "Retro 2";
		ShopImageId = "rbxassetid://17185127333";
		LevelAsset = module_4_upvr.Data_ById.Retro2;
		StarNames = {};
	}, {
		Id = "Ret3";
		Name = "Retro 3";
		ShopImageId = "rbxassetid://17185127215";
		LevelAsset = module_4_upvr.Data_ById.Retro3;
		StarNames = {};
	}, {
		Id = "Ret4";
		Name = "Retro 4";
		ShopImageId = "rbxassetid://17185127039";
		LevelAsset = module_4_upvr.Data_ById.Retro4;
		StarNames = {};
	}, {
		Id = "Ret5";
		Name = "Retro 5";
		ShopImageId = "rbxassetid://17185126903";
		LevelAsset = module_4_upvr.Data_ById.Retro5;
		StarNames = {};
	}};
}
tbl_10_upvr[15] = {
	Id = "FD";
	Name = "Final Destiny";
	Price = math.huge;
	CreatedAt = 0;
	SortOrder = tbl_22.Gamepass + 20;
	ShopImageId = "rbxassetid://16619027491";
	Unrollable = true;
	Levels = {{
		Id = "FD1";
		Name = "Final Destiny";
		ShopImageId = "rbxassetid://16619027491";
		LevelAsset = module_4_upvr.Data_ById.FinalDestiny1;
		BadgeId = 1879933263;
		EnemyStrength = 20;
		GemsAwarded = 50;
		ItemRewards = {
			[module_upvr_2.ItemType.Trail] = {"FDestC", "FDestB", "FDestA"};
		};
		StarNames = {};
	}};
}
tbl_10_upvr[16] = {
	Id = "Donut";
	Name = "Donut World";
	Price = 0;
	CreatedAt = 1710029258;
	SortOrder = tbl_22.Event;
	ShopImageId = "rbxassetid://17184535167";
	Unownable = true;
	Abbreviation = "Donut";
	AssociatedEvents = {"Donut"};
	BadgeId = 1632492598977375;
	Levels = {{
		Id = "Don1";
		Name = "Donut Crystal Caverns";
		ShopImageId = "rbxassetid://17184536530";
		LevelAsset = module_4_upvr.Data_ById.Donut1;
		Collectibles = 5;
	}, {
		Id = "Don2";
		Name = "Donut Winterland";
		ShopImageId = "rbxassetid://17184536360";
		LevelAsset = module_4_upvr.Data_ById.Donut2;
		Collectibles = 5;
	}, {
		Id = "Don3";
		Name = "Donut Barnacle Depths";
		ShopImageId = "rbxassetid://17184536233";
		LevelAsset = module_4_upvr.Data_ById.Donut3;
		Collectibles = 5;
	}, {
		Id = "Don4";
		Name = "Haunted Donut Dreamscape";
		ShopImageId = "rbxassetid://17184536122";
		LevelAsset = module_4_upvr.Data_ById.Donut4;
		Collectibles = 5;
	}, {
		Id = "Don5";
		Name = "Sacred Donut Temple";
		MustOwn = true;
		ShopImageId = "rbxassetid://17184535965";
		UnlockMethod = module_upvr_2.UnlockMethod.EventReward;
		LevelAsset = module_4_upvr.Data_ById.Donut5;
		Collectibles = 5;
	}, {
		Id = "Don6";
		Name = "Alien Donut Dreamscape";
		MustOwn = true;
		ShopImageId = "rbxassetid://17184535819";
		UnlockMethod = module_upvr_2.UnlockMethod.EventReward;
		LevelAsset = module_4_upvr.Data_ById.Donut6;
		Collectibles = 5;
	}, {
		Id = "Don7";
		Name = "Donut Goldmines";
		MustOwn = true;
		ShopImageId = "rbxassetid://17184535648";
		UnlockMethod = module_upvr_2.UnlockMethod.EventReward;
		LevelAsset = module_4_upvr.Data_ById.Donut7;
		Collectibles = 5;
	}, {
		Id = "Don8";
		Name = "Donut Sandcastle Shores";
		MustOwn = true;
		ShopImageId = "rbxassetid://17184535484";
		UnlockMethod = module_upvr_2.UnlockMethod.EventReward;
		LevelAsset = module_4_upvr.Data_ById.Donut8;
		Collectibles = 5;
	}, {
		Id = "Don9";
		Name = "Donut Lavaland";
		MustOwn = true;
		ShopImageId = "rbxassetid://17184535277";
		UnlockMethod = module_upvr_2.UnlockMethod.EventReward;
		LevelAsset = module_4_upvr.Data_ById.Donut9;
		Collectibles = 5;
	}, {
		Id = "Don10";
		Name = "Donut Galaxy";
		MustOwn = true;
		ShopImageId = "rbxassetid://17184535167";
		UnlockMethod = module_upvr_2.UnlockMethod.EventReward;
		LevelAsset = module_4_upvr.Data_ById.Donut10;
		Collectibles = 5;
	}};
}
tbl_10_upvr[17] = {
	Id = "Christmas";
	Name = "Christmas World";
	Price = 0;
	CreatedAt = 1751221931;
	SortOrder = tbl_22.Event;
	ShopImageId = "rbxassetid://113323221919055";
	Unownable = true;
	MustOwn = true;
	Levels = {{
		Id = "Chr1";
		Name = "Gingerbread";
		ShopImageId = "rbxassetid://98741785229169";
		LevelAsset = module_4_upvr.Data_ById.Christmas1;
	}, {
		Id = "Chr2";
		Name = "Candy Cane Castle";
		ShopImageId = "rbxassetid://131680352571540";
		LevelAsset = module_4_upvr.Data_ById.Christmas2;
	}, {
		Id = "Chr3";
		Name = "Cozy Living Room";
		ShopImageId = "rbxassetid://96110595465733";
		LevelAsset = module_4_upvr.Data_ById.Christmas3;
	}, {
		Id = "Chr4";
		Name = "Christmas Sky";
		ShopImageId = "rbxassetid://113323221919055";
		LevelAsset = module_4_upvr.Data_ById.Christmas4;
	}, {
		Id = "Chr5";
		Name = "Toy Factory";
		ShopImageId = "rbxassetid://93939150676886";
		LevelAsset = module_4_upvr.Data_ById.Christmas5;
	}};
}
if module_9_upvr.IsDevGame then
	tbl_10_upvr[#tbl_10_upvr + 1] = {
		Id = module_upvr_2.TesterWorldId;
		Name = module_upvr_2.TesterWorldId;
		Price = 0;
		CreatedAt = os.time();
		SortOrder = (-math.huge);
		Unownable = true;
		ShopImageId = "rbxassetid://1961112831";
		IsMain = true;
		Levels = {{
			Id = "TestLevel";
			Name = "TestLevel";
			LevelAsset = module_4_upvr.Data_ById.TestLevelAsset;
		}};
	}
end
table.sort(tbl_10_upvr, module_upvr_2.SortItemData)
module_upvr.DataArray = tbl_10_upvr
module_upvr.Data_ByCounterType = {}
module_upvr.Data_ById = {}
module_upvr.Data_ByLevel = {}
module_upvr.Level_ById = {}
module_upvr.Levels_ByLevelAsset_ById = {}
module_upvr.Levels_ByLevelAsset_ByIndex = {}
local tbl_23 = {}
for _, v in tbl_10_upvr do
	tbl = module_upvr.Data_ById[v.Id]
	local var423
	if var423 then
		var423 = error
		var423(module_upvr_2.FormatOutput("Duplicate WorldId '%s'", "Worlds", nil, v.Id))
	end
	var423 = false
	if v.CounterType then
		var423 = true
		if module_upvr.Data_ByCounterType[v.CounterType] then
			error(module_upvr_2.FormatOutput("CounterType '%s' already assigned to WorldId '%s'", "Worlds", nil, v.CounterType, module_upvr.Data_ByCounterType[v.CounterType]))
		end
		module_upvr.Data_ByCounterType[v.CounterType] = v
	end
	module_upvr.Data_ById[v.Id] = v
	local const_number_2 = 1
	local tbl_21 = {}
	while const_number_2 <= #v.Levels do
		local var426 = v.Levels[const_number_2]
		if var426.IsInDevelopment and not module_9_upvr.IsDevGame then
			table.remove(v.Levels, const_number_2)
			tbl_21[#tbl_21 + 1] = var426
		else
			if module_upvr.Level_ById[var426.Id] then
				error(module_upvr_2.FormatOutput("Duplicate LevelId '%s'", "Worlds", nil, var426.Id))
			end
			module_upvr.Level_ById[var426.Id] = var426
			module_upvr.Data_ByLevel[var426] = v
			module_8_upvr.TableBuildSub(module_upvr.Levels_ByLevelAsset_ById, var426.LevelAsset)[var426.Id] = var426
			local LevelIndex = var426.LevelIndex
			if not LevelIndex then
				LevelIndex = 1
			end
			module_8_upvr.TableBuildSub(module_upvr.Levels_ByLevelAsset_ByIndex, var426.LevelAsset)[LevelIndex] = var426
			LevelIndex = var426.LevelAsset.StructureType
			local var428 = LevelIndex
			if var428 ~= module_4_upvr.StructureType.Custom then
				if var426.StarNames then
					var428 = #var426.StarNames
				else
					var428 = 1
				end
			end
			if var426.CreatedAt == nil then
				var426.CreatedAt = v.CreatedAt
			end
			if var426.SortOrder == nil then
				var426.SortOrder = v.SortOrder
			end
			if var423 then
				var426.MustOwn = true
			end
			if module_upvr_2.CanUse(var426) then
				var426.Unownable = true
			end
		end
	end
	if 0 < #tbl_21 then
		tbl_23[v] = tbl_21
	end
	v.NotCountedAgainstEquipLimit = nil
	if v.Abbreviation then
		local any_TableBuildSub_result1 = module_8_upvr.TableBuildSub({}, v.Abbreviation)
		any_TableBuildSub_result1[#any_TableBuildSub_result1 + 1] = v.Id
	end
end
for i_3, v_2 in {} do
	var423 = #v_2
	if 1 < var423 then
		var423 = warn
		var423(module_upvr_2.FormatOutput("The following worlds share the same abbreviation of '%s:' %s", "Worlds", nil, i_3, table.concat(v_2, ", ")))
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
end
if next(tbl_23) ~= nil and game:GetService("RunService"):IsServer() then
	i_3 = "Worlds"
	print(module_upvr_2.FormatOutput("The following in-development levels have been excluded from their worlds:", i_3))
	for i_4, v_3 in tbl_23 do
		var423 = table.create(#v_3)
		for i_5, v_4 in v_3 do
			var423[i_5] = v_4.Id
		end
		print(module_upvr_2.FormatOutput(table.concat(var423, ", "), "World: "..i_4.Id))
	end
end
if module_upvr.Data_ById[module_upvr_2.DefaultWorldId] == nil then
	error(module_upvr_2.FormatOutput("Default world is set to invalid WorldId '%s'", "Worlds", nil, module_upvr_2.DefaultWorldId))
end
module_upvr.TotalStarCount = 0 + var428
module_upvr.DefaultLevel = module_upvr.Level_ById.Lobby
module_upvr.LobbyAdjacentLevels = {}
module_upvr.WinnersLevel = module_upvr.Level_ById.Winners
for _, v_5 in tbl_10_upvr do
	if v_5.IsLegacy then
		module_upvr.LobbyAdjacentLevels[#module_upvr.LobbyAdjacentLevels + 1] = v_5.Levels[1]
	end
end
for _, v_6 in {module_4_upvr.Data_ById.RainbowRun, module_4_upvr.Data_ById.PeachDesert30, module_4_upvr.Data_ById.Birchock30, module_4_upvr.Data_ById.Cybernaut30, module_4_upvr.Data_ById.Cosmic30, module_4_upvr.Data_ById.Chromium30, module_4_upvr.Data_ById.Moon30} do
	if module_upvr.Levels_ByLevelAsset_ById[v_6] then
		for _, v_7 in module_upvr.Levels_ByLevelAsset_ById[v_6] do
			local var431 = module_upvr.Data_ByLevel[v_7]
			local assert_result1 = assert(table.find(var431.Levels, v_7), "World-Level mismatch")
			if assert_result1 ~= #var431.Levels then
				table.remove(var431.Levels, assert_result1)
				var431.Levels[#var431.Levels + 1] = v_7
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
	end
end
local tbl_13_upvr = {60, 120, 180, 240, 300, 360, 420, 480, 540, 600}
local len = #module_upvr.Data_ById.Forbidden.Levels
local len_2 = #tbl_13_upvr
if len_2 < len then
	if len - len_2 == 1 then
		warn(module_upvr_2.FormatOutput("Missing star requirements for Forbidden Level %i", "Worlds", nil, len))
	else
		warn(module_upvr_2.FormatOutput("Missing star requirements for Forbidden Levels %i to %i", "Worlds", nil, len_2 + 1, len))
	end
end
function module_upvr.ForbiddenLevelGetStarRequirement(arg1) -- Line 2773
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: tbl_13_upvr (readonly)
	]]
	local var436
	if arg1 ~= nil then
		var436 = tbl_13_upvr[arg1]
	end
	return var436
end
function tbl_13_upvr(arg1, arg2, arg3, arg4) -- Line 2792, Named "SortLevelDataRaw"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: tbl_10_upvr (readonly)
	]]
	local var438 = false
	if arg1 ~= arg2 then
		local assert_result1_3 = assert(module_upvr.Data_ByLevel[arg1], "Invalid data")
		local assert_result1_2 = assert(module_upvr.Data_ByLevel[arg2], "Invalid data")
		if assert_result1_3 == assert_result1_2 then
			local table_find_result1_2 = table.find(assert_result1_3.Levels, arg1)
			local table_find_result1 = table.find(assert_result1_2.Levels, arg2)
			if arg4 then
				if table_find_result1 >= table_find_result1_2 then
					var438 = false
				else
					var438 = true
				end
				return var438
			end
			if table_find_result1_2 >= table_find_result1 then
				var438 = false
			else
				var438 = true
			end
			return var438
		end
		local table_find_result1_4 = table.find(tbl_10_upvr, assert_result1_3)
		local table_find_result1_3 = table.find(tbl_10_upvr, assert_result1_2)
		if arg3 then
			if table_find_result1_3 >= table_find_result1_4 then
				var438 = false
			else
				var438 = true
			end
			return var438
		end
		if table_find_result1_4 >= table_find_result1_3 then
			var438 = false
		else
			var438 = true
		end
	end
	return var438
end
local var437_upvr = tbl_13_upvr
module_upvr.SortLevelData = {
	AscWorld_AscLevel = function(arg1, arg2) -- Line 2829, Named "AscWorld_AscLevel"
		--[[ Upvalues[1]:
			[1]: var437_upvr (readonly)
		]]
		return var437_upvr(arg1, arg2, false, false)
	end;
	AscWorld_DesLevel = function(arg1, arg2) -- Line 2832, Named "AscWorld_DesLevel"
		--[[ Upvalues[1]:
			[1]: var437_upvr (readonly)
		]]
		return var437_upvr(arg1, arg2, false, true)
	end;
	DesWorld_AscLevel = function(arg1, arg2) -- Line 2835, Named "DesWorld_AscLevel"
		--[[ Upvalues[1]:
			[1]: var437_upvr (readonly)
		]]
		return var437_upvr(arg1, arg2, true, false)
	end;
	DesWorld_DesLevel = function(arg1, arg2) -- Line 2838, Named "DesWorld_DesLevel"
		--[[ Upvalues[1]:
			[1]: var437_upvr (readonly)
		]]
		return var437_upvr(arg1, arg2, true, true)
	end;
}
function module_upvr.GetLevelIndex(arg1, arg2) -- Line 2843
	return table.find(arg1.Levels, arg2)
end
local tbl_4_upvr = {}
;({})[1] = 20
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
;({})[2] = 8
tbl_4_upvr[1] = {5, 2}
tbl_4_upvr[2] = {10, 5}
tbl_4_upvr[3] = {15, 6}
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
tbl_4_upvr[4] = {}
tbl_4_upvr[5] = {25, 10}
tbl_4_upvr[6] = {26, 11}
tbl_4_upvr[7] = {28, 15}
tbl_4_upvr[8] = {29, 20}
tbl_4_upvr[9] = {30, 25}
function module_upvr.LevelGetBaseGemAward(arg1) -- Line 2860
	--[[ Upvalues[4]:
		[1]: module_9_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: tbl_4_upvr (readonly)
	]]
	local var455
	if arg1.GemsAwarded then
		var455 = arg1.GemsAwarded
		return var455
	end
	local var456 = module_upvr.Data_ByLevel[arg1]
	if not var456 then
		error(module_upvr_2.FormatOutput("Invalid level data", "Worlds"), 2)
	end
	local var457
	if var456.IsLegacy then
		var457 = module_upvr
		var457 = var456
		local const_number = 0
		var457 = nil
		repeat
			if const_number >= #tbl_4_upvr then break end
			var457 = tbl_4_upvr[const_number + 1]
		until (var457.GetLevelIndex(var457, arg1) or 0) <= var457[1]
		var455 = var457[2]
	end
	return var455
end
function tbl_4_upvr(arg1, arg2, arg3) -- Line 2896, Named "LevelCanUse"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	local var462 = false
	local var463 = module_upvr.Data_ByLevel[arg1]
	if var463 then
		var462 = module_upvr.WorldCanJoin(var463, arg2)
		if var462 then
			local var464
			if not var464 then
				var464 = nil
				if arg2 then
					var464 = arg2.Inventory.Levels
				end
				var462 = module_upvr_2.CanUse(arg1, var464)
				if not var462 and var463.CounterType then
					if arg3 then
						var462 = true
						return var462
					end
					if arg2 then
						if assert(module_upvr.GetLevelIndex(var463, arg1)) > module_upvr_2.SaveDataGetCount(arg2, var463.CounterType) then
							var462 = false
						else
							var462 = true
						end
					end
				end
			end
		end
	end
	return var462
end
module_upvr.LevelCanUse = tbl_4_upvr
function tbl_4_upvr(arg1, arg2) -- Line 2948, Named "LevelHasBeaten"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	local var468
	if module_upvr.Data_ByLevel[arg1].IsTechnical then
		var468 = true
		return var468
	end
	if arg2 then
		local any_SaveDataGetLevelStats_result1_5 = module_upvr_2.SaveDataGetLevelStats(arg2, arg1.Id)
		if any_SaveDataGetLevelStats_result1_5 then
			local var470 = true
			if any_SaveDataGetLevelStats_result1_5.T == nil then
				var470 = false
				if any_SaveDataGetLevelStats_result1_5.CT ~= nil then
					if 0 >= any_SaveDataGetLevelStats_result1_5.CT then
						var470 = false
					else
						var470 = true
					end
				end
			end
			var468 = var470
		end
	end
	return var468
end
module_upvr.LevelHasBeaten = tbl_4_upvr
function tbl_4_upvr(arg1, arg2) -- Line 2984, Named "LevelHasVisited"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	local var471
	if module_upvr.Data_ByLevel[arg1].IsTechnical then
		var471 = true
		return var471
	end
	if arg2 then
		if module_upvr_2.SaveDataGetLevelStats(arg2, arg1.Id) == nil then
			var471 = false
		else
			var471 = true
		end
	end
	return var471
end
module_upvr.LevelHasVisited = tbl_4_upvr
function tbl_4_upvr(arg1, arg2, arg3, arg4) -- Line 3005, Named "LevelCanJoin"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 15. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 15. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 20. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 20. Error Block 3 end (CF ANALYSIS FAILED)
end
module_upvr.LevelCanJoin = tbl_4_upvr
local module_7_upvr = require(Modules:WaitForChild("Products"))
function tbl_4_upvr(arg1, arg2) -- Line 3095, Named "LevelCanSkip"
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_7_upvr (readonly)
	]]
	local var474 = false
	local module_2 = {}
	local any_LevelGetNext_result1 = module_upvr.LevelGetNext(arg1)
	local var477
	if any_LevelGetNext_result1 then
		if module_upvr.LevelCanJoin(any_LevelGetNext_result1, arg1, arg2) then
			var474 = true
			module_2[#module_2 + 1] = module_upvr_2.UnlockMethod.UserRequest
			return var474, module_2, any_LevelGetNext_result1
		end
		local var478 = module_upvr.Data_ById[module_upvr_2.DefaultWorldId]
		local var479 = module_upvr
		if var479.Data_ByLevel[any_LevelGetNext_result1] ~= var478 then
			var479 = false
		else
			var479 = true
		end
		local CounterType = var478.CounterType
		var477 = var479
		if var477 then
			if CounterType == nil then
				var477 = false
			else
				var477 = true
				local var481
			end
		end
		if var477 and arg2 then
			if assert(module_upvr.GetLevelIndex(var478, any_LevelGetNext_result1)) > module_upvr_2.SaveDataGetCount(arg2, CounterType) + 1 then
				var481 = false
			else
				var481 = true
			end
		end
		var474 = module_upvr.LevelCanUse(any_LevelGetNext_result1, arg2, var481)
		if var474 then
			if var477 then
				module_2[#module_2 + 1] = module_upvr_2.UnlockMethod.Currency
			end
			if module_7_upvr.Products.SkipLevel[1] ~= nil then
				module_2[#module_2 + 1] = module_upvr_2.UnlockMethod.Product
			end
		end
	end
	return var474, module_2, any_LevelGetNext_result1
end
module_upvr.LevelCanSkip = tbl_4_upvr
function tbl_4_upvr(arg1) -- Line 3154, Named "LevelGetEnemyStrength"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg1.EnemyStrength then
		return arg1.EnemyStrength
	end
	local var482 = module_upvr.Data_ByLevel[arg1]
	return assert(module_upvr.GetLevelIndex(var482, arg1)) * (var482.EnemyStrengthScale or 1)
end
module_upvr.LevelGetEnemyStrength = tbl_4_upvr
function tbl_4_upvr(arg1) -- Line 3174, Named "LevelGetEventCollectibleIndexRange"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [5] 5. Error Block 2 start (CF ANALYSIS FAILED)
	error(module_upvr_2.FormatOutput("Invalid level data", "Worlds"), 2)
	-- KONSTANTERROR: [5] 5. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 13. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 13. Error Block 3 end (CF ANALYSIS FAILED)
end
module_upvr.LevelGetEventCollectibleIndexRange = tbl_4_upvr
tbl_4_upvr = {}
local var483 = tbl_4_upvr
var483.__mode = "kv"
local tbl_7_upvr = {}
for _, v_8 in module_upvr.FormattedNameType do
	tbl_7_upvr[v_8] = setmetatable({}, var483)
	local _
end
;({})[module_upvr.FormattedNameType.Abbreviated] = function(arg1, arg2) -- Line 3246
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local Abbreviation = arg2.Abbreviation
	if not Abbreviation then
		Abbreviation = arg2.Name
	end
	return string.format("%i-%s", assert(module_upvr.GetLevelIndex(arg2, arg1)), Abbreviation)
end
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
;({})[module_upvr.FormattedNameType.Expanded] = function(arg1, arg2) -- Line 3218, Named "GetExpandedName"
	return arg1.Name
end
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
;({})[module_upvr.FormattedNameType.Index] = function(arg1, arg2) -- Line 3258
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return string.format("Level %i", assert(module_upvr.GetLevelIndex(arg2, arg1)))
end
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
;({})[module_upvr.FormattedNameType.Number] = function(arg1, arg2) -- Line 3226, Named "GetNumberName"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return string.format("%s Lvl %i", string.gsub(arg2.Name, "%s*World", ""), assert(module_upvr.GetLevelIndex(arg2, arg1)))
end
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
;({})[module_upvr.FormattedNameType.Title] = function(arg1, arg2) -- Line 3268
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return string.format("%s - %s", string.format("%s Lvl %i", string.gsub(arg2.Name, "%s*World", ""), assert(module_upvr.GetLevelIndex(arg2, arg1))), arg1.Name)
end
local tbl_25_upvr = {}
function module_upvr.LevelGetFormattedName(arg1, arg2, arg3) -- Line 3281
	--[[ Upvalues[4]:
		[1]: tbl_7_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr (readonly)
		[4]: tbl_25_upvr (readonly)
	]]
	local var491 = tbl_7_upvr[arg2]
	if not var491 then
		error(module_upvr_2.FormatOutput("Invalid FormattedNameType", "Worlds"), 2)
	end
	if var491[arg1] then
		return var491[arg1]
	end
	local var492 = module_upvr.Data_ByLevel[arg1]
	if not var492 then
		error(module_upvr_2.FormatOutput("Invalid level data", "Worlds"), 2)
	end
	if var492.IsTechnical and arg3 then
		return arg1.Name
	end
	local any_any_result1 = tbl_25_upvr[arg2](arg1, var492)
	var491[arg1] = any_any_result1
	return any_any_result1
end
function module_upvr.LevelGetNext(arg1) -- Line 3316
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var497
	local var498 = module_upvr.Data_ByLevel[arg1]
	if var498 then
		if not var498.IsTechnical then
			local any_GetLevelIndex_result1 = module_upvr.GetLevelIndex(var498, arg1)
			if any_GetLevelIndex_result1 then
				if any_GetLevelIndex_result1 < #var498.Levels then
					var497 = var498.Levels[any_GetLevelIndex_result1 + 1]
					return var497
				end
				if var498.WorldCompletionBehavior == module_upvr.WorldCompletionBehavior.ReturnToLobby then
					var497 = module_upvr.DefaultLevel
					return var497
				end
				if var498.WorldCompletionBehavior ~= module_upvr.WorldCompletionBehavior.InformCompletion then
					var497 = module_upvr.Data_ById.Winners.Levels[1]
				end
			end
		end
	end
	return var497
end
function module_upvr.LevelGetMovementSpecs(arg1) -- Line 3338
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: module_4_upvr (readonly)
		[3]: tbl_12_upvr (readonly)
		[4]: module_8_upvr (readonly)
	]]
	local module_3 = {}
	local var501 = module_upvr.Data_ByLevel[arg1]
	if var501 then
		if var501.MovementSpecs then
			module_3[#module_3 + 1] = var501.MovementSpecs
		end
	end
	if arg1.MovementSpecs then
		module_3[#module_3 + 1] = arg1.MovementSpecs
	elseif arg1.LevelAsset.StructureType == module_4_upvr.StructureType.Legacy then
		module_3[#module_3 + 1] = tbl_12_upvr
	end
	return module_8_upvr.PropsMerge({}, table.unpack(module_3))
end
function module_upvr.LevelGetWalkSpeed(arg1, arg2) -- Line 3358
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_9_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 8. Error Block 3 start (CF ANALYSIS FAILED)
	do
		return module_9_upvr.WalkSpeedDefault
	end
	-- KONSTANTERROR: [9] 8. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 7 start (CF ANALYSIS FAILED)
	if not module_upvr.LevelGetMovementSpecs(arg1).WalkSpeedRunning then
	end
	-- KONSTANTERROR: [13] 11. Error Block 7 end (CF ANALYSIS FAILED)
end
function module_upvr.LevelHostsEvent(arg1, arg2) -- Line 3372
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var502
	if arg1.Collectibles == nil then
		var502 = false
	else
		var502 = true
	end
	if var502 then
		var502 = module_upvr.WorldHostsEvent(module_upvr.Data_ByLevel[arg1], arg2)
	end
	return var502
end
function module_upvr.LevelUsesGatePopup(arg1) -- Line 3386
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var503
	if arg1.UseGatePopup ~= nil then
		var503 = arg1.UseGatePopup
		return var503
	end
	if module_upvr.Data_ByLevel[arg1].UseGatePopup ~= true then
		var503 = false
	else
		var503 = true
	end
	return var503
end
function module_upvr.StarIsValid(arg1, arg2) -- Line 3409
	local var504 = false
	if type(arg2) == "string" then
		if arg1.StarNames then
			if table.find(arg1.StarNames, arg2) == nil then
				var504 = false
			else
				var504 = true
			end
			return var504
		end
		if arg2 ~= "Star" then
			var504 = false
		else
			var504 = true
		end
	end
	return var504
end
function module_upvr.StarOwned(arg1, arg2, arg3) -- Line 3428
	local var507 = false
	if arg3 then
		local var508 = arg3.LevelStats[arg1.Id]
		if var508 then
			if table.find(var508.S, arg2) == nil then
				var507 = false
			else
				var507 = true
			end
		end
	end
	return var507
end
function module_upvr.StarAddToSaveData(arg1, arg2, arg3) -- Line 3446
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	local var509 = false
	if module_upvr.StarIsValid(arg1, arg2) then
		local any_SaveDataCreateLevelStats_result1 = module_upvr_2.SaveDataCreateLevelStats(arg3, arg1.Id)
		if not table.find(any_SaveDataCreateLevelStats_result1.S, arg2) then
			var509 = true
			any_SaveDataCreateLevelStats_result1.S[#any_SaveDataCreateLevelStats_result1.S + 1] = arg2
		end
	end
	return var509
end
function module_upvr.StarGetWorldStarCount(arg1, arg2) -- Line 3467
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var535
	for _, v_9 in arg1.Levels do
		if v_9.StarNames then
			var535 += #v_9.StarNames
		else
			var535 += 1
		end
	end
	if arg2 then
		for _, v_10 in arg1.Levels do
			local var536 = arg2.LevelStats[v_10.Id]
			if var536 then
				for _, v_11 in var536.S do
					if module_upvr.StarIsValid(v_10, v_11) then
					end
				end
			end
		end
	end
	return var535, 0 + 1
end
function module_upvr.WorldComplete(arg1, arg2) -- Line 3509
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var545
	for _, v_12 in arg1.Levels do
		local any_SaveDataGetLevelStats_result1 = module_upvr_2.SaveDataGetLevelStats(arg2, v_12.Id)
		if any_SaveDataGetLevelStats_result1 and any_SaveDataGetLevelStats_result1.T then
			local var547 = true
			if var547 then
				if any_SaveDataGetLevelStats_result1.V ~= true then
					var547 = false
				else
					var547 = true
				end
			end
		else
			var545 = false
			return var545, false, 0 + any_SaveDataGetLevelStats_result1.T
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	return var545, false, 0 + any_SaveDataGetLevelStats_result1.T
end
function module_upvr.WorldConsumeProgress(arg1, arg2) -- Line 3539
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	for _, v_13 in arg1.Levels do
		local any_SaveDataGetLevelStats_result1_3 = module_upvr_2.SaveDataGetLevelStats(arg2, v_13.Id)
		if any_SaveDataGetLevelStats_result1_3 then
			any_SaveDataGetLevelStats_result1_3.T = nil
			any_SaveDataGetLevelStats_result1_3.V = nil
		end
	end
end
function module_upvr.WorldAwardsRandomWorldOnCompletion(arg1) -- Line 3555
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local AwardsWorld = arg1.AwardsWorld
	if not AwardsWorld then
		AwardsWorld = module_upvr_2.CanRoll(arg1)
	end
	return AwardsWorld
end
function module_upvr.WorldCanJoin(arg1, arg2) -- Line 3562
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if not arg1.IsTechnical then
		if arg1.Id ~= module_upvr_2.DefaultWorldId then
		else
		end
	end
	if not true then
		local var552
		if arg2 then
			var552 = arg2.Inventory.Worlds
		end
	end
	return module_upvr_2.CanUse(arg1, var552)
end
function module_upvr.WorldCanSendToWinners(arg1) -- Line 3583
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var555 = not arg1.IsTechnical
	if var555 then
		var555 = not arg1.IsIncomplete
		if var555 then
			var555 = not arg1.WorldCompletionBehavior
			if not var555 then
				if arg1.WorldCompletionBehavior ~= module_upvr.WorldCompletionBehavior.JoinWinners then
					var555 = false
				else
					var555 = true
				end
			end
		end
	end
	return var555
end
function module_upvr.WorldGetCompletedLevelCount(arg1, arg2) -- Line 3598
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local var560
	for _, v_14 in arg1.Levels do
		local any_SaveDataGetLevelStats_result1_2 = module_upvr_2.SaveDataGetLevelStats(arg2, v_14.Id)
		if any_SaveDataGetLevelStats_result1_2 and any_SaveDataGetLevelStats_result1_2.T then
			var560 += 1
		end
	end
	return var560
end
function module_upvr.WorldGetHighestJoinLevelIndex(arg1, arg2) -- Line 3617
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 21. Error Block 6 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 21. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [24.8]
	if nil then
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if nil then
			-- KONSTANTWARNING: GOTO [24] #21
		end
		-- KONSTANTWARNING: GOTO [26] #22
	end
	-- KONSTANTERROR: [6] 6. Error Block 9 end (CF ANALYSIS FAILED)
end
function module_upvr.WorldGetLevelContainingCollectible(arg1, arg2) -- Line 3642
	local var566
	for _, v_15 in arg1.Levels do
		if v_15.Collectibles and arg2 <= 0 + v_15.Collectibles then
			var566 = v_15
			return var566
		end
	end
	return var566
end
function module_upvr.WorldHostsEvent(arg1, arg2) -- Line 3666
	local var567 = false
	if arg1.AssociatedEvents then
		if table.find(arg1.AssociatedEvents, arg2) == nil then
			var567 = false
		else
			var567 = true
		end
	end
	return var567
end
function module_upvr.WorldsCounterGetMaxCount(arg1) -- Line 3686
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var568 = 0
	local var569 = module_upvr.Data_ByCounterType[arg1]
	if var569 then
		var568 = #var569.Levels
	end
	return var568
end
function module_upvr.WorldsCounterMeetsAllLevelCounts(arg1, arg2) -- Line 3702
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
	]]
	local var570
	if module_upvr.WorldsCounterGetMaxCount(arg2) > module_upvr_2.SaveDataGetCount(arg1, arg2) then
		var570 = false
	else
		var570 = true
	end
	return var570
end
function module_upvr.WorldsGetCompletionCount(arg1, arg2, arg3) -- Line 3714
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	local var575
	for i_17, v_16 in arg1.WorldStats do
		local var576 = module_upvr
		local var577 = var576.Data_ById[i_17]
		if var577 then
			if not arg3 or var577.IsLegacy then
				if arg2 then
					var576 = v_16.CV
				else
					var576 = v_16.CT
				end
				var575 += var576 or 0
			end
		end
	end
	return var575
end
function module_upvr.WorldsGetOwnedLobbyAdjacentWorld(arg1, arg2) -- Line 3736
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local tbl_24 = {module_upvr.Data_ById[arg1.Inventory.Worlds.Equipped[1]]}
	tbl_24[2] = arg2
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 26. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [35] 26. Error Block 5 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 15. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [20] 15. Error Block 2 end (CF ANALYSIS FAILED)
end
function module_upvr.WorldsGetWorldsHostingEvent(arg1) -- Line 3779
	--[[ Upvalues[2]:
		[1]: tbl_10_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local module_5 = {}
	for _, v_17 in tbl_10_upvr do
		if module_upvr.WorldHostsEvent(v_17, arg1) then
			module_5[#module_5 + 1] = v_17
		end
	end
	return module_5
end
tbl_7_upvr = module_upvr
module_8_upvr.TableFreezeAll(tbl_7_upvr)
return module_upvr