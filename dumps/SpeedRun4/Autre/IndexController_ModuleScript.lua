-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:02
-- Luau version 6, Types version 3
-- Time taken: 0.002838 seconds

local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("OpenXrForWin32")
local AppCommonLib_upvr = script:FindFirstAncestor("VrCommon").Parent.AppCommonLib
if game_GetEngineFeature_result1_upvr then
	AppCommonLib_upvr = Vector3.new(3.40000, 3.40000, 3.40000)
else
	AppCommonLib_upvr = Vector3.new(3.59999, 3.59999, 3.59999)
end
local module_upvr = {}
module_upvr.__index = module_upvr
local Create_upvr = require(AppCommonLib_upvr).Create
local Granite_upvr = Enum.Material.Granite
function module_upvr.new(arg1) -- Line 15
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: Create_upvr (readonly)
		[3]: Granite_upvr (readonly)
		[4]: AppCommonLib_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1.userCFrame = arg1
	setmetatable_result1.model = Create_upvr("Model")({
		Name = "IndexController";
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
	local var10 = Create_upvr("Part")({
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
		Parent = var10;
	}
	local var12 = "Mesh"
	tbl.Name = var12
	if arg1 == Enum.UserCFrame.LeftHand then
		var12 = "rbxassetid://9605099531"
	else
		var12 = "rbxassetid://9605114549"
	end
	tbl.MeshId = var12
	if arg1 == Enum.UserCFrame.LeftHand then
		var12 = "rbxassetid://9605099774"
	else
		var12 = "rbxassetid://9605114771"
	end
	tbl.TextureId = var12
	var12 = AppCommonLib_upvr
	tbl.Scale = var12
	setmetatable_result1.mesh = Create_upvr("SpecialMesh")(tbl)
	var12 = "Weld"
	var12 = {}
	var12.Parent = var10
	var12.Name = "Weld"
	var12.Part0 = setmetatable_result1.origin
	var12.Part1 = var10
	var12 = setmetatable_result1.parts
	var12.body = var10
	var12 = setmetatable_result1.model
	var12.PrimaryPart = setmetatable_result1.origin
	return setmetatable_result1
end
function module_upvr.setCFrame(arg1, arg2) -- Line 70
	--[[ Upvalues[1]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
	]]
	if game_GetEngineFeature_result1_upvr then
		if arg1.userCFrame == Enum.UserCFrame.RightHand then
			arg1.model:SetPrimaryPartCFrame(arg2 * CFrame.Angles(0.6981317007977318, math.pi, 0) * CFrame.new(-0.1, 0.08, -0.01))
		else
			arg1.model:SetPrimaryPartCFrame(arg2 * CFrame.Angles(0.6981317007977318, math.pi, 0) * CFrame.new(0.1, 0.08, -0.01))
		end
	end
	if arg1.userCFrame == Enum.UserCFrame.RightHand then
		arg1.model:SetPrimaryPartCFrame(arg2 * CFrame.Angles(0.3490658503988659, math.pi, 0) * CFrame.new(-0.1, -0.03, -0.4))
	else
		arg1.model:SetPrimaryPartCFrame(arg2 * CFrame.Angles(0.3490658503988659, math.pi, 0) * CFrame.new(0.1, -0.03, -0.4))
	end
end
function module_upvr.setCFrameAndScale(arg1, arg2, arg3) -- Line 94
	--[[ Upvalues[2]:
		[1]: game_GetEngineFeature_result1_upvr (readonly)
		[2]: AppCommonLib_upvr (readonly)
	]]
	local var13
	if arg1.userCFrame == Enum.UserCFrame.RightHand then
		var13 = 1
	else
		var13 = -1
	end
	if game_GetEngineFeature_result1_upvr then
		arg1.model:SetPrimaryPartCFrame(arg2 * CFrame.Angles(0.6981317007977318, math.pi, 0) * CFrame.new(-0.1 * arg3 * var13, 0.08 * arg3, -0.01 * arg3))
	else
		arg1.model:SetPrimaryPartCFrame(arg2 * CFrame.Angles(0.3490658503988659, math.pi, 0) * CFrame.new(-0.1 * arg3 * var13, -0.03 * arg3, -0.4 * arg3))
	end
	arg1.mesh.Scale = AppCommonLib_upvr * arg3
end
function module_upvr.onButtonInputChanged(arg1, arg2, arg3) -- Line 112
end
function module_upvr.onInputBegan(arg1, arg2) -- Line 114
	arg1:onButtonInputChanged(arg2, true)
end
function module_upvr.onInputChanged(arg1, arg2) -- Line 118
end
function module_upvr.onInputEnded(arg1, arg2) -- Line 120
	arg1:onButtonInputChanged(arg2, false)
end
function module_upvr.onTouchpadModeChanged(arg1, arg2, arg3) -- Line 124
end
return module_upvr