-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:48
-- Luau version 6, Types version 3
-- Time taken: 0.005373 seconds

local Parent = script.Parent.Parent
local Fusion = require(Parent.Parent.Parent.Utils.Fusion)
local Font_fromEnum_result1_upvr = Font.fromEnum(Enum.Font.Arial)
Font_fromEnum_result1_upvr.Bold = true
local New_upvr = Fusion.New
local OnEvent_upvr = Fusion.OnEvent
local Children_upvr = Fusion.Children
local ActionButton_upvr = require(Parent.Components.ActionButton)
local Font_fromEnum_result1_upvr_2 = Font.fromEnum(Enum.Font.Arial)
return function(arg1, arg2, arg3) -- Line 16
	--[[ Upvalues[6]:
		[1]: New_upvr (readonly)
		[2]: OnEvent_upvr (readonly)
		[3]: Children_upvr (readonly)
		[4]: ActionButton_upvr (readonly)
		[5]: Font_fromEnum_result1_upvr (readonly)
		[6]: Font_fromEnum_result1_upvr_2 (readonly)
	]]
	local var10 = arg1.cachedUserInfos[arg3.UserId]
	return {New_upvr("TextButton")({
		Name = "LeaderboardEntry";
		Size = UDim2.fromScale(1, 0.2);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		BackgroundTransparency = 1;
		AutoButtonColor = false;
		[OnEvent_upvr("Activated")] = function() -- Line 27
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg3 (readonly)
			]]
			arg1.OnSwitchFeedClicked(arg1.initialProfileFeed, arg3.UserId)
		end;
		[Children_upvr] = {New_upvr("Frame")({
			Name = "Container";
			Size = UDim2.fromScale(1, 1);
			BackgroundColor3 = Color3.fromRGB(63, 63, 63);
			[Children_upvr] = {ActionButton_upvr({
				Name = "Amount";
				Icon = arg3.Icon;
				Text = arg3.Text;
				IconSize = UDim2.fromScale(0.75, 0.75);
				Size = UDim2.fromScale(0, 0.35);
				Position = UDim2.fromScale(0.97, 0.5);
				AnchorPoint = Vector2.new(1, 0.5);
				MiddleOffset = 0.15;
				Padding = 0.015;
				Font = Font_fromEnum_result1_upvr;
			}), New_upvr("TextLabel")({
				Name = "Number";
				Text = '#'..arg2;
				Size = UDim2.fromScale(0.05, 0.275);
				Position = UDim2.fromScale(0.03, 0.5);
				AnchorPoint = Vector2.new(0, 0.5);
				TextColor3 = Color3.fromRGB(255, 255, 255);
				TextXAlignment = Enum.TextXAlignment.Center;
				BackgroundTransparency = 1;
				TextScaled = true;
				FontFace = Font_fromEnum_result1_upvr;
			}), New_upvr("Frame")({
				Name = "Info";
				Size = UDim2.fromScale(0, 0.125);
				Position = UDim2.fromScale(0.11, 0.5);
				AnchorPoint = Vector2.new(0, 0.5);
				AutomaticSize = Enum.AutomaticSize.X;
				SizeConstraint = Enum.SizeConstraint.RelativeXX;
				BackgroundTransparency = 1;
				[Children_upvr] = {New_upvr("Frame")({
					Name = "Container";
					Size = UDim2.fromScale(0, 1);
					AutomaticSize = Enum.AutomaticSize.X;
					BackgroundTransparency = 1;
					[Children_upvr] = {New_upvr("UIListLayout")({
						SortOrder = Enum.SortOrder.LayoutOrder;
						FillDirection = Enum.FillDirection.Horizontal;
						VerticalAlignment = Enum.VerticalAlignment.Center;
					}), New_upvr("ImageLabel")({
						Name = "ProfilePicture";
						Size = UDim2.fromScale(0.875, 0.875);
						SizeConstraint = Enum.SizeConstraint.RelativeYY;
						Image = arg1.GetUserProfilePicture(arg3.UserId);
						BackgroundTransparency = 1;
						ZIndex = 2;
						LayoutOrder = 1;
						[Children_upvr] = {New_upvr("UICorner")({
							CornerRadius = UDim.new(1, 0);
						}), New_upvr("Frame")({
							Name = "Background";
							Position = UDim2.new(0, 0, 0, -1);
							Size = UDim2.fromScale(1, 1);
							ZIndex = 1;
							[Children_upvr] = New_upvr("UICorner")({
								CornerRadius = UDim.new(1, 0);
							});
						})};
					}), New_upvr("Frame")({
						Name = "BlankSpace";
						Size = UDim2.fromScale(0.04, 0);
						BackgroundTransparency = 1;
						LayoutOrder = 2;
					}), New_upvr("Frame")({
						Name = "Names";
						Size = UDim2.fromScale(0.5, 0.75);
						BackgroundTransparency = 1;
						LayoutOrder = 3;
						[Children_upvr] = {New_upvr("UIListLayout")({
							Padding = UDim.new(0.04, 0);
							SortOrder = Enum.SortOrder.LayoutOrder;
							FillDirection = Enum.FillDirection.Vertical;
							VerticalAlignment = Enum.VerticalAlignment.Center;
						}), New_upvr("TextLabel")({
							Name = "DisplayName";
							Text = var10.DisplayName;
							Size = UDim2.fromScale(0, 0.5);
							TextColor3 = Color3.fromRGB(255, 255, 255);
							TextXAlignment = Enum.TextXAlignment.Left;
							BackgroundTransparency = 1;
							LayoutOrder = 1;
							TextScaled = true;
							FontFace = Font_fromEnum_result1_upvr;
							AutomaticSize = Enum.AutomaticSize.X;
						}), New_upvr("TextLabel")({
							Name = "Username";
							Text = '@'..var10.Username;
							Size = UDim2.fromScale(0, 0.5);
							TextColor3 = Color3.fromRGB(134, 134, 134);
							TextXAlignment = Enum.TextXAlignment.Left;
							BackgroundTransparency = 1;
							LayoutOrder = 2;
							TextScaled = true;
							FontFace = Font_fromEnum_result1_upvr_2;
							AutomaticSize = Enum.AutomaticSize.X;
						})};
					})};
				})};
			}), New_upvr("UICorner")({
				CornerRadius = UDim.new(0.1, 0);
			})};
		})};
	})}
end