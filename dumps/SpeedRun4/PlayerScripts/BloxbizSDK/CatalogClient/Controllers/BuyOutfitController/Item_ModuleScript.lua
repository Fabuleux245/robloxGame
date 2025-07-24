-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:00
-- Luau version 6, Types version 3
-- Time taken: 0.009192 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Utils = Parent:FindFirstChild("Utils")
local module_upvr = require(Utils:WaitForChild("Fusion"))
local module_upvr_2 = require(Utils:WaitForChild("FusionProps"))
local Value_upvr = module_upvr.Value
local New_upvr = module_upvr.New
local Spring_upvr = module_upvr.Spring
local Computed_upvr = module_upvr.Computed
local Children_upvr = module_upvr.Children
local OnEvent_upvr = module_upvr.OnEvent
local ScaledText_upvr = require(Parent:WaitForChild("CatalogClient").Components.ScaledText)
local Utils_2_upvr = require(Utils)
return function(arg1) -- Line 24
	--[[ Upvalues[10]:
		[1]: module_upvr_2 (readonly)
		[2]: Value_upvr (readonly)
		[3]: New_upvr (readonly)
		[4]: Spring_upvr (readonly)
		[5]: Computed_upvr (readonly)
		[6]: Children_upvr (readonly)
		[7]: OnEvent_upvr (readonly)
		[8]: ScaledText_upvr (readonly)
		[9]: Utils_2_upvr (readonly)
		[10]: module_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr_2.GetValues(arg1, {
		Parent = module_upvr_2.Nil;
		LayoutOrder = 0;
		AssetId = module_upvr_2.Required;
		IsBundle = false;
		IsPurchased = module_upvr_2.Required;
		IsForSale = module_upvr_2.Required;
		Price = module_upvr_2.Required;
		Name = "Some Asset";
		OnClick = module_upvr_2.Callback;
	})
	local var6_result1_upvr = Value_upvr(false)
	return New_upvr("CanvasGroup")({
		Parent = any_GetValues_result1_upvw.Parent;
		Name = any_GetValues_result1_upvw.Name;
		LayoutOrder = any_GetValues_result1_upvw.LayoutOrder;
		BackgroundColor3 = Color3.fromHex("373B43");
		GroupColor3 = Spring_upvr(Computed_upvr(function() -- Line 47
			--[[ Upvalues[1]:
				[1]: var6_result1_upvr (readonly)
			]]
			if var6_result1_upvr:get() then
				return Color3.new(0.85, 0.85, 0.85)
			end
			return Color3.new(1, 1, 1)
		end), 30);
		[Children_upvr] = {New_upvr("UICorner")({
			CornerRadius = UDim.new(0, 8);
		}), New_upvr("TextButton")({
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
			Active = true;
			ZIndex = 10;
			[OnEvent_upvr("MouseEnter")] = function() -- Line 65
				--[[ Upvalues[1]:
					[1]: var6_result1_upvr (readonly)
				]]
				var6_result1_upvr:set(true)
			end;
			[OnEvent_upvr("MouseLeave")] = function() -- Line 66
				--[[ Upvalues[1]:
					[1]: var6_result1_upvr (readonly)
				]]
				var6_result1_upvr:set(false)
			end;
			[OnEvent_upvr("Activated")] = function() -- Line 67
				--[[ Upvalues[1]:
					[1]: any_GetValues_result1_upvw (read and write)
				]]
				any_GetValues_result1_upvw.OnClick:get()()
			end;
			[Children_upvr] = {New_upvr("ImageLabel")({
				Size = UDim2.fromScale(1, 0.75);
				BackgroundTransparency = 1;
				Image = Computed_upvr(function() -- Line 76
					--[[ Upvalues[1]:
						[1]: any_GetValues_result1_upvw (read and write)
					]]
					local var28
					if any_GetValues_result1_upvw.IsBundle:get() then
						var28 = "BundleThumbnail"
					else
						var28 = "Asset"
					end
					return string.format("rbxthumb://type=%s&id=%s&w=150&h=150", var28, any_GetValues_result1_upvw.AssetId:get())
				end);
				ScaleType = Enum.ScaleType.Crop;
			}), New_upvr("Frame")({
				AnchorPoint = Vector2.new(0, 1);
				Position = UDim2.fromScale(0, 1);
				Size = UDim2.fromScale(1, 0.25);
				BackgroundTransparency = 1;
				[Children_upvr] = {New_upvr("UIPadding")({
					PaddingLeft = UDim.new(0.05, 0);
					PaddingRight = UDim.new(0.05, 0);
					PaddingTop = UDim.new(0.05, 0);
					PaddingBottom = UDim.new(0.1, 0);
				}), ScaledText_upvr({
					Position = UDim2.fromScale(0, 0.05);
					Size = UDim2.fromScale(0.95, 0.4);
					TextXAlignment = Enum.TextXAlignment.Left;
					Text = any_GetValues_result1_upvw.Name;
				}), New_upvr("Frame")({
					AnchorPoint = Vector2.new(0, 1);
					Position = UDim2.fromScale(0, 1);
					Size = UDim2.fromScale(1, 0.5);
					BackgroundTransparency = 1;
					[Children_upvr] = {New_upvr("UIListLayout")({
						FillDirection = Enum.FillDirection.Horizontal;
						HorizontalAlignment = Enum.HorizontalAlignment.Left;
						VerticalAlignment = Enum.VerticalAlignment.Center;
						SortOrder = Enum.SortOrder.LayoutOrder;
						Padding = UDim.new(0.02, 0);
					}), Computed_upvr(function() -- Line 119
						--[[ Upvalues[5]:
							[1]: any_GetValues_result1_upvw (read and write)
							[2]: Utils_2_upvr (copied, readonly)
							[3]: New_upvr (copied, readonly)
							[4]: Children_upvr (copied, readonly)
							[5]: ScaledText_upvr (copied, readonly)
						]]
						if not any_GetValues_result1_upvw.IsPurchased:get() and any_GetValues_result1_upvw.IsForSale:get() then
							local any_get_result1 = any_GetValues_result1_upvw.Price:get()
							if 0 < any_get_result1 then
								any_get_result1 = Utils_2_upvr.toLocaleNumber(any_get_result1)
							else
								any_get_result1 = "Free"
							end
							return {New_upvr("ImageLabel")({
								LayoutOrder = 1;
								BackgroundTransparency = 1;
								Image = "rbxassetid://15252350653";
								Size = UDim2.fromScale(0.7, 0.7);
								[Children_upvr] = New_upvr("UIAspectRatioConstraint")({
									AspectRatio = 1;
									DominantAxis = Enum.DominantAxis.Height;
								});
							}), ScaledText_upvr({
								LayoutOrder = 2;
								TextXAlignment = Enum.TextXAlignment.Left;
								Size = UDim2.fromScale(0.8, 0.7);
								Text = any_get_result1;
							})}
						end
					end, module_upvr.cleanup), Computed_upvr(function() -- Line 152
						--[[ Upvalues[4]:
							[1]: any_GetValues_result1_upvw (read and write)
							[2]: New_upvr (copied, readonly)
							[3]: Children_upvr (copied, readonly)
							[4]: ScaledText_upvr (copied, readonly)
						]]
						if any_GetValues_result1_upvw.IsPurchased:get() then
							return {New_upvr("ImageLabel")({
								LayoutOrder = 1;
								BackgroundTransparency = 1;
								Image = "rbxassetid://15252505604";
								ImageColor3 = Color3.fromHex("#22c55e");
								Size = UDim2.fromScale(0.7, 0.7);
								[Children_upvr] = New_upvr("UIAspectRatioConstraint")({
									AspectRatio = 1;
									DominantAxis = Enum.DominantAxis.Height;
								});
							}), ScaledText_upvr({
								LayoutOrder = 2;
								TextXAlignment = Enum.TextXAlignment.Left;
								Size = UDim2.fromScale(0.8, 0.7);
								Text = "Owned";
								TextColor3 = Color3.fromHex("#22c55e");
							})}
						end
					end, module_upvr.cleanup), Computed_upvr(function() -- Line 180
						--[[ Upvalues[2]:
							[1]: any_GetValues_result1_upvw (read and write)
							[2]: ScaledText_upvr (copied, readonly)
						]]
						if not any_GetValues_result1_upvw.IsForSale:get() and not any_GetValues_result1_upvw.IsPurchased:get() then
							return {ScaledText_upvr({
								LayoutOrder = 2;
								TextXAlignment = Enum.TextXAlignment.Left;
								Size = UDim2.fromScale(0.8, 0.7);
								Text = "Not For Sale";
								TextColor3 = Color3.new(0.75, 0.75, 0.75);
							})}
						end
					end, module_upvr.cleanup)};
				})};
			})};
		})};
	})
end