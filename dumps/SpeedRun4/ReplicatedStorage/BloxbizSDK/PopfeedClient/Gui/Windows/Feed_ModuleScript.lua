-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:50
-- Luau version 6, Types version 3
-- Time taken: 0.022889 seconds

local Parent = script.Parent.Parent
local Fusion_upvr = require(Parent.Parent.Parent.Utils.Fusion)
local Components_upvr = Parent.Components
local Value_upvr = Fusion_upvr.Value
local RunService_upvr = game:GetService("RunService")
local FollowFriends_upvr = require(Components_upvr.FollowFriends)
local Utils_upvr = require(script.Parent.Parent.Parent.Parent.Utils)
local GuiService_upvr = game:GetService("GuiService")
local Screen_upvr = require(Components_upvr.Screen)
local New_upvr = Fusion_upvr.New
local Computed_upvr = Fusion_upvr.Computed
local Children_upvr = Fusion_upvr.Children
local OnEvent_upvr = Fusion_upvr.OnEvent
local Post_upvr = require(Components_upvr.Post)
local Boost_upvr = require(Components_upvr.Boost)
local Options_upvr = require(Components_upvr.Options)
local UserList_upvr = require(Components_upvr.UserList)
local var19_upvw
local ExploreTab_upvr = require(Components_upvr.ExploreTab)
local Ref_upvr = Fusion_upvr.Ref
local OnChange_upvr = Fusion_upvr.OnChange
local ForValues_upvr = Fusion_upvr.ForValues
local FeedBottom_upvr = require(Components_upvr.FeedBottom)
local LoadingState_upvr = require(Components_upvr.LoadingState)
local PopupNotification_upvr = require(Components_upvr.PopupNotification)
local FeedTop_upvr = require(Components_upvr.FeedTop)
local ProfileTop_upvr = require(Components_upvr.ProfileTop)
local RepliesTop_upvr = require(Components_upvr.RepliesTop)
local NotificationsTop_upvr = require(Components_upvr.NotificationsTop)
local ExploreTop_upvr = require(Components_upvr.ExploreTop)
return function(arg1) -- Line 37
	--[[ Upvalues[29]:
		[1]: Value_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: Components_upvr (readonly)
		[4]: FollowFriends_upvr (readonly)
		[5]: Utils_upvr (readonly)
		[6]: GuiService_upvr (readonly)
		[7]: Screen_upvr (readonly)
		[8]: New_upvr (readonly)
		[9]: Computed_upvr (readonly)
		[10]: Children_upvr (readonly)
		[11]: OnEvent_upvr (readonly)
		[12]: Post_upvr (readonly)
		[13]: Boost_upvr (readonly)
		[14]: Options_upvr (readonly)
		[15]: UserList_upvr (readonly)
		[16]: var19_upvw (read and write)
		[17]: ExploreTab_upvr (readonly)
		[18]: Fusion_upvr (readonly)
		[19]: Ref_upvr (readonly)
		[20]: OnChange_upvr (readonly)
		[21]: ForValues_upvr (readonly)
		[22]: FeedBottom_upvr (readonly)
		[23]: LoadingState_upvr (readonly)
		[24]: PopupNotification_upvr (readonly)
		[25]: FeedTop_upvr (readonly)
		[26]: ProfileTop_upvr (readonly)
		[27]: RepliesTop_upvr (readonly)
		[28]: NotificationsTop_upvr (readonly)
		[29]: ExploreTop_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var32_upvr
	if arg1.Config.permissions ~= "read_only" then
	else
	end
	local Font_fromEnum_result1 = Font.fromEnum(Enum.Font.Arial)
	Font_fromEnum_result1.Bold = true
	local var5_result1_upvr = Value_upvr()
	local var35_upvw
	local UIListLayout_upvr = arg1.UIListLayout
	local ContentFrame_upvr = arg1.ContentFrame
	local ScrollingFrame_upvr = arg1.ScrollingFrame
	local tbl_6_upvr = {}
	RunService_upvr.Heartbeat:Connect(function() -- Line 79
		--[[ Upvalues[4]:
			[1]: ContentFrame_upvr (readonly)
			[2]: ScrollingFrame_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: tbl_6_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
		local PostsForImpressionCheck = arg1.PostsForImpressionCheck
		if #PostsForImpressionCheck == 0 or not ContentFrame_upvr:get() or not ScrollingFrame_upvr:get() then return end
		-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [83] 63. Error Block 22 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [83] 63. Error Block 22 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [29] 22. Error Block 7 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [83.10]
		-- KONSTANTERROR: [29] 22. Error Block 7 end (CF ANALYSIS FAILED)
	end)
	local IsOpened_upvr = arg1.IsOpened
	local function loadUserInfoForPosts_upvr(arg1_2) -- Line 127, Named "loadUserInfoForPosts"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl = {}
		for _, v in arg1_2 do
			table.insert(tbl, v.Profile.UserId)
		end
		arg1.getUserInfoFromUserIds(tbl)
	end
	local function loadUserInfoForNotifications_upvr(arg1_3) -- Line 136, Named "loadUserInfoForNotifications"
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local tbl_2 = {}
		for _, v_2 in arg1_3 do
			if v_2.player_ids then
				for _, v_3 in v_2.player_ids do
					table.insert(tbl_2, v_3)
				end
			end
		end
		for _, v_4 in arg1_3 do
			if v_4.player_ids then
				v_4.topUserInfo = arg1.getUserInfoFromUserIds(tbl_2)[v_4.player_ids[1]]
			end
		end
	end
	local function updateScrollingFrame_upvr(arg1_4) -- Line 158, Named "updateScrollingFrame"
		--[[ Upvalues[4]:
			[1]: ScrollingFrame_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: UIListLayout_upvr (readonly)
			[4]: ContentFrame_upvr (readonly)
		]]
		local any_get_result1_11 = ScrollingFrame_upvr:get()
		local var69
		if not any_get_result1_11 then
			var69 = arg1
			var69.IsLoading:set(false)
			var69 = arg1
			var69.ContentFetchDebounce:set(nil)
		else
			any_get_result1_11.CanvasPosition = Vector2.zero
			var69 = 0
			any_get_result1_11.CanvasSize = UDim2.new(var69, 0, 0, UIListLayout_upvr:get().AbsoluteContentSize.Y)
			var69 = arg1
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var69 = arg1_4.LastViewedPost
				return var69
			end
			if not arg1_4 or not INLINED_2() then
				var69 = arg1.LastViewedPost[var69.CurrentFeedTypeValue:get()]
			end
			if var69 then
				if var69.Id then
					local SOME = ContentFrame_upvr:get():FindFirstChild(var69.Id)
					if SOME then
						any_get_result1_11.CanvasPosition = Vector2.new(0, SOME.AbsolutePosition.Y - var69.Position + 1)
					end
				end
			end
			arg1.IsLoading:set(false)
			arg1.ContentFetchDebounce:set(nil)
		end
	end
	local function renderProfileItems_upvr(arg1_5, arg2) -- Line 182, Named "renderProfileItems"
		--[[ Upvalues[2]:
			[1]: Components_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 21 start (CF ANALYSIS FAILED)
		local var71 = require(Components_upvr.Profile)(arg1)
		if not var71 then
		else
			local any_get_result1_7 = arg1.ContentToRender:get()
			local insert = table.insert
			insert(any_get_result1_7, var71)
			if arg1.CurrentFeedType ~= "shop" then
				insert = false
			else
				insert = true
			end
			if arg1.CurrentFeedType ~= "donations" then
				-- KONSTANTWARNING: GOTO [38] #29
			end
			-- KONSTANTERROR: [0] 1. Error Block 21 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [37] 28. Error Block 23 start (CF ANALYSIS FAILED)
			if insert then
				table.insert(any_get_result1_7, require(Components_upvr.Profile.ShopTable)(arg1))
			elseif true then
				table.insert(any_get_result1_7, require(Components_upvr.Profile.DonateTable)(arg1, arg2))
			end
			arg1.ContentToRender:set(any_get_result1_7)
			-- KONSTANTERROR: [37] 28. Error Block 23 end (CF ANALYSIS FAILED)
		end
	end
	var32_upvr = arg1.RenderPosts
	var32_upvr.Event:Connect(function(arg1_6, arg2) -- Line 205
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: loadUserInfoForPosts_upvr (readonly)
			[3]: loadUserInfoForNotifications_upvr (readonly)
			[4]: FollowFriends_upvr (copied, readonly)
			[5]: Utils_upvr (copied, readonly)
			[6]: renderProfileItems_upvr (readonly)
			[7]: updateScrollingFrame_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local any_get_result1_12 = arg1.CurrentFeedTypeValue:get()
		local var76
		if any_get_result1_12 then
			var76 = arg1.LastViewedPost
			var76[any_get_result1_12] = arg1.CalculateCanvasOffset()
		end
		var76 = arg1.CurrentFeedType
		if var76 ~= "notifications" then
			var76 = loadUserInfoForPosts_upvr
			var76(arg1.CurrentPosts)
		else
			var76 = loadUserInfoForNotifications_upvr
			var76(arg1.CurrentPosts)
		end
		if arg1.CurrentFeedType == "donations" then
			var76 = false
		else
			var76 = true
		end
		if var76 then
			if arg1.FetchingFeedTypeValue:get() == "following" then
				local tbl_5 = {}
				tbl_5.FeedProps = arg1
				tbl_5.LayoutOrder = -1
				tbl_5.Size = UDim2.fromScale(1, 0.43)
				tbl_5.LineSize = UDim2.fromScale(1, 0.005)
				table.insert(arg1.CurrentPosts, FollowFriends_upvr(tbl_5))
			end
			arg1.PostFrames = {}
			arg1.ContentToRender:set(arg1.CurrentPosts)
		else
			arg1.PostFrames = {}
			arg1.ContentToRender:set({})
		end
		if arg1.CurrentFeedType == "notifications" or not Utils_upvr.copyTable(arg1.ContentToRender:get()) then
		end
		arg1.PostsForImpressionCheck = {}
		if arg1.isProfileFeed(arg1.CurrentFeedType) then
			arg1.IsFollowing = arg1.CurrentProfileData:get().is_following
			renderProfileItems_upvr(arg1.CurrentPosts, arg1_6)
		else
			arg1.IsFollowing = nil
		end
		arg1.CurrentFeedTypeValue:set(arg1.CurrentFeedType)
		arg1.DisableHomeButtons = false
		task.defer(updateScrollingFrame_upvr, arg2)
	end)
	if 36 >= GuiService_upvr.TopbarInset.Max.Y then
		var32_upvr = false
	else
		var32_upvr = true
	end
	local module = {
		Name = "Popfeed";
		DisplayOrder = 999;
	}
	local tbl_8 = {}
	local tbl_3 = {
		Name = "Container";
		Visible = Computed_upvr(function() -- Line 123, Named "visible"
			--[[ Upvalues[1]:
				[1]: IsOpened_upvr (readonly)
			]]
			return IsOpened_upvr:get()
		end);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(25, 25, 25);
		Size = Computed_upvr(function() -- Line 296
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: var32_upvr (readonly)
			]]
			local var84
			if arg1.IsVertical:get() == true then
				if var32_upvr then
					var84 = -55
				else
					var84 = -40
				end
				return UDim2.new(1, 0, 1, var84)
			end
			return UDim2.fromScale(0.9, 0.9)
		end);
		Position = Computed_upvr(function() -- Line 304
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: var32_upvr (readonly)
			]]
			local var86
			if arg1.IsVertical:get() == true then
				if var32_upvr then
					var86 = 27.5
				else
					var86 = 20
				end
				return UDim2.new(0.5, 0, 0.5, var86)
			end
			return UDim2.fromScale(0.5, 0.5)
		end);
	}
	local tbl_4 = {}
	local tbl_7 = {
		Name = "PostButton";
		Position = UDim2.fromScale(0.9, 0.85);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(0, 170, 255);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		ZIndex = 2;
		Size = Computed_upvr(function() -- Line 321
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.IsVertical:get() then
				return UDim2.fromScale(0.15, 0.15)
			end
			return UDim2.fromScale(0.12, 0.12)
		end);
		Visible = Computed_upvr(function() -- Line 329
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local any_get_result1_6 = arg1.CurrentFeedTypeValue:get()
			local var94 = false
			if any_get_result1_6 ~= "replies" then
				var94 = false
				if any_get_result1_6 ~= "donations" then
					if any_get_result1_6 == "explore" then
						var94 = false
					else
						var94 = true
					end
				end
			end
			return var94
		end);
	}
	local var96_upvr = true
	tbl_7[OnEvent_upvr("Activated")] = function() -- Line 335
		--[[ Upvalues[2]:
			[1]: var96_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		if var96_upvr then
			arg1.EnablePopupMessage:set(true)
		else
			arg1.IsPosting:set(true)
		end
	end
	tbl_7[Children_upvr] = {New_upvr("TextLabel")({
		Text = '+';
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
		TextScaled = true;
		TextColor3 = Color3.fromRGB(255, 255, 255);
		ZIndex = 2;
	}), New_upvr("UICorner")({
		CornerRadius = UDim.new(0.5, 0);
	})}
	tbl_4[1] = New_upvr("TextButton")(tbl_7)
	tbl_4[2] = New_upvr("TextButton")({
		Name = "CloseButton";
		Size = UDim2.fromScale(0.1, 0.1);
		Position = UDim2.fromScale(1, 0);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(231, 60, 60);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		ZIndex = 500;
		Visible = Computed_upvr(function() -- Line 371
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var102
			if arg1.IsVertical:get() == true then
				var102 = false
			else
				var102 = true
			end
			return var102
		end);
		[OnEvent_upvr("Activated")] = function() -- Line 375
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.TopbarButton then
				arg1.TopbarButton:deselect()
			else
				arg1.closePopfeed()
			end
		end;
		[Children_upvr] = {New_upvr("TextLabel")({
			Text = 'X';
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
			TextScaled = true;
			TextColor3 = Color3.fromRGB(255, 255, 255);
			ZIndex = 501;
		}), New_upvr("UICorner")({
			CornerRadius = UDim.new(0.2, 0);
		})};
	})
	tbl_4[3] = Post_upvr(arg1)
	tbl_4[4] = Boost_upvr(arg1)
	tbl_4[5] = Options_upvr(arg1)
	tbl_4[6] = UserList_upvr(arg1)
	tbl_4[7] = Computed_upvr(function() -- Line 406
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: var19_upvw (copied, read and write)
			[3]: ExploreTab_upvr (copied, readonly)
		]]
		local any_get_result1_10 = arg1.ExploreTabScrollingFrame:get()
		if any_get_result1_10 then
			var19_upvw = any_get_result1_10.CanvasPosition
		end
		if arg1.FetchingFeedTypeValue:get() == "explore" then
			return ExploreTab_upvr(arg1, var19_upvw)
		end
	end, Fusion_upvr.cleanup)
	tbl_4[8] = New_upvr("ScrollingFrame")({
		Name = "List";
		AnchorPoint = Vector2.new(0.5, 0);
		ScrollBarThickness = 0;
		ScrollingDirection = Enum.ScrollingDirection.Y;
		BackgroundTransparency = 1;
		ClipsDescendants = true;
		Size = Computed_upvr(function() -- Line 427
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.isFeedTypeHomeFeed(arg1.FetchingFeedTypeValue:get()) then
				return UDim2.fromScale(0.95, 0.763)
			end
			return UDim2.fromScale(0.95, 0.81)
		end);
		Position = Computed_upvr(function() -- Line 437
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.isFeedTypeHomeFeed(arg1.FetchingFeedTypeValue:get()) then
				return UDim2.fromScale(0.5, 0.151)
			end
			return UDim2.fromScale(0.5, 0.1)
		end);
		Visible = Computed_upvr(function() -- Line 447
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return not arg1.IsLoading:get()
		end);
		ScrollingEnabled = Computed_upvr(function() -- Line 451
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return not arg1.IsLoading:get()
		end);
		[Ref_upvr] = ScrollingFrame_upvr;
		[OnChange_upvr("CanvasPosition")] = function(arg1_8) -- Line 457
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: ScrollingFrame_upvr (readonly)
			]]
			arg1.OnCanvasPositionChanged(ScrollingFrame_upvr:get(), arg1_8)
		end;
		[Children_upvr] = {New_upvr("Frame")({
			Name = "Content";
			Size = UDim2.fromScale(0.95, 0.692);
			Position = UDim2.fromScale(0.5, 0);
			AnchorPoint = Vector2.new(0.5, 0);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			BackgroundTransparency = 1;
			[Ref_upvr] = ContentFrame_upvr;
			[Children_upvr] = {New_upvr("UIListLayout")({
				Padding = UDim.new(0.01, 0);
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				[Ref_upvr] = UIListLayout_upvr;
			}), ForValues_upvr(arg1.ContentToRender, function(arg1_7) -- Line 256, Named "initiatePost"
				--[[ Upvalues[2]:
					[1]: arg1 (readonly)
					[2]: Components_upvr (copied, readonly)
				]]
				local var78
				if typeof(arg1_7) == "Instance" then
					var78 = arg1_7
				elseif arg1.CurrentFeedType == "notifications" then
					arg1_7.FeedProps = arg1
					var78 = require(Components_upvr.Notification)(arg1_7)
				else
					local var79 = arg1.cachedUserInfos[arg1_7.Profile.UserId]
					arg1_7.Profile.Name = var79.Username
					arg1_7.Profile.DisplayName = var79.DisplayName
					arg1_7.FeedProps = arg1
					if arg1_7.IsParent then
						var78 = require(Components_upvr.PostView)(arg1_7)
					else
						var78 = require(Components_upvr.Content)(arg1_7)
					end
				end
				table.insert(arg1.PostFrames, var78)
				return var78
			end, Fusion_upvr.cleanup), New_upvr("Frame")({
				Name = "SpinnerFrame";
				Size = UDim2.fromScale(1, 0.175);
				SizeConstraint = Enum.SizeConstraint.RelativeXX;
				BackgroundTransparency = 1;
				LayoutOrder = Computed_upvr(function() -- Line 490
					--[[ Upvalues[1]:
						[1]: arg1 (readonly)
					]]
					return arg1.ContentLoadSpinnerLayoutOrder:get()
				end);
				Visible = Computed_upvr(function() -- Line 46, Named "spinnerVisible"
					--[[ Upvalues[4]:
						[1]: arg1 (readonly)
						[2]: var35_upvw (read and write)
						[3]: RunService_upvr (copied, readonly)
						[4]: var5_result1_upvr (readonly)
					]]
					if arg1.FetchingFeedTypeValue:get() == "explore" then
						return false
					end
					local any_get_result1_3 = arg1.ContentFetchDebounce:get()
					if any_get_result1_3 == true and not var35_upvw then
						var35_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 53
							--[[ Upvalues[1]:
								[1]: var5_result1_upvr (copied, readonly)
							]]
							local any_get_result1_8 = var5_result1_upvr:get()
							if not any_get_result1_8 then
							else
								any_get_result1_8.Rotation += 2
							end
						end)
						return any_get_result1_3
					end
					if var35_upvw then
						var35_upvw:Disconnect()
						var35_upvw = nil
					end
					return any_get_result1_3
				end);
				[OnChange_upvr("Visible")] = function() -- Line 496
					--[[ Upvalues[3]:
						[1]: ScrollingFrame_upvr (readonly)
						[2]: arg1 (readonly)
						[3]: var5_result1_upvr (readonly)
					]]
					local any_get_result1_9_upvr = ScrollingFrame_upvr:get()
					if any_get_result1_9_upvr then
						task.defer(function() -- Line 499
							--[[ Upvalues[3]:
								[1]: arg1 (copied, readonly)
								[2]: any_get_result1_9_upvr (readonly)
								[3]: var5_result1_upvr (copied, readonly)
							]]
							if arg1.ContentLoadSpinnerLayoutOrder:get() == -1 then
								any_get_result1_9_upvr.CanvasPosition = Vector2.new(0, var5_result1_upvr:get().Parent.AbsoluteSize.Y)
							end
							any_get_result1_9_upvr.CanvasSize = UDim2.fromOffset(0, any_get_result1_9_upvr.Content.UIListLayout.AbsoluteContentSize.Y)
						end)
					end
				end;
				[Children_upvr] = {New_upvr("ImageLabel")({
					Name = "Spinner";
					Size = UDim2.fromScale(0.8, 0.8);
					Position = UDim2.fromScale(0.5, 0.5);
					AnchorPoint = Vector2.new(0.5, 0.5);
					Image = "rbxassetid://11304130802";
					SizeConstraint = Enum.SizeConstraint.RelativeYY;
					BackgroundTransparency = 1;
					[Ref_upvr] = var5_result1_upvr;
				})};
			}), New_upvr("Frame")({
				Name = "RepliesEmptyState";
				BackgroundTransparency = 1;
				Size = UDim2.fromScale(1, 0.112);
				Visible = Computed_upvr(function() -- Line 534
					--[[ Upvalues[1]:
						[1]: arg1 (readonly)
					]]
					local _1 = arg1.ContentToRender:get()[1]
					local var133 = _1
					if var133 then
						var133 = false
						if type(_1) == "table" then
							var133 = _1.IsParent
						end
					end
					local var134 = var133
					if var134 then
						if _1.Comments ~= 0 then
							var134 = false
						else
							var134 = true
						end
					end
					return var133 and var134
				end);
				[Children_upvr] = {New_upvr("Frame")({
					Name = "BlankSpace";
					Size = UDim2.fromScale(1, 0.357);
					BackgroundTransparency = 1;
				}), New_upvr("TextLabel")({
					Name = "NoRepliesYet";
					Size = UDim2.fromScale(1, 0.643);
					AnchorPoint = Vector2.new(0.5, 0);
					Position = UDim2.fromScale(0.5, 0.357);
					BackgroundTransparency = 1;
					Text = "No Replies Yet";
					TextScaled = true;
					TextWrapped = true;
					FontFace = Font_fromEnum_result1;
					TextColor3 = Color3.fromRGB(142, 142, 142);
					TextXAlignment = Enum.TextXAlignment.Center;
					TextYAlignment = Enum.TextYAlignment.Top;
				})};
			})};
		})};
	})
	tbl_4[9] = New_upvr("Frame")({
		Name = "Bottom";
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 0.085);
		Position = UDim2.fromScale(0.5, 1);
		AnchorPoint = Vector2.new(0.5, 1);
		[Children_upvr] = Computed_upvr(function() -- Line 577
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: FeedBottom_upvr (copied, readonly)
			]]
			if not arg1.CurrentFeedTypeValue:get() then
				return {}
			end
			return FeedBottom_upvr(arg1)
		end, Fusion_upvr.cleanup);
	})
	tbl_4[10] = LoadingState_upvr(arg1)
	tbl_4[11] = Computed_upvr(function() -- Line 589
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: New_upvr (copied, readonly)
		]]
		if arg1.IsVertical:get() == true then return end
		return New_upvr("UIAspectRatioConstraint")({
			AspectRatio = 0.7;
		})
	end, Fusion_upvr.cleanup)
	tbl_4[12] = Computed_upvr(function() -- Line 599
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: PopupNotification_upvr (copied, readonly)
		]]
		if arg1.EnablePopupMessage:get() == true then
			return PopupNotification_upvr(arg1)
		end
	end, Fusion_upvr.cleanup)
	tbl_4[13] = New_upvr("UICorner")({
		CornerRadius = Computed_upvr(function() -- Line 606
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.IsVertical:get() == true then
				return UDim.new(0, 0)
			end
			return UDim.new(0, 16)
		end);
	})
	tbl_4[14] = New_upvr("Frame")({
		Name = "Top";
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0);
		AnchorPoint = Vector2.new(0.5, 0);
		Size = Computed_upvr(function() -- Line 621
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local any_get_result1_4 = arg1.FetchingFeedTypeValue:get()
			if not any_get_result1_4 then
				return UDim2.fromScale(1, 0.15)
			end
			if not any_get_result1_4 or not not arg1.isFeedTypeHomeFeed(any_get_result1_4) or not arg1.Config then
				return UDim2.fromScale(1, 0.15)
			end
			return UDim2.fromScale(1, 0.1)
		end);
		[Children_upvr] = {FeedTop_upvr(arg1), Computed_upvr(function() -- Line 642
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: ProfileTop_upvr (copied, readonly)
				[3]: RepliesTop_upvr (copied, readonly)
				[4]: NotificationsTop_upvr (copied, readonly)
				[5]: ExploreTop_upvr (copied, readonly)
			]]
			local any_get_result1_2 = arg1.FetchingFeedTypeValue:get()
			if not any_get_result1_2 then
				return {}
			end
			if arg1.isProfileFeed(any_get_result1_2) then
				return ProfileTop_upvr(arg1)
			end
			if any_get_result1_2 == "replies" then
				return RepliesTop_upvr(arg1)
			end
			if any_get_result1_2 == "notifications" then
				return NotificationsTop_upvr(arg1)
			end
			if any_get_result1_2 == "explore" then
				return ExploreTop_upvr(arg1)
			end
			return {}
		end, Fusion_upvr.cleanup)};
	})
	tbl_3[Children_upvr] = tbl_4
	tbl_8[1] = New_upvr("Frame")(tbl_3)
	module.Children = tbl_8
	return Screen_upvr(module)
end