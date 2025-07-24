-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:39
-- Luau version 6, Types version 3
-- Time taken: 0.014955 seconds

local Gui = script.Parent.Parent.Parent.Gui
local Fusion_upvr = require(Gui.Parent.Parent.Utils.Fusion)
local Value_upvr = Fusion_upvr.Value
local Components = Gui.Components
local UserService_upvr = game:GetService("UserService")
local var7_upvw = 0
local Value_upvr_result1_upvr_4 = Value_upvr()
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local New_upvr = Fusion_upvr.New
local Children_upvr = Fusion_upvr.Children
local ActionButton_upvr = require(Components.ActionButton)
local Computed_upvr = Fusion_upvr.Computed
local Ref_upvr = Fusion_upvr.Ref
local ForValues_upvr = Fusion_upvr.ForValues
local OnEvent_upvr = Fusion_upvr.OnEvent
local Line_upvr = require(Components.Line)
return function(arg1) -- Line 26
	--[[ Upvalues[14]:
		[1]: UserService_upvr (readonly)
		[2]: var7_upvw (read and write)
		[3]: Value_upvr_result1_upvr_4 (readonly)
		[4]: LocalPlayer_upvr (readonly)
		[5]: Value_upvr (readonly)
		[6]: New_upvr (readonly)
		[7]: Children_upvr (readonly)
		[8]: ActionButton_upvr (readonly)
		[9]: Computed_upvr (readonly)
		[10]: Ref_upvr (readonly)
		[11]: ForValues_upvr (readonly)
		[12]: OnEvent_upvr (readonly)
		[13]: Fusion_upvr (readonly)
		[14]: Line_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var34
	if arg1.Config.permissions ~= "read_only" then
	else
	end
	local any_get_result1_upvr = arg1.CurrentProfileData:get()
	var34 = UserService_upvr
	var34 = var34:GetUserInfosByUserIdsAsync({arg1.CurrentViewingProfileId:get()})
	local _1_upvr = var34[1]
	var34 = _1_upvr.Id
	if var34 ~= var7_upvw then
		var34 = Value_upvr_result1_upvr_4:set
		var34()
		var34 = _1_upvr.Id
		var7_upvw = var34
	end
	if #any_get_result1_upvr.shop_items ~= 0 then
		var34 = false
	else
		var34 = true
	end
	if not _1_upvr then return end
	local Font_fromEnum_result1_upvr = Font.fromEnum(Enum.Font.Arial)
	Font_fromEnum_result1_upvr.Bold = true
	local tbl_9_upvr = {}
	for _, v in arg1.Config.profile_tab_order do
		local string_match_result1 = string.match(v, ":[%s]*(.-)[%s]*$")
		if not var34 or string_match_result1 ~= "shop" then
			for _, v_2 in arg1.ProfileFeeds do
				if string_match_result1 == v_2.id then
					table.insert(tbl_9_upvr, v_2)
				end
			end
		end
	end
	if LocalPlayer_upvr.UserId == arg1.CurrentViewingProfileId:get() then
	else
	end
	local Value_upvr_result1_upvr_3 = Value_upvr(arg1.IsFollowing)
	task.defer(function() -- Line 80
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr_4 (copied, readonly)
			[2]: tbl_9_upvr (readonly)
		]]
		if not Value_upvr_result1_upvr_4:get() then
			Value_upvr_result1_upvr_4:set(tbl_9_upvr[1].id)
		end
	end)
	local Value_upvr_result1_upvr_2 = Value_upvr()
	local Value_upvr_result1_upvr = Value_upvr()
	task.defer(function() -- Line 89
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr_2 (readonly)
			[2]: Value_upvr_result1_upvr (readonly)
		]]
		task.wait()
		Value_upvr_result1_upvr:get().CanvasSize = UDim2.new(0, Value_upvr_result1_upvr_2:get().AbsoluteContentSize.X, 0, 0)
	end)
	local module_2 = {
		Name = "Profile";
		Size = UDim2.fromScale(0.95, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		LayoutOrder = (-math.huge);
	}
	local tbl_10 = {}
	local tbl_8 = {
		Name = "Info";
		Size = UDim2.fromScale(1, 0.14);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}
	local tbl_2 = {}
	local tbl_7 = {
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
		Text = Computed_upvr(function() -- Line 231
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr_3 (readonly)
			]]
			if Value_upvr_result1_upvr_3:get() == true then
				return "Following"
			end
			return "Follow"
		end);
		TextSize = UDim2.fromScale(0, 0.6);
		Font = Font_fromEnum_result1_upvr;
		Icon = Computed_upvr(function() -- Line 241
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr_3 (readonly)
			]]
			if Value_upvr_result1_upvr_3:get() == true then
				return "rbxassetid://13479450009"
			end
			return "rbxassetid://13479598082"
		end);
		IconSize = UDim2.fromScale(0.6, 0.6);
		Visible = true;
	}
	local var69_upvr = true
	local function OnActivated() -- Line 252
		--[[ Upvalues[3]:
			[1]: var69_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: Value_upvr_result1_upvr_3 (readonly)
		]]
		local var70
		if var70 then
			var70 = arg1.EnablePopupMessage:set
			var70(true)
		else
			if Value_upvr_result1_upvr_3:get() ~= true then
				var70 = false
			else
				var70 = true
			end
			if var70 then
				arg1.OnFollowButtonClicked(arg1.CurrentViewingProfileId:get(), false)
				Value_upvr_result1_upvr_3:set(false)
				return
			end
			arg1.OnFollowButtonClicked(arg1.CurrentViewingProfileId:get(), true)
			Value_upvr_result1_upvr_3:set(true)
		end
	end
	tbl_7.OnActivated = OnActivated
	tbl_2[1] = New_upvr("Frame")({
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
			Image = arg1.GetUserProfilePicture(_1_upvr.Id);
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
				Text = _1_upvr.DisplayName;
				Size = UDim2.fromScale(1, 0.5);
				TextColor3 = Color3.fromRGB(255, 255, 255);
				TextXAlignment = Enum.TextXAlignment.Left;
				BackgroundTransparency = 1;
				LayoutOrder = 1;
				TextScaled = true;
				FontFace = Font_fromEnum_result1_upvr;
			}), New_upvr("TextLabel")({
				Name = "Username";
				Text = '@'.._1_upvr.Username;
				Size = UDim2.fromScale(1, 0.5);
				TextColor3 = Color3.fromRGB(134, 134, 134);
				TextXAlignment = Enum.TextXAlignment.Left;
				BackgroundTransparency = 1;
				LayoutOrder = 2;
				TextScaled = true;
				FontFace = Font.fromEnum(Enum.Font.Arial);
			})};
		})};
	})
	tbl_2[2] = ActionButton_upvr(tbl_7)
	tbl_8[Children_upvr] = tbl_2
	local tbl_5 = {
		Name = "FollowCounters";
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 0.08);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		LayoutOrder = 5;
	}
	local tbl_3 = {}
	local tbl_12 = {
		Name = "Following";
		Padding = 0.015;
		BackOffset = 0.2;
		FrontOffset = 0.2;
		MiddleOffset = 0.1;
		LayoutOrder = 1;
		CornerRadius = UDim.new(0.5, 0);
		BackgroundColor = Color3.fromRGB(55, 56, 56);
		Text = "<font color='rgb(255, 255, 255)'><b>"..any_get_result1_upvr.following_count.."</b></font> Following";
		TextSize = UDim2.fromScale(0, 0.6);
		TextColor = Color3.fromRGB(200, 200, 200);
		Icon = "rbxassetid://13468517870";
		IconSize = UDim2.fromScale(0.6, 0.6);
	}
	local function OnActivated() -- Line 314
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_get_result1_upvr (readonly)
		]]
		arg1.OnFollowingButtonClicked(any_get_result1_upvr.user_id, 1)
		arg1.UserListVisible:set(true)
	end
	tbl_12.OnActivated = OnActivated
	local tbl_4 = {
		Name = "Followers";
		Padding = 0.015;
		BackOffset = 0.2;
		FrontOffset = 0.2;
		MiddleOffset = 0.1;
		LayoutOrder = 1;
		CornerRadius = UDim.new(0.5, 0);
		BackgroundColor = Color3.fromRGB(55, 56, 56);
		Text = "<font color='rgb(255, 255, 255)'><b>"..any_get_result1_upvr.follower_count.."</b></font> Followers";
		TextSize = UDim2.fromScale(0, 0.6);
		TextColor = Color3.fromRGB(200, 200, 200);
		Icon = "rbxassetid://13468517870";
		IconSize = UDim2.fromScale(0.6, 0.6);
	}
	local function OnActivated() -- Line 339
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_get_result1_upvr (readonly)
		]]
		arg1.OnFollowersButtonClicked(any_get_result1_upvr.user_id, 1)
		arg1.UserListVisible:set(true)
	end
	tbl_4.OnActivated = OnActivated
	tbl_3[1] = New_upvr("UIListLayout")({
		Padding = UDim.new(0.02, 0);
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Horizontal;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	})
	tbl_3[2] = ActionButton_upvr(tbl_12)
	tbl_3[3] = ActionButton_upvr(tbl_4)
	tbl_5[Children_upvr] = tbl_3
	local tbl = {
		Name = "DonateCounters";
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 0.08);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		LayoutOrder = 6;
	}
	local tbl_11 = {}
	local tbl_6 = {
		Name = "Donated";
		Padding = 0.015;
		BackOffset = 0.2;
		FrontOffset = 0.2;
		MiddleOffset = 0.1;
		LayoutOrder = 1;
		CornerRadius = UDim.new(0.5, 0);
		BackgroundColor = Color3.fromRGB(55, 56, 56);
		Text = "<font color='rgb(255, 255, 255)'><b>"..any_get_result1_upvr.robux_donated.."</b></font> Donated";
		TextSize = UDim2.fromScale(0, 0.6);
		TextColor = Color3.fromRGB(200, 200, 200);
		Icon = "rbxassetid://13468488252";
		IconSize = UDim2.fromScale(0.6, 0.6);
	}
	local function OnActivated() -- Line 380
	end
	tbl_6.OnActivated = OnActivated
	tbl_11[1] = New_upvr("UIListLayout")({
		Padding = UDim.new(0.02, 0);
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Horizontal;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	})
	tbl_11[2] = ActionButton_upvr(tbl_6)
	tbl_11[3] = ActionButton_upvr({
		Name = "Followers";
		Padding = 0.015;
		BackOffset = 0.2;
		FrontOffset = 0.2;
		MiddleOffset = 0.1;
		LayoutOrder = 1;
		CornerRadius = UDim.new(0.5, 0);
		BackgroundColor = Color3.fromRGB(55, 56, 56);
		Text = "<font color='rgb(255, 255, 255)'><b>"..any_get_result1_upvr.robux_raised.."</b></font> Earned";
		TextSize = UDim2.fromScale(0, 0.6);
		TextColor = Color3.fromRGB(200, 200, 200);
		Icon = "rbxassetid://13468488252";
		IconSize = UDim2.fromScale(0.6, 0.6);
		OnActivated = function() -- Line 402, Named "OnActivated"
		end;
	})
	tbl[Children_upvr] = tbl_11
	tbl_10[1] = New_upvr("UIListLayout")({
		Padding = UDim.new(0.04, 0);
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
	})
	tbl_10[2] = New_upvr("Frame")({
		Name = "BlankSpace";
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		Size = UDim2.fromScale(0, 0.035);
		BackgroundTransparency = 1;
		LayoutOrder = 1;
	})
	tbl_10[3] = New_upvr("Frame")(tbl_8)
	tbl_10[4] = New_upvr("Frame")({
		Name = "BlankSpace";
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		Size = UDim2.fromScale(0, 0.01);
		BackgroundTransparency = 1;
		LayoutOrder = 4;
	})
	tbl_10[5] = New_upvr("Frame")(tbl_5)
	tbl_10[6] = New_upvr("Frame")(tbl)
	tbl_10[7] = New_upvr("Frame")({
		Name = "BlankSpace";
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		Size = UDim2.fromScale(0, 0.01);
		BackgroundTransparency = 1;
		LayoutOrder = 7;
	})
	tbl_10[8] = New_upvr("ScrollingFrame")({
		Name = "Navigation";
		Size = UDim2.fromScale(1, 0.1);
		Position = UDim2.fromScale(1, 1);
		AnchorPoint = Vector2.new(1, 1);
		CanvasSize = UDim2.fromScale(0, 0);
		ScrollBarThickness = 0;
		ScrollingDirection = Enum.ScrollingDirection.X;
		BackgroundTransparency = 1;
		LayoutOrder = 8;
		[Ref_upvr] = Value_upvr_result1_upvr;
		[Children_upvr] = {New_upvr("Frame")({
			Name = "Container";
			Size = UDim2.fromScale(17.956, 0.65);
			Position = UDim2.fromScale(0, 0.5);
			AnchorPoint = Vector2.new(0, 0.5);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			BackgroundTransparency = 1;
			[Children_upvr] = {New_upvr("UIListLayout")({
				Padding = UDim.new(0.07, 0);
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				[Ref_upvr] = Value_upvr_result1_upvr_2;
			}), ForValues_upvr(tbl_9_upvr, function(arg1_2) -- Line 446
				--[[ Upvalues[7]:
					[1]: New_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: Font_fromEnum_result1_upvr (readonly)
					[4]: Computed_upvr (copied, readonly)
					[5]: Value_upvr_result1_upvr_4 (copied, readonly)
					[6]: OnEvent_upvr (copied, readonly)
					[7]: _1_upvr (readonly)
				]]
				local module = {
					Name = arg1_2.id;
					Text = arg1_2.name;
					Size = UDim2.fromScale(0, 1);
					AutomaticSize = Enum.AutomaticSize.X;
					BackgroundTransparency = 1;
				}
				local var90
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var90 = workspace.CurrentCamera.ViewportSize.Y / 50
					return var90
				end
				if not arg1.IsVertical:get() or not INLINED() then
					var90 = workspace.CurrentCamera.ViewportSize.Y / 40
				end
				module.TextSize = var90
				var90 = Font_fromEnum_result1_upvr
				module.FontFace = var90
				var90 = Computed_upvr
				var90 = var90(function() -- Line 458
					--[[ Upvalues[2]:
						[1]: Value_upvr_result1_upvr_4 (copied, readonly)
						[2]: arg1_2 (readonly)
					]]
					if Value_upvr_result1_upvr_4:get() == arg1_2.id then
						return Color3.fromRGB(255, 255, 255)
					end
					return Color3.fromRGB(134, 134, 134)
				end)
				module.TextColor3 = var90
				var90 = OnEvent_upvr("Activated")
				module[var90] = function() -- Line 467
					--[[ Upvalues[4]:
						[1]: Value_upvr_result1_upvr_4 (copied, readonly)
						[2]: arg1_2 (readonly)
						[3]: arg1 (copied, readonly)
						[4]: _1_upvr (copied, readonly)
					]]
					Value_upvr_result1_upvr_4:set(arg1_2.id)
					arg1.LastLoadedProfileTab = arg1_2.id
					arg1.OnSwitchFeedClicked(arg1_2.id, _1_upvr.Id)
				end
				return New_upvr("TextButton")(module)
			end, Fusion_upvr.cleanup)};
		})};
	})
	tbl_10[9] = Line_upvr({
		Size = UDim2.fromScale(1.11, 0.004);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		LayoutOrder = 9;
	})
	tbl_10[10] = New_upvr("Frame")({
		Name = "BlankSpace";
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		Size = UDim2.fromScale(0, 0.01);
		BackgroundTransparency = 1;
		LayoutOrder = 10;
	})
	module_2[Children_upvr] = tbl_10
	return New_upvr("Frame")(module_2)
end