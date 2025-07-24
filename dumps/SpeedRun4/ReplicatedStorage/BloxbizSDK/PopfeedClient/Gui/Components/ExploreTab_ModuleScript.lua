-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:47
-- Luau version 6, Types version 3
-- Time taken: 0.009838 seconds

local PolicyService_upvr = game:GetService("PolicyService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local Parent = script.Parent.Parent
local Fusion_upvr = require(Parent.Parent.Parent.Utils.Fusion)
local Components = Parent.Components
local Font_fromEnum_result1_upvr = Font.fromEnum(Enum.Font.Arial)
Font_fromEnum_result1_upvr.Bold = true
local var7_upvw
local function _() -- Line 29, Named "canViewCommunityLink"
	--[[ Upvalues[3]:
		[1]: var7_upvw (read and write)
		[2]: PolicyService_upvr (readonly)
		[3]: LocalPlayer_upvr (readonly)
	]]
	if var7_upvw ~= nil then
		return var7_upvw
	end
	local pcall_result1_2, pcall_result2 = pcall(function() -- Line 34
		--[[ Upvalues[2]:
			[1]: PolicyService_upvr (copied, readonly)
			[2]: LocalPlayer_upvr (copied, readonly)
		]]
		return PolicyService_upvr:GetPolicyInfoForPlayerAsync(LocalPlayer_upvr)
	end)
	if pcall_result1_2 then
		var7_upvw = not not table.find(pcall_result2.AllowedExternalLinkReferences, "Discord")
	end
	return var7_upvw
end
local Value_upvr = Fusion_upvr.Value
local New_upvr = Fusion_upvr.New
local Ref_upvr = Fusion_upvr.Ref
local Children_upvr = Fusion_upvr.Children
local Computed_upvr = Fusion_upvr.Computed
local FollowFriends_upvr = require(Components.FollowFriends)
local ActionButton_upvr = require(Components.ActionButton)
local ForPairs_upvr = Fusion_upvr.ForPairs
local LeaderboardEntry_upvr = require(Components.LeaderboardEntry)
local TextButton_upvr = require(Components.TextButton)
local Line_upvr = require(Components.Line)
return function(arg1, arg2) -- Line 45
	--[[ Upvalues[16]:
		[1]: Value_upvr (readonly)
		[2]: New_upvr (readonly)
		[3]: Ref_upvr (readonly)
		[4]: Children_upvr (readonly)
		[5]: Font_fromEnum_result1_upvr (readonly)
		[6]: Computed_upvr (readonly)
		[7]: FollowFriends_upvr (readonly)
		[8]: ActionButton_upvr (readonly)
		[9]: ForPairs_upvr (readonly)
		[10]: LeaderboardEntry_upvr (readonly)
		[11]: Fusion_upvr (readonly)
		[12]: TextButton_upvr (readonly)
		[13]: Line_upvr (readonly)
		[14]: var7_upvw (read and write)
		[15]: PolicyService_upvr (readonly)
		[16]: LocalPlayer_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
	local tbl_4_upvr = {
		top_donors = 1;
		top_boosters = 1;
	}
	arg1.ExploreTabScrollingFrame = Value_upvr()
	task.defer(function() -- Line 57
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		task.wait()
		local var25 = arg2
		if not var25 then
			var25 = Vector2.zero
		end
		arg1.ExploreTabScrollingFrame:get().CanvasPosition = var25
	end)
	local module = {}
	local tbl_11 = {
		Name = "ExploreTabList";
		Size = UDim2.fromScale(1, 0.81);
		Position = UDim2.fromScale(0.5, 0.1);
		AnchorPoint = Vector2.new(0.5, 0);
		ScrollBarThickness = 0;
		ScrollingDirection = Enum.ScrollingDirection.Y;
		BackgroundColor3 = Color3.fromRGB(25, 25, 25);
		ClipsDescendants = true;
		[Ref_upvr] = arg1.ExploreTabScrollingFrame;
	}
	local tbl_6 = {}
	local tbl_3 = {
		Name = "Content";
		Size = UDim2.fromScale(1, 0.692);
		Position = UDim2.fromScale(0.5, 0);
		AnchorPoint = Vector2.new(0.5, 0);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		BackgroundTransparency = 1;
		Visible = Computed_upvr(function() -- Line 99
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return not arg1.UserSearchFailed:get()
		end);
	}
	local tbl_9 = {}
	local tbl_2 = {}
	tbl_2.FeedProps = arg1
	tbl_2.LayoutOrder = 3
	tbl_2.Size = UDim2.fromScale(0.9, 0.43)
	tbl_2.LineSize = UDim2.fromScale(1.2, 0.005)
	local tbl_14 = {
		Name = "TopBoosters";
		Size = UDim2.fromScale(0.9, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		LayoutOrder = 4;
	}
	local tbl_12 = {}
	local tbl = {
		Name = "ShowMore";
		Text = "Show 3 more";
		Size = UDim2.fromScale(1, 0.09);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		TextColor = Color3.fromRGB(255, 255, 255);
		Color = Color3.fromRGB(63, 63, 63);
		CornerRadius = UDim.new(0.2, 0);
		LayoutOrder = 5;
		ZIndex = 1;
		Bold = true;
	}
	local function OnActivated() -- Line 209
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: tbl_4_upvr (readonly)
		]]
		if arg1.RenderExplorePage(tbl_4_upvr.top_boosters + 1, "top_boosters") then
			local var50 = tbl_4_upvr
			var50.top_boosters += 1
		end
	end
	tbl.OnActivated = OnActivated
	tbl_12[1] = New_upvr("UIListLayout")({
		Padding = UDim.new(0, 0);
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
	})
	tbl_12[2] = New_upvr("Frame")({
		Name = "BlankSpace";
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		Size = UDim2.fromScale(1, 0.018);
		BackgroundTransparency = 1;
		LayoutOrder = 1;
	})
	tbl_12[3] = New_upvr("Frame")({
		Name = "TitleContainer";
		Size = UDim2.fromScale(1, 0.0675);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		BackgroundTransparency = 1;
		LayoutOrder = 2;
		[Children_upvr] = {ActionButton_upvr({
			Name = "Title";
			Text = "Top Boosters This Week";
			Icon = "rbxassetid://13468295672";
			IconSize = UDim2.fromScale(0.75, 0.75);
			MiddleOffset = 0.1;
			Padding = 0.015;
			Font = Font_fromEnum_result1_upvr;
		})};
	})
	tbl_12[4] = New_upvr("Frame")({
		Name = "BlankSpace";
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		Size = UDim2.fromScale(1, 0.01);
		BackgroundTransparency = 1;
		LayoutOrder = 3;
	})
	tbl_12[5] = New_upvr("Frame")({
		Name = "List";
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		LayoutOrder = 4;
		[Children_upvr] = {New_upvr("UIListLayout")({
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
		}), ForPairs_upvr(arg1.ExplorePageContent.top_boosters, function(arg1_2, arg2_2) -- Line 185
			--[[ Upvalues[2]:
				[1]: LeaderboardEntry_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return arg1_2, LeaderboardEntry_upvr(arg1, arg1_2, {
				Icon = "rbxassetid://13468295672";
				Text = arg2_2.boost_count;
				UserId = arg2_2.player_id;
			})
		end, Fusion_upvr.cleanup)};
	})
	tbl_12[6] = TextButton_upvr(tbl)
	tbl_12[7] = New_upvr("Frame")({
		Name = "BlankSpace";
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		Size = UDim2.fromScale(1, 0.04);
		BackgroundTransparency = 1;
		LayoutOrder = 6;
	})
	tbl_12[8] = Line_upvr({
		Size = UDim2.fromScale(1.2, 0.005);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		LayoutOrder = 7;
	})
	tbl_14[Children_upvr] = tbl_12
	local tbl_8 = {
		Name = "TopDonators";
		Size = UDim2.fromScale(0.9, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		LayoutOrder = 2;
	}
	local var54 = Children_upvr
	tbl_8[var54] = {New_upvr("UIListLayout")({
		Padding = UDim.new(0, 0);
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
	}), New_upvr("Frame")({
		Name = "BlankSpace";
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		Size = UDim2.fromScale(1, 0.018);
		BackgroundTransparency = 1;
		LayoutOrder = 1;
	}), New_upvr("Frame")({
		Name = "TitleContainer";
		Size = UDim2.fromScale(1, 0.0675);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		BackgroundTransparency = 1;
		LayoutOrder = 2;
		[Children_upvr] = {ActionButton_upvr({
			Name = "Title";
			Text = "Top Donators This Week";
			Icon = "rbxassetid://13184649429";
			IconSize = UDim2.fromScale(0.75, 0.75);
			MiddleOffset = 0.1;
			Padding = 0.015;
			Font = Font_fromEnum_result1_upvr;
		})};
	}), New_upvr("Frame")({
		Name = "BlankSpace";
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		Size = UDim2.fromScale(1, 0.01);
		BackgroundTransparency = 1;
		LayoutOrder = 3;
	}), New_upvr("Frame")({
		Name = "List";
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		LayoutOrder = 4;
		[Children_upvr] = {New_upvr("UIListLayout")({
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
		}), ForPairs_upvr(arg1.ExplorePageContent.top_donors, function(arg1_3, arg2_3) -- Line 299
			--[[ Upvalues[2]:
				[1]: LeaderboardEntry_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return arg1_3, LeaderboardEntry_upvr(arg1, arg1_3, {
				Icon = "rbxassetid://13184649429";
				Text = arg2_3.robux_donated;
				UserId = arg2_3.player_id;
			})
		end, Fusion_upvr.cleanup)};
	}), TextButton_upvr({
		Name = "ShowMore";
		Text = "Show 3 more";
		Size = UDim2.fromScale(1, 0.09);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		TextColor = Color3.fromRGB(255, 255, 255);
		Color = Color3.fromRGB(63, 63, 63);
		CornerRadius = UDim.new(0.2, 0);
		LayoutOrder = 5;
		ZIndex = 1;
		Bold = true;
		OnActivated = function() -- Line 323, Named "OnActivated"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: tbl_4_upvr (readonly)
			]]
			if arg1.RenderExplorePage(tbl_4_upvr.top_donors + 1, "top_donors") then
				local var68 = tbl_4_upvr
				var68.top_donors += 1
			end
		end;
	}), New_upvr("Frame")({
		Name = "BlankSpace";
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		Size = UDim2.fromScale(1, 0.04);
		BackgroundTransparency = 1;
		LayoutOrder = 6;
	}), Line_upvr({
		Size = UDim2.fromScale(1.2, 0.005);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		LayoutOrder = 7;
	})}
	local var71
	if var7_upvw ~= nil then
		var54 = var7_upvw
	else
		local pcall_result1, pcall_result2_2 = pcall(function() -- Line 34
			--[[ Upvalues[2]:
				[1]: PolicyService_upvr (copied, readonly)
				[2]: LocalPlayer_upvr (copied, readonly)
			]]
			return PolicyService_upvr:GetPolicyInfoForPlayerAsync(LocalPlayer_upvr)
		end)
		if pcall_result1 then
			var7_upvw = not not table.find(pcall_result2_2.AllowedExternalLinkReferences, "Discord")
		end
		var54 = var7_upvw
	end
	-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [901] 640. Error Block 23 start (CF ANALYSIS FAILED)
	local tbl_16 = {
		Name = "Community";
		Size = UDim2.fromScale(0.9, 0.3);
		BackgroundTransparency = 1;
		LayoutOrder = 1;
	}
	local tbl_7 = {}
	local tbl_15 = {}
	var71 = 0.35
	tbl_15.Size = UDim2.fromScale(1, var71)
	var71 = 0.45
	tbl_15.Position = UDim2.fromScale(0, var71)
	var71 = 63
	tbl_15.BackgroundColor3 = Color3.fromRGB(63, var71, 63)
	local tbl_5 = {}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var71 = var71(tbl_13)
		tbl_13.TextColor3 = Color3.fromRGB(255, 255, 255)
		tbl_13.BackgroundTransparency = 1
		tbl_13.AutomaticSize = Enum.AutomaticSize.X
		tbl_13.TextScaled = true
		tbl_13.FontFace = Font.fromEnum(Enum.Font.Arial)
		tbl_13.AnchorPoint = Vector2.new(0, 0.5)
		tbl_13.Position = UDim2.fromScale(0.03, 0.5)
		tbl_13.Size = UDim2.fromScale(0, 0.525)
		tbl_13.Text = arg1.Config.discord_link
		local tbl_13 = {}
		var71 = New_upvr("TextLabel")
		return var71
	end
	if not arg1.IsVertical:get() or not INLINED() then
		var71 = New_upvr("TextBox")
		var71 = var71({
			Text = arg1.Config.discord_link;
			Size = UDim2.fromScale(0, 0.525);
			Position = UDim2.fromScale(0.03, 0.5);
			AnchorPoint = Vector2.new(0, 0.5);
			FontFace = Font.fromEnum(Enum.Font.Arial);
			TextScaled = true;
			TextEditable = false;
			AutomaticSize = Enum.AutomaticSize.X;
			BackgroundTransparency = 1;
			TextColor3 = Color3.fromRGB(255, 255, 255);
		})
	end
	tbl_5[1] = var71
	tbl_5[2] = New_upvr("UICorner")({
		CornerRadius = UDim.new(0.2, 0);
	})
	tbl_15[Children_upvr] = tbl_5
	local tbl_10 = {}
	var71 = 1.2
	tbl_10.Size = UDim2.fromScale(var71, 0.02)
	tbl_7[1] = ActionButton_upvr({
		Name = "Title";
		Text = "Join the Community";
		Icon = "rbxassetid://13468517870";
		IconSize = UDim2.fromScale(0.75, 0.75);
		Size = UDim2.fromScale(0, 0.3);
		Position = UDim2.fromScale(0, 0.11);
		Font = Font_fromEnum_result1_upvr;
		Padding = 0.015;
		MiddleOffset = 0.1;
	})
	tbl_7[2] = New_upvr("Frame")(tbl_15)
	tbl_7[3] = Line_upvr(tbl_10)
	tbl_16[Children_upvr] = tbl_7
	local var84 = New_upvr("Frame")(tbl_16)
	if not var84 then
		-- KONSTANTERROR: [1147] 816. Error Block 13 start (CF ANALYSIS FAILED)
		var84 = nil
		-- KONSTANTERROR: [1147] 816. Error Block 13 end (CF ANALYSIS FAILED)
	end
	tbl_9[1] = New_upvr("UIListLayout")({
		Padding = UDim.new(0.01, 0);
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Vertical;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		[Ref_upvr] = Value_upvr();
	})
	tbl_9[2] = FollowFriends_upvr(tbl_2)
	tbl_9[3] = New_upvr("Frame")(tbl_14)
	tbl_9[4] = New_upvr("Frame")(tbl_8)
	tbl_9[5] = var84
	tbl_3[Children_upvr] = tbl_9
	tbl_6[1] = New_upvr("TextLabel")({
		Text = "No results.\nOnly exact match usernames work.";
		Size = UDim2.fromScale(0.7, 0.036);
		Position = UDim2.fromScale(0.5, 0.02);
		AnchorPoint = Vector2.new(0.5, 0);
		FontFace = Font_fromEnum_result1_upvr;
		TextScaled = true;
		BackgroundTransparency = 1;
		TextColor3 = Color3.fromRGB(255, 255, 255);
		Visible = Computed_upvr(function() -- Line 86
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.UserSearchFailed:get()
		end);
	})
	tbl_6[2] = New_upvr("Frame")(tbl_3)
	tbl_11[Children_upvr] = tbl_6
	module[1] = New_upvr("ScrollingFrame")(tbl_11)
	do
		return module
	end
	-- KONSTANTERROR: [901] 640. Error Block 23 end (CF ANALYSIS FAILED)
end