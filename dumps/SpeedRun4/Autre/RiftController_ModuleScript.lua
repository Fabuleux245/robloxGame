-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:03
-- Luau version 6, Types version 3
-- Time taken: 0.001986 seconds

local module_upvr = {}
module_upvr.__index = module_upvr
local Create_upvr = require(script:FindFirstAncestor("VrCommon").Parent.AppCommonLib).Create
local Granite_upvr = Enum.Material.Granite
function module_upvr.new(arg1) -- Line 13
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: Create_upvr (readonly)
		[3]: Granite_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.userCFrame = arg1
	setmetatable_result1.model = Create_upvr("Model")({
		Name = "RiftController";
		Archivable = false;
	})
	setmetatable_result1.origin = Create_upvr("Part")({
		Parent = setmetatable_result1.model;
		Name = "Origin";
		Anchored = true;
		Transparency = 1;
		Size = Vector3.new(0.05000, 0.05000, 0.05000);
		CanCollide = false;
		CanQuery = false;
		CanTouch = false;
	})
	setmetatable_result1.parts = {}
	local var8 = Create_upvr("Part")({
		Parent = setmetatable_result1.model;
		Name = "body";
		Anchored = true;
		Material = Granite_upvr;
		Size = Vector3.new(0.05000, 0.05000, 0.05000);
		Transparency = 0.25;
		CFrame = setmetatable_result1.origin.CFrame;
		CanCollide = false;
		CanQuery = false;
		CanTouch = false;
	})
	local tbl = {
		Parent = var8;
	}
	local var10 = "Mesh"
	tbl.Name = var10
	if arg1 == Enum.UserCFrame.LeftHand then
		var10 = "rbxassetid://9597097835"
	else
		var10 = "rbxassetid://9597101144"
	end
	tbl.MeshId = var10
	tbl.TextureId = "rbxassetid://9597123835"
	tbl.Scale = Vector3.new(0.03200, 0.03200, 0.03200)
	setmetatable_result1.mesh = Create_upvr("SpecialMesh")(tbl)
	local tbl_2 = {
		Parent = var8;
		Name = "Weld";
		Part0 = setmetatable_result1.origin;
		Part1 = var8;
	}
	setmetatable_result1.parts.body = var8
	setmetatable_result1.model.PrimaryPart = setmetatable_result1.origin
	return setmetatable_result1
end
function module_upvr.setCFrame(arg1, arg2) -- Line 68
	arg1.model:SetPrimaryPartCFrame(arg2 * CFrame.Angles(0.3490658503988659, 0, 0) * CFrame.new(0, -0.03, 0.06))
end
function module_upvr.setCFrameAndScale(arg1, arg2, arg3) -- Line 72
	arg1.model:SetPrimaryPartCFrame(arg2 * CFrame.Angles(0.3490658503988659, 0, 0) * CFrame.new(0, -0.03 * arg3, 0.06 * arg3))
	arg1.mesh.Scale = Vector3.new(0.03200, 0.03200, 0.03200) * arg3
end
function module_upvr.onButtonInputChanged(arg1, arg2, arg3) -- Line 79
end
function module_upvr.onInputBegan(arg1, arg2) -- Line 81
	arg1:onButtonInputChanged(arg2, true)
end
function module_upvr.onInputChanged(arg1, arg2) -- Line 85
end
function module_upvr.onInputEnded(arg1, arg2) -- Line 87
	arg1:onButtonInputChanged(arg2, false)
end
function module_upvr.onTouchpadModeChanged(arg1, arg2, arg3) -- Line 91
end
return module_upvr