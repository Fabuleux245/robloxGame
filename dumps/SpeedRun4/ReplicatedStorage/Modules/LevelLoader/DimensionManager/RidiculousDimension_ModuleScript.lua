-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:03
-- Luau version 6, Types version 3
-- Time taken: 0.001011 seconds

local Modules = game:GetService("ReplicatedStorage"):WaitForChild("Modules")
local tbl_upvr = {
	[true] = 2.5;
	[false] = 1.5;
}
local tbl_upvr_2 = {
	Rotation = 0;
}
local any_AssertEnabled_result1 = require(script:FindFirstAncestor("LevelLoader"):WaitForChild("DimensionCommon")).AssertEnabled("Ridiculous")
function any_AssertEnabled_result1.Equip() -- Line 32
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	tbl_upvr_2.Rotation = 0
end
function any_AssertEnabled_result1.Unequip() -- Line 36
end
local module_upvr_2 = require(Modules:WaitForChild("UIShared"))
local module_upvr = require(Modules:WaitForChild("ClientData"))
function any_AssertEnabled_result1.RenderStepped(arg1, arg2) -- Line 40
	--[[ Upvalues[4]:
		[1]: module_upvr_2 (readonly)
		[2]: module_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
	]]
	local var12 = module_upvr_2
	local Camera = var12.Camera
	if module_upvr.DimensionState.Active_ById.Impossible ~= true then
		var12 = false
	else
		var12 = true
	end
	tbl_upvr_2.Rotation = (tbl_upvr_2.Rotation + tbl_upvr[var12] * arg1) % (-math.pi*2)
	Camera.CFrame *= CFrame.Angles(0, 0, tbl_upvr_2.Rotation)
end
return any_AssertEnabled_result1