-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:02:11
-- Luau version 6, Types version 3
-- Time taken: 0.002657 seconds

local Constants_upvr = require(script.Parent.Constants)
local SpatialUIType_upvr = Constants_upvr.SpatialUIType
local tbl_upvr_3 = {
	spatialPanelProps = nil;
	screenGuiProps = nil;
	type = SpatialUIType_upvr.ScreenUI;
}
local tbl_upvr = {
	Name = "ScreenGui";
	ResetOnSpawn = false;
	DisplayOrder = 0;
	ZIndexBehavior = nil;
}
local tbl_upvr_2 = {
	name = "";
	partSize = Constants_upvr.DEFAULT_VR_PANEL_SIZE;
	virtualScreenSize = Constants_upvr.DEFAULT_VR_PANEL_SIZE * Constants_upvr.VR_PANEL_RESOLUTION_MULTIPLIER;
	cframe = CFrame.new(0, 0, 0);
	alwaysOnTop = true;
	hidden = false;
	curvature = 1;
	transparency = 1;
}
local function createPanelPart_upvr(arg1) -- Line 35, Named "createPanelPart"
	local Part = Instance.new("Part")
	Part.Parent = workspace.CurrentCamera
	Part.Name = arg1.name.."_Part"
	Part.CFrame = arg1.cframe
	Part.CastShadow = false
	local vector3 = Vector3.new(arg1.partSize.X, arg1.partSize.Y, 0.002)
	Part.Size = vector3
	if arg1.transparency then
		vector3 = arg1.transparency
	else
		vector3 = 1
	end
	Part.Transparency = vector3
	Part.Color = Color3.new(0, 0, 0)
	Part.CanCollide = false
	Part.CanTouch = false
	Part.Anchored = true
	return Part
end
local Object_upvr = require(game:GetService("CorePackages").Packages.LuauPolyfill).Object
local CoreGui_upvr = game:GetService("CoreGui")
local game_GetEngineFeature_result1_upvr = game:GetEngineFeature("CurvedSurfaceGuisEnabled")
local function createPanel_upvr(arg1) -- Line 50, Named "createPanel"
	--[[ Upvalues[8]:
		[1]: Object_upvr (readonly)
		[2]: tbl_upvr_3 (readonly)
		[3]: SpatialUIType_upvr (readonly)
		[4]: tbl_upvr_2 (readonly)
		[5]: createPanelPart_upvr (readonly)
		[6]: CoreGui_upvr (readonly)
		[7]: game_GetEngineFeature_result1_upvr (readonly)
		[8]: tbl_upvr (readonly)
	]]
	local any_assign_result1 = Object_upvr.assign({}, tbl_upvr_3, arg1)
	if any_assign_result1.type == SpatialUIType_upvr.SpatialUIPartOnly then
		return {
			type = any_assign_result1.type;
			panelObject = createPanelPart_upvr(Object_upvr.assign({}, tbl_upvr_2, any_assign_result1.spatialPanelProps));
		}
	end
	if any_assign_result1.type == SpatialUIType_upvr.SpatialUI then
		local any_assign_result1_2 = Object_upvr.assign({}, tbl_upvr_2, any_assign_result1.spatialPanelProps)
		local SurfaceGui = Instance.new("SurfaceGui", CoreGui_upvr)
		SurfaceGui.Name = any_assign_result1_2.name.."_SurfaceGui"
		SurfaceGui.Enabled = not any_assign_result1_2.hidden
		SurfaceGui.CanvasSize = any_assign_result1_2.virtualScreenSize
		SurfaceGui.AlwaysOnTop = any_assign_result1_2.alwaysOnTop
		local var15
		if game_GetEngineFeature_result1_upvr and any_assign_result1_2.curvature ~= 0 then
			var15 = Enum.SurfaceGuiShape.CurvedHorizontally
		else
			var15 = Enum.SurfaceGuiShape.Flat
		end
		SurfaceGui.Shape = var15
		if game_GetEngineFeature_result1_upvr then
			var15 = any_assign_result1_2.curvature
		else
			var15 = 0
		end
		SurfaceGui.HorizontalCurvature = var15
		var15 = true
		SurfaceGui.Active = var15
		SurfaceGui.Adornee = createPanelPart_upvr(any_assign_result1_2)
		var15 = Enum.ZIndexBehavior.Sibling
		SurfaceGui.ZIndexBehavior = var15
		var15 = 0
		SurfaceGui.LightInfluence = var15
		var15 = 0
		SurfaceGui.ZOffset = var15
		var15 = Enum.NormalId.Back
		SurfaceGui.Face = var15
		var15 = {}
		var15.type = any_assign_result1.type
		var15.panelObject = SurfaceGui
		return var15
	end
	if any_assign_result1.type == SpatialUIType_upvr.ScreenUI then
		local any_assign_result1_3 = Object_upvr.assign({}, tbl_upvr, any_assign_result1.screenGuiProps)
		local ScreenGui = Instance.new("ScreenGui", CoreGui_upvr)
		ScreenGui.Name = any_assign_result1_3.Name
		ScreenGui.ResetOnSpawn = any_assign_result1_3.ResetOnSpawn
		ScreenGui.DisplayOrder = any_assign_result1_3.DisplayOrder
		if any_assign_result1_3.ZIndexBehavior then
			ScreenGui.ZIndexBehavior = any_assign_result1_3.ZIndexBehavior
		end
		return {
			type = any_assign_result1.type;
			panelObject = ScreenGui;
		}
	end
	print("Invalid panel type: "..tostring(any_assign_result1.type))
	return nil
end
local VRService_upvr = game:GetService("VRService")
return function(arg1) -- Line 102
	--[[ Upvalues[4]:
		[1]: VRService_upvr (readonly)
		[2]: createPanel_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: SpatialUIType_upvr (readonly)
	]]
	if VRService_upvr.VREnabled then
		local createPanel_result1_2 = createPanel_upvr(Constants_upvr.COMPAT_PANEL_PROPS_MAP[arg1.panelType])
		if createPanel_result1_2 == nil then
			return nil
		end
		return {
			panelObject = createPanel_result1_2.panelObject;
			uiType = createPanel_result1_2.type;
			panelType = arg1.panelType;
			panelPositionProps = Constants_upvr.SPATIAL_PANEL_POSITION_PROPS_MAP[arg1.panelType];
			headScale = 1;
		}
	end
	local createPanel_result1 = createPanel_upvr({
		type = SpatialUIType_upvr.ScreenUI;
		screenGuiProps = arg1.screenGuiProps;
	})
	if createPanel_result1 == nil then
		return nil
	end
	return {
		panelObject = createPanel_result1.panelObject;
		uiType = createPanel_result1.type;
		panelType = arg1.panelType;
		panelPositionProps = nil;
	}
end