-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:30
-- Luau version 6, Types version 3
-- Time taken: 0.003592 seconds

local Utils = script.Parent.Parent.Parent.Parent.Parent:FindFirstChild("Utils")
local module = require(Utils:WaitForChild("Fusion"))
local tbl = {
	Default = Color3.fromRGB(20, 20, 20);
	MouseDown = Color3.fromRGB(15, 15, 15);
	Hover = Color3.fromRGB(30, 30, 30);
	Selected = Color3.fromRGB(255, 255, 255);
}
local _ = {
	Disabled = Color3.fromRGB(155, 155, 155);
	Default = Color3.fromRGB(223, 223, 223);
}
local module_2_upvr = require(Utils:WaitForChild("FusionProps"))
local Value_upvr = module.Value
local Computed_upvr = module.Computed
local TextService_upvr = game:GetService("TextService")
local New_upvr = module.New
local Out_upvr = module.Out
local Children_upvr = module.Children
return function(arg1) -- Line 41
	--[[ Upvalues[7]:
		[1]: module_2_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: TextService_upvr (readonly)
		[5]: New_upvr (readonly)
		[6]: Out_upvr (readonly)
		[7]: Children_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_2_upvr.GetValues(arg1, {
		Parent = module_2_upvr.Nil;
		AnchorPoint = Vector2.new(0, 0);
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0, 0);
		LayoutOrder = 0;
		Visible = true;
		Text = "";
		Count = module_2_upvr.Nil;
		Icon = "";
		TextColor3 = Color3.new(0.7, 0.7, 0.7);
		IconSize = 0.5;
	})
	local var8_result1_upvr = Value_upvr(Vector2.zero)
	local var9_result1_upvr_2 = Computed_upvr(function() -- Line 59
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		local var18 = any_GetValues_result1_upvw.Count:get() or 0
		if var18 < 1000 then
			return tostring(var18)
		end
		if var18 < 1000000 then
			return string.format("%sk", math.round(var18 / 100) / 10)
		end
		return string.format("%sm", math.round(var18 / 100000) / 10000)
	end)
	local var9_result1_upvr = Computed_upvr(function() -- Line 77
		--[[ Upvalues[1]:
			[1]: var8_result1_upvr (readonly)
		]]
		local any_get_result1_4 = var8_result1_upvr:get()
		if not any_get_result1_4 then
			any_get_result1_4 = Vector2.zero
		end
		return any_get_result1_4.Y / 2
	end)
	local var9_result1_upvr_3 = Computed_upvr(function() -- Line 81
		--[[ Upvalues[3]:
			[1]: TextService_upvr (copied, readonly)
			[2]: var9_result1_upvr_2 (readonly)
			[3]: var9_result1_upvr (readonly)
		]]
		return TextService_upvr:GetTextSize(var9_result1_upvr_2:get(), var9_result1_upvr:get(), Enum.Font.GothamMedium, Vector2.new(math.huge, math.huge)).X
	end)
	return New_upvr("Frame")({
		BackgroundTransparency = 1;
		Position = any_GetValues_result1_upvw.Position;
		LayoutOrder = any_GetValues_result1_upvw.LayoutOrder;
		Visible = any_GetValues_result1_upvw.Visible;
		Size = Computed_upvr(function() -- Line 90
			--[[ Upvalues[3]:
				[1]: var8_result1_upvr (readonly)
				[2]: var9_result1_upvr_3 (readonly)
				[3]: any_GetValues_result1_upvw (read and write)
			]]
			local any_get_result1_3 = var8_result1_upvr:get()
			if not any_get_result1_3 then
				any_get_result1_3 = Vector2.zero
			end
			return UDim2.new(UDim.new(0, any_get_result1_3.Y * 0.8 + var9_result1_upvr_3:get()), any_GetValues_result1_upvw.Size:get().Y)
		end);
		[Out_upvr("AbsoluteSize")] = var8_result1_upvr;
		[Children_upvr] = {New_upvr("UIListLayout")({
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = Computed_upvr(function() -- Line 104
				--[[ Upvalues[1]:
					[1]: var8_result1_upvr (readonly)
				]]
				local any_get_result1_5 = var8_result1_upvr:get()
				if not any_get_result1_5 then
					any_get_result1_5 = Vector2.zero
				end
				return UDim.new(0, any_get_result1_5.Y / 5)
			end);
		}), New_upvr("ImageLabel")({
			BackgroundTransparency = 1;
			Size = Computed_upvr(function() -- Line 111
				--[[ Upvalues[2]:
					[1]: any_GetValues_result1_upvw (read and write)
					[2]: var8_result1_upvr (readonly)
				]]
				local any_get_result1_2 = var8_result1_upvr:get()
				if not any_get_result1_2 then
					any_get_result1_2 = Vector2.zero
				end
				local any_get_result1 = var8_result1_upvr:get()
				if not any_get_result1 then
					any_get_result1 = Vector2.zero
				end
				return UDim2.fromOffset(any_GetValues_result1_upvw.IconSize:get() * any_get_result1_2.Y, any_GetValues_result1_upvw.IconSize:get() * any_get_result1.Y)
			end);
			Image = any_GetValues_result1_upvw.Icon;
			ImageColor3 = any_GetValues_result1_upvw.TextColor3;
		}), New_upvr("TextLabel")({
			LayoutOrder = 2;
			BackgroundTransparency = 1;
			Size = Computed_upvr(function() -- Line 121
				--[[ Upvalues[1]:
					[1]: var9_result1_upvr_3 (readonly)
				]]
				return UDim2.new(0, var9_result1_upvr_3:get(), 1, 0)
			end);
			TextColor3 = any_GetValues_result1_upvw.TextColor3;
			TextSize = var9_result1_upvr;
			Font = Enum.Font.GothamMedium;
			Text = var9_result1_upvr_2;
			TextXAlignment = Enum.TextXAlignment.Left;
		})};
	})
end