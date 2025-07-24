-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:24
-- Luau version 6, Types version 3
-- Time taken: 0.006649 seconds

local Parent = script.Parent.Parent
local Fusion_upvr = require(Parent.Parent.Parent.Utils.Fusion)
local Components = Parent.Components
local Font_fromEnum_result1_upvr = Font.fromEnum(Enum.Font.Arial)
Font_fromEnum_result1_upvr.Bold = true
local New_upvr = Fusion_upvr.New
local Computed_upvr = Fusion_upvr.Computed
local Children_upvr = Fusion_upvr.Children
local SelectButton_upvr = require(Components.SelectButton)
local Line_upvr = require(Components.Line)
local Ref_upvr = Fusion_upvr.Ref
local ForValues_upvr = Fusion_upvr.ForValues
local Value_upvr = Fusion_upvr.Value
local OnEvent_upvr = Fusion_upvr.OnEvent
local Font_fromEnum_result1_upvr_2 = Font.fromEnum(Enum.Font.Arial)
local ActionButton_upvr = require(Components.ActionButton)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
return function(arg1) -- Line 25
	--[[ Upvalues[14]:
		[1]: New_upvr (readonly)
		[2]: Computed_upvr (readonly)
		[3]: Children_upvr (readonly)
		[4]: SelectButton_upvr (readonly)
		[5]: Line_upvr (readonly)
		[6]: Ref_upvr (readonly)
		[7]: ForValues_upvr (readonly)
		[8]: Value_upvr (readonly)
		[9]: OnEvent_upvr (readonly)
		[10]: Font_fromEnum_result1_upvr (readonly)
		[11]: Font_fromEnum_result1_upvr_2 (readonly)
		[12]: ActionButton_upvr (readonly)
		[13]: LocalPlayer_upvr (readonly)
		[14]: Fusion_upvr (readonly)
	]]
	local module_2 = {
		Name = "UserList";
		Size = UDim2.fromScale(1, 0.915);
		Position = UDim2.fromScale(0.5, 0);
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundColor3 = Color3.fromRGB(25, 25, 25);
		ZIndex = 5;
		Visible = Computed_upvr(function() -- Line 34
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.UserListVisible:get()
		end);
	}
	local tbl_6 = {}
	local tbl_5 = {
		Name = "Top";
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 0.1);
		Position = UDim2.fromScale(0.5, 0);
		AnchorPoint = Vector2.new(0.5, 0);
	}
	local tbl_2 = {}
	local tbl_4 = {
		Text = "< Back";
		Name = "BackButton";
		Size = UDim2.fromScale(0, 0.41);
		Color = Color3.fromRGB(255, 255, 255);
		Position = UDim2.fromScale(0.05, 0.5);
		AnchorPoint = Vector2.new(0, 0.5);
		AutomaticSize = Enum.AutomaticSize.X;
		ZIndex = 5;
		Bold = true;
	}
	local function OnActivated() -- Line 59
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.UserListVisible:set(false)
	end
	tbl_4.OnActivated = OnActivated
	tbl_2[1] = SelectButton_upvr(tbl_4)
	tbl_2[2] = Line_upvr({
		ZIndex = 5;
		Size = UDim2.fromScale(1, 0.02);
	})
	tbl_5[Children_upvr] = tbl_2
	tbl_6[1] = New_upvr("Frame")(tbl_5)
	tbl_6[2] = New_upvr("ScrollingFrame")({
		Name = "List";
		Size = UDim2.fromScale(0.95, 0.895);
		Position = UDim2.fromScale(0.5, 0.105);
		AnchorPoint = Vector2.new(0.5, 0);
		ScrollingDirection = Enum.ScrollingDirection.Y;
		ScrollBarThickness = 0;
		BackgroundTransparency = 1;
		ZIndex = 5;
		[Ref_upvr] = arg1.UserListScrollingFrame;
		[Children_upvr] = {New_upvr("Frame")({
			Name = "Container";
			Size = UDim2.fromScale(1, 1.23);
			Position = UDim2.fromScale(0.5, 0);
			AnchorPoint = Vector2.new(0.5, 0);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			BackgroundTransparency = 1;
			[Children_upvr] = {New_upvr("UIListLayout")({
				Padding = UDim.new(0.04, 0);
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			}), ForValues_upvr(arg1.UserListLoaded, function(arg1_2) -- Line 100
				--[[ Upvalues[10]:
					[1]: Value_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: New_upvr (copied, readonly)
					[4]: OnEvent_upvr (copied, readonly)
					[5]: Children_upvr (copied, readonly)
					[6]: Font_fromEnum_result1_upvr (copied, readonly)
					[7]: Font_fromEnum_result1_upvr_2 (copied, readonly)
					[8]: ActionButton_upvr (copied, readonly)
					[9]: Computed_upvr (copied, readonly)
					[10]: LocalPlayer_upvr (copied, readonly)
				]]
				local Value_upvr_result1_upvr = Value_upvr(arg1_2.is_following)
				local follower_upvr = arg1_2.follower
				if not follower_upvr then
					follower_upvr = arg1_2.following
				end
				local var33 = arg1.cachedUserInfos[follower_upvr]
				local module = {
					Name = "UserInfo";
					Size = UDim2.fromScale(1, 0.12);
					SizeConstraint = Enum.SizeConstraint.RelativeXX;
					BackgroundTransparency = 1;
					ZIndex = 5;
					[OnEvent_upvr("Activated")] = function() -- Line 112
						--[[ Upvalues[2]:
							[1]: arg1 (copied, readonly)
							[2]: follower_upvr (readonly)
						]]
						arg1.OnSwitchFeedClicked(arg1.initialProfileFeed, follower_upvr)
						arg1.UserListVisible:set(false)
					end;
				}
				local tbl_3 = {}
				local tbl = {
					Name = "FollowButton";
					Size = UDim2.fromScale(0, 0.56);
					AnchorPoint = Vector2.new(1, 0.5);
					Position = UDim2.fromScale(1, 0.5);
					Padding = 0.015;
					BackOffset = 0.4;
					FrontOffset = 0.4;
					MiddleOffset = 0.1;
					CornerRadius = UDim.new(0.5, 0);
					BackgroundColor = Color3.fromRGB(0, 170, 255);
					ZIndex = 5;
					Text = Computed_upvr(function() -- Line 223
						--[[ Upvalues[1]:
							[1]: Value_upvr_result1_upvr (readonly)
						]]
						if Value_upvr_result1_upvr:get() == true then
							return "Following"
						end
						return "Follow"
					end);
					TextSize = UDim2.fromScale(0, 0.6);
					Font = Font_fromEnum_result1_upvr;
					Icon = Computed_upvr(function() -- Line 234
						--[[ Upvalues[1]:
							[1]: Value_upvr_result1_upvr (readonly)
						]]
						if Value_upvr_result1_upvr:get() == true then
							return "rbxassetid://13479450009"
						end
						return "rbxassetid://13479598082"
					end);
				}
				local udim2 = UDim2.fromScale(0.6, 0.6)
				tbl.IconSize = udim2
				if LocalPlayer_upvr.UserId == follower_upvr then
					udim2 = false
				else
					udim2 = true
				end
				tbl.Visible = udim2
				function tbl.OnActivated() -- Line 246
					--[[ Upvalues[3]:
						[1]: Value_upvr_result1_upvr (readonly)
						[2]: arg1 (copied, readonly)
						[3]: follower_upvr (readonly)
					]]
					local var55
					if Value_upvr_result1_upvr:get() ~= true then
						var55 = false
					else
						var55 = true
					end
					if var55 then
						arg1.OnFollowButtonClicked(follower_upvr, false)
						Value_upvr_result1_upvr:set(false)
					else
						arg1.OnFollowButtonClicked(follower_upvr, true)
						Value_upvr_result1_upvr:set(true)
					end
				end
				tbl_3[1] = New_upvr("Frame")({
					Name = "Container";
					Size = UDim2.fromScale(1, 1);
					BackgroundTransparency = 1;
					[Children_upvr] = {New_upvr("UIListLayout")({
						SortOrder = Enum.SortOrder.LayoutOrder;
						FillDirection = Enum.FillDirection.Horizontal;
						VerticalAlignment = Enum.VerticalAlignment.Center;
					}), New_upvr("ImageLabel")({
						Name = "ProfilePicture";
						Size = UDim2.fromScale(0.875, 0.875);
						SizeConstraint = Enum.SizeConstraint.RelativeYY;
						Image = arg1.GetUserProfilePicture(follower_upvr);
						BackgroundTransparency = 1;
						ZIndex = 6;
						LayoutOrder = 1;
						[Children_upvr] = {New_upvr("UICorner")({
							CornerRadius = UDim.new(1, 0);
						}), New_upvr("Frame")({
							Name = "Background";
							Position = UDim2.new(0, 0, 0, -1);
							Size = UDim2.fromScale(1, 1);
							ZIndex = 5;
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
							Text = var33.DisplayName;
							Size = UDim2.fromScale(1, 0.5);
							TextColor3 = Color3.fromRGB(255, 255, 255);
							TextXAlignment = Enum.TextXAlignment.Left;
							BackgroundTransparency = 1;
							LayoutOrder = 1;
							TextScaled = true;
							FontFace = Font_fromEnum_result1_upvr;
							ZIndex = 5;
						}), New_upvr("TextLabel")({
							Name = "Username";
							Text = var33.Username;
							Size = UDim2.fromScale(1, 0.5);
							TextColor3 = Color3.fromRGB(134, 134, 134);
							TextXAlignment = Enum.TextXAlignment.Left;
							BackgroundTransparency = 1;
							LayoutOrder = 2;
							TextScaled = true;
							FontFace = Font_fromEnum_result1_upvr_2;
							ZIndex = 5;
						})};
					})};
				})
				tbl_3[2] = ActionButton_upvr(tbl)
				module[Children_upvr] = tbl_3
				return New_upvr("TextButton")(module)
			end, Fusion_upvr.cleanup)};
		})};
	})
	tbl_6[3] = New_upvr("UICorner")({
		CornerRadius = UDim.new(0, 16);
	})
	module_2[Children_upvr] = tbl_6
	return New_upvr("TextButton")(module_2)
end