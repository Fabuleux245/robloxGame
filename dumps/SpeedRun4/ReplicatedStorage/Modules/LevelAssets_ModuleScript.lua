-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:29
-- Luau version 6, Types version 3
-- Time taken: 0.087233 seconds

local module_3_upvr = {}
local ReplicatedStorage_2 = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local any_IsClient_result1_upvr_2 = RunService:IsClient()
local any_IsRunning_result1_upvr_2 = RunService:IsRunning()
local module_upvr_2 = require(ReplicatedStorage_2:WaitForChild("CommonData"))
local Modules_2 = ReplicatedStorage_2:WaitForChild("Modules")
local module_7 = require(Modules_2:WaitForChild("LevelMusic"))
local module_upvr_3 = require(Modules_2:WaitForChild("Utility"))
local DefaultMapSettings_upvr = script:WaitForChild("DefaultMapSettings")
module_3_upvr.StructureType = table.freeze({
	Standard = 1;
	Custom = 2;
	Legacy = 3;
	Remote = 4;
})
module_3_upvr.LoadBehavior = table.freeze({
	Standard = 1;
	Eager = 2;
	Sticky = 3;
})
module_3_upvr.DefaultMapSettings = require(DefaultMapSettings_upvr)
local tbl_78 = {{
	Id = "Lobby1";
	StructureType = module_3_upvr.StructureType.Custom;
	DimensionsDisallowed = {"Mirror"};
	IsReplicatedAsset = true;
	LevelMusic = module_7.Music.Lobby1;
	LoadBehavior = module_3_upvr.LoadBehavior.Sticky;
}, {
	Id = "Winners1";
	StructureType = module_3_upvr.StructureType.Custom;
	DimensionsDisallowed = {"Mirror", "Zombie"};
	IsReplicatedAsset = true;
	LevelMusic = module_7.Music.Winners1;
}, {
	Id = "Bonus1";
	StructureType = module_3_upvr.StructureType.Legacy;
	LevelMusic = module_7.Music.Bonus1;
}, {
	Id = "Bonus2";
	StructureType = module_3_upvr.StructureType.Legacy;
	LevelMusic = module_7.Music.Bonus2;
}, {
	Id = "Regular1";
	AssetId = 1740606274;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level1;
}, {
	Id = "Regular2";
	AssetId = 1740607944;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level2;
}, {
	Id = "Regular3";
	AssetId = 1740615246;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level3;
}, {
	Id = "Regular4";
	AssetId = 1751290624;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level4;
}, {
	Id = "Regular5";
	AssetId = 1751292487;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level5;
}, {
	Id = "Regular6";
	AssetId = 1751295264;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level6;
}, {
	Id = "Regular7";
	AssetId = 1751297089;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level7;
}, {
	Id = "Regular8";
	AssetId = 1751304448;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level8;
}, {
	Id = "Regular9";
	AssetId = 1751305761;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level9;
}, {
	Id = "Regular10";
	AssetId = 1754115362;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level10;
}, {
	Id = "Regular11";
	AssetId = 1755106478;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level11;
}, {
	Id = "Regular12";
	AssetId = 1755113221;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level12;
}, {
	Id = "Regular13";
	AssetId = 1755116122;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level13;
}, {
	Id = "Regular14";
	AssetId = 1755119343;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level14;
}, {
	Id = "Regular15";
	AssetId = 1755122320;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level15;
}, {
	Id = "Regular16";
	AssetId = 1755124276;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level16;
}, {
	Id = "Regular17";
	AssetId = 1755128635;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level17;
}, {
	Id = "Regular18";
	AssetId = 1755132146;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level18;
}, {
	Id = "Regular19";
	AssetId = 1755170762;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level19;
}, {
	Id = "Regular20";
	AssetId = 1755177095;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level20;
}, {
	Id = "Regular21";
	AssetId = 1755185460;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level21;
}, {
	Id = "Regular22";
	AssetId = 1755238594;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level22;
}, {
	Id = "Regular23";
	AssetId = 1755241850;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level23;
}, {
	Id = "Regular24";
	AssetId = 1755247128;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level24;
}, {
	Id = "Regular25";
	AssetId = 1755249903;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level25;
}, {
	Id = "Regular26";
	AssetId = 1755251748;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level26;
}, {
	Id = "Regular27";
	AssetId = 1755256780;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level27;
}, {
	Id = "Regular28";
	AssetId = 1755261621;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level28;
}, {
	Id = "Regular29";
	AssetId = 1755266987;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.Level29;
}, {
	Id = "Regular30";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level30;
	SpaceMappingResolution = 16;
}, {
	Id = "Regular31";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level31;
	SpaceMappingResolution = 18;
}, {
	Id = "Regular32";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level32;
	SpaceMappingResolution = 16;
}, {
	Id = "Regular33";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level33;
	SpaceMappingResolution = 16;
}, {
	Id = "Regular34";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level34;
}, {
	Id = "Regular35";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level35;
}, {
	Id = "Regular36";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level36;
}, {
	Id = "Regular37";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level37;
}, {
	Id = "Regular38";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level38;
}, {
	Id = "Regular39";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level39;
}, {
	Id = "Regular40";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level40;
	SpaceMappingResolution = 18;
}, {
	Id = "Regular41";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level41;
}, {
	Id = "Regular42";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level42;
}, {
	Id = "Regular43";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level43;
}, {
	Id = "Regular44";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level44;
}, {
	Id = "Regular45";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level45;
}, {
	Id = "Regular46";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level46;
}, {
	Id = "Regular47";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level47;
}, {
	Id = "Regular48";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level48;
}, {
	Id = "Regular49";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level49;
}, {
	Id = "Regular50";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level50;
}, {
	Id = "Regular51";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level51;
}, {
	Id = "Regular52";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level52;
	SpaceMappingResolution = 16;
}, {
	Id = "Regular53";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level53;
}, {
	Id = "Regular54";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level54;
	SpaceMappingResolution = 16;
}, {
	Id = "Regular55";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Level55;
}, {
	Id = "RainbowRun";
	AssetId = 1755268157;
	StructureType = module_3_upvr.StructureType.Standard;
	LevelMusic = module_7.Music.RainbowRun;
}, {
	Id = "PeachDesert1";
	AssetId = 1839917023;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular1";
}, {
	Id = "PeachDesert2";
	AssetId = 1839918152;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular2";
}, {
	Id = "PeachDesert3";
	AssetId = 1839920063;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular3";
}, {
	Id = "PeachDesert4";
	AssetId = 1839922951;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular4";
}, {
	Id = "PeachDesert5";
	AssetId = 1839928575;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular5";
}, {
	Id = "PeachDesert6";
	AssetId = 1839929795;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular6";
}, {
	Id = "PeachDesert7";
	AssetId = 1839932184;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular7";
}, {
	Id = "PeachDesert8";
	AssetId = 1839935203;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular8";
}, {
	Id = "PeachDesert9";
	AssetId = 1839938263;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular9";
}, {
	Id = "PeachDesert10";
	AssetId = 1839940800;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular10";
}, {
	Id = "PeachDesert11";
	AssetId = 1839942133;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular11";
}, {
	Id = "PeachDesert12";
	AssetId = 1839943251;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular12";
}, {
	Id = "PeachDesert13";
	AssetId = 1839944572;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular13";
}, {
	Id = "PeachDesert14";
	AssetId = 1839947480;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular14";
}, {
	Id = "PeachDesert15";
	AssetId = 1839949797;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular15";
}, {
	Id = "PeachDesert16";
	AssetId = 1839952278;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular16";
}, {
	Id = "PeachDesert17";
	AssetId = 1839954954;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular17";
}, {
	Id = "PeachDesert18";
	AssetId = 1839956107;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular18";
}, {
	Id = "PeachDesert19";
	AssetId = 1839957743;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular19";
}, {
	Id = "PeachDesert20";
	AssetId = 1839959934;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular20";
}, {
	Id = "PeachDesert21";
	AssetId = 1839963063;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular21";
}, {
	Id = "PeachDesert22";
	AssetId = 1839964198;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular22";
}, {
	Id = "PeachDesert23";
	AssetId = 1839965863;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular23";
}, {
	Id = "PeachDesert24";
	AssetId = 1839967030;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular24";
}, {
	Id = "PeachDesert25";
	AssetId = 1839968278;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular25";
}, {
	Id = "PeachDesert26";
	AssetId = 1839969786;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular26";
}, {
	Id = "PeachDesert27";
	AssetId = 1839973186;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular27";
}, {
	Id = "PeachDesert28";
	AssetId = 1839974011;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular28";
}, {
	Id = "PeachDesert29";
	AssetId = 1839976330;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular29";
}, {
	Id = "PeachDesert30";
	AssetId = 1839978513;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular30";
}, {
	Id = "Birchock1";
	AssetId = 1840015038;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular1";
}, {
	Id = "Birchock2";
	AssetId = 1840017034;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular2";
}, {
	Id = "Birchock3";
	AssetId = 1840017874;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular3";
}, {
	Id = "Birchock4";
	AssetId = 1840019916;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular4";
}, {
	Id = "Birchock5";
	AssetId = 1840020977;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular5";
}, {
	Id = "Birchock6";
	AssetId = 1840022389;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular6";
}, {
	Id = "Birchock7";
	AssetId = 1840025366;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular7";
}, {
	Id = "Birchock8";
	AssetId = 1840026809;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular8";
}, {
	Id = "Birchock9";
	AssetId = 1840028242;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular9";
}, {
	Id = "Birchock10";
	AssetId = 1840030102;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular10";
}, {
	Id = "Birchock11";
	AssetId = 1840031443;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular11";
}, {
	Id = "Birchock12";
	AssetId = 1840033543;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular12";
}, {
	Id = "Birchock13";
	AssetId = 1840035288;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular13";
}, {
	Id = "Birchock14";
	AssetId = 1840036140;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular14";
}, {
	Id = "Birchock15";
	AssetId = 1840038082;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular15";
}, {
	Id = "Birchock16";
	AssetId = 1840042492;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular16";
}, {
	Id = "Birchock17";
	AssetId = 1843802262;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular17";
}, {
	Id = "Birchock18";
	AssetId = 1843804133;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular18";
}, {
	Id = "Birchock19";
	AssetId = 1843808642;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular19";
}, {
	Id = "Birchock20";
	AssetId = 1843810066;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular20";
}, {
	Id = "Birchock21";
	AssetId = 1843814466;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular21";
}, {
	Id = "Birchock22";
	AssetId = 1843815890;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular22";
}, {
	Id = "Birchock23";
	AssetId = 1843835725;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular23";
}, {
	Id = "Birchock24";
	AssetId = 1843836470;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular24";
}, {
	Id = "Birchock25";
	AssetId = 1843838355;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular25";
}, {
	Id = "Birchock26";
	AssetId = 1843840313;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular26";
}, {
	Id = "Birchock27";
	AssetId = 1843841871;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular27";
}, {
	Id = "Birchock28";
	AssetId = 1843843395;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular28";
}, {
	Id = "Birchock29";
	AssetId = 1843846536;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular29";
}, {
	Id = "Birchock30";
	AssetId = 1843847879;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular30";
}, {
	Id = "Cybernaut1";
	AssetId = 1875287222;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular1";
}, {
	Id = "Cybernaut2";
	AssetId = 1875290136;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular2";
}, {
	Id = "Cybernaut3";
	AssetId = 1875293048;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular3";
}, {
	Id = "Cybernaut4";
	AssetId = 1875294581;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular4";
}, {
	Id = "Cybernaut5";
	AssetId = 1875300373;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular5";
}, {
	Id = "Cybernaut6";
	AssetId = 1875303083;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular6";
}, {
	Id = "Cybernaut7";
	AssetId = 1875307013;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular7";
}, {
	Id = "Cybernaut8";
	AssetId = 1875309417;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular8";
}, {
	Id = "Cybernaut9";
	AssetId = 1875311846;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular9";
}, {
	Id = "Cybernaut10";
	AssetId = 1875313314;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular10";
}, {
	Id = "Cybernaut11";
	AssetId = 1875314673;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular11";
}, {
	Id = "Cybernaut12";
	AssetId = 1875316071;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular12";
}, {
	Id = "Cybernaut13";
	AssetId = 1875318214;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular13";
}, {
	Id = "Cybernaut14";
	AssetId = 1875320071;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular14";
}, {
	Id = "Cybernaut15";
	AssetId = 1875321457;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular15";
}, {
	Id = "Cybernaut16";
	AssetId = 1875322658;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular16";
}, {
	Id = "Cybernaut17";
	AssetId = 1875324662;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular17";
}, {
	Id = "Cybernaut18";
	AssetId = 1875326344;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular18";
}, {
	Id = "Cybernaut19";
	AssetId = 1875330605;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular19";
}, {
	Id = "Cybernaut20";
	AssetId = 1875335553;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular20";
}, {
	Id = "Cybernaut21";
	AssetId = 1875337548;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular21";
}, {
	Id = "Cybernaut22";
	AssetId = 1875339613;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular22";
}, {
	Id = "Cybernaut23";
	AssetId = 1875341935;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular23";
}, {
	Id = "Cybernaut24";
	AssetId = 1875344382;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular24";
}, {
	Id = "Cybernaut25";
	AssetId = 1875347330;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular25";
}, {
	Id = "Cybernaut26";
	AssetId = 1875351506;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular26";
}, {
	Id = "Cybernaut27";
	AssetId = 1875354404;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular27";
}, {
	Id = "Cybernaut28";
	AssetId = 1875356590;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular28";
}, {
	Id = "Cybernaut29";
	AssetId = 1875360773;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular29";
}, {
	Id = "Cybernaut30";
	AssetId = 1875362808;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular30";
}, {
	Id = "Cosmic1";
	AssetId = 1891571958;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular1";
}, {
	Id = "Cosmic2";
	AssetId = 1891573359;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular2";
}, {
	Id = "Cosmic3";
	AssetId = 1891574207;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular3";
}, {
	Id = "Cosmic4";
	AssetId = 1891956724;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular4";
}, {
	Id = "Cosmic5";
	AssetId = 1891957292;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular5";
}, {
	Id = "Cosmic6";
	AssetId = 1891960578;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular6";
}, {
	Id = "Cosmic7";
	AssetId = 1891961528;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular7";
}, {
	Id = "Cosmic8";
	AssetId = 1891963317;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular8";
}, {
	Id = "Cosmic9";
	AssetId = 1891964736;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular9";
}, {
	Id = "Cosmic10";
	AssetId = 1891967043;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular10";
}, {
	Id = "Cosmic11";
	AssetId = 1891967993;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular11";
}, {
	Id = "Cosmic12";
	AssetId = 1891968816;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular12";
}, {
	Id = "Cosmic13";
	AssetId = 1891969546;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular13";
}, {
	Id = "Cosmic14";
	AssetId = 1891970154;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular14";
}, {
	Id = "Cosmic15";
	AssetId = 1891970904;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular15";
}, {
	Id = "Cosmic16";
	AssetId = 1891971900;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular16";
}, {
	Id = "Cosmic17";
	AssetId = 1891972774;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular17";
}, {
	Id = "Cosmic18";
	AssetId = 1891973488;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular18";
}, {
	Id = "Cosmic19";
	AssetId = 1891974240;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular19";
}, {
	Id = "Cosmic20";
	AssetId = 1891974929;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular20";
}, {
	Id = "Cosmic21";
	AssetId = 1891975778;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular21";
}, {
	Id = "Cosmic22";
	AssetId = 1891980809;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular22";
}, {
	Id = "Cosmic23";
	AssetId = 1891981643;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular23";
}, {
	Id = "Cosmic24";
	AssetId = 1891982232;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular24";
}, {
	Id = "Cosmic25";
	AssetId = 1891982858;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular25";
}, {
	Id = "Cosmic26";
	AssetId = 1891983865;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular26";
}, {
	Id = "Cosmic27";
	AssetId = 1891984804;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular27";
}, {
	Id = "Cosmic28";
	AssetId = 1891985430;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular28";
}, {
	Id = "Cosmic29";
	AssetId = 1891985969;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular29";
}, {
	Id = "Cosmic30";
	AssetId = 1891986824;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular30";
}, {
	Id = "Chromium1";
	AssetId = 1893123866;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular1";
}, {
	Id = "Chromium2";
	AssetId = 12341590977;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular2";
}, {
	Id = "Chromium3";
	AssetId = 1893126202;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular3";
}, {
	Id = "Chromium4";
	AssetId = 1893127162;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular4";
}, {
	Id = "Chromium5";
	AssetId = 1893127682;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular5";
}, {
	Id = "Chromium6";
	AssetId = 1893128228;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular6";
}, {
	Id = "Chromium7";
	AssetId = 1893128773;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular7";
}, {
	Id = "Chromium8";
	AssetId = 1893129328;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular8";
}, {
	Id = "Chromium9";
	AssetId = 1893130175;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular9";
}, {
	Id = "Chromium10";
	AssetId = 1893130876;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular10";
}, {
	Id = "Chromium11";
	AssetId = 1893132167;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular11";
}, {
	Id = "Chromium12";
	AssetId = 1893134171;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular12";
}, {
	Id = "Chromium13";
	AssetId = 1893134950;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular13";
}, {
	Id = "Chromium14";
	AssetId = 1893135452;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular14";
}, {
	Id = "Chromium15";
	AssetId = 1893136012;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular15";
}, {
	Id = "Chromium16";
	AssetId = 1893136507;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular16";
}, {
	Id = "Chromium17";
	AssetId = 1893137785;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular17";
}, {
	Id = "Chromium18";
	AssetId = 1893138344;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular18";
}, {
	Id = "Chromium19";
	AssetId = 1893139448;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular19";
}, {
	Id = "Chromium20";
	AssetId = 1893140102;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular20";
}, {
	Id = "Chromium21";
	AssetId = 1893140859;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular21";
}, {
	Id = "Chromium22";
	AssetId = 1893141345;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular22";
}, {
	Id = "Chromium23";
	AssetId = 1893146617;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular23";
}, {
	Id = "Chromium24";
	AssetId = 1893146978;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular24";
}, {
	Id = "Chromium25";
	AssetId = 1893148000;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular25";
}, {
	Id = "Chromium26";
	AssetId = 1893148803;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular26";
}, {
	Id = "Chromium27";
	AssetId = 1893149351;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular27";
}, {
	Id = "Chromium28";
	AssetId = 1893149879;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular28";
}, {
	Id = "Chromium29";
	AssetId = 1893151027;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular29";
}, {
	Id = "Chromium30";
	AssetId = 1893151677;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular30";
}, {
	Id = "Moon1";
	AssetId = 1904282540;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular1";
}, {
	Id = "Moon2";
	AssetId = 1904283531;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular2";
}, {
	Id = "Moon3";
	AssetId = 1904286389;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular3";
}, {
	Id = "Moon4";
	AssetId = 1904287782;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular4";
}, {
	Id = "Moon5";
	AssetId = 1904289730;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular5";
}, {
	Id = "Moon6";
	AssetId = 1904298607;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular6";
}, {
	Id = "Moon7";
	AssetId = 1904301997;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular7";
}, {
	Id = "Moon8";
	AssetId = 1904304446;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular8";
}, {
	Id = "Moon9";
	AssetId = 1904310791;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular9";
}, {
	Id = "Moon10";
	AssetId = 1904321679;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular10";
}, {
	Id = "Moon11";
	AssetId = 1904655563;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular11";
}, {
	Id = "Moon12";
	AssetId = 1913543908;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular12";
}, {
	Id = "Moon13";
	AssetId = 1913544766;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular13";
}, {
	Id = "Moon14";
	AssetId = 1918533831;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular14";
}, {
	Id = "Moon15";
	AssetId = 1918534360;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular15";
}, {
	Id = "Moon16";
	AssetId = 1918549093;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular16";
}, {
	Id = "Moon17";
	AssetId = 1926417383;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular17";
}, {
	Id = "Moon18";
	AssetId = 1926418394;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular18";
}, {
	Id = "Moon19";
	AssetId = 1940189525;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular19";
}, {
	Id = "Moon20";
	AssetId = 2333363294;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular20";
}, {
	Id = "Moon21";
	AssetId = 2333365354;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular21";
}, {
	Id = "Moon22";
	AssetId = 2333367627;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular22";
}, {
	Id = "Moon23";
	AssetId = 2333369668;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular23";
}, {
	Id = "Moon24";
	AssetId = 2333370312;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular24";
}, {
	Id = "Moon25";
	AssetId = 2333371359;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular25";
}, {
	Id = "Moon26";
	AssetId = 2333372465;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular26";
}, {
	Id = "Moon27";
	AssetId = 2333374030;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular27";
}, {
	Id = "Moon28";
	AssetId = 2333375221;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular28";
}, {
	Id = "Moon29";
	AssetId = 2333376605;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular29";
}, {
	Id = "Moon30";
	AssetId = 2333377621;
	StructureType = module_3_upvr.StructureType.Legacy;
	FallbackId = "Regular30";
}, {
	Id = "Reload1";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	SpaceMappingResolution = 16;
}, {
	Id = "Retro1";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	LevelMusic = module_7.Music.Retro1;
}, {
	Id = "Retro2";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	LevelMusic = module_7.Music.Retro2;
}, {
	Id = "Retro3";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	LevelMusic = module_7.Music.Retro3;
}, {
	Id = "Retro4";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	LevelMusic = module_7.Music.Retro4;
}, {
	Id = "Retro5";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	LevelMusic = module_7.Music.Retro5;
}, {
	Id = "FinalDestiny1";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	LevelMusic = module_7.Music.FinalDestiny1;
}, {
	Id = "Donut1";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Donut1;
}, {
	Id = "Donut2";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Donut2;
}, {
	Id = "Donut3";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Donut3;
}, {
	Id = "Donut4";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Donut4;
}, {
	Id = "Donut5";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Donut5;
}, {
	Id = "Donut6";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Donut6;
}, {
	Id = "Donut7";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Donut7;
}, {
	Id = "Donut8";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Donut8;
}, {
	Id = "Donut9";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Donut9;
}, {
	Id = "Donut10";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Donut10;
}, {
	Id = "Christmas1";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Christmas1;
}, {
	Id = "Christmas2";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Christmas2;
}, {
	Id = "Christmas3";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Christmas3;
}, {
	Id = "Christmas4";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Christmas4;
}, {
	Id = "Christmas5";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Christmas5;
}, {
	Id = "Forbidden1";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Forbidden1;
}, {
	Id = "Forbidden2";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Forbidden2;
}, {
	Id = "Forbidden3";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Forbidden3;
	SpaceMappingResolution = 20;
}, {
	Id = "Forbidden4";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Forbidden4;
}, {
	Id = "Forbidden5";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Forbidden5;
	SpaceMappingResolution = 16;
}, {
	Id = "Forbidden6";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Forbidden6;
}, {
	Id = "Forbidden7";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Forbidden7;
}, {
	Id = "Forbidden8";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Forbidden8;
}, {
	Id = "Secret1";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Secret1;
}, {
	Id = "Secret2";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Secret2;
}, {
	Id = "Secret3";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Secret3;
}, {
	Id = "Secret4";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Secret4;
}, {
	Id = "Secret5";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Secret5;
}, {
	Id = "Secret6";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Secret6;
}, {
	Id = "Secret7";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Secret7;
}, {
	Id = "Secret8";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Secret8;
}, {
	Id = "Secret9";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Secret9;
}, {
	Id = "Secret10";
	StructureType = module_3_upvr.StructureType.Standard;
	DimensionsDisallowed = {"Zombie"};
	DimensionsUseAlternative = {"Mirror"};
	LevelMusic = module_7.Music.Secret10;
}}
if require(ReplicatedStorage_2:WaitForChild("Settings")).IsDevGame then
	tbl_78[#tbl_78 + 1] = {
		Id = "TestLevelAsset";
		StructureType = module_3_upvr.StructureType.Remote;
	}
end
module_3_upvr.DataArray = tbl_78
module_3_upvr.Data_ById = {}
local function _(arg1) -- Line 2029, Named "GetLegacyLevelIndex"
	return tonumber(string.match(arg1.Id, "%d+$"))
end
for _, v in tbl_78 do
	if module_3_upvr.Data_ById[v.Id] then
		error(module_upvr_2.FormatOutput("Duplicate LevelAssetId '%s'", "LevelAssets", nil, v.Id))
	end
	module_3_upvr.Data_ById[v.Id] = v
	if v.StructureType == module_3_upvr.StructureType.Legacy then
		if not v.LevelMusic then
			local tonumber_result1 = tonumber(string.match(v.Id, "%d+$"))
			if tonumber_result1 then
				v.LevelMusic = module_7.GetLegacyLevelMusic(tonumber_result1)
			end
		end
	end
end
function module_3_upvr.GetSanitizedLightingProperties(arg1) -- Line 2056
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: module_upvr_2 (readonly)
	]]
	local var1051
	if typeof(arg1) == "Instance" and arg1:IsA("ModuleScript") then
		local arg1_7 = require(arg1)
		local pcall_result1_3, pcall_result2_2 = pcall(rawget, arg1_7, "Lighting")
		if pcall_result1_3 and type(pcall_result2_2) == "table" then
			for i_2, v_2 in pairs(pcall_result2_2) do
				if typeof(module_3_upvr.DefaultMapSettings.Lighting[i_2]) == typeof(v_2) then
					({})[i_2] = v_2
				else
					warn(module_upvr_2.FormatOutput("Invalid Lighting property '%s' (type: %s) in %s", "LevelAssets", nil, i_2, typeof(v_2), arg1:GetFullName()))
				end
			end
		end
		local pcall_result1_2, pcall_result2 = pcall(rawget, arg1_7, "LightingPriority")
		local var1060 = pcall_result2
		if pcall_result1_2 and type(var1060) == "number" then
			var1051 = var1060
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}, var1051
end
local tbl_273_upvr = {
	Asset = {{
		Fields = {
			Ambience = {};
			Lighting = {};
			MapSettings = {
				Class = "ModuleScript";
			};
			Map = {
				Class = "Model";
			};
			MaterialVariants = {
				Optional = true;
			};
			Music = {};
			References = {
				Optional = true;
			};
		};
	}, {
		Path = {"Map"};
		Fields = {
			Dynamic = {
				Optional = true;
			};
			Geometry = {};
			Hazards = {};
			Levels = {};
		};
	}};
	Level = {{
		Fields = {
			Checkpoints = {};
			Collectibles = {};
			EnemySpawns = {};
			Lighting = {
				Optional = true;
			};
			ObjectSpawns = {
				Optional = true;
			};
			MapSettings = {
				Class = "ModuleScript";
				Optional = true;
			};
			Music = {
				Optional = true;
			};
			References = {
				Optional = true;
			};
			Triggers = {
				Optional = true;
			};
		};
	}, {
		Path = {"Collectibles"};
		Fields = {
			Event = {
				Optional = true;
			};
			Star = {
				Optional = true;
			};
			Unique = {
				Optional = true;
			};
		};
	}};
}
local tbl_123_upvr = {
	Orbiters = true;
	Sliders = true;
	Spinners = true;
	Steppers = true;
	Textures = true;
}
local tbl_309_upvr = {
	Checkpoints = {
		Class = "PVInstance";
		Sort = true;
	};
	Dynamic = {
		Class = "Folder";
		Process = function(arg1) -- Line 2171, Named "Process"
			--[[ Upvalues[1]:
				[1]: tbl_123_upvr (readonly)
			]]
			local var1092
			if tbl_123_upvr[arg1.Name] ~= true then
				var1092 = false
			else
				var1092 = true
			end
			return var1092
		end;
		Sort = false;
	};
	EnemySpawns = {
		Class = "BasePart";
		Sort = false;
	};
	Event = {
		Class = "PVInstance";
		Sort = true;
	};
	Hazards = {
		Class = "Instance";
		Sort = false;
	};
	Lighting = {
		Class = "Instance";
		Sort = false;
	};
	MaterialVariants = {
		Class = "MaterialVariant";
		Sort = false;
	};
	Music = {
		Class = "Sound";
		Sort = true;
	};
	ObjectSpawns = {
		Class = "PVInstance";
		Sort = false;
	};
	Orbiters = {
		Class = "PVInstance";
		Sort = false;
	};
	Sliders = {
		Class = "PVInstance";
		Sort = false;
	};
	Spinners = {
		Class = "PVInstance";
		Sort = false;
	};
	Steppers = {
		Class = "PVInstance";
		Sort = false;
	};
	Star = {
		Class = "PVInstance";
		Sort = false;
	};
	Textures = {
		Class = "BasePart";
		Sort = false;
	};
	Triggers = {
		Class = "PVInstance";
		Sort = false;
	};
	Unique = {
		Class = "PVInstance";
		Sort = false;
	};
}
local function FetchLocalAsset_upvr(arg1, arg2, arg3) -- Line 2238, Named "FetchFromDirectory"
	--[[ Upvalues[2]:
		[1]: tbl_309_upvr (readonly)
		[2]: module_upvr_3 (readonly)
	]]
	local var1110 = tbl_309_upvr[arg2]
	local var1111 = arg3[arg2]
	if var1110 then
		if var1111 then
			for _, v_3 in var1111:GetChildren() do
				if v_3:IsA(var1110.Class) then
					arg1[#arg1 + 1] = v_3
				else
					v_3:Destroy()
				end
			end
			if var1110.Sort then
				module_upvr_3.TableSortInstanceArray(arg1)
			end
		end
	end
	return arg1
end
local function BuildReferencesTable_upvr(arg1) -- Line 2264, Named "BuildReferencesTable"
	if arg1 then
		for _, v_4 in arg1:GetDescendants() do
			if v_4:IsA("ObjectValue") then
				if v_4.Value then
					({})[v_4.Name] = v_4.Value
				end
			end
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return {}
end
local tbl_108_upvr = {}
local module_4_upvr = require(Modules_2:WaitForChild("HumanoidEngine"):WaitForChild("HumanoidProperties"))
local function SanitizeAndBuildLevelMap_upvr(arg1, arg2, arg3) -- Line 2289, Named "SanitizeAndBuildLevelMap"
	--[[ Upvalues[6]:
		[1]: module_upvr_3 (readonly)
		[2]: tbl_273_upvr (readonly)
		[3]: FetchLocalAsset_upvr (readonly)
		[4]: BuildReferencesTable_upvr (readonly)
		[5]: module_upvr_2 (readonly)
		[6]: module_4_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local Asset_2 = tbl_273_upvr.Asset
	local any_InstanceHierarchyValidate_result1_4, any_InstanceHierarchyValidate_result2_4 = module_upvr_3.InstanceHierarchyValidate(arg2, Asset_2, true, arg3)
	local var1173
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [315] 228. Error Block 142 start (CF ANALYSIS FAILED)
	if not any_InstanceHierarchyValidate_result2_4 then
		if 0 < #Asset_2 or arg3 then
			local tbl_296 = {}
			if any_InstanceHierarchyValidate_result1_4.Ambience then
				for _, v_5 in any_InstanceHierarchyValidate_result1_4.Ambience:GetChildren() do
					local var1178
					if v_5:IsA("Sound") then
						var1178 = v_5
					else
						var1178 = v_5:FindFirstChildWhichIsA("Sound", true)
					end
					if var1178 then
						tbl_296[#tbl_296 + 1] = var1178
					else
						v_5:Destroy()
					end
				end
			end
			local tbl_162 = {}
			local tbl_76 = {}
			if any_InstanceHierarchyValidate_result1_4.Dynamic then
				for _, v_6 in FetchLocalAsset_upvr({}, "Dynamic", any_InstanceHierarchyValidate_result1_4) do
					({})[v_6.Name] = v_6
					local var1185
				end
				tbl_76.Orbiters = FetchLocalAsset_upvr({}, "Orbiters", var1185)
				tbl_76.Sliders = FetchLocalAsset_upvr({}, "Sliders", var1185)
				tbl_76.Spinners = FetchLocalAsset_upvr({}, "Spinners", var1185)
				tbl_76.Steppers = FetchLocalAsset_upvr({}, "Steppers", var1185)
				tbl_76.Textures = FetchLocalAsset_upvr({}, "Textures", var1185)
				for i_7, v_7 in tbl_76 do
					if #v_7 == 0 then
						tbl_76[i_7] = nil
					end
				end
			end
			local tbl_292 = {
				Id = arg1.Id;
			}
			tbl_292.Model = arg2
			tbl_292.Directories = {
				Map = any_InstanceHierarchyValidate_result1_4.Map;
				Ambience = any_InstanceHierarchyValidate_result1_4.Ambience;
				Lighting = any_InstanceHierarchyValidate_result1_4.Lighting;
				Music = any_InstanceHierarchyValidate_result1_4.Music;
				MaterialVariants = any_InstanceHierarchyValidate_result1_4.MaterialVariants;
				References = any_InstanceHierarchyValidate_result1_4.References;
				Geometry = any_InstanceHierarchyValidate_result1_4.Geometry;
				Hazards = any_InstanceHierarchyValidate_result1_4.Hazards;
				Levels = any_InstanceHierarchyValidate_result1_4.Levels;
				Dynamic = any_InstanceHierarchyValidate_result1_4.Dynamic;
			}
			tbl_292.Levels = Asset_2
			tbl_292.MapSettings = any_InstanceHierarchyValidate_result1_4.MapSettings
			tbl_292.Ambience = tbl_296
			tbl_292.Dynamic = tbl_76
			tbl_292.Hazards = FetchLocalAsset_upvr({}, "Hazards", any_InstanceHierarchyValidate_result1_4)
			tbl_292.Lighting = FetchLocalAsset_upvr({}, "Lighting", any_InstanceHierarchyValidate_result1_4)
			tbl_292.MaterialVariants = FetchLocalAsset_upvr({}, "MaterialVariants", any_InstanceHierarchyValidate_result1_4)
			tbl_292.Music = FetchLocalAsset_upvr(tbl_162, "Music", any_InstanceHierarchyValidate_result1_4)
			tbl_292.References = BuildReferencesTable_upvr(any_InstanceHierarchyValidate_result1_4.References)
			var1173 = tbl_292
			if any_InstanceHierarchyValidate_result1_4.Geometry then
				for _, v_8 in any_InstanceHierarchyValidate_result1_4.Geometry:GetDescendants() do
					if v_8:HasTag(module_upvr_2.Tags.HumanoidIgnoreTag) and v_8:IsA("BasePart") then
						v_8.CollisionGroup = module_upvr_2.CollisionGroups.Technical
					end
				end
			end
			for i_9, v_9 in var1173.Hazards do
				if v_9:IsA("BasePart") then
					v_9:AddTag(module_4_upvr.HumanoidIgnoreTag)
				end
			end
			if arg1.LevelMusic then
				i_9 = nil
				for _, v_10 in arg1.LevelMusic, nil, i_9 do
					tbl_162[#tbl_162 + 1] = module_upvr_3.I("Sound", v_10, {
						Parent = any_InstanceHierarchyValidate_result1_4.Music or arg2;
					})
					local _
				end
				-- KONSTANTWARNING: GOTO [602] #427
			end
		else
		end
	end
	-- KONSTANTERROR: [315] 228. Error Block 142 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [602] 427. Error Block 93 start (CF ANALYSIS FAILED)
	do
		return var1173, "Map has no levels."
	end
	-- KONSTANTERROR: [602] 427. Error Block 93 end (CF ANALYSIS FAILED)
end
tbl_108_upvr[module_3_upvr.StructureType.Standard] = function(arg1, arg2) -- Line 2559
	--[[ Upvalues[1]:
		[1]: SanitizeAndBuildLevelMap_upvr (readonly)
	]]
	return SanitizeAndBuildLevelMap_upvr(arg1, arg2, false)
end
local tbl_389_upvr = {
	Water = "Water";
	WaterBlock = "Water";
	WasteBlock = "Waste";
	LavaBlock = "Lava";
	SpaceBlock = "Space";
	Candyblock = "Candy";
	Kill = false;
	Cactus = false;
}
local tbl_289_upvr = {
	Speed = '1';
	HALFWAY = '2';
	GatePad = '3';
}
local tbl_317_upvr = {
	PeachDesert1 = true;
	Birchock1 = true;
	Cybernaut1 = true;
	Cosmic1 = true;
	Chromium1 = true;
	Moon1 = true;
}
local tbl_28_upvr = {
	Chromium = module_upvr_3.I("Sky", {
		Name = "Nice Sky";
		CelestialBodiesShown = false;
		MoonAngularSize = 11;
		MoonTextureId = "rbxasset://sky/moon.jpg";
		SkyboxBk = "http://www.roblox.com/asset/?id=150335574";
		SkyboxDn = "http://www.roblox.com/asset/?id=150335585";
		SkyboxFt = "http://www.roblox.com/asset/?id=150335628";
		SkyboxLf = "http://www.roblox.com/asset/?id=150335620";
		SkyboxRt = "http://www.roblox.com/asset/?id=150335610";
		SkyboxUp = "http://www.roblox.com/asset/?id=150335642";
		StarCount = 1334;
		SunAngularSize = 21;
		SunTextureId = "rbxasset://sky/sun.jpg";
	});
	Cosmic = module_upvr_3.I("Sky", {
		Name = "Purple Nebula";
		CelestialBodiesShown = false;
		MoonAngularSize = 11;
		MoonTextureId = "rbxasset://sky/moon.jpg";
		SkyboxBk = "http://www.roblox.com/asset/?id=159454299";
		SkyboxDn = "http://www.roblox.com/asset/?id=159454296";
		SkyboxFt = "http://www.roblox.com/asset/?id=159454293";
		SkyboxLf = "http://www.roblox.com/asset/?id=159454286";
		SkyboxRt = "http://www.roblox.com/asset/?id=159454300";
		SkyboxUp = "http://www.roblox.com/asset/?id=159454288";
		StarCount = 0;
		SunAngularSize = 21;
		SunTextureId = "rbxasset://sky/sun.jpg";
	});
}
local tbl_285_upvr = {-- : First try: K:0: attempt to index nil with 't'

local tbl_320_upvr = {CFrame.new(106.14444, 131.928452, -532.869019, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-787.700439, 123.178528, -403.299835, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-1584.30042, 266.378479, -403.099884, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-2433.90137, 337.699371, -435.499756, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-3395.10181, 286.648926, -519.818176, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-4334.50391, 67.348999, -454.699921, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-5110.7002, 286.609039, -527.92041, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-5993.30664, 181.238663, -522.180176, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-6970.90723, 95.3790131, -498.199829, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-7908.35449, 266.768799, -469.139954, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-8720.61523, 33.5190353, -495.849945, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-9622.92188, 230.368713, -501.430023, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-10438.2568, 156.808853, -499.275543, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-11311.1016, 249.538757, -501.7854, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-12259.8311, 254.998734, -489.175415, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-13117.1621, 249.468689, -501.7854, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-2823.25195, 315.656433, -3750.09766, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-3689.77246, 245.496567, -3754.44775, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-4502.93164, 301.896484, -3805.1377, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(3212.29688, 580.782959, 167.57843, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-5333.66113, 301.986511, -3794.49756, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-6228.66113, 301.986511, -3807.49756, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-7686.51172, 301.356506, -3800.71753, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-8621.32617, 301.896484, -3805.1377, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-9820.59961, 301.356506, -3800.71753, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-11040.2578, 183.556808, -3806.25781, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-12008.3086, 183.456833, -3828.31226, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(-13065.123, 341.946503, -3828.89746, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(1142.89587, 429.637146, -3721.63354, -1, 0, 0, 0, 1, 0, 0, 0, -1), CFrame.new(4292.86133, 454.990387, -5101.27246, -1, 0, 0, 0, 1, 0, 0, 0, -1)}
local function IsLegacyGumballMachine_upvr(arg1) -- Line 2680, Named "IsLegacyGumballMachine"
	local children_5 = arg1:IsA("Model")
	if children_5 then
		children_5 = true
		if arg1.Name ~= "GumballMachine" then
			if arg1:FindFirstChild("ball") == nil then
				children_5 = false
			else
				children_5 = true
			end
		end
	end
	return children_5
end
local function IsLegacyTrailSign_upvr(arg1) -- Line 2688, Named "IsLegacyTrailSign"
	local var1204 = false
	if arg1:IsA("BasePart") then
		local class_SurfaceGui_2 = arg1:FindFirstChildOfClass("SurfaceGui")
		if class_SurfaceGui_2 then
			local class_TextLabel = class_SurfaceGui_2:FindFirstChildOfClass("TextLabel")
			if class_TextLabel and class_TextLabel.Text == "UNIQUE TRAIL GIVER" then
				var1204 = true
			end
		end
	end
	return var1204
end
local any_I_result1_upvr = module_upvr_3.I("Sky", {
	Name = "Sky";
	CelestialBodiesShown = false;
	MoonAngularSize = 11;
	MoonTextureId = "rbxasset://sky/moon.jpg";
	SkyboxBk = "http://www.roblox.com/asset/?id=1014344";
	SkyboxDn = "http://www.roblox.com/asset/?id=1014344";
	SkyboxFt = "http://www.roblox.com/asset/?id=1014344";
	SkyboxLf = "http://www.roblox.com/asset/?id=1014344";
	SkyboxRt = "http://www.roblox.com/asset/?id=1014344";
	SkyboxUp = "http://www.roblox.com/asset/?id=1014344";
	StarCount = 3000;
	SunAngularSize = 21;
	SunTextureId = "rbxasset://sky/sun.jpg";
})
tbl_108_upvr[module_3_upvr.StructureType.Legacy] = function(arg1, arg2) -- Line 2705
	--[[ Upvalues[13]:
		[1]: tbl_28_upvr (readonly)
		[2]: tbl_285_upvr (readonly)
		[3]: any_I_result1_upvr (readonly)
		[4]: tbl_389_upvr (readonly)
		[5]: tbl_289_upvr (readonly)
		[6]: module_upvr_3 (readonly)
		[7]: IsLegacyGumballMachine_upvr (readonly)
		[8]: IsLegacyTrailSign_upvr (readonly)
		[9]: DefaultMapSettings_upvr (readonly)
		[10]: tbl_320_upvr (readonly)
		[11]: module_upvr_2 (readonly)
		[12]: tbl_317_upvr (readonly)
		[13]: SanitizeAndBuildLevelMap_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 105 start (CF ANALYSIS FAILED)
	local Model_5 = Instance.new("Model")
	Model_5.Name = "Map"
	local Folder_3 = Instance.new("Folder")
	Folder_3.Name = "Geometry"
	Folder_3.Parent = Model_5
	local Folder_4 = Instance.new("Folder")
	Folder_4.Name = "Hazards"
	Folder_4.Parent = Model_5
	local Folder_16 = Instance.new("Folder")
	Folder_16.Name = "Levels"
	Folder_16.Parent = Model_5
	local Model_4 = Instance.new("Model")
	Model_4.Name = '1'
	Model_4.Parent = Folder_16
	local Folder_18 = Instance.new("Folder")
	Folder_18.Name = "Checkpoints"
	Folder_18.Parent = Model_4
	local Folder_15 = Instance.new("Folder")
	Folder_15.Name = "Collectibles"
	Folder_15.Parent = Model_4
	local Folder_10 = Instance.new("Folder")
	Folder_10.Name = "EnemySpawns"
	Folder_10.Parent = Model_4
	local Folder_14 = Instance.new("Folder")
	Folder_14.Name = "Star"
	Folder_14.Parent = Folder_15
	local Folder_13 = Instance.new("Folder")
	Folder_13.Name = "Triggers"
	Folder_13.Parent = Model_4
	Instance.new("Folder").Name = "Ambience"
	Instance.new("Folder").Name = "Music"
	local Folder_8 = Instance.new("Folder")
	Folder_8.Name = "Lighting"
	local var1220 = tbl_28_upvr[string.match(arg1.Id, "^%a+")]
	if not var1220 then
		var1220 = tbl_285_upvr[tonumber(string.match(arg1.Id, "%d+$"))]
		if not var1220 then
			var1220 = any_I_result1_upvr
		end
	end
	var1220:Clone().Parent = Folder_8
	local children_4_upvr = arg2:GetChildren()
	local function _(arg1_5) -- Line 2779, Named "RemoveFromStack"
		--[[ Upvalues[1]:
			[1]: children_4_upvr (readonly)
		]]
		local table_find_result1_3 = table.find(children_4_upvr, arg1_5)
		if table_find_result1_3 then
			table.remove(children_4_upvr, table_find_result1_3)
		end
	end
	-- KONSTANTERROR: [0] 1. Error Block 105 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [398] 285. Error Block 65 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [398] 285. Error Block 65 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [147] 104. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [398.23]
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [398.1744901820]
	-- KONSTANTERROR: [147] 104. Error Block 5 end (CF ANALYSIS FAILED)
end
tbl_108_upvr[module_3_upvr.StructureType.Custom] = function(arg1, arg2) -- Line 3053, Named "BuildFieldsOptional"
	--[[ Upvalues[1]:
		[1]: SanitizeAndBuildLevelMap_upvr (readonly)
	]]
	return SanitizeAndBuildLevelMap_upvr(arg1, arg2, true)
end
tbl_108_upvr[module_3_upvr.StructureType.Remote] = tbl_108_upvr[module_3_upvr.StructureType.Standard]
function module_3_upvr.LevelMapCreate(arg1, arg2, arg3) -- Line 3088
	--[[ Upvalues[3]:
		[1]: any_IsRunning_result1_upvr_2 (readonly)
		[2]: module_3_upvr (readonly)
		[3]: tbl_108_upvr (readonly)
	]]
	local var1223
	if any_IsRunning_result1_upvr_2 then
		local StructureType = arg1.StructureType
		if StructureType == module_3_upvr.StructureType.Legacy then
			if arg3 then
				StructureType = module_3_upvr.StructureType.Standard
			end
		end
		local var1225 = tbl_108_upvr[StructureType]
		if var1225 then
			local var1225_result1, var1225_result2 = var1225(arg1, arg2)
			var1223 = var1225_result1
			return var1223, var1225_result2
		end
		return var1223, "LevelAsset contains invalid StructureType."
	end
	return var1223, "Cannot process map model while game is not running."
end
local tbl_275_upvr = {"Ambience", "Dynamic", "Geometry", "Hazards", "Lighting", "MaterialVariants", "Music", "References"}
local tbl_71_upvr = {"MapSettings"}
function module_3_upvr.LevelAdornmentsApply(arg1, arg2, arg3) -- Line 3126
	--[[ Upvalues[6]:
		[1]: any_IsRunning_result1_upvr_2 (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: tbl_273_upvr (readonly)
		[5]: tbl_275_upvr (readonly)
		[6]: tbl_71_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var1254
	if not any_IsRunning_result1_upvr_2 then
		var1254 = "Cannot process map model while game is not running."
		return var1254
	end
	if arg1.StructureType == module_3_upvr.StructureType.Legacy then
		arg3.Parent = arg2
		return var1254
	end
	local any_InstanceHierarchyValidate_result1_3, any_InstanceHierarchyValidate_result2 = module_upvr_3.InstanceHierarchyValidate(arg3, tbl_273_upvr.Asset, false, true)
	local any_InstanceHierarchyValidate_result1, any_InstanceHierarchyValidate_result2_3 = module_upvr_3.InstanceHierarchyValidate(arg2, tbl_273_upvr.Asset, false, true)
	var1254 = any_InstanceHierarchyValidate_result2_3 or any_InstanceHierarchyValidate_result2
	if any_InstanceHierarchyValidate_result1 and any_InstanceHierarchyValidate_result1_3 and not var1254 then
		for _, v_11 in tbl_275_upvr do
			local var1259 = any_InstanceHierarchyValidate_result1_3[v_11]
			local var1260 = any_InstanceHierarchyValidate_result1[v_11]
			if var1259 and var1260 then
				for _, v_12 in var1259:GetChildren() do
					v_12.Parent = var1260
				end
			end
		end
		for _, v_13 in tbl_71_upvr do
			local var1264 = any_InstanceHierarchyValidate_result1_3[v_13]
			local var1265 = any_InstanceHierarchyValidate_result1[v_13]
			if var1264 and var1265 then
				var1264.Parent = var1265.Parent
				var1265:Destroy()
			end
		end
	end
	return var1254
end
tbl_273_upvr = {}
local SpawnCFrameGet_upvr = tbl_273_upvr
function tbl_123_upvr(arg1, arg2) -- Line 3210, Named "IndexDirectoryRecursive"
	--[[ Upvalues[4]:
		[1]: SpawnCFrameGet_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: var1267_upvr (readonly)
		[4]: any_IsClient_result1_upvr_2 (readonly)
	]]
	local function IndexModel(arg1_6) -- Line 3211
		--[[ Upvalues[4]:
			[1]: arg2 (readonly)
			[2]: SpawnCFrameGet_upvr (copied, readonly)
			[3]: module_upvr_2 (copied, readonly)
			[4]: var1267_upvr (copied, readonly)
		]]
		if arg1_6:IsA("Model") then
			local var1272 = arg2..arg1_6.Name
			if SpawnCFrameGet_upvr[var1272] then
				warn(module_upvr_2.FormatOutput("Duplicate map model '%s' (Path: %s)", "LevelAssets", nil, var1272, arg1_6:GetFullName()))
			else
				SpawnCFrameGet_upvr[var1272] = arg1_6
			end
		end
		if arg1_6:IsA("Folder") then
			var1267_upvr(arg1_6, arg2..arg1_6.Name)
		end
	end
	if any_IsClient_result1_upvr_2 then
		arg1.ChildAdded:Connect(IndexModel)
	end
	for _, v_14 in arg1:GetChildren() do
		IndexModel(v_14)
	end
end
local var1267_upvr = tbl_123_upvr
BuildReferencesTable_upvr = "Assets"
tbl_309_upvr = ReplicatedStorage_2:WaitForChild(BuildReferencesTable_upvr)
FetchLocalAsset_upvr = var1267_upvr
SanitizeAndBuildLevelMap_upvr = "Levels"
BuildReferencesTable_upvr = tbl_309_upvr:WaitForChild(SanitizeAndBuildLevelMap_upvr)
tbl_108_upvr = ""
FetchLocalAsset_upvr(BuildReferencesTable_upvr, tbl_108_upvr)
if not any_IsClient_result1_upvr_2 then
	FetchLocalAsset_upvr = var1267_upvr
	tbl_108_upvr = game:GetService("ServerStorage").ServerAssets
	BuildReferencesTable_upvr = tbl_108_upvr.Levels
	tbl_108_upvr = ""
	FetchLocalAsset_upvr(BuildReferencesTable_upvr, tbl_108_upvr)
end
function FetchLocalAsset_upvr(arg1, arg2) -- Line 3243, Named "FetchLocalAsset"
	--[[ Upvalues[1]:
		[1]: SpawnCFrameGet_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local var1276 = SpawnCFrameGet_upvr[arg1.Id]
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [10] 9. Error Block 4 start (CF ANALYSIS FAILED)
	do
		return var1276:Clone(), nil
	end
	-- KONSTANTERROR: [10] 9. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 13. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 13. Error Block 5 end (CF ANALYSIS FAILED)
end
module_3_upvr.FetchLocalAsset = FetchLocalAsset_upvr
function SpawnCFrameGet_upvr(arg1, arg2) -- Line 3275, Named "SpawnCFrameGet"
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	local identity_2 = CFrame.identity
	local var1278 = arg1.Levels[arg2 or 1]
	local var1279
	if var1278 then
		local SpawnLocation_2 = var1278.SpawnLocation
		if SpawnLocation_2 then
			var1279 = SpawnLocation_2.CFrame
			identity_2 = var1279 * CFrame.new(0, SpawnLocation_2.Size.Y * 0.5, 0)
			return identity_2
		end
		var1279 = warn
		var1279(module_upvr_2.FormatOutput("LevelAsset '%s,' level '%i' is missing SpawnLocation", "LevelAssets", nil, arg1.Id, arg2 or 1))
		var1279 = var1278.Model
		if not var1279 then
			var1279 = arg1.Model
		end
		if var1279 then
			identity_2 = var1279:GetPivot()
		end
	end
	return identity_2
end
module_3_upvr.SpawnCFrameGet = SpawnCFrameGet_upvr
SpawnCFrameGet_upvr = module_3_upvr
var1267_upvr = nil
tbl_309_upvr = nil
for _, v_15 in SpawnCFrameGet_upvr, var1267_upvr, tbl_309_upvr do
	SanitizeAndBuildLevelMap_upvr = v_15
	tbl_108_upvr = type(SanitizeAndBuildLevelMap_upvr)
	if tbl_108_upvr == "table" then
		tbl_108_upvr = module_upvr_3.TableFreezeAll
		SanitizeAndBuildLevelMap_upvr = v_15
		tbl_108_upvr(SanitizeAndBuildLevelMap_upvr)
	end
end
SpawnCFrameGet_upvr = {}
module_3_upvr.RemoteAssetId_ByLevelAsset = SpawnCFrameGet_upvr
return module_3_upvr