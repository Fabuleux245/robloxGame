-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:41
-- Luau version 6, Types version 3
-- Time taken: 0.003072 seconds

local Gui = script.Parent.Parent.Parent.Parent.Gui
local Fusion_upvr = require(Gui.Parent.Parent.Utils.Fusion)
local New_upvr = Fusion_upvr.New
local Children_upvr = Fusion_upvr.Children
local Computed_upvr = Fusion_upvr.Computed
local Components = Gui.Components
local Value_upvr = Fusion_upvr.Value
local ForValues_upvr = Fusion_upvr.ForValues
local TextButton_upvr = require(Components.TextButton)
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local function donationTable_upvr(arg1, arg2) -- Line 20, Named "donationTable"
	--[[ Upvalues[9]:
		[1]: Value_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: Children_upvr (readonly)
		[5]: ForValues_upvr (readonly)
		[6]: TextButton_upvr (readonly)
		[7]: MarketplaceService_upvr (readonly)
		[8]: LocalPlayer_upvr (readonly)
		[9]: Fusion_upvr (readonly)
	]]
	return {New_upvr("Frame")({
		Name = "SizingFrame";
		Size = Computed_upvr(function() -- Line 26
			--[[ Upvalues[2]:
				[1]: arg2 (readonly)
				[2]: arg1 (readonly)
			]]
			local var15
			if #arg2 ~= 0 then
				var15 = false
			else
				var15 = true
			end
			if var15 and arg1.IsVertical:get() then
				return UDim2.fromScale(1.4, 0.65)
			end
			return UDim2.fromScale(1, 0.65)
		end);
		AnchorPoint = Computed_upvr(function() -- Line 34
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.IsVertical:get() then
				return Vector2.new(0.5, 0)
			end
			return Vector2.new()
		end);
		Position = Computed_upvr(function() -- Line 41
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.IsVertical:get() then
				return UDim2.fromScale(0.5, 0)
			end
			return UDim2.new()
		end);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		BackgroundTransparency = 1;
		LayoutOrder = (-math.huge);
		[Children_upvr] = {New_upvr("UIGridLayout")({
			CellSize = UDim2.fromScale(0.32, 0.26);
			CellPadding = UDim2.fromScale(0.02, 0.035);
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Top;
		}), ForValues_upvr(Value_upvr(arg2), function(arg1_2) -- Line 61
			--[[ Upvalues[5]:
				[1]: TextButton_upvr (copied, readonly)
				[2]: MarketplaceService_upvr (copied, readonly)
				[3]: LocalPlayer_upvr (copied, readonly)
				[4]: Children_upvr (copied, readonly)
				[5]: New_upvr (copied, readonly)
			]]
			return TextButton_upvr({
				Text = tostring(arg1_2.robux);
				Name = "DonateButton-"..tostring(arg1_2.item_id);
				Color = Color3.fromRGB(24, 209, 0);
				TextColor = Color3.fromRGB(255, 255, 255);
				AutomaticSize = Enum.AutomaticSize.X;
				AnchorPoint = Vector2.new(0.5, 0.5);
				TextSize = UDim2.fromScale(0, 0.3);
				ZIndex = 1;
				Bold = true;
				OnActivated = function() -- Line 73, Named "OnActivated"
					--[[ Upvalues[3]:
						[1]: arg1_2 (readonly)
						[2]: MarketplaceService_upvr (copied, readonly)
						[3]: LocalPlayer_upvr (copied, readonly)
					]]
					if arg1_2.item_type == "gamepass" then
						MarketplaceService_upvr:PromptGamePassPurchase(LocalPlayer_upvr, arg1_2.item_id)
					else
						MarketplaceService_upvr:PromptPurchase(LocalPlayer_upvr, arg1_2.item_id)
					end
				end;
				[Children_upvr] = {New_upvr("UIListLayout")({
					Padding = UDim.new(0.05, 0);
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					VerticalAlignment = Enum.VerticalAlignment.Center;
				}), New_upvr("ImageLabel")({
					BackgroundTransparency = 1;
					LayoutOrder = -1;
					Size = UDim2.fromScale(0.2, 0.2);
					SizeConstraint = Enum.SizeConstraint.RelativeXX;
					Image = "rbxassetid://9764949186";
					Name = "RobuxIcon";
				})};
			})
		end, Fusion_upvr.cleanup)};
	})}
end
local DonateEmptyState_upvr = require(Components.Profile.DonateEmptyState)
return function(arg1, arg2) -- Line 105
	--[[ Upvalues[5]:
		[1]: New_upvr (readonly)
		[2]: Children_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: DonateEmptyState_upvr (readonly)
		[5]: donationTable_upvr (readonly)
	]]
	return New_upvr("Frame")({
		Name = "DonationContainer";
		Size = UDim2.fromScale(1, 0.65);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		LayoutOrder = 2;
		[Children_upvr] = Computed_upvr(function() -- Line 113
			--[[ Upvalues[4]:
				[1]: arg2 (readonly)
				[2]: DonateEmptyState_upvr (copied, readonly)
				[3]: arg1 (readonly)
				[4]: donationTable_upvr (copied, readonly)
			]]
			if #arg2.donations == 0 then
				return DonateEmptyState_upvr(arg1)
			end
			return donationTable_upvr(arg1, arg2.donations)
		end);
	})
end