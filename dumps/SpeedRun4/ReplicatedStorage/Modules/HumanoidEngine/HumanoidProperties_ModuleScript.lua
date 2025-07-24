-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:01
-- Luau version 6, Types version 3
-- Time taken: 0.000916 seconds

local module = {
	HumanoidIgnoreTag = "CH_Ignore";
	Pose = table.freeze({
		Idle = 1;
		Walk = 2;
		Jump = 3;
		Fall = 4;
	});
	WalkSpeed = 25;
	GroundednessProfiles = {};
}
module.GroundednessProfiles.Legacy = {
	MaxOvershoot = math.huge;
	MinOvershoot = 0.2;
	NormalTolerance = math.huge;
	SpeedFactorDownwards = 0.0333;
	SpeedFactorUpwards = 0;
}
module.GroundednessProfiles.Airborne = table.freeze({
	MaxOvershoot = math.huge;
	MinOvershoot = 0.2;
	NormalTolerance = math.huge;
	SpeedFactorDownwards = 0.0333;
	SpeedFactorUpwards = 0;
})
module.GroundednessProfiles.Grounded = table.freeze({
	MaxOvershoot = 5;
	MinOvershoot = 2;
	NormalTolerance = 0.3490658503988659;
	SpeedFactorDownwards = 0.2;
	SpeedFactorUpwards = 0.2;
})
table.freeze(module.GroundednessProfiles)
module.DefaultGroundednessProfiles = {
	Airborne = module.GroundednessProfiles.Airborne;
	Grounded = module.GroundednessProfiles.Grounded;
}
return module