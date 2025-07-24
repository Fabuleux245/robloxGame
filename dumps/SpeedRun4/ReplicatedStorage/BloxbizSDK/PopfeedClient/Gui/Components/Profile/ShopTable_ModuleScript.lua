-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:41
-- Luau version 6, Types version 3
-- Time taken: 0.002202 seconds

local Gui = script.Parent.Parent.Parent.Parent.Gui
local Fusion_upvr = require(Gui.Parent.Parent.Utils.Fusion)
local New_upvr = Fusion_upvr.New
local Children_upvr = Fusion_upvr.Children
local ForValues_upvr = Fusion_upvr.ForValues
local OnEvent_upvr = Fusion_upvr.OnEvent
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local ActionButton_upvr = require(Gui.Components.ActionButton)
return function(arg1) -- Line 20
	--[[ Upvalues[8]:
		[1]: New_upvr (readonly)
		[2]: Children_upvr (readonly)
		[3]: ForValues_upvr (readonly)
		[4]: OnEvent_upvr (readonly)
		[5]: MarketplaceService_upvr (readonly)
		[6]: LocalPlayer_upvr (readonly)
		[7]: ActionButton_upvr (readonly)
		[8]: Fusion_upvr (readonly)
	]]
	return New_upvr("Frame")({
		Name = "Container";
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		LayoutOrder = 2;
		[Children_upvr] = {New_upvr("Frame")({
			Name = "Holder";
			Size = UDim2.fromScale(1, 0.756);
			AnchorPoint = Vector2.new(0.5, 0);
			Position = UDim2.fromScale(0.5, 0);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			BackgroundTransparency = 1;
			[Children_upvr] = {New_upvr("UIGridLayout")({
				CellSize = UDim2.fromScale(0.482, 0.75);
				CellPadding = UDim2.fromScale(0.035, 0.043);
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				VerticalAlignment = Enum.VerticalAlignment.Top;
			}), ForValues_upvr(arg1.CurrentProfileData:get().shop_items, function(arg1_2) -- Line 49
				--[[ Upvalues[6]:
					[1]: New_upvr (copied, readonly)
					[2]: OnEvent_upvr (copied, readonly)
					[3]: MarketplaceService_upvr (copied, readonly)
					[4]: LocalPlayer_upvr (copied, readonly)
					[5]: Children_upvr (copied, readonly)
					[6]: ActionButton_upvr (copied, readonly)
				]]
				return New_upvr("TextButton")({
					Name = arg1_2.Name;
					BackgroundColor3 = Color3.fromRGB(55, 56, 56);
					AutoButtonColor = true;
					[OnEvent_upvr("Activated")] = function() -- Line 55
						--[[ Upvalues[3]:
							[1]: MarketplaceService_upvr (copied, readonly)
							[2]: LocalPlayer_upvr (copied, readonly)
							[3]: arg1_2 (readonly)
						]]
						MarketplaceService_upvr:PromptPurchase(LocalPlayer_upvr, arg1_2.Id)
					end;
					[Children_upvr] = {New_upvr("TextLabel")({
						Text = arg1_2.Name;
						Size = UDim2.fromScale(0.875, 0.08);
						Position = UDim2.fromScale(0.065, 0.83);
						AnchorPoint = Vector2.new(0, 1);
						FontFace = Font.fromEnum(Enum.Font.Arial);
						TextColor3 = Color3.fromRGB(255, 255, 255);
						TextXAlignment = Enum.TextXAlignment.Left;
						BackgroundTransparency = 1;
						TextScaled = true;
					}), ActionButton_upvr({
						Name = "Price";
						Text = arg1_2.Price;
						Padding = 0.015;
						MiddleOffset = 0.175;
						Size = UDim2.fromScale(0, 0.125);
						Position = UDim2.fromScale(0.06, 0.96);
						AnchorPoint = Vector2.new(0, 1);
						Icon = "rbxassetid://13871293502";
						IconSize = UDim2.fromScale(0.85, 0.85);
					}), New_upvr("ImageLabel")({
						Size = UDim2.fromScale(0.7, 0.7);
						Position = UDim2.fromScale(0.5, 0.35);
						AnchorPoint = Vector2.new(0.5, 0.5);
						SizeConstraint = Enum.SizeConstraint.RelativeXX;
						Image = "rbxthumb://type=Asset&id=%s&w=420&h=420":format(arg1_2.Id);
						BackgroundTransparency = 1;
					}), New_upvr("UICorner")({
						CornerRadius = UDim.new(0, 8);
					})};
				})
			end, Fusion_upvr.cleanup)};
		})};
	})
end