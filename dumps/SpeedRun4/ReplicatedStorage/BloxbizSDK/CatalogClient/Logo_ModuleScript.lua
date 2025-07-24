-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:10
-- Luau version 6, Types version 3
-- Time taken: 0.003193 seconds

local Parent = script.Parent.Parent
local Utils = Parent:FindFirstChild("Utils")
local module_4 = require(Utils:WaitForChild("Fusion"))
local module_2_upvr = require(Utils:WaitForChild("FusionProps"))
local Value_upvr = module_4.Value
local RunService_upvr = game:GetService("RunService")
local module_3_upvr = require(Parent:WaitForChild("ConfigReader"))
local VoiceChatService_upvr = game:GetService("VoiceChatService")
local Players_upvr = game:GetService("Players")
local GuiService_upvr = game:GetService("GuiService")
local New_upvr = module_4.New
local Children_upvr = module_4.Children
local Spring_upvr = module_4.Spring
local Computed_upvr = module_4.Computed
return function(arg1) -- Line 18
	--[[ Upvalues[11]:
		[1]: module_2_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: RunService_upvr (readonly)
		[4]: module_3_upvr (readonly)
		[5]: VoiceChatService_upvr (readonly)
		[6]: Players_upvr (readonly)
		[7]: GuiService_upvr (readonly)
		[8]: New_upvr (readonly)
		[9]: Children_upvr (readonly)
		[10]: Spring_upvr (readonly)
		[11]: Computed_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_2_upvr.GetValues(arg1, {
		FullScreen = false;
		Visible = true;
	})
	local Value_upvr_result1_upvr = Value_upvr(false)
	local spawn_upvr = task.spawn
	spawn_upvr(function() -- Line 26
		--[[ Upvalues[5]:
			[1]: RunService_upvr (copied, readonly)
			[2]: module_3_upvr (copied, readonly)
			[3]: VoiceChatService_upvr (copied, readonly)
			[4]: Players_upvr (copied, readonly)
			[5]: Value_upvr_result1_upvr (readonly)
		]]
		if RunService_upvr:IsStudio() or not module_3_upvr:read("IsGameVoiceChatEnabled") then
		elseif VoiceChatService_upvr:IsVoiceEnabledForUserIdAsync(Players_upvr.LocalPlayer.UserId) then
			Value_upvr_result1_upvr:set(true)
		end
	end)
	local var21
	if 36 >= GuiService_upvr.TopbarInset.Max.Y then
		spawn_upvr = false
	else
		spawn_upvr = true
	end
	local module = {
		Name = "LogoContainer";
	}
	if spawn_upvr then
		var21 = 34
	else
		var21 = 22
	end
	module.Position = UDim2.fromOffset(0, var21)
	var21 = 0
	module.Size = UDim2.new(1, var21, 0, 20)
	module.BackgroundTransparency = 1
	module.Visible = any_GetValues_result1_upvw.Visible
	var21 = "ImageLabel"
	var21 = {}
	var21.Name = "Logo"
	var21.Image = "rbxassetid://14555107778"
	var21.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	var21.BackgroundTransparency = 1
	var21.AnchorPoint = Vector2.new(0.5, 0.5)
	var21.Position = Spring_upvr(Computed_upvr(function() -- Line 51
		--[[ Upvalues[3]:
			[1]: Value_upvr_result1_upvr (readonly)
			[2]: any_GetValues_result1_upvw (read and write)
			[3]: spawn_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var24
		if Value_upvr_result1_upvr:get() and not any_GetValues_result1_upvw.FullScreen:get() then
			var24 = 66
		else
			var24 = 0
		end
		if any_GetValues_result1_upvw.FullScreen:get() then
			return UDim2.new(0.5, var24, 0, 0)
		end
		if spawn_upvr then
		else
		end
		return UDim2.new(0, 152 + var24, 0, 0)
	end), 30)
	var21.Size = UDim2.fromScale(1, 1)
	var21[Children_upvr] = {New_upvr("TextLabel")({
		Name = "Info";
		FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal);
		Text = "Purchase items to use in all experiences";
		TextColor3 = Color3.fromRGB(255, 255, 255);
		TextScaled = true;
		TextSize = 14;
		TextWrapped = true;
		TextXAlignment = Enum.TextXAlignment.Left;
		AnchorPoint = Vector2.new(0, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(1.15, 0.55);
		Size = Computed_upvr(function() -- Line 79
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr (readonly)
			]]
			local var28
			if Value_upvr_result1_upvr:get() then
				var28 = 56
			else
				var28 = 0
			end
			return UDim2.new(2.6, -var28, 1, 0)
		end);
		ZIndex = 2;
		Visible = Computed_upvr(function() -- Line 84
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			return not any_GetValues_result1_upvw.FullScreen:get()
		end);
	}), New_upvr("UIAspectRatioConstraint")({
		Name = "UIAspectRatioConstraint";
		AspectRatio = 4.747368421052632;
		DominantAxis = Enum.DominantAxis.Height;
	})}
	module[Children_upvr] = New_upvr(var21)(var21)
	return New_upvr("Frame")(module)
end