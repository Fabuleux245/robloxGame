-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:29
-- Luau version 6, Types version 3
-- Time taken: 0.000472 seconds

return {
	InitializedTag = "_RI";
	DeathTag = "_RD";
	BallRadius = 4;
	BallSize = Vector3.new(8, 8, 8);
	BallVolume = 268.082573106329;
	BallPhysics = PhysicalProperties.new(require(game:GetService("ReplicatedStorage"):WaitForChild("Settings")).CharacterMass / 268.082573106329, 0, 0.25, 100, 100);
	HitboxSize = Vector3.new(5.69999, 5.69999, 5.69999);
}