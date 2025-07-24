-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:29
-- Luau version 6, Types version 3
-- Time taken: 0.009508 seconds

local Gui = script.Parent.Parent.Parent.Gui
local Fusion_upvr = require(Gui.Parent.Parent.Utils.Fusion)
local tbl_upvr = {
	like = {
		Image = "rbxassetid://12721083010";
		Postfix = "liked your post";
	};
	follow = {
		Image = "rbxassetid://12721082910";
		Postfix = "followed you";
	};
	comment = {
		Image = "rbxassetid://12721083707";
		Postfix = "replied to your post";
	};
	donation = {
		Image = "rbxassetid://9764949186";
		Postfix = "donated <b>%d Robux</b> to you";
	};
}
local New_upvr = Fusion_upvr.New
local Value_upvr = Fusion_upvr.Value
local OnEvent_upvr = Fusion_upvr.OnEvent
local Children_upvr = Fusion_upvr.Children
local ForValues_upvr = Fusion_upvr.ForValues
local Computed_upvr = Fusion_upvr.Computed
local Line_upvr = require(Gui.Components.Line)
return function(arg1) -- Line 39
	--[[ Upvalues[9]:
		[1]: tbl_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Value_upvr (readonly)
		[4]: OnEvent_upvr (readonly)
		[5]: Fusion_upvr (readonly)
		[6]: Children_upvr (readonly)
		[7]: ForValues_upvr (readonly)
		[8]: Computed_upvr (readonly)
		[9]: Line_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var20_upvr = tbl_upvr[arg1.type]
	local var21
	if not var20_upvr then
		return New_upvr("ImageButton")({
			Visible = false;
		})
	end
	local tbl = {}
	table.insert(tbl, {
		userId = 0;
		url = var20_upvr.Image;
	})
	local len = #arg1.player_ids
	local count = arg1.count
	for i = 1, math.min(len, 3) do
		local var27 = arg1.player_ids[i]
		table.insert(tbl, {
			userId = var27;
			url = arg1.FeedProps.GetUserProfilePicture(var27);
		})
		local var29
	end
	if count == 2 then
		i = " and 1 other"
	elseif 2 < count then
		i = " and "
	end
	local Font_fromEnum_result1_2 = Font.fromEnum(Enum.Font.Arial)
	local Font_fromEnum_result1 = Font.fromEnum(Enum.Font.Arial)
	Font_fromEnum_result1.Bold = true
	return New_upvr("ImageButton")({
		Name = arg1.Id or "Notification";
		Size = UDim2.fromScale(1, 0.2);
		ImageTransparency = 1;
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
		AutoLocalize = false;
		LayoutOrder = -1;
		[OnEvent_upvr("Activated")] = function() -- Line 116
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.type == "comment" or arg1.type == "like" then
				arg1.FeedProps.OnSwitchFeedClicked("replies", arg1.post_id)
			else
				arg1.FeedProps.OnSwitchFeedClicked(arg1.FeedProps.initialProfileFeed, arg1.player_ids[1])
			end
		end;
		[Children_upvr] = {New_upvr("UIListLayout")({
			Padding = UDim.new(0.01, 0);
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
		}), New_upvr("Frame")({
			Name = "BlankSpace";
			Size = UDim2.fromScale(1, 0.018);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		}), New_upvr("Frame")({
			Name = "UserDisplay";
			Size = UDim2.fromScale(1, 0.08);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			BackgroundTransparency = 1;
			LayoutOrder = 2;
			[Children_upvr] = {New_upvr("Frame")({
				Name = "Container";
				Size = UDim2.fromScale(1, 1);
				AnchorPoint = Vector2.new(0.5, 0);
				Position = UDim2.fromScale(0.5, 0);
				BackgroundTransparency = 1;
				[Children_upvr] = {New_upvr("UIListLayout")({
					Padding = UDim.new(0.02, 0);
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Horizontal;
					VerticalAlignment = Enum.VerticalAlignment.Center;
				}), ForValues_upvr(Value_upvr(var29), function(arg1_2) -- Line 69, Named "initiatePicture"
					--[[ Upvalues[6]:
						[1]: var20_upvr (readonly)
						[2]: New_upvr (copied, readonly)
						[3]: OnEvent_upvr (copied, readonly)
						[4]: Fusion_upvr (copied, readonly)
						[5]: arg1 (readonly)
						[6]: Children_upvr (copied, readonly)
					]]
					-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
					local var30
					if arg1_2.url ~= var20_upvr.Image then
						var30 = false
					else
						var30 = true
					end
					local module = {}
					if var30 then
					else
					end
					module.Name = "ProfilePicture"
					module.Size = UDim2.fromScale(1, 1)
					module.SizeConstraint = Enum.SizeConstraint.RelativeYY
					module.BackgroundTransparency = 1
					module.ZIndex = 2
					module.Image = arg1_2.url
					if not var30 or not Fusion_upvr.doNothing then
					end
					module[OnEvent_upvr("Activated")] = function() -- Line 80
						--[[ Upvalues[2]:
							[1]: arg1 (copied, readonly)
							[2]: arg1_2 (readonly)
						]]
						arg1.FeedProps.OnSwitchFeedClicked(arg1.FeedProps.initialProfileFeed, arg1_2.userId)
					end
					if not var30 or not {} then
					end
					module[Children_upvr] = {New_upvr("UICorner")({
						CornerRadius = UDim.new(1, 0);
					}), New_upvr("Frame")({
						Name = "Background";
						Position = UDim2.new(0, 0, 0, -1);
						Size = UDim2.fromScale(1, 1);
						ZIndex = 1;
						[Children_upvr] = New_upvr("UICorner")({
							CornerRadius = UDim.new(1, 0);
						});
					})}
					return New_upvr("ImageButton")(module)
				end, Fusion_upvr.cleanup)};
			})};
		}), New_upvr("Frame")({
			Name = "BlankSpace";
			Size = UDim2.fromScale(1, 0.01);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			BackgroundTransparency = 1;
			LayoutOrder = 3;
		}), New_upvr("Frame")({
			Name = "ActionUser";
			Size = UDim2.fromScale(1, 0.045);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			BackgroundTransparency = 1;
			LayoutOrder = 4;
			[Children_upvr] = {New_upvr("Frame")({
				Name = "Container";
				Size = UDim2.fromScale(0.85, 1);
				Position = UDim2.fromScale(0.095, 0);
				BackgroundTransparency = 1;
				[Children_upvr] = {New_upvr("UIListLayout")({
					Padding = UDim.new(0.008, 0);
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Horizontal;
					VerticalAlignment = Enum.VerticalAlignment.Center;
				}), New_upvr("TextButton")({
					Name = "Users";
					Text = arg1.topUserInfo.DisplayName..i..i..(count - 1).." others";
					Size = UDim2.fromScale(0, 1);
					AutomaticSize = Enum.AutomaticSize.X;
					TextScaled = true;
					FontFace = Font_fromEnum_result1;
					TextColor3 = Color3.fromRGB(255, 255, 255);
					BackgroundTransparency = 1;
					LayoutOrder = 1;
					[OnEvent_upvr("Activated")] = function() -- Line 220
					end;
				}), New_upvr("TextLabel")({
					Name = "Action";
					Text = Computed_upvr(function() -- Line 227
						--[[ Upvalues[2]:
							[1]: arg1 (readonly)
							[2]: var20_upvr (readonly)
						]]
						if arg1.type == "donation" then
							return string.format(var20_upvr.Postfix, tonumber(arg1.robux))
						end
						return var20_upvr.Postfix
					end);
					BackgroundTransparency = 1;
					Size = UDim2.fromScale(0, 1);
					TextScaled = true;
					RichText = true;
					FontFace = Font_fromEnum_result1_2;
					TextColor3 = Color3.fromRGB(255, 255, 255);
					LayoutOrder = 2;
					AutomaticSize = Enum.AutomaticSize.X;
				})};
			})};
		}), New_upvr("Frame")({
			Name = "BlankSpace";
			Size = UDim2.fromScale(1, 0.01);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			BackgroundTransparency = 1;
			LayoutOrder = 5;
		}), New_upvr("Frame")({
			Name = "Content";
			Size = UDim2.fromScale(1, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			BackgroundTransparency = 1;
			LayoutOrder = 6;
			Visible = not not arg1.post_text;
			[Children_upvr] = {New_upvr("TextLabel")({
				Name = "Message";
				Size = UDim2.fromScale(0.81, 0);
				AnchorPoint = Vector2.new(0.5, 0);
				Position = UDim2.fromScale(0.5, 0);
				BackgroundTransparency = 1;
				Text = arg1.post_text;
				TextWrapped = true;
				TextSize = workspace.CurrentCamera.ViewportSize.Y / 37;
				FontFace = Font_fromEnum_result1_2;
				TextColor3 = Color3.fromRGB(135, 132, 138);
				TextXAlignment = Enum.TextXAlignment.Left;
				TextYAlignment = Enum.TextYAlignment.Top;
				AutomaticSize = Enum.AutomaticSize.Y;
			})};
		}), New_upvr("Frame")({
			Name = "BlankSpace";
			Size = UDim2.fromScale(1, 0.025);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			BackgroundTransparency = 1;
			LayoutOrder = 7;
		}), Line_upvr({
			LayoutOrder = 8;
			Size = UDim2.fromScale(1, 0.004);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			BackgroundColor3 = Color3.fromRGB(50, 50, 50);
		})};
	})
end