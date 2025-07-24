-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:39
-- Luau version 6, Types version 3
-- Time taken: 0.007643 seconds

local Utils = script.Parent.Parent.Parent.Parent:FindFirstChild("Utils")
local module_2_upvr = require(Utils:WaitForChild("Fusion"))
local Value_upvr = module_2_upvr.Value
local tbl_5_upvr = {
	Pose = "rbxassetid://15184432252";
	Eye = "rbxassetid://15184317987";
	Shrink = "rbxassetid://15177307285";
}
local Value_upvr_result1_upvr = Value_upvr(Vector2.new(1280, 720))
game:GetService("RunService").RenderStepped:Connect(function() -- Line 36
	--[[ Upvalues[1]:
		[1]: Value_upvr_result1_upvr (readonly)
	]]
	if workspace.Camera.ViewportSize ~= Value_upvr_result1_upvr:get() then
		Value_upvr_result1_upvr:set(workspace.Camera.ViewportSize)
	end
end)
local tbl_7_upvr = {Enum.UserInputType.MouseButton1, Enum.UserInputType.Touch}
local module_3_upvr = require(Utils:WaitForChild("FusionProps"))
local Computed_upvr = module_2_upvr.Computed
local Players_upvr = game:GetService("Players")
local UserInputService_upvr = game:GetService("UserInputService")
local New_upvr = module_2_upvr.New
local Cleanup_upvr = module_2_upvr.Cleanup
local Children_upvr = module_2_upvr.Children
local Button_upvr = require(script.Parent.Button)
return function(arg1) -- Line 46
	--[[ Upvalues[12]:
		[1]: module_3_upvr (readonly)
		[2]: Computed_upvr (readonly)
		[3]: Value_upvr (readonly)
		[4]: module_2_upvr (readonly)
		[5]: Players_upvr (readonly)
		[6]: UserInputService_upvr (readonly)
		[7]: tbl_7_upvr (readonly)
		[8]: New_upvr (readonly)
		[9]: Cleanup_upvr (readonly)
		[10]: Children_upvr (readonly)
		[11]: Button_upvr (readonly)
		[12]: tbl_5_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_3_upvr.GetValues(arg1, {
		Parent = module_3_upvr.Nil;
		Visible = true;
		FullScreen = true;
		OnFullScreen = module_3_upvr.Callback;
		Scene = {
			Image = "http://www.roblox.com/asset/?id=10393363412";
			Color = Color3.new(1, 1, 1);
		};
		Scenes = {{
			Image = "http://www.roblox.com/asset/?id=10393363412";
			Color = Color3.new(1, 1, 1);
		}};
		OnSceneChange = module_3_upvr.Callback;
		OnPoseChange = module_3_upvr.Callback;
		HideUI = false;
		Position = UDim2.fromScale(0, 0);
		Size = UDim2.fromScale(1, 1);
		ButtonHeight = 0;
	})
	local Computed_upvr_result1 = Computed_upvr(function() -- Line 74
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		return UDim2.new(1, 0, 0, any_GetValues_result1_upvw.ButtonHeight:get())
	end)
	local ButtonHeight_upvr = any_GetValues_result1_upvw.ButtonHeight
	local function _() -- Line 77
		--[[ Upvalues[1]:
			[1]: ButtonHeight_upvr (readonly)
		]]
		return UDim.new(0, ButtonHeight_upvr:get() / 5)
	end
	local tbl_2_upvr = {}
	local Value_upvr_result1_upvr_2 = Value_upvr(1)
	table.insert(tbl_2_upvr, module_2_upvr.Observer(any_GetValues_result1_upvw.Scenes):onChange(function() -- Line 84
		--[[ Upvalues[2]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: Value_upvr_result1_upvr_2 (readonly)
		]]
		if #any_GetValues_result1_upvw.Scenes:get() < Value_upvr_result1_upvr_2 then
			Value_upvr_result1_upvr_2:set(1)
			any_GetValues_result1_upvw.Scene:set(any_GetValues_result1_upvw.Scenes:get()[1])
		end
	end))
	table.insert(tbl_2_upvr, module_2_upvr.Observer(any_GetValues_result1_upvw.FullScreen):onChange(function() -- Line 92
		--[[ Upvalues[2]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: Value_upvr_result1_upvr_2 (readonly)
		]]
		if not any_GetValues_result1_upvw.FullScreen:get() then
			Value_upvr_result1_upvr_2:set(1)
			any_GetValues_result1_upvw.Scene:set(any_GetValues_result1_upvw.Scenes:get()[1])
		end
	end))
	local var31_upvw
	local mouse_upvr = Players_upvr.LocalPlayer:GetMouse()
	table.insert(tbl_2_upvr, UserInputService_upvr.InputBegan:Connect(function(arg1_2) -- Line 102
		--[[ Upvalues[3]:
			[1]: tbl_7_upvr (copied, readonly)
			[2]: var31_upvw (read and write)
			[3]: mouse_upvr (readonly)
		]]
		if table.find(tbl_7_upvr, arg1_2.UserInputType) then
			var31_upvw = Vector2.new(mouse_upvr.X, mouse_upvr.Y)
		end
	end))
	table.insert(tbl_2_upvr, UserInputService_upvr.InputEnded:Connect(function(arg1_3) -- Line 107
		--[[ Upvalues[4]:
			[1]: tbl_7_upvr (copied, readonly)
			[2]: mouse_upvr (readonly)
			[3]: var31_upvw (read and write)
			[4]: any_GetValues_result1_upvw (read and write)
		]]
		if table.find(tbl_7_upvr, arg1_3.UserInputType) and (Vector2.new(mouse_upvr.X, mouse_upvr.Y) - var31_upvw).Magnitude < 3 then
			any_GetValues_result1_upvw.HideUI:set(false)
		end
	end))
	local module = {
		Name = "SceneControls";
		Parent = any_GetValues_result1_upvw.Parent;
		Position = any_GetValues_result1_upvw.Position;
		Size = any_GetValues_result1_upvw.Size;
		BackgroundTransparency = 1;
		ZIndex = 10;
		Visible = any_GetValues_result1_upvw.Visible;
		[Cleanup_upvr] = function() -- Line 126
			--[[ Upvalues[2]:
				[1]: module_2_upvr (copied, readonly)
				[2]: tbl_2_upvr (readonly)
			]]
			module_2_upvr.cleanup(tbl_2_upvr)
		end;
	}
	local tbl_3 = {}
	local tbl_4 = {
		BackgroundTransparency = 1;
		AnchorPoint = Vector2.new(1, 1);
		Position = UDim2.fromScale(1, 1);
		Size = UDim2.fromScale(0.4, 0.5);
	}
	local tbl_6 = {}
	local tbl = {
		LayoutOrder = -4;
		Size = Computed_upvr_result1;
	}
	local function OnClick() -- Line 156
		--[[ Upvalues[2]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: Value_upvr_result1_upvr_2 (readonly)
		]]
		local var43 = Value_upvr_result1_upvr_2:get() + 1
		if #any_GetValues_result1_upvw.Scenes:get() < var43 then
			var43 = 1
		end
		Value_upvr_result1_upvr_2:set(var43)
		any_GetValues_result1_upvw.Scene:set(any_GetValues_result1_upvw.Scenes:get()[var43])
	end
	tbl.OnClick = OnClick
	tbl.IconSize = 0.6
	function tbl.Icon() -- Line 168
		--[[ Upvalues[4]:
			[1]: New_upvr (copied, readonly)
			[2]: Children_upvr (copied, readonly)
			[3]: Computed_upvr (copied, readonly)
			[4]: any_GetValues_result1_upvw (read and write)
		]]
		return New_upvr("CanvasGroup")({
			Size = UDim2.fromScale(1, 1);
			[Children_upvr] = {New_upvr("UICorner")({
				CornerRadius = UDim.new(0.5, 0);
			}), New_upvr("UIStroke")({
				Color = Color3.fromRGB(0, 0, 0);
				Thickness = 1.5;
			}), New_upvr("ImageLabel")({
				Size = UDim2.fromScale(1, 1);
				BackgroundColor3 = Computed_upvr(function() -- Line 183
					--[[ Upvalues[1]:
						[1]: any_GetValues_result1_upvw (copied, read and write)
					]]
					return any_GetValues_result1_upvw.Scene:get().Color
				end);
				ScaleType = Enum.ScaleType.Crop;
				Image = Computed_upvr(function() -- Line 187
					--[[ Upvalues[1]:
						[1]: any_GetValues_result1_upvw (copied, read and write)
					]]
					return any_GetValues_result1_upvw.Scene:get().Image
				end);
				ImageColor3 = Computed_upvr(function() -- Line 190
					--[[ Upvalues[1]:
						[1]: any_GetValues_result1_upvw (copied, read and write)
					]]
					return any_GetValues_result1_upvw.Scene:get().Color
				end);
			})};
		})
	end
	local tbl_8 = {
		LayoutOrder = -2;
		Size = Computed_upvr_result1;
	}
	local function OnClick() -- Line 211
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		task.defer(function() -- Line 212
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (copied, read and write)
			]]
			any_GetValues_result1_upvw.HideUI:set(true)
		end)
	end
	tbl_8.OnClick = OnClick
	tbl_8.Icon = tbl_5_upvr.Eye
	tbl_6[1] = New_upvr("UIListLayout")({
		Padding = UDim.new(0, 8);
		SortOrder = Enum.SortOrder.LayoutOrder;
		HorizontalAlignment = Enum.HorizontalAlignment.Right;
		VerticalAlignment = Enum.VerticalAlignment.Bottom;
	})
	tbl_6[2] = Button_upvr(tbl)
	tbl_6[3] = Button_upvr({
		LayoutOrder = -3;
		Size = Computed_upvr_result1;
		OnClick = any_GetValues_result1_upvw.OnPoseChange;
		Icon = tbl_5_upvr.Pose;
		IconSize = 0.7;
	})
	tbl_6[4] = Button_upvr(tbl_8)
	tbl_6[5] = Button_upvr({
		LayoutOrder = -1;
		Size = Computed_upvr_result1;
		OnClick = function() -- Line 223, Named "OnClick"
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			any_GetValues_result1_upvw.OnFullScreen:get()(not any_GetValues_result1_upvw.OnFullScreen:get())
		end;
		Icon = tbl_5_upvr.Shrink;
		IconSize = 0.8;
	})
	tbl_4[Children_upvr] = tbl_6
	tbl_3[1] = New_upvr("UIPadding")({
		PaddingBottom = UDim.new(0, 8);
		PaddingLeft = UDim.new(0, 8);
		PaddingRight = UDim.new(0, 8);
		PaddingTop = UDim.new(0, 8);
	})
	tbl_3[2] = New_upvr("Frame")(tbl_4)
	module[Children_upvr] = tbl_3
	return New_upvr("Frame")(module)
end