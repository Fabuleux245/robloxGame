-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:37
-- Luau version 6, Types version 3
-- Time taken: 0.000964 seconds

local tbl_upvr = {"ClimbAnimation", "FallAnimation", "IdleAnimation", "JumpAnimation", "MoodAnimation", "RunAnimation", "SwimAnimation", "WalkAnimation", "HeadColor", "TorsoColor", "LeftArmColor", "LeftLegColor", "RightArmColor", "RightLegColor", "Face", "Head", "Torso", "LeftArm", "LeftLeg", "RightArm", "RightLeg", "Pants", "Shirt", "GraphicTShirt", "HeadScale", "WidthScale", "DepthScale", "HeightScale", "BodyTypeScale", "ProportionScale"}
return function(arg1) -- Line 38
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local module = {}
	for _, v in tbl_upvr do
		module[v] = arg1[v]
	end
	module.Accessories = arg1:GetAccessories(true)
	return module
end