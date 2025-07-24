-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:19
-- Luau version 6, Types version 3
-- Time taken: 0.008720 seconds

local Parent = script.Parent.Parent.Parent
local Utils = Parent:FindFirstChild("Utils")
local module_upvr = require(Utils:WaitForChild("FusionProps"))
local module_upvr_2 = require(Utils:WaitForChild("Fusion"))
local module_5_upvr = require(Parent:FindFirstChild("CatalogClient").Classes:WaitForChild("AvatarHandler"))
local New_upvr = module_upvr_2.New
local Value_upvr = module_upvr_2.Value
local Computed_upvr = module_upvr_2.Computed
local Children_upvr = module_upvr_2.Children
local Button_upvr = require(script.InteractionFrame.Button)
local InteractionFrame_upvr = require(script.InteractionFrame)
local function GetInteractionFrame_upvr(arg1, arg2) -- Line 24, Named "GetInteractionFrame"
	--[[ Upvalues[5]:
		[1]: Value_upvr (readonly)
		[2]: Computed_upvr (readonly)
		[3]: Button_upvr (readonly)
		[4]: module_upvr_2 (readonly)
		[5]: InteractionFrame_upvr (readonly)
	]]
	local var13_upvw
	if type(arg2) ~= "table" then
		var13_upvw = Value_upvr(var13_upvw)
	end
	local udim2_upvr = UDim2.new(0.9, 0, 0.18, 0)
	local module = {
		Selected = arg1.Selected;
	}
	local var9_result1_upvr = Computed_upvr(function() -- Line 34
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Button_upvr (copied, readonly)
			[3]: var13_upvw (read and write)
			[4]: udim2_upvr (readonly)
		]]
		if arg1.OnTry:get() then
			local module_2 = {
				Text = "Try On";
			}
			local function OnClick() -- Line 38
				--[[ Upvalues[2]:
					[1]: arg1 (copied, readonly)
					[2]: var13_upvw (copied, read and write)
				]]
				arg1.OnTry:get()(var13_upvw:get():GetAppliedDescription())
			end
			module_2.OnClick = OnClick
			module_2.Size = udim2_upvr
			return Button_upvr(module_2)
		end
	end, module_upvr_2.cleanup)
	local Computed_upvr_result1_upvr = Computed_upvr(function() -- Line 46
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Button_upvr (copied, readonly)
			[3]: var13_upvw (read and write)
			[4]: udim2_upvr (readonly)
		]]
		if arg1.OnSaveToRoblox:get() then
			return Button_upvr({
				Text = "Save To Roblox";
				OnClick = function() -- Line 50, Named "OnClick"
					--[[ Upvalues[2]:
						[1]: arg1 (copied, readonly)
						[2]: var13_upvw (copied, read and write)
					]]
					arg1.OnSaveToRoblox:get()(var13_upvw:get())
				end;
				Size = udim2_upvr;
			})
		end
	end, module_upvr_2.cleanup)
	local var9_result1_upvr_3 = Computed_upvr(function() -- Line 57
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Button_upvr (copied, readonly)
			[3]: udim2_upvr (readonly)
		]]
		if arg1.OnDelete:get() then
			return Button_upvr({
				Text = "Delete";
				TextColor = Color3.new(1, 0, 0);
				OnClick = arg1.OnDelete;
				Size = udim2_upvr;
			})
		end
	end, module_upvr_2.cleanup)
	module.Items = Computed_upvr(function() -- Line 71
		--[[ Upvalues[3]:
			[1]: var9_result1_upvr (readonly)
			[2]: Computed_upvr_result1_upvr (readonly)
			[3]: var9_result1_upvr_3 (readonly)
		]]
		return {var9_result1_upvr:get(), Computed_upvr_result1_upvr:get(), var9_result1_upvr_3:get()}
	end)
	return InteractionFrame_upvr(module)
end
local tbl_3_upvr = {
	Color = {
		Default = Color3.fromRGB(79, 84, 95);
		Hover = Color3.fromRGB(107, 114, 129);
		MouseDown = Color3.fromRGB(76, 80, 90);
	};
	PreviewFormat = "rbxthumb://type=%s&id=%s&w=150&h=150";
	Font = Font.new("rbxasset://fonts/families/GothamSSm.json");
}
local function OutfitPrice_upvr(arg1) -- Line 93, Named "OutfitPrice"
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Children_upvr (readonly)
		[4]: Computed_upvr (readonly)
		[5]: tbl_3_upvr (readonly)
	]]
	local module_4 = {
		Name = "ItemPrice";
		AnchorPoint = Vector2.new(0.5, 1);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.959);
		Size = UDim2.fromScale(0.9, 0.07);
	}
	local tbl_2 = {}
	local tbl_5 = {
		Name = "Amount";
	}
	local any_GetValues_result1_upvw = module_upvr.GetValues(arg1, {
		Price = 0;
	})
	tbl_5.Text = Computed_upvr(function() -- Line 109
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		return tostring(any_GetValues_result1_upvw.Price:get())
	end)
	tbl_5.FontFace = tbl_3_upvr.Font
	tbl_5.TextColor3 = Color3.fromRGB(255, 255, 255)
	tbl_5.TextScaled = true
	tbl_5.TextSize = 14
	tbl_5.TextWrapped = true
	tbl_5.TextXAlignment = Enum.TextXAlignment.Left
	tbl_5.AnchorPoint = Vector2.new(1, 0.5)
	tbl_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	tbl_5.BackgroundTransparency = 1
	tbl_5.Position = UDim2.fromScale(1, 0.5)
	tbl_5.Size = UDim2.fromScale(0.85, 1)
	tbl_2[1] = New_upvr("TextLabel")(tbl_5)
	tbl_2[2] = New_upvr("ImageLabel")({
		Name = "Icon";
		Image = "rbxassetid://9764949186";
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
	})
	module_4[Children_upvr] = tbl_2
	return New_upvr("Frame")(module_4)
end
local function TotalItems_upvr(arg1) -- Line 137, Named "TotalItems"
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Computed_upvr (readonly)
	]]
	local module_3 = {
		Name = "ItemCount";
	}
	local any_GetValues_result1_upvr = module_upvr.GetValues(arg1, {
		Total = 0;
	})
	module_3.Text = Computed_upvr(function() -- Line 144
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvr (readonly)
		]]
		return string.format("%s items", any_GetValues_result1_upvr.Total:get())
	end)
	module_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	module_3.TextScaled = true
	module_3.TextSize = 14
	module_3.TextWrapped = true
	module_3.TextXAlignment = Enum.TextXAlignment.Left
	module_3.AnchorPoint = Vector2.new(0.5, 1)
	module_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	module_3.BackgroundTransparency = 1
	module_3.Position = UDim2.fromScale(0.5, 0.875)
	module_3.Size = UDim2.fromScale(0.9, 0.07)
	return New_upvr("TextLabel")(module_3)
end
local function _(arg1) -- Line 160, Named "GetAvatar"
	--[[ Upvalues[1]:
		[1]: module_5_upvr (readonly)
	]]
	local any_GetModel_result1_2 = module_5_upvr.GetModel(Instance.new("HumanoidDescription"))
	module_5_upvr.RenderInViewport(any_GetModel_result1_2, arg1, true, false)
	return any_GetModel_result1_2, any_GetModel_result1_2:WaitForChild("Humanoid")
end
local Ref_upvr = module_upvr_2.Ref
local function GetViewport_upvr() -- Line 168, Named "GetViewport"
	--[[ Upvalues[4]:
		[1]: Value_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Children_upvr (readonly)
		[4]: Ref_upvr (readonly)
	]]
	local var8_result1 = Value_upvr()
	return New_upvr("ViewportFrame")({
		Name = "ViewportFrame";
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(79, 84, 95);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.4);
		Size = UDim2.fromScale(0.9, 0.9);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		[Children_upvr] = {New_upvr("WorldModel")({
			Name = "WorldModel";
			[Ref_upvr] = var8_result1;
		})};
	}), var8_result1:get()
end
local Players_upvr = game:GetService("Players")
local OnEvent_upvr = module_upvr_2.OnEvent
return function(arg1) -- Line 191
	--[[ Upvalues[13]:
		[1]: module_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: GetViewport_upvr (readonly)
		[4]: module_5_upvr (readonly)
		[5]: Players_upvr (readonly)
		[6]: module_upvr_2 (readonly)
		[7]: Computed_upvr (readonly)
		[8]: New_upvr (readonly)
		[9]: Children_upvr (readonly)
		[10]: GetInteractionFrame_upvr (readonly)
		[11]: OutfitPrice_upvr (readonly)
		[12]: TotalItems_upvr (readonly)
		[13]: OnEvent_upvr (readonly)
	]]
	local any_GetValues_result1_upvw_2 = module_upvr.GetValues(arg1, {
		Outfit = module_upvr.Required;
		IsRoblox = false;
		Visible = true;
		OnTry = module_upvr.Nil;
		OnDelete = module_upvr.Nil;
		OnActivated = module_upvr.Nil;
		OnSaveToRoblox = module_upvr.Nil;
		Selected = false;
		Size = UDim2.fromOffset(100, 100);
		Position = UDim2.fromScale(0, 0);
	})
	local var8_result1_upvr = Value_upvr(false)
	local var8_result1_2_upvr = Value_upvr(false)
	local var8_result1_upvr_2 = Value_upvr()
	local GetViewport_result1_upvr, GetViewport_upvr_result2_upvr = GetViewport_upvr()
	local tbl_4_upvr = {}
	local var9_result1_upvr_2 = Computed_upvr(function() -- Line 234
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw_2 (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var72
		for i, v in any_GetValues_result1_upvw_2.Outfit:get() do
			if i ~= "BodyColors" then
				var72 += 1
			end
		end
		return {var72, 0 + (v.Price or 0)}
	end)
	local tbl = {
		Name = "Outfit";
		BackgroundColor3 = Color3.fromRGB(79, 84, 95);
		Size = any_GetValues_result1_upvw_2.Size;
		Position = any_GetValues_result1_upvw_2.Position;
		Visible = any_GetValues_result1_upvw_2.Visible;
	}
	local task_spawn_result1_upvr = task.spawn(function() -- Line 216
		--[[ Upvalues[8]:
			[1]: GetViewport_result1_upvr (readonly)
			[2]: module_5_upvr (copied, readonly)
			[3]: GetViewport_upvr_result2_upvr (readonly)
			[4]: var8_result1_upvr_2 (readonly)
			[5]: any_GetValues_result1_upvw_2 (read and write)
			[6]: Players_upvr (copied, readonly)
			[7]: tbl_4_upvr (readonly)
			[8]: module_upvr_2 (copied, readonly)
		]]
		local any_GetModel_result1 = module_5_upvr.GetModel(Instance.new("HumanoidDescription"))
		module_5_upvr.RenderInViewport(any_GetModel_result1, GetViewport_result1_upvr, true, false)
		local Humanoid_upvr = any_GetModel_result1:WaitForChild("Humanoid")
		any_GetModel_result1.Parent = GetViewport_upvr_result2_upvr
		var8_result1_upvr_2:set(Humanoid_upvr)
		if not GetViewport_result1_upvr.Parent then
			GetViewport_result1_upvr.Parent = Players_upvr.LocalPlayer.PlayerGui
		end
		module_5_upvr:TryOutfit(Humanoid_upvr, any_GetValues_result1_upvw_2.Outfit:get(), true)
		table.insert(tbl_4_upvr, module_upvr_2.Observer(any_GetValues_result1_upvw_2.Outfit):onChange(function() -- Line 222, Named "applyOutfit"
			--[[ Upvalues[3]:
				[1]: module_5_upvr (copied, readonly)
				[2]: Humanoid_upvr (readonly)
				[3]: any_GetValues_result1_upvw_2 (copied, read and write)
			]]
			module_5_upvr:TryOutfit(Humanoid_upvr, any_GetValues_result1_upvw_2.Outfit:get(), true)
		end))
	end)
	tbl[module_upvr_2.Cleanup] = function() -- Line 263
		--[[ Upvalues[1]:
			[1]: task_spawn_result1_upvr (readonly)
		]]
		task.cancel(task_spawn_result1_upvr)
	end
	tbl[Children_upvr] = {GetViewport_result1_upvr, GetInteractionFrame_upvr(any_GetValues_result1_upvw_2, var8_result1_upvr_2), New_upvr("UICorner")({
		Name = "UICorner";
		CornerRadius = UDim.new(0.05, 0);
	}), OutfitPrice_upvr({
		Price = Computed_upvr(function() -- Line 252
			--[[ Upvalues[1]:
				[1]: var9_result1_upvr_2 (readonly)
			]]
			return var9_result1_upvr_2:get()[2]
		end);
	}), TotalItems_upvr({
		Total = Computed_upvr(function() -- Line 249
			--[[ Upvalues[1]:
				[1]: var9_result1_upvr_2 (readonly)
			]]
			return var9_result1_upvr_2:get()[1]
		end);
	}), Computed_upvr(function() -- Line 279
		--[[ Upvalues[3]:
			[1]: any_GetValues_result1_upvw_2 (read and write)
			[2]: New_upvr (copied, readonly)
			[3]: Children_upvr (copied, readonly)
		]]
		if any_GetValues_result1_upvw_2.IsRoblox:get() then
			return New_upvr("ImageLabel")({
				Position = UDim2.fromScale(0.05, 0.05);
				Size = UDim2.fromScale(0.12, 1);
				Image = "rbxassetid://14914253209";
				BackgroundTransparency = 1;
				[Children_upvr] = {New_upvr("UIAspectRatioConstraint")({
					AspectRatio = 1;
					DominantAxis = Enum.DominantAxis.Width;
				})};
			})
		end
	end, module_upvr_2.cleanup), New_upvr("TextButton")({
		Name = "Button";
		Text = "";
		TextColor3 = Color3.fromRGB(0, 0, 0);
		TextSize = 14;
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
		[OnEvent_upvr("MouseButton1Down")] = function() -- Line 308
			--[[ Upvalues[1]:
				[1]: var8_result1_2_upvr (readonly)
			]]
			var8_result1_2_upvr:set(true)
		end;
		[OnEvent_upvr("MouseButton1Up")] = function() -- Line 312
			--[[ Upvalues[1]:
				[1]: var8_result1_2_upvr (readonly)
			]]
			var8_result1_2_upvr:set(false)
		end;
		[OnEvent_upvr("MouseEnter")] = function() -- Line 316
			--[[ Upvalues[1]:
				[1]: var8_result1_upvr (readonly)
			]]
			var8_result1_upvr:set(true)
		end;
		[OnEvent_upvr("MouseLeave")] = function() -- Line 320
			--[[ Upvalues[2]:
				[1]: var8_result1_upvr (readonly)
				[2]: var8_result1_2_upvr (readonly)
			]]
			var8_result1_upvr:set(false)
			var8_result1_2_upvr:set(false)
		end;
		[OnEvent_upvr("Activated")] = function() -- Line 325
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw_2 (read and write)
			]]
			local any_get_result1 = any_GetValues_result1_upvw_2.OnActivated:get()
			if any_get_result1 then
				any_get_result1()
			end
		end;
	})}
	return {
		Instance = New_upvr("Frame")(tbl);
		Humanoid = var8_result1_upvr_2;
	}
end