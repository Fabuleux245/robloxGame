-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:37:30
-- Luau version 6, Types version 3
-- Time taken: 0.002275 seconds

local VrSpatialUi = script:FindFirstAncestor("VrSpatialUi")
local Parent = VrSpatialUi.Parent
local UIBlox = require(Parent.UIBlox)
local React_upvr = require(Parent.React)
local UIManager_upvr = require(VrSpatialUi.UIManager)
local useHeadScale_upvr = require(VrSpatialUi.Hooks.useHeadScale)
local Panel3D_upvr = UIBlox.Core.VR.Panel3D
local Constants_upvr = UIBlox.Core.VR.Constants
local GuiService_upvr = game:GetService("GuiService")
local registerRoactPanel_upvr = require(VrSpatialUi.registerRoactPanel)
return React_upvr.memo(function(arg1) -- Line 24, Named "Panel3DInSpatialUI"
	--[[ Upvalues[7]:
		[1]: UIManager_upvr (readonly)
		[2]: useHeadScale_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Panel3D_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: GuiService_upvr (readonly)
		[7]: registerRoactPanel_upvr (readonly)
	]]
	local any_getPanelSizeInPixel_result1 = UIManager_upvr.getInstance():getPanelSizeInPixel(arg1.panelType)
	local useHeadScale_upvr_result1, useHeadScale_upvr_result2 = useHeadScale_upvr()
	local module_2 = {
		panelName = arg1.panelType;
		partSize = UIManager_upvr.getInstance():getScaledPartSizeInPixel(arg1.panelType) * useHeadScale_upvr_result1;
		virtualScreenSize = any_getPanelSizeInPixel_result1 * useHeadScale_upvr_result1;
		offset = CFrame.new(0, 0, 0);
		lerp = true;
		tilt = 0;
		anchoring = Constants_upvr.AnchoringTypes.PanelManaged;
		faceCamera = true;
		curvature = 0;
		parent = GuiService_upvr.CoreGuiFolder;
		connectPanelManagerFunction = function(arg1_2) -- Line 40, Named "connectPanelManagerFunction"
			--[[ Upvalues[3]:
				[1]: registerRoactPanel_upvr (copied, readonly)
				[2]: arg1 (readonly)
				[3]: UIManager_upvr (copied, readonly)
			]]
			if arg1_2 then
				registerRoactPanel_upvr(arg1_2, arg1.panelType, arg1.visibilityObservable)
			else
				UIManager_upvr.getInstance():removeRoactPanel(arg1.panelType)
			end
		end;
	}
	local zOffset = arg1.zOffset
	module_2.zOffset = zOffset or 1
	local module = {}
	if arg1.requireCanvasGroup then
		zOffset = React_upvr.createElement
		zOffset = zOffset("CanvasGroup", {
			BackgroundTransparency = 1;
			Name = "AnimatablePanelManagedContent";
			BorderSizePixel = 0;
			GroupTransparency = 0;
			Size = UDim2.new(1, 0, 1, 0);
		}, {
			Content = arg1.renderFunction(any_getPanelSizeInPixel_result1 * useHeadScale_upvr_result1);
		})
	else
		zOffset = arg1.renderFunction(any_getPanelSizeInPixel_result1 * useHeadScale_upvr_result1)
	end
	module.ContentContainer = zOffset
	return React_upvr.createElement(Panel3D_upvr, module_2, module)
end)