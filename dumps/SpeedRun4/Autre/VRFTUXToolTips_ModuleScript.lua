-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:20
-- Luau version 6, Types version 3
-- Time taken: 0.002102 seconds

local CorePackages = game:GetService("CorePackages")
local module_upvr = {}
local IsVRAppBuild_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).IsVRAppBuild
local VRHub_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.VR.VRHub)
local function onRenderStepped_upvr(arg1) -- Line 29, Named "onRenderStepped"
	--[[ Upvalues[3]:
		[1]: IsVRAppBuild_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: VRHub_upvr (readonly)
	]]
	if IsVRAppBuild_upvr() then
		for _, v in pairs(module_upvr) do
			local any_GetControllerModel_result1 = VRHub_upvr:GetControllerModel(v.Button.Controller)
			local var13
			if any_GetControllerModel_result1 then
				var13 = any_GetControllerModel_result1:getButtonPosition(v.Button.ButtonKeycode)
			end
			if v.Part then
				if any_GetControllerModel_result1 == nil or var13 == nil then
					v.Part.Position = Vector3.new(-99999, -99999, -99999)
				else
					v.Part.Position = var13
				end
			end
		end
	end
end
function spawnTooltipPart() -- Line 50
	local Part = Instance.new("Part")
	Part.Name = "TooltipPart"
	Part.Position = Vector3.new(0, -100, 0)
	Part.Anchored = true
	Part.CanCollide = false
	Part.Transparency = 1
	Part.Size = Vector3.new(0.10000, 0.10000, 0.10000)
	Part.Parent = game.Workspace
	local BillboardGui = Instance.new("BillboardGui")
	BillboardGui.Parent = Part
	BillboardGui.Adornee = Part
	BillboardGui.AlwaysOnTop = true
	BillboardGui.Active = false
	BillboardGui.Size = UDim2.new(1, 0, 1, 0)
	return Part
end
function showTooltipText(arg1) -- Line 70
	for _, v_2 in ipairs(arg1.Part:GetDescendants()) do
		if v_2:IsA("TextLabel") and v_2.Name == "Body" then
			v_2.ZIndex = 10
		end
	end
end
local React_upvr = require(CorePackages.Packages.React)
local RunService_upvr = game:GetService("RunService")
local LuauPolyfill_upvr = require(CorePackages.Packages.LuauPolyfill)
local ToolTip_upvr = require(script.Parent.ToolTip)
function Tooltips(arg1) -- Line 78
	--[[ Upvalues[6]:
		[1]: module_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: onRenderStepped_upvr (readonly)
		[5]: LuauPolyfill_upvr (readonly)
		[6]: ToolTip_upvr (readonly)
	]]
	for i_3, v_3 in pairs(arg1.tooltipButtons) do
		module_upvr[i_3] = {
			Button = v_3;
			Part = spawnTooltipPart();
		}
	end
	React_upvr.useEffect(function() -- Line 86
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		for _, v_4 in pairs(module_upvr) do
			showTooltipText(v_4)
		end
	end, {})
	RunService_upvr.RenderStepped:Connect(onRenderStepped_upvr)
	return React_upvr.createElement("Frame", {}, LuauPolyfill_upvr.Array.map(module_upvr, function(arg1_2, arg2) -- Line 97
		--[[ Upvalues[3]:
			[1]: React_upvr (copied, readonly)
			[2]: ToolTip_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		return React_upvr.createElement(ToolTip_upvr, {
			controllerPart = arg1_2.Part;
			tooltipText = arg1.tooltipButtons[arg2].Text;
		})
	end))
end
return Tooltips