-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:51
-- Luau version 6, Types version 3
-- Time taken: 0.003464 seconds

local Fusion = require(script.Parent.Parent.Parent.Gui.Parent.Parent.Utils.Fusion)
local Font_fromEnum_result1_upvr = Font.fromEnum(Enum.Font.Arial)
Font_fromEnum_result1_upvr.Bold = true
local UserService_upvr = game:GetService("UserService")
local New_upvr = Fusion.New
local Children_upvr = Fusion.Children
local Font_fromEnum_result1_upvr_2 = Font.fromEnum(Enum.Font.Arial)
local OnEvent_upvr = Fusion.OnEvent
return function(arg1) -- Line 16
	--[[ Upvalues[6]:
		[1]: UserService_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Children_upvr (readonly)
		[4]: Font_fromEnum_result1_upvr (readonly)
		[5]: Font_fromEnum_result1_upvr_2 (readonly)
		[6]: OnEvent_upvr (readonly)
	]]
	local Player_upvr = arg1.Player
	local UserId = Player_upvr.UserId
	local var11 = "@Unknown"
	local var12 = "Unknown"
	local _1 = UserService_upvr:GetUserInfosByUserIdsAsync({UserId})[1]
	if _1 then
		var11 = '@'.._1.Username
		var12 = _1.DisplayNam
	end
	local FeedProps_upvr = arg1.FeedProps
	return New_upvr("BillboardGui")({
		Name = "FloatingProfile";
		Size = UDim2.fromScale(5, 1.5);
		StudsOffset = Vector3.new(0, 4, 0);
		ZIndexBehavior = Enum.ZIndexBehavior.Global;
		LightInfluence = 0;
		Active = true;
		Adornee = arg1.RootPart;
		[Children_upvr] = {New_upvr("TextButton")({
			Size = UDim2.fromScale(1, 1);
			BackgroundColor3 = Color3.fromRGB(50, 50, 50);
			BackgroundTransparency = 0.2;
			[Children_upvr] = {New_upvr("UIListLayout")({
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			}), New_upvr("Frame")({
				Name = "BlankSpace";
				Size = UDim2.fromScale(0.05, 0);
				BackgroundTransparency = 1;
			}), New_upvr("ImageLabel")({
				Name = "ProfilePicture";
				Size = UDim2.fromScale(0.65, 0.65);
				SizeConstraint = Enum.SizeConstraint.RelativeYY;
				Image = FeedProps_upvr.GetUserProfilePicture(UserId);
				BackgroundTransparency = 1;
				ZIndex = 2;
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
				Size = UDim2.fromScale(0.08, 0);
				BackgroundTransparency = 1;
			}), New_upvr("Frame")({
				Name = "Names";
				Size = UDim2.fromScale(0.59, 0.65);
				BackgroundTransparency = 1;
				[Children_upvr] = {New_upvr("UIListLayout")({
					Padding = UDim.new(0.04, 0);
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Vertical;
					VerticalAlignment = Enum.VerticalAlignment.Center;
				}), New_upvr("TextLabel")({
					Name = "DisplayName";
					Text = var12;
					Size = UDim2.fromScale(1, 0.5);
					TextColor3 = Color3.fromRGB(255, 255, 255);
					TextXAlignment = Enum.TextXAlignment.Left;
					BackgroundTransparency = 1;
					LayoutOrder = 1;
					TextScaled = true;
					FontFace = Font_fromEnum_result1_upvr;
				}), New_upvr("TextLabel")({
					Name = "Username";
					Text = var11;
					Size = UDim2.fromScale(1, 0.4);
					TextColor3 = Color3.fromRGB(134, 134, 134);
					TextXAlignment = Enum.TextXAlignment.Left;
					BackgroundTransparency = 1;
					LayoutOrder = 2;
					TextScaled = true;
					FontFace = Font_fromEnum_result1_upvr_2;
				})};
			}), New_upvr("UICorner")({
				CornerRadius = UDim.new(1, 0);
			})};
			[OnEvent_upvr("Activated")] = function() -- Line 134
				--[[ Upvalues[2]:
					[1]: FeedProps_upvr (readonly)
					[2]: Player_upvr (readonly)
				]]
				FeedProps_upvr.LoadProfileFromFloatingBanner(Player_upvr)
			end;
		})};
	})
end