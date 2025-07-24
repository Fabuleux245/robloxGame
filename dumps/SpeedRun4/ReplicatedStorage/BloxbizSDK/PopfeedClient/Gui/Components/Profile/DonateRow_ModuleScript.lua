-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:40
-- Luau version 6, Types version 3
-- Time taken: 0.003901 seconds

local Gui = script.Parent.Parent.Parent.Parent.Gui
local Fusion_upvr = require(Gui.Parent.Parent.Utils.Fusion)
local Value_upvr = Fusion_upvr.Value
local New_upvr = Fusion_upvr.New
local Computed_upvr = Fusion_upvr.Computed
local Children_upvr = Fusion_upvr.Children
local OnChange_upvr = Fusion_upvr.OnChange
local ForValues_upvr = Fusion_upvr.ForValues
local TextButton_upvr = require(Gui.Components.TextButton)
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
return function(arg1) -- Line 21
	--[[ Upvalues[10]:
		[1]: Value_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: Children_upvr (readonly)
		[5]: OnChange_upvr (readonly)
		[6]: ForValues_upvr (readonly)
		[7]: TextButton_upvr (readonly)
		[8]: MarketplaceService_upvr (readonly)
		[9]: LocalPlayer_upvr (readonly)
		[10]: Fusion_upvr (readonly)
	]]
	local tbl = {
		donationData = arg1.donationData;
		LayoutOrder = arg1.LayoutOrder or 1;
		ZIndex = arg1.ZIndex;
		Visible = arg1.Visible or true;
	}
	local Size = arg1.Size
	if not Size then
		Size = UDim2.fromScale(1, 0.1)
	end
	tbl.Size = Size
	Size = arg1.SizeConstraint
	local var15 = Size
	if not var15 then
		var15 = Enum.SizeConstraint.RelativeXX
	end
	tbl.SizeConstraint = var15
	var15 = arg1.ScrollingFrameSize
	local var16 = var15
	if not var16 then
		var16 = UDim2.fromScale(1, 1)
	end
	tbl.ScrollingFrameSize = var16
	var16 = arg1.ScrollingFramePosition
	local var17 = var16
	if not var17 then
		var17 = UDim2.fromScale(0, 0)
	end
	tbl.ScrollingFramePosition = var17
	local var18_upvw = tbl
	local Value_upvr_result1_upvr = Value_upvr(UDim2.new())
	return New_upvr("Frame")({
		Name = "DonateRow";
		BackgroundTransparency = 1;
		SizeConstraint = var18_upvw.SizeConstraint;
		Position = var18_upvw.Position;
		Size = var18_upvw.Size;
		LayoutOrder = var18_upvw.LayoutOrder;
		ZIndex = var18_upvw.ZIndex;
		Visible = Computed_upvr(function() -- Line 43
			--[[ Upvalues[1]:
				[1]: var18_upvw (read and write)
			]]
			local any_get_result1 = var18_upvw.donationData:get()
			if any_get_result1 == nil or #any_get_result1 == 0 then
				return false
			end
			local Visible = var18_upvw.Visible
			if type(var18_upvw.Visible) ~= "boolean" then
				Visible = var18_upvw.Visible:get()
			end
			return Visible
		end);
		[Children_upvr] = New_upvr("ScrollingFrame")({
			Size = var18_upvw.ScrollingFrameSize;
			Position = var18_upvw.ScrollingFramePosition;
			CanvasSize = Computed_upvr(function() -- Line 60
				--[[ Upvalues[1]:
					[1]: Value_upvr_result1_upvr (readonly)
				]]
				return UDim2.new(0, Value_upvr_result1_upvr:get().X, 1, 0)
			end);
			ScrollBarThickness = 0;
			ScrollingDirection = Enum.ScrollingDirection.X;
			BackgroundTransparency = 1;
			ZIndex = var18_upvw.ZIndex;
			[Children_upvr] = New_upvr("Frame")({
				Name = "Container";
				BackgroundTransparency = 1;
				SizeConstraint = Enum.SizeConstraint.RelativeYY;
				Size = UDim2.fromScale(5, 1);
				ZIndex = var18_upvw.ZIndex;
				[Children_upvr] = {New_upvr("UIListLayout")({
					Padding = UDim.new(0.05, 0);
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Left;
					VerticalAlignment = Enum.VerticalAlignment.Center;
					[OnChange_upvr("AbsoluteContentSize")] = function(arg1_2) -- Line 83
						--[[ Upvalues[1]:
							[1]: Value_upvr_result1_upvr (readonly)
						]]
						Value_upvr_result1_upvr:set(arg1_2)
					end;
				}), ForValues_upvr(var18_upvw.donationData, function(arg1_3) -- Line 88
					--[[ Upvalues[6]:
						[1]: TextButton_upvr (copied, readonly)
						[2]: var18_upvw (read and write)
						[3]: MarketplaceService_upvr (copied, readonly)
						[4]: LocalPlayer_upvr (copied, readonly)
						[5]: Children_upvr (copied, readonly)
						[6]: New_upvr (copied, readonly)
					]]
					return TextButton_upvr({
						Text = tostring(arg1_3.robux);
						Name = "DonateButton-"..tostring(arg1_3.item_id);
						Color = Color3.fromRGB(24, 209, 0);
						TextColor = Color3.fromRGB(255, 255, 255);
						AnchorPoint = Vector2.new(0.5, 0.5);
						AutomaticSize = Enum.AutomaticSize.X;
						TextSize = UDim2.fromScale(0, 0.6);
						Size = UDim2.fromScale(0.5, 1);
						ZIndex = var18_upvw.ZIndex;
						Bold = true;
						OnActivated = function() -- Line 101, Named "OnActivated"
							--[[ Upvalues[3]:
								[1]: arg1_3 (readonly)
								[2]: MarketplaceService_upvr (copied, readonly)
								[3]: LocalPlayer_upvr (copied, readonly)
							]]
							if arg1_3.item_type == "gamepass" then
								MarketplaceService_upvr:PromptGamePassPurchase(LocalPlayer_upvr, arg1_3.item_id)
							else
								MarketplaceService_upvr:PromptPurchase(LocalPlayer_upvr, arg1_3.item_id)
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
							ZIndex = var18_upvw.ZIndex;
							LayoutOrder = -1;
							Size = UDim2.fromScale(0.6, 0.6);
							SizeConstraint = Enum.SizeConstraint.RelativeYY;
							Image = "rbxassetid://9764949186";
							Name = "RobuxIcon";
						})};
					})
				end, Fusion_upvr.cleanup)};
			});
		});
	})
end