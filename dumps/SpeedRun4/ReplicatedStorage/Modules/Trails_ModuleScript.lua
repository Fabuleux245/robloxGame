-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:28
-- Luau version 6, Types version 3
-- Time taken: 0.024272 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local module = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_3 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_2 = require(ReplicatedStorage:WaitForChild("Settings"))
local module_4 = require(ReplicatedStorage:WaitForChild("Modules"):WaitForChild("Utility"))
module.TrailBehavior = table.freeze({
	Default = 1;
	MovementTwoPhase = 2;
})
local tbl_2 = {{
	Id = "AirS";
	Name = "Air Strike";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://737609981";
}, {
	Id = "FlagUSA";
	Name = "American Flag";
	Price = 8500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733525169";
}, {
	Id = "AngFace";
	Name = "Anger Face";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744876415";
}, {
	Id = "Asteroids";
	Name = "Asteroids";
	Price = 12000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744844259";
}, {
	Id = "BarkDog";
	Name = "Barking Doggo";
	Price = 10000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744850648";
}, {
	Id = "CircBlk";
	Name = "Black Circle";
	Price = 100;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492722888";
}, {
	Id = "MLaserBlk";
	Name = "Black Mega Laser";
	Price = 76000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492723401";
}, {
	Id = "SBeamBlk";
	Name = "Black Sky Beam";
	Price = 7600;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492723576";
}, {
	Id = "SpkBlk";
	Name = "Black Sparkles";
	Price = 1250;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492723866";
}, {
	Id = "8BBlu";
	Name = "Blue 8 Bits";
	Price = 8500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733524755";
}, {
	Id = "CircBlu";
	Name = "Blue Circle";
	Price = 75;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492724797";
}, {
	Id = "FRingBlu";
	Name = "Blue Fire Ring";
	Price = 25000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://737609075";
}, {
	Id = "FlameBlu";
	Name = "Blue Flames";
	Price = 15000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492724029";
}, {
	Id = "MLaserBlu";
	Name = "Blue Mega Laser";
	Price = 75000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492724172";
}, {
	Id = "SBeamBlu";
	Name = "Blue Sky Beam";
	Price = 7500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492724368";
}, {
	Id = "SpkBlu";
	Name = "Blue Sparkles";
	Price = 1200;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492724681";
}, {
	Id = "TriBlu";
	Name = "Blue Triangle";
	Price = 800;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492734772";
}, {
	Id = "Bombs";
	Name = "Bombs";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744845645";
}, {
	Id = "CatMeme";
	Name = "Cat Meme";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744845762";
}, {
	Id = "ChiSym";
	Name = "Chinese Symbol";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744845879";
}, {
	Id = "Cloud";
	Name = "Cloud";
	Price = 86000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744846023";
}, {
	Id = "CSplat";
	Name = "Color Splats";
	Price = 8500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492728935";
}, {
	Id = "CPow";
	Name = "Comic Pow";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733527413";
}, {
	Id = "CSwirl";
	Name = "Cosmic Swirl";
	Price = 15500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://737609811";
}, {
	Id = "CRainbow";
	Name = "Cute Rainbow";
	Price = 13000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744855351";
}, {
	Id = "Doge";
	Name = "Doge";
	Price = 90000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744850192";
}, {
	Id = "DSign";
	Name = "Dollar Signs";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744850274";
}, {
	Id = "Doritos";
	Name = "Doritos";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744845949";
}, {
	Id = "FaceEL";
	Name = "Epic Lol Face";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744850345";
}, {
	Id = "Explosion";
	Name = "Explosion";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://737609411";
}, {
	Id = "FRing";
	Name = "Fire Ring";
	Price = 25000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://737611780";
}, {
	Id = "Flames";
	Name = "Flames";
	Price = 15000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://737610275";
}, {
	Id = "Galaxies";
	Name = "Galaxies";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://737610365";
}, {
	Id = "SBeamGol";
	Name = "Golden Sky Beam";
	Price = 7700;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492725778";
}, {
	Id = "SpkGol";
	Name = "Golden Sparkles";
	Price = 1300;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492726026";
}, {
	Id = "CircGrn";
	Name = "Green Circle";
	Price = 300;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733525389";
}, {
	Id = "MLaserGrn";
	Name = "Green Mega Laser";
	Price = 75000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492726168";
}, {
	Id = "SBeamGrn";
	Name = "Green Sky Beam";
	Price = 7500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492726351";
}, {
	Id = "SpkGrn";
	Name = "Green Sparkles";
	Price = 1200;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492726494";
}, {
	Id = "TriGrn";
	Name = "Green Triangle";
	Price = 800;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492735026";
}, {
	Id = "FaceG";
	Name = "Gusta Face";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744851567";
}, {
	Id = "TriIlm";
	Name = "Illuminati Triangle";
	Price = 90000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://686815657";
}, {
	Id = "ImLit";
	Name = "Immortal Light";
	Price = 86000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://737610158";
}, {
	Id = "IntD";
	Name = "Intrinsic Darkness";
	Price = 8500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733525258";
}, {
	Id = "Lava";
	Name = "Lava";
	Price = 84500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://737611399";
}, {
	Id = "Lning";
	Name = "Lightning";
	Price = 8500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://737609722";
}, {
	Id = "LningS";
	Name = "Lightning Strikes";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://737611143";
}, {
	Id = "FaceLol";
	Name = "Lolling Face";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744854599";
}, {
	Id = "HitMLG";
	Name = "MLG Hitmarkers";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744850895";
}, {
	Id = "SpkMag";
	Name = "Magenta Sparkles";
	Price = 1200;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492726974";
}, {
	Id = "MathF";
	Name = "Math Formulas";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744851421";
}, {
	Id = "MNotes";
	Name = "Music Notes";
	Price = 17000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744851787";
}, {
	Id = "PlasBlu";
	Name = "Neon Blue Plasma";
	Price = 50000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://745841599";
}, {
	Id = "PlasGrn";
	Name = "Neon Green Plasma";
	Price = 50000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://737610713";
}, {
	Id = "PlasWht";
	Name = "Neon White Plasma";
	Price = 50000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744872830";
}, {
	Id = "NoSign";
	Name = "No Sign";
	Price = 8500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733525618";
}, {
	Id = "FaceNoob";
	Name = "Noob Face";
	Price = 96000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744852488";
}, {
	Id = "CatNyan";
	Name = "Nyan Cat";
	Price = 99000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744852654";
}, {
	Id = "CircOrg";
	Name = "Orange Circle";
	Price = 50;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492724925";
}, {
	Id = "MLaserOrg";
	Name = "Orange Mega Laser";
	Price = 75000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492727656";
}, {
	Id = "TriOrg";
	Name = "Orange Triangle";
	Price = 800;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492735242";
}, {
	Id = "PeaceS";
	Name = "Peace Signs";
	Price = 12000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492729127";
}, {
	Id = "CircPnk";
	Name = "Pink Circle";
	Price = 400;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492725125";
}, {
	Id = "MLaserPnk";
	Name = "Pink Mega Laser";
	Price = 75000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492727898";
}, {
	Id = "SBeamPnk";
	Name = "Pink Sky Beam";
	Price = 7500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492728099";
}, {
	Id = "TriPnk";
	Name = "Pink Triangle";
	Price = 800;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492854581";
}, {
	Id = "PlasSky";
	Name = "Skyward Plasma";
	Price = 25000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://737610805";
}, {
	Id = "PlasVor";
	Name = "Plasma Vortex";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://737611527";
}, {
	Id = "CircPur";
	Name = "Purple Circle";
	Price = 350;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492725268";
}, {
	Id = "MLaserPur";
	Name = "Purple Mega Laser";
	Price = 75000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492728320";
}, {
	Id = "SBeamPur";
	Name = "Purple Sky Beam";
	Price = 7500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492728593";
}, {
	Id = "TriPur";
	Name = "Purple Triangle";
	Price = 800;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733528615";
}, {
	Id = "RainD";
	Name = "Rain Drops";
	Price = 15000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744855586";
}, {
	Id = "CircRbw";
	Name = "Rainbow Circle";
	Price = 80000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492728783";
}, {
	Id = "HFlowRbw";
	Name = "Rainbow Hippie Flowers";
	Price = 16000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492726727";
}, {
	Id = "MLaserRbw";
	Name = "Rainbow Mega Laser";
	Price = 86000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492729449";
}, {
	Id = "SBeamRbw";
	Name = "Rainbow Sky Beam";
	Price = 84000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492729761";
}, {
	Id = "SpkRbw";
	Name = "Rainbow Sparkles";
	Price = 84000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492730039";
}, {
	Id = "TriRbw";
	Name = "Rainbow Triangle";
	Price = 82000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492844498";
}, {
	Id = "RecSign";
	Name = "Recycle Sign";
	Price = 8500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733527524";
}, {
	Id = "SpkRed";
	Name = "Red Sparkles";
	Price = 1200;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492730911";
}, {
	Id = "8BRed";
	Name = "Red 8 Bits";
	Price = 8500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733525050";
}, {
	Id = "CircRed";
	Name = "Red Circle";
	Price = 25;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733525559";
}, {
	Id = "MLaserRed";
	Name = "Red Mega Laser";
	Price = 75000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492730252";
}, {
	Id = "SBeamRed";
	Name = "Red Sky Beam";
	Price = 7500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492730440";
}, {
	Id = "TriRed";
	Name = "Red Triangle";
	Price = 800;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492735558";
}, {
	Id = "Robux";
	Name = "Robux";
	Price = 99000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744871230";
}, {
	Id = "CircSco";
	Name = "Scorched Circles";
	Price = 8500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733525342";
}, {
	Id = "Slarity";
	Name = "Singularity";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://737609900";
}, {
	Id = "SDogg";
	Name = "Snoop Dogg";
	Price = 86000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://387391952";
}, {
	Id = "Sflakes";
	Name = "Snowflakes";
	Price = 16000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744871877";
}, {
	Id = "SpinBlk";
	Name = "Spinning Black";
	Price = 8500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492731102";
}, {
	Id = "SpinBlu";
	Name = "Spinning Blue";
	Price = 8000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492731267";
}, {
	Id = "SpinGrn";
	Name = "Spinning Green";
	Price = 8000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492731416";
}, {
	Id = "SpinOrg";
	Name = "Spinning Orange";
	Price = 8000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733527614";
}, {
	Id = "SpinPnk";
	Name = "Spinning Pink";
	Price = 8000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492835312";
}, {
	Id = "SpinPur";
	Name = "Spinning Purple";
	Price = 8000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492735425";
}, {
	Id = "SpinRbw";
	Name = "Spinning Rainbow";
	Price = 84000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492733007";
}, {
	Id = "SpinRed";
	Name = "Spinning Red";
	Price = 8000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492733231";
}, {
	Id = "SpinWht";
	Name = "Spinning White";
	Price = 8500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733530311";
}, {
	Id = "SpinYel";
	Name = "Spinning Yellow";
	Price = 8000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733527849";
}, {
	Id = "StpSign";
	Name = "Stop Signs";
	Price = 8500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733528307";
}, {
	Id = "SForce";
	Name = "The Speedforce";
	Price = 95000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://737610805";
}, {
	Id = "FaceTng";
	Name = "Tongue Face";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744872041";
}, {
	Id = "TriIll";
	Name = "Triangle Illusion";
	Price = 8500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733528543";
}, {
	Id = "TriDed";
	Name = "Triangle of Death";
	Price = 950;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733528448";
}, {
	Id = "FaceUnh";
	Name = "Unhappy Face";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744850112";
}, {
	Id = "Waffle";
	Name = "Waffle";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744872664";
}, {
	Id = "WarnSign";
	Name = "Warning Sign";
	Price = 8500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733528760";
}, {
	Id = "CircWht";
	Name = "White Circle";
	Price = 30;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733530227";
}, {
	Id = "HFlowWht";
	Name = "White Hippie Flowers";
	Price = 12500;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744850744";
}, {
	Id = "MLaserWht";
	Name = "White Mega Laser";
	Price = 76000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492735853";
}, {
	Id = "SBeamWht";
	Name = "White Sky Beam";
	Price = 7600;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492735996";
}, {
	Id = "TriWht";
	Name = "White Triangle";
	Price = 850;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733528685";
}, {
	Id = "WowGuy";
	Name = "Wow Guy";
	Price = 85000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://744873011";
}, {
	Id = "CircYel";
	Name = "Yellow Circle";
	Price = 200;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492725583";
}, {
	Id = "MLaserYel";
	Name = "Yellow Mega Laser";
	Price = 75000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492736151";
}, {
	Id = "TriYel";
	Name = "Yellow Triangle";
	Price = 800;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492735702";
}, {
	Id = "SBeamYelPnk";
	Name = "Yellow-Pink Sky Beam";
	Price = 7700;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492736351";
}, {
	Id = "StarRed";
	Name = "Red Star";
	Price = 5000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492734537";
}, {
	Id = "StarGld";
	Name = "Golden Star";
	Price = 5200;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733528109";
}, {
	Id = "StarPur";
	Name = "Purple Star";
	Price = 5000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492734144";
}, {
	Id = "StarBlk";
	Name = "Black Star";
	Price = 5100;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492733480";
}, {
	Id = "StarRbw";
	Name = "Rainbow Star";
	Price = 83000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492734362";
}, {
	Id = "StarBlu";
	Name = "Blue Star";
	Price = 5000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492733733";
}, {
	Id = "StarWht";
	Name = "White Star";
	Price = 5100;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://733527984";
}, {
	Id = "starGrn";
	Name = "Green Star";
	Price = 5000;
	CreatedAt = 0;
	ShopImageId = "rbxassetid://1492733963";
}, {
	Id = "SpkGP";
	Name = "Sparkles Effect";
	CreatedAt = 0;
	SortOrder = (-math.huge);
	MustOwn = true;
	NotCountedAgainstEquipLimit = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://191448387";
}, {
	Id = "FireGP";
	Name = "Fire Effect";
	CreatedAt = 0;
	SortOrder = (-math.huge);
	MustOwn = true;
	NotCountedAgainstEquipLimit = true;
	Unrollable = true;
	ShopImageId = "http://www.roblox.com/asset/?id=191448324";
}, {
	Id = "FDestA";
	Name = "Final Destiny A";
	CreatedAt = 10;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://834865412";
}, {
	Id = "FDestB";
	Name = "Final Destiny B";
	CreatedAt = 10;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://834865412";
}, {
	Id = "FDestC";
	Name = "Final Destiny C";
	CreatedAt = 10;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://834865412";
}, {
	Id = "Dnt3D";
	Name = "3D Donut Aura";
	CreatedAt = 1709836242;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://16583726801";
	TrailBehavior = module.TrailBehavior.MovementTwoPhase;
}, {
	Id = "DntChc";
	Name = "Chocolate Donut Aura";
	CreatedAt = 1709836242;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://16583725033";
	TrailBehavior = module.TrailBehavior.MovementTwoPhase;
}, {
	Id = "DntDth";
	Name = "Deathly Donut Aura";
	CreatedAt = 1709836242;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://16927061852";
	TrailBehavior = module.TrailBehavior.MovementTwoPhase;
}, {
	Id = "DntEye";
	Name = "Sinister Donut Aura";
	CreatedAt = 1709836242;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://16583724330";
	TrailBehavior = module.TrailBehavior.MovementTwoPhase;
}, {
	Id = "DntFir";
	Name = "Fiery Donut Aura";
	CreatedAt = 1709836242;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://16583723739";
	TrailBehavior = module.TrailBehavior.MovementTwoPhase;
}, {
	Id = "DntGld";
	Name = "Golden Donut Aura";
	CreatedAt = 1709836242;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://16583720803";
	TrailBehavior = module.TrailBehavior.MovementTwoPhase;
}, {
	Id = "DntGst";
	Name = "Ghostly Donut Aura";
	CreatedAt = 1709836242;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://16583721826";
	TrailBehavior = module.TrailBehavior.MovementTwoPhase;
}, {
	Id = "DntGxy";
	Name = "Galactic Donut Aura";
	CreatedAt = 1709836242;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://16583723235";
	TrailBehavior = module.TrailBehavior.MovementTwoPhase;
}, {
	Id = "DntHrt";
	Name = "Heartful Donut Aura";
	CreatedAt = 1709836242;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://16583719164";
	TrailBehavior = module.TrailBehavior.MovementTwoPhase;
}, {
	Id = "DntKit";
	Name = "Kitty Donut Aura";
	CreatedAt = 1709836242;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://16583725428";
	TrailBehavior = module.TrailBehavior.MovementTwoPhase;
}, {
	Id = "DntLng";
	Name = "Lightning Donut Aura";
	CreatedAt = 1709836242;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://16583716830";
	TrailBehavior = module.TrailBehavior.MovementTwoPhase;
}, {
	Id = "DntRbw";
	Name = "Rainbow Donut Aura";
	CreatedAt = 1709836242;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://16583716380";
	TrailBehavior = module.TrailBehavior.MovementTwoPhase;
}, {
	Id = "DntWtr";
	Name = "Liquid Donut Aura";
	CreatedAt = 1709836242;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://16583715182";
	TrailBehavior = module.TrailBehavior.MovementTwoPhase;
}, {
	Id = "GrpRbx";
	Name = "Roblox Aura";
	CreatedAt = 1724009145;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://18986355637";
	TrailBehavior = module.TrailBehavior.MovementTwoPhase;
}, {
	Id = "GrpRbxNeon";
	Name = "Neon Roblox Aura";
	CreatedAt = 1724009145;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://18986355554";
	TrailBehavior = module.TrailBehavior.MovementTwoPhase;
}, {
	Id = "GrpTUp";
	Name = "Thumbs-Up Aura";
	CreatedAt = 1724009145;
	MustOwn = true;
	Unrollable = true;
	ShopImageId = "rbxassetid://18986355401";
	TrailBehavior = module.TrailBehavior.MovementTwoPhase;
}}
local var181
if module_2.IsDevGame and not module_2.IsTestGame then
	local os_time_result1 = os.time()
	var181 = #tbl_2 + 1
	tbl_2[var181] = {
		Id = "DEBUG_FE1";
		Name = "[DEBUG] Energy +1x";
		Price = 12345;
		CreatedAt = os_time_result1;
		EnergyMultiplier = 1;
		ShopImageId = "rbxassetid://17771915864";
		SortOrder = -3;
		UnlockMethod = module_3.UnlockMethod.Currency;
		Unrollable = true;
	}
	var181 = #tbl_2 + 1
	tbl_2[var181] = {
		Id = "DEBUG_FE2";
		Name = "[DEBUG] Energy +99x";
		Price = 1234567;
		CreatedAt = os_time_result1;
		EnergyMultiplier = 99;
		ShopImageId = "rbxassetid://17771915864";
		SortOrder = -2;
		UnlockMethod = module_3.UnlockMethod.Currency;
		UnlockRequirements = {{
			Type = module_3.UnlockRequirementType.LevelCompletions;
			Args = {"Re1", 10};
		}};
		Unrollable = true;
	}
	var181 = #tbl_2 + 1
	tbl_2[var181] = {
		Id = "DEBUG_FE3";
		Name = "[DEBUG] Energy +999,999,999x";
		Price = 1234567890;
		CreatedAt = os_time_result1;
		EnergyMultiplier = 999999999;
		ShopImageId = "rbxassetid://17771915864";
		SortOrder = -1;
		UnlockMethod = module_3.UnlockMethod.Currency;
		UnlockRequirements = {{
			Type = module_3.UnlockRequirementType.LevelCompletions;
			Args = {"Re1", 100};
		}};
		Unrollable = true;
	}
end
var181 = tbl_2
table.sort(var181, module_3.SortItemData)
module.DataArray = tbl_2
module.Data_ById = {}
var181 = nil
for _, v in tbl_2, var181 do
	if module.Data_ById[v.Id] then
		error(module_3.FormatOutput("Duplicate TrailId '%s'", "Trails", nil, v.Id))
	end
	module.Data_ById[v.Id] = v
end
if module_2.EnergyEnabled then
	var181 = (-math.huge)
	local tbl = {}
	for _, v_2 in tbl_2 do
		local Price = v_2.Price
		if Price and v_2.CreatedAt == 0 then
			tbl[#tbl + 1] = v_2
			if Price < math.huge then
				local var194 = Price
			end
			if var181 < Price then
				var181 = Price
			end
		end
	end
	for _, v_3 in tbl do
		local var195 = ((assert(v_3.Price) - var194) / (var181 - var194)) ^ 2
		v_3.Price = module_4.BeautifyNumber(4000000000 * var195 + 1000 * (1 - var195), 2, 0.5)
		local _
	end
end
function module.TrailStatesCreate() -- Line 1302
	return {
		Active_ById = {};
		Pending_ById = {};
	}
end
module_4.TableFreezeAll(module)
return module