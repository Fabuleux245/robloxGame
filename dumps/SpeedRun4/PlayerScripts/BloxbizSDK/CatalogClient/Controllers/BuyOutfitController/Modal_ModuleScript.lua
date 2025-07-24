-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:00
-- Luau version 6, Types version 3
-- Time taken: 0.005074 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Utils = Parent:FindFirstChild("Utils")
local module = require(Utils:WaitForChild("Fusion"))
local module_3_upvr = require(Utils:WaitForChild("FusionProps"))
local Children_upvr = module.Children
local Computed_upvr = module.Computed
local Value_upvr = module.Value
local TextService_upvr = game:GetService("TextService")
local var2_2_upvr = require(Utils)
local New_upvr = module.New
local ScaledText_upvr = require(Parent:WaitForChild("CatalogClient").Components.ScaledText)
local OnEvent_upvr = module.OnEvent
return function(arg1) -- Line 23
	--[[ Upvalues[9]:
		[1]: module_3_upvr (readonly)
		[2]: Children_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: Value_upvr (readonly)
		[5]: TextService_upvr (readonly)
		[6]: var2_2_upvr (readonly)
		[7]: New_upvr (readonly)
		[8]: ScaledText_upvr (readonly)
		[9]: OnEvent_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_3_upvr.GetValues(arg1, {
		Parent = module_3_upvr.Nil;
		SizeStandard = 0;
		Visible = false;
		RemainingPrice = 0;
		TotalPrice = 0;
		RemainingItems = 0;
		TotalItems = 0;
		OnClose = module_3_upvr.Callback;
		[Children_upvr] = module_3_upvr.Nil;
	})
	local SizeStandard_upvr = any_GetValues_result1_upvw.SizeStandard
	local var7_result1_upvr_2 = Computed_upvr(function() -- Line 39
		--[[ Upvalues[1]:
			[1]: SizeStandard_upvr (readonly)
		]]
		return SizeStandard_upvr:get() / 1.5
	end)
	local var7_result1 = Computed_upvr(function() -- Line 42
		--[[ Upvalues[1]:
			[1]: var7_result1_upvr_2 (readonly)
		]]
		return UDim.new(0, var7_result1_upvr_2:get())
	end)
	local var7_result1_upvr_3 = Computed_upvr(function() -- Line 48
		--[[ Upvalues[1]:
			[1]: SizeStandard_upvr (readonly)
		]]
		return SizeStandard_upvr:get() * 0.6
	end)
	local function _(arg1_2) -- Line 52, Named "getTextWidth"
		--[[ Upvalues[2]:
			[1]: TextService_upvr (copied, readonly)
			[2]: var7_result1_upvr_3 (readonly)
		]]
		return TextService_upvr:GetTextSize(arg1_2, var7_result1_upvr_3:get(), Enum.Font.GothamMedium, Vector2.new(math.huge, math.huge)).X
	end
	local var7_result1_upvr_4 = Computed_upvr(function() -- Line 56
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		local any_get_result1 = any_GetValues_result1_upvw.RemainingItems:get()
		local var25
		if any_get_result1 == 1 then
			var25 = ""
		else
			var25 = 's'
		end
		return string.format("%s Item%s Remaining (", any_get_result1, var25)
	end)
	local var7_result1_2_upvr = Computed_upvr(function() -- Line 64
		--[[ Upvalues[2]:
			[1]: var2_2_upvr (copied, readonly)
			[2]: any_GetValues_result1_upvw (read and write)
		]]
		return string.format("%s)", var2_2_upvr.toLocaleNumber(any_GetValues_result1_upvw.RemainingPrice:get()))
	end)
	local module_2 = {
		Name = "BuyOutfitModal";
		Parent = any_GetValues_result1_upvw.Parent;
		Position = UDim2.fromOffset(0, -36);
		Size = UDim2.new(1, 0, 1, 36);
		BackgroundTransparency = 0.5;
		BackgroundColor3 = Color3.new(0, 0, 0);
		Visible = any_GetValues_result1_upvw.Visible;
		ZIndex = 1000;
	}
	local tbl_9 = {}
	local tbl_6 = {
		Name = "Container";
		AnchorPoint = Vector2.new(0.5, 0.5);
		Size = UDim2.fromScale(0.9, 0.8);
		Position = UDim2.fromScale(0.5, 0.5);
		BackgroundColor3 = Color3.new(0, 0, 0);
	}
	local tbl_3 = {}
	local tbl_7 = {
		Name = "Header";
		BackgroundTransparency = 1;
		Size = Computed_upvr(function() -- Line 117
			--[[ Upvalues[1]:
				[1]: SizeStandard_upvr (readonly)
			]]
			return UDim2.new(1, 0, 0, SizeStandard_upvr:get() * 1)
		end);
	}
	local tbl_5 = {}
	local tbl_4 = {
		BackgroundTransparency = 1;
		AnchorPoint = Vector2.new(1, 0);
		Position = UDim2.fromScale(1, 0);
		Size = UDim2.fromScale(0.5, 1);
	}
	local tbl_8 = {}
	local tbl_2 = {
		LayoutOrder = -5;
		BackgroundTransparency = 1;
	}
	local var7_result1_upvr = Computed_upvr(function() -- Line 60
		--[[ Upvalues[3]:
			[1]: var7_result1_upvr_4 (readonly)
			[2]: TextService_upvr (copied, readonly)
			[3]: var7_result1_upvr_3 (readonly)
		]]
		return TextService_upvr:GetTextSize(var7_result1_upvr_4:get(), var7_result1_upvr_3:get(), Enum.Font.GothamMedium, Vector2.new(math.huge, math.huge)).X
	end)
	tbl_2.Size = Computed_upvr(function() -- Line 148
		--[[ Upvalues[1]:
			[1]: var7_result1_upvr (readonly)
		]]
		return UDim2.new(0, var7_result1_upvr:get(), 1, 0)
	end)
	tbl_2.Text = var7_result1_upvr_4
	tbl_2.TextSize = var7_result1_upvr_3
	tbl_2.TextColor3 = Color3.new(1, 1, 1)
	tbl_2.TextXAlignment = Enum.TextXAlignment.Right
	local tbl = {
		LayoutOrder = -3;
		BackgroundTransparency = 1;
	}
	local Computed_upvr_result1_upvr = Computed_upvr(function() -- Line 67
		--[[ Upvalues[3]:
			[1]: var7_result1_2_upvr (readonly)
			[2]: TextService_upvr (copied, readonly)
			[3]: var7_result1_upvr_3 (readonly)
		]]
		return TextService_upvr:GetTextSize(var7_result1_2_upvr:get(), var7_result1_upvr_3:get(), Enum.Font.GothamMedium, Vector2.new(math.huge, math.huge)).X
	end)
	tbl.Size = Computed_upvr(function() -- Line 173
		--[[ Upvalues[1]:
			[1]: Computed_upvr_result1_upvr (readonly)
		]]
		return UDim2.new(0, Computed_upvr_result1_upvr:get(), 1, 0)
	end)
	tbl.Text = var7_result1_2_upvr
	tbl.TextSize = var7_result1_upvr_3
	tbl.TextColor3 = Color3.new(1, 1, 1)
	tbl_8[1] = New_upvr("UIListLayout")({
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		HorizontalAlignment = Enum.HorizontalAlignment.Right;
	})
	tbl_8[2] = New_upvr("TextLabel")(tbl_2)
	tbl_8[3] = New_upvr("ImageLabel")({
		LayoutOrder = -4;
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(0.66, 0.66);
		Image = "rbxassetid://15245041780";
		[Children_upvr] = New_upvr("UIAspectRatioConstraint")({
			AspectRatio = 1;
			DominantAxis = Enum.DominantAxis.Height;
		});
	})
	tbl_8[4] = New_upvr("TextLabel")(tbl)
	tbl_8[5] = New_upvr("TextButton")({
		Name = "Spacer";
		BackgroundTransparency = 1;
		LayoutOrder = -2;
		Size = Computed_upvr(function() -- Line 186
			--[[ Upvalues[1]:
				[1]: var7_result1_upvr_2 (readonly)
			]]
			return UDim2.fromOffset(var7_result1_upvr_2:get() * 0.9, 0)
		end);
	})
	tbl_8[6] = New_upvr("TextButton")({
		BackgroundTransparency = 1;
		Text = "";
		Size = UDim2.fromScale(1, 1);
		LayoutOrder = -1;
		[OnEvent_upvr("Activated")] = function() -- Line 198
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			any_GetValues_result1_upvw.OnClose:get()()
		end;
		[Children_upvr] = {New_upvr("UIAspectRatioConstraint")({
			AspectRatio = 1;
		}), New_upvr("ImageLabel")({
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromScale(0.7, 0.7);
			BackgroundTransparency = 1;
			Image = "rbxassetid://14542644751";
		})};
	})
	tbl_4[Children_upvr] = tbl_8
	tbl_5[1] = ScaledText_upvr({
		AnchorPoint = Vector2.new(0, 0.5);
		Position = UDim2.fromScale(0, 0.5);
		Size = UDim2.fromScale(0.5, 0.8);
		TextColor3 = Color3.new(1, 1, 1);
		Text = "Buy Outfit";
		TextXAlignment = Enum.TextXAlignment.Left;
	})
	tbl_5[2] = New_upvr("Frame")(tbl_4)
	tbl_7[Children_upvr] = tbl_5
	tbl_3[1] = New_upvr("UISizeConstraint")({
		MaxSize = workspace.Camera.ViewportSize * 0.8;
	})
	tbl_3[2] = New_upvr("UIAspectRatioConstraint")({
		AspectRatio = 1.7;
		DominantAxis = Enum.DominantAxis.Height;
	})
	tbl_3[3] = New_upvr("UIPadding")({
		PaddingLeft = var7_result1;
		PaddingRight = var7_result1;
		PaddingTop = Computed_upvr(function() -- Line 100
			--[[ Upvalues[1]:
				[1]: var7_result1_upvr_2 (readonly)
			]]
			return UDim.new(0, var7_result1_upvr_2:get() * 0.75)
		end);
		PaddingBottom = var7_result1;
	})
	tbl_3[4] = New_upvr("UICorner")({
		CornerRadius = Computed_upvr(function() -- Line 106
			--[[ Upvalues[1]:
				[1]: var7_result1_upvr_2 (readonly)
			]]
			return UDim.new(0, var7_result1_upvr_2:get() / 2)
		end);
	})
	tbl_3[5] = New_upvr("UIStroke")({
		Color = Color3.fromRGB(79, 84, 95);
		Thickness = 1.5;
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	})
	tbl_3[6] = New_upvr("Frame")(tbl_7)
	tbl_3[7] = New_upvr("Frame")({
		Name = "Content";
		BackgroundTransparency = 1;
		Size = Computed_upvr(function() -- Line 222
			--[[ Upvalues[2]:
				[1]: SizeStandard_upvr (readonly)
				[2]: var7_result1_upvr_2 (readonly)
			]]
			return UDim2.new(1, 0, 1, -SizeStandard_upvr:get() - var7_result1_upvr_2:get() * 0.5)
		end);
		AnchorPoint = Vector2.new(0, 1);
		Position = UDim2.fromScale(0, 1);
		[Children_upvr] = any_GetValues_result1_upvw[Children_upvr];
	})
	tbl_6[Children_upvr] = tbl_3
	tbl_9[1] = New_upvr("Frame")(tbl_6)
	module_2[Children_upvr] = tbl_9
	return New_upvr("TextButton")(module_2)
end