-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:32
-- Luau version 6, Types version 3
-- Time taken: 0.005667 seconds

local Parent = script.Parent.Parent
local Fusion = require(Parent.Parent.Parent.Utils.Fusion)
local New_upvr = Fusion.New
local Computed_upvr = Fusion.Computed
local Children_upvr = Fusion.Children
local IconButton_upvr = require(Parent.Components.IconButton)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
return function(arg1) -- Line 16
	--[[ Upvalues[5]:
		[1]: New_upvr (readonly)
		[2]: Computed_upvr (readonly)
		[3]: Children_upvr (readonly)
		[4]: IconButton_upvr (readonly)
		[5]: LocalPlayer_upvr (readonly)
	]]
	local Font_fromEnum_result1_upvr = Font.fromEnum(Enum.Font.Arial)
	Font_fromEnum_result1_upvr.Bold = true
	local tbl_3_upvr = {{
		Id = "home";
		Name = "Home";
		Icon = "rbxassetid://13367821505";
	}, {
		Id = "explore";
		Name = "Explore";
		Icon = "rbxassetid://14299332292";
		IconSize = 0.8;
	}, {
		Id = "notifications";
		Name = "Notifications";
		Icon = "rbxassetid://13367818387";
	}, {
		Id = arg1.initialProfileFeed;
		Name = "Profile";
		Icon = "rbxassetid://13367820770";
	}}
	local function addNotificationCount_upvr() -- Line 46, Named "addNotificationCount"
		--[[ Upvalues[5]:
			[1]: New_upvr (copied, readonly)
			[2]: Computed_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: Children_upvr (copied, readonly)
			[5]: Font_fromEnum_result1_upvr (readonly)
		]]
		return New_upvr("ImageLabel")({
			Name = "Notice";
			Size = UDim2.fromScale(0.4, 0.4);
			Position = UDim2.fromScale(0.575, 0.28);
			AnchorPoint = Vector2.new(0.5, 0.5);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			BackgroundTransparency = 1;
			Image = "rbxassetid://12776995467";
			ImageColor3 = Color3.fromRGB(224, 83, 83);
			Visible = Computed_upvr(function() -- Line 56
				--[[ Upvalues[1]:
					[1]: arg1 (copied, readonly)
				]]
				local var17
				if 0 >= arg1.NotificationCount:get() then
					var17 = false
				else
					var17 = true
				end
				return var17
			end);
			ZIndex = 3;
			[Children_upvr] = {New_upvr("TextLabel")({
				Name = "Count";
				Text = Computed_upvr(function() -- Line 64
					--[[ Upvalues[1]:
						[1]: arg1 (copied, readonly)
					]]
					return arg1.NotificationCount:get()
				end);
				Size = UDim2.fromScale(0.9, 0.9);
				Position = UDim2.fromScale(0.5, 0.5);
				AnchorPoint = Vector2.new(0.5, 0.5);
				BackgroundTransparency = 1;
				TextScaled = true;
				FontFace = Font_fromEnum_result1_upvr;
				TextColor3 = Color3.fromRGB(255, 255, 255);
				ZIndex = 4;
			})};
		})
	end
	local main_upvr = arg1.Config.feeds.main
	local function insertFeed_upvr(arg1_2, arg2, arg3) -- Line 80, Named "insertFeed"
		--[[ Upvalues[7]:
			[1]: IconButton_upvr (copied, readonly)
			[2]: Computed_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: main_upvr (readonly)
			[5]: LocalPlayer_upvr (copied, readonly)
			[6]: Children_upvr (copied, readonly)
			[7]: addNotificationCount_upvr (readonly)
		]]
		local tbl = {
			Name = arg2.Name;
			Text = "";
			Icon = arg2.Icon;
			IconSize = arg2.IconSize or 0.7;
			IconPositionX = 0.5;
			LabelPositionX = 0;
			IconAnchorPointX = 0.5;
			CornerRadius = UDim.new(0, 8);
		}
		tbl.LayoutOrder = arg3
		tbl.Size = UDim2.fromScale(0.225, 1)
		tbl.SizeConstraint = Enum.SizeConstraint.RelativeYY
		tbl.BackgroundColor = Color3.fromRGB(63, 63, 63)
		tbl.SelectedBackgroundColor = Color3.fromRGB(255, 255, 255)
		tbl.SelectedIconColor = Color3.fromRGB(255, 255, 255)
		tbl.ImageColor3 = Color3.fromRGB(255, 255, 255)
		tbl.BackgroundTransparency = 1
		tbl.Selected = Computed_upvr(function() -- Line 101
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: main_upvr (copied, readonly)
				[3]: arg2 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
			local var24
			if arg1.DisableHomeButtons then
				return false
			end
			var24 = arg1
			local var25 = var24.LastBottomBtnPress:get() or arg1.CurrentFeedTypeValue:get()
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var24 = arg1.initialProfileFeed
				return var24
			end
			if not arg1.isProfileFeed(var25) or not INLINED() then
				var24 = var25
			end
			var24 = main_upvr
			-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [47] 37. Error Block 10 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [47] 37. Error Block 10 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [41] 33. Error Block 8 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [47.8]
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			-- KONSTANTERROR: [41] 33. Error Block 8 end (CF ANALYSIS FAILED)
		end)
		function tbl.OnActivated() -- Line 127
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: arg2 (readonly)
				[3]: LocalPlayer_upvr (copied, readonly)
			]]
			arg1.LastBottomBtnPress:set(arg2.Id)
			if arg2.Id == arg1.initialProfileFeed then
				arg1.OnSwitchFeedClicked(arg1.initialProfileFeed, LocalPlayer_upvr.UserId, true)
			else
				arg1.OnSwitchFeedClicked(arg2.Id, nil, true)
			end
		end
		local tbl_2 = {}
		local var27
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var27 = addNotificationCount_upvr()
			return var27
		end
		if arg2.Id ~= "notifications" or not INLINED_2() then
			var27 = nil
		end
		tbl_2[1] = var27
		tbl[Children_upvr] = tbl_2
		table.insert(arg1_2, IconButton_upvr(tbl))
	end
	return {New_upvr("Frame")({
		Name = "Menu";
		Size = UDim2.fromScale(0.95, 0.791);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		[Children_upvr] = {New_upvr("UIListLayout")({
			Padding = UDim.new(0.019, 0);
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
		}), (function() -- Line 144, Named "fillFeeds"
			--[[ Upvalues[2]:
				[1]: tbl_3_upvr (readonly)
				[2]: insertFeed_upvr (readonly)
			]]
			local module = {}
			for i, v in tbl_3_upvr do
				insertFeed_upvr(module, v, i)
			end
			return module
		end)()};
	})}
end