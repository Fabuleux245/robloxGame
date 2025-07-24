-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:26
-- Luau version 6, Types version 3
-- Time taken: 0.002267 seconds

local CorePackages = game:GetService("CorePackages")
local Panel3D = require(CorePackages.Workspace.Packages.VrCommon).Panel3D
local VRHub_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.VR.VRHub)
local var5_upvw = false
local module_upvr = {
	ModuleName = "Recenter";
	KeepVRTopbarOpen = true;
	VRIsExclusive = true;
	VRClosesNonExclusive = false;
}
VRHub_upvr:RegisterModule(module_upvr)
local any_Get_result1_upvr = Panel3D.Get("RecenterCountdown")
any_Get_result1_upvr:SetType(Panel3D.Type.HorizontalFollow)
any_Get_result1_upvr:ResizeStuds(5, 3, 128)
any_Get_result1_upvr:SetCanFade(false)
local _ = {
	Parent = any_Get_result1_upvr:GetGUI();
	Position = UDim2.new(0, 0, 0, 0);
	Size = UDim2.new(1, 0, 1, 0);
	BackgroundTransparency = 1;
	Image = "rbxasset://textures/ui/VR/recenterFrame.png";
}
any_Get_result1_upvr:SetVisible(false)
local var10_upvw = false
local function _() -- Line 55, Named "cancelCountdown"
	--[[ Upvalues[2]:
		[1]: var10_upvw (read and write)
		[2]: any_Get_result1_upvr (readonly)
	]]
	var10_upvw = false
	any_Get_result1_upvr:SetVisible(false)
end
VRHub_upvr.ModuleOpened.Event:connect(function(arg1) -- Line 60
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: VRHub_upvr (readonly)
		[3]: var10_upvw (read and write)
		[4]: any_Get_result1_upvr (readonly)
	]]
	if arg1 ~= module_upvr.ModuleName and VRHub_upvr:GetModule(arg1).VRIsExclusive then
		var10_upvw = false
		any_Get_result1_upvr:SetVisible(false)
	end
end)
local ContextActionService_upvr = game:GetService("ContextActionService")
local var13_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Create("TextLabel")({
	Parent = any_Get_result1_upvr:GetGUI();
	Position = UDim2.new(0.5, -64, 0.5, -64);
	Size = UDim2.new(0, 128, 0, 128);
	BackgroundTransparency = 0.9;
	BackgroundColor3 = Color3.new(0.2, 0.2, 0.2);
	TextColor3 = Color3.new(1, 1, 1);
	Text = "";
	TextScaled = true;
	Font = Enum.Font.SourceSansBold;
	Visible = true;
})
local UserInputService_upvr = game:GetService("UserInputService")
function module_upvr.SetVisible(arg1, arg2) -- Line 69
	--[[ Upvalues[8]:
		[1]: var5_upvw (read and write)
		[2]: var10_upvw (read and write)
		[3]: any_Get_result1_upvr (readonly)
		[4]: VRHub_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: ContextActionService_upvr (readonly)
		[7]: var13_upvr (readonly)
		[8]: UserInputService_upvr (readonly)
	]]
	var5_upvw = arg2
	if var5_upvw then
		if var10_upvw then
			var10_upvw = false
			any_Get_result1_upvr:SetVisible(false)
			VRHub_upvr:FireModuleClosed(module_upvr.ModuleName)
		else
			VRHub_upvr:FireModuleOpened(module_upvr.ModuleName)
			spawn(function() -- Line 81
				--[[ Upvalues[7]:
					[1]: var10_upvw (copied, read and write)
					[2]: any_Get_result1_upvr (copied, readonly)
					[3]: ContextActionService_upvr (copied, readonly)
					[4]: var13_upvr (copied, readonly)
					[5]: UserInputService_upvr (copied, readonly)
					[6]: VRHub_upvr (copied, readonly)
					[7]: module_upvr (copied, readonly)
				]]
				var10_upvw = true
				any_Get_result1_upvr:SetVisible(true)
				ContextActionService_upvr:BindCoreAction("CancelRecenterShortcut", function(arg1_2, arg2_2, arg3) -- Line 85
					--[[ Upvalues[2]:
						[1]: var10_upvw (copied, read and write)
						[2]: any_Get_result1_upvr (copied, readonly)
					]]
					if arg2_2 == Enum.UserInputState.Begin then
						var10_upvw = false
						any_Get_result1_upvr:SetVisible(false)
					end
				end, false, Enum.KeyCode.ButtonB)
				if var10_upvw then
					var13_upvr.Text = tostring(3)
					wait(1)
				end
				if var10_upvw then
					var13_upvr.Text = tostring(2)
					wait(1)
				end
				if var10_upvw then
					var13_upvr.Text = tostring(1)
					wait(1)
				end
				if var10_upvw then
					UserInputService_upvr:RecenterUserHeadCFrame()
				end
				any_Get_result1_upvr:SetVisible(false)
				var10_upvw = false
				ContextActionService_upvr:UnbindCoreAction("CancelRecenterShortcut")
				VRHub_upvr:FireModuleClosed(module_upvr.ModuleName)
			end)
		end
	end
	var10_upvw = false
	any_Get_result1_upvr:SetVisible(false)
	VRHub_upvr:FireModuleClosed(module_upvr.ModuleName)
end
function module_upvr.IsVisible(arg1) -- Line 115
	--[[ Upvalues[1]:
		[1]: var5_upvw (read and write)
	]]
	return var5_upvw
end
return module_upvr