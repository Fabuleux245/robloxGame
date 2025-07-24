-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:03
-- Luau version 6, Types version 3
-- Time taken: 0.001847 seconds

local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local any_AssertEnabled_result1 = require(script:FindFirstAncestor("LevelLoader"):WaitForChild("DimensionCommon")).AssertEnabled("Impossible")
function any_AssertEnabled_result1.Equip() -- Line 33
end
function any_AssertEnabled_result1.Unequip() -- Line 37
end
local module_upvr = require(Modules:WaitForChild("ClientData"))
local module_upvr_2 = require(Modules:WaitForChild("UIShared"))
local cframe_upvr = CFrame.new(0, 0, 0, -1, 0, 0, 0, -1, 0, 0, 0, 1)
function any_AssertEnabled_result1.RenderStepped(arg1, arg2) -- Line 41
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: cframe_upvr (readonly)
	]]
	if module_upvr.DimensionState.Active_ById.Ridiculous then
	else
		local Camera = module_upvr_2.Camera
		local CoordinateFrame = Camera.CoordinateFrame
		local LookVector = CoordinateFrame.LookVector
		if 0.984807753012208 < math.abs(LookVector:Dot(Vector3.new(0, 1, 0))) then
			local X = LookVector.X
			local Z = LookVector.Z
			local var16 = 0.17364817766693041 / (X * X + Z * Z) ^ 0.5
			local vector3 = Vector3.new(X * var16, math.sign(LookVector.Y) * 0.984807753012208, Z * var16)
			CoordinateFrame = CFrame.fromMatrix(CoordinateFrame.Position, CoordinateFrame.RightVector, -vector3:Cross(CoordinateFrame.RightVector).Unit, -vector3)
		end
		Camera.CoordinateFrame = CoordinateFrame * cframe_upvr
	end
end
return any_AssertEnabled_result1