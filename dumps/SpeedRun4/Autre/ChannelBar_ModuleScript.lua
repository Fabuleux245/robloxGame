-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:05
-- Luau version 6, Types version 3
-- Time taken: 0.012578 seconds

local ExpChat = script:FindFirstAncestor("ExpChat")
local Parent = ExpChat.Parent
local UIBlox = require(Parent.UIBlox)
local function _(arg1) -- Line 54, Named "countAllChannelTabs"
	local var6 = 0
	for _ in pairs(arg1) do
		var6 += 1
	end
	return var6
end
local function setTransparency(arg1, arg2) -- Line 62
	return arg2:map(function(arg1_2) -- Line 63
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1 == nil then
			return 1
		end
		return arg1 + arg1_2 * (1 - arg1)
	end)
end
local Config_upvr = require(ExpChat.Config)
local React_upvr = require(Parent.React)
local ChannelTab_upvr = require(script.Parent.Parent.ChannelTab)
local TextChatService_upvr = game:GetService("TextChatService")
local useInterpolatedClientSettings_upvr = require(ExpChat.ClientSettings.useInterpolatedClientSettings)
local Color3_fromRGB_result1_upvr_2 = Color3.fromRGB(100, 100, 100)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_navigation_cycleDown_upvr = UIBlox.App.ImageSet.Images["icons/navigation/cycleDown"]
local Color3_fromRGB_result1_upvr = Color3.fromRGB(255, 255, 255)
return function(arg1) -- Line 68, Named "ChannelBar"
	--[[ Upvalues[10]:
		[1]: Config_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ChannelTab_upvr (readonly)
		[4]: setTransparency (readonly)
		[5]: TextChatService_upvr (readonly)
		[6]: useInterpolatedClientSettings_upvr (readonly)
		[7]: Color3_fromRGB_result1_upvr_2 (readonly)
		[8]: ImageSetLabel_upvr (readonly)
		[9]: icons_navigation_cycleDown_upvr (readonly)
		[10]: Color3_fromRGB_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var32 = 0
	for _ in pairs(arg1.allChannelTabs) do
		var32 += 1
	end
	local var36 = var32
	var32 = Config_upvr.ChatWindowSize.Y.Scale * arg1.chatWindowSettings.HeightScale
	var32 = React_upvr.useState(false)
	local any_useState_result1, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useState_result1_3_upvr, any_useState_result2_upvr_3 = React_upvr.useState(false)
	local any_useState_result1_2, any_useState_result2_upvr = React_upvr.useState(1024)
	if any_useState_result1_2 >= var36 * Config_upvr.ChannelTabsSettings.MinTabWidth then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if true or not var36 then
		local floored_upvr = math.floor((any_useState_result1_2 - Config_upvr.ChannelTabsSettings.DropdownIconContainerWidth) / Config_upvr.ChannelTabsSettings.MinTabWidth)
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if not true or not Config_upvr.ChannelTabsSettings.DropdownIconContainerWidth then
	end
	local var45 = (var36 - floored_upvr) * 40
	local function _() -- Line 90
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: floored_upvr (readonly)
		]]
		for _, v in pairs(arg1.allChannelTabs) do
			if floored_upvr < v.TabIndex and v.HasUnreadMessages then
				return true
			end
		end
		return false
	end
	local tbl_15 = {
		["$layout"] = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
		});
	}
	local tbl = {
		["$layout"] = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Vertical;
		});
	}
	for i_4, v_2 in pairs(arg1.allChannelTabs) do
		local setTransparency
		if v_2.TabIndex > floored_upvr then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
		local var61_upvr = arg1.allTextChannels[i_4]
		local tbl_2 = {}
		setTransparency = arg1.channelTabsSettings
		tbl_2.channelTabsSettings = setTransparency
		tbl_2.channelName = i_4
		tbl_2.textChannel = var61_upvr
		setTransparency = v_2.HasUnreadMessages
		tbl_2.hasUnreadMessages = setTransparency
		local function INLINED() -- Internal function, doesn't exist in bytecode
			setTransparency = true
			return setTransparency
		end
		if v_2.TabIndex < floored_upvr or INLINED() then
			if v_2.TabIndex >= var36 then
				setTransparency = false
			else
				setTransparency = true
			end
		end
		tbl_2.isDividerVisible = setTransparency
		setTransparency = not true
		tbl_2.isTabCollapsed = setTransparency
		setTransparency = arg1.selectedTabName
		if setTransparency then
			if arg1.selectedTabName ~= i_4 then
				setTransparency = false
			else
				setTransparency = true
			end
		end
		tbl_2.isTabSelected = setTransparency
		local var63_upvr = true
		function setTransparency() -- Line 126, Named "onTabSelected"
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: var61_upvr (readonly)
				[3]: var63_upvr (readonly)
				[4]: any_useState_result2_upvr_3 (readonly)
			]]
			arg1.onTabSelected(var61_upvr, not var63_upvr)
			any_useState_result2_upvr_3(false)
		end
		tbl_2.onTabSelected = setTransparency
		function setTransparency(arg1_3) -- Line 130
			--[[ Upvalues[2]:
				[1]: setTransparency (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return setTransparency(arg1_3, arg1.transparencyValue)
		end
		tbl_2.setTransparency = setTransparency
		if var63_upvr then
			setTransparency = React_upvr
			setTransparency = "Frame"
			tbl_15[v_2.TabIndex] = setTransparency.createElement(setTransparency, {
				Size = UDim2.new(0, (any_useState_result1_2 - 0) / floored_upvr, 1, 0);
				BackgroundTransparency = 1;
				LayoutOrder = v_2.TabIndex;
			}, {
				ChannelTab = React_upvr.createElement(ChannelTab_upvr, tbl_2);
			})
		else
			local var66 = v_2.TabIndex - floored_upvr
			setTransparency = React_upvr
			setTransparency = "Frame"
			local tbl_17 = {}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl_17.ChannelTab = React_upvr.createElement(ChannelTab_upvr, tbl_2)
			tbl[var66] = setTransparency.createElement(setTransparency, {
				Size = UDim2.new(1, 0, 0, 40);
				BackgroundTransparency = 1;
				LayoutOrder = var66;
			}, tbl_17)
			if v_2.HasUnreadMessages then
			end
		end
	end
	local class_ChannelTabsConfiguration_upvr = TextChatService_upvr:FindFirstChildOfClass("ChannelTabsConfiguration")
	local channelTabsSettings = arg1.channelTabsSettings
	local BackgroundTransparency_upvr = useInterpolatedClientSettings_upvr(channelTabsSettings).BackgroundTransparency
	var63_upvr = channelTabsSettings
	local BackgroundColor3 = useInterpolatedClientSettings_upvr(var63_upvr).BackgroundColor3
	var63_upvr = React_upvr
	var63_upvr = "Frame"
	var61_upvr = {}
	local var73 = var61_upvr
	var73.Size = UDim2.new(1, 0, 0, Config_upvr.ChannelTabsSettings.HorizontalBarHeight)
	var73.BackgroundTransparency = 1
	var73.Visible = arg1.visible
	var73.BorderSizePixel = 0
	var73[React_upvr.Event.MouseEnter] = arg1.onHovered
	var73[React_upvr.Event.MouseLeave] = arg1.onUnhovered
	var73[React_upvr.Change.AbsoluteSize] = function(arg1_4) -- Line 171
		--[[ Upvalues[2]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: class_ChannelTabsConfiguration_upvr (readonly)
		]]
		any_useState_result2_upvr(arg1_4.AbsoluteSize.X)
		if class_ChannelTabsConfiguration_upvr then
			class_ChannelTabsConfiguration_upvr:SetAbsoluteSize(arg1_4.AbsoluteSize)
		end
	end
	var73[React_upvr.Change.AbsolutePosition] = function(arg1_5) -- Line 177
		--[[ Upvalues[1]:
			[1]: class_ChannelTabsConfiguration_upvr (readonly)
		]]
		if class_ChannelTabsConfiguration_upvr then
			class_ChannelTabsConfiguration_upvr:SetAbsolutePosition(arg1_5.AbsolutePosition)
		end
	end
	local module = {}
	local tbl_19 = {
		ContentContainer = React_upvr.createElement("Frame", {
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
		}, tbl_15);
		TopCorner = React_upvr.createElement("ImageLabel", {
			BackgroundTransparency = 1;
			ImageColor3 = BackgroundColor3;
			ImageTransparency = arg1.transparencyValue:map(function(arg1_6) -- Line 63
				--[[ Upvalues[1]:
					[1]: BackgroundTransparency_upvr (readonly)
				]]
				if BackgroundTransparency_upvr == nil then
					return 1
				end
				return BackgroundTransparency_upvr + arg1_6 * (1 - BackgroundTransparency_upvr)
			end);
			Image = "rbxasset://textures/ui/TopRoundedRect8px.png";
			ScaleType = Enum.ScaleType.Slice;
			Size = UDim2.new(1, 0, 0, 8);
			SliceCenter = Rect.new(8, 8, 24, 32);
			BorderSizePixel = 0;
		});
	}
	local tbl_14 = {
		Size = UDim2.new(1, 0, 0, 1);
		Position = UDim2.new(0, 0, 1, -1);
		BackgroundColor3 = Config_upvr.ChannelTabsSettings.BorderColor3;
	}
	local BorderTransparency_upvr = Config_upvr.ChannelTabsSettings.BorderTransparency
	tbl_14.BackgroundTransparency = arg1.transparencyValue:map(function(arg1_7) -- Line 63
		--[[ Upvalues[1]:
			[1]: BorderTransparency_upvr (readonly)
		]]
		if BorderTransparency_upvr == nil then
			return 1
		end
		return BorderTransparency_upvr + arg1_7 * (1 - BorderTransparency_upvr)
	end)
	tbl_14.BorderSizePixel = 0
	tbl_19.BottomBorder = React_upvr.createElement("Frame", tbl_14)
	local tbl_11 = {}
	BorderTransparency_upvr = 1
	tbl_11.Size = UDim2.new(BorderTransparency_upvr, 0, 0, Config_upvr.ChannelTabsSettings.HorizontalBarHeight - 8 - 1)
	BorderTransparency_upvr = 0
	tbl_11.Position = UDim2.new(BorderTransparency_upvr, 0, 0, 8)
	tbl_11.BackgroundColor3 = BackgroundColor3
	BorderTransparency_upvr = arg1.transparencyValue
	tbl_11.BackgroundTransparency = BorderTransparency_upvr:map(function(arg1_8) -- Line 63
		--[[ Upvalues[1]:
			[1]: BackgroundTransparency_upvr (readonly)
		]]
		if BackgroundTransparency_upvr == nil then
			return 1
		end
		return BackgroundTransparency_upvr + arg1_8 * (1 - BackgroundTransparency_upvr)
	end)
	tbl_11.BorderSizePixel = 0
	tbl_19.Background = React_upvr.createElement("Frame", tbl_11)
	module.HorizontalBar = React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}, tbl_19)
	local var87 = true
	if var87 then
		var87 = React_upvr.createElement
		local tbl_6 = {}
		local tbl_4 = {}
		BorderTransparency_upvr = 1
		tbl_4.AnchorPoint = Vector2.new(BorderTransparency_upvr, 0.5)
		BorderTransparency_upvr = 1
		tbl_4.Position = UDim2.new(BorderTransparency_upvr, -Config_upvr.ChannelTabsSettings.DropdownIconPadding / 2, 0.5, -4)
		BorderTransparency_upvr = 0
		local var95_upvr = BorderTransparency_upvr
		tbl_4.Size = UDim2.new(var95_upvr, 27, 0, 27)
		if any_useState_result1 then
			var95_upvr = 0.3
		else
			var95_upvr = 1
		end
		tbl_4.BackgroundTransparency = arg1.transparencyValue:map(function(arg1_9) -- Line 63
			--[[ Upvalues[1]:
				[1]: var95_upvr (readonly)
			]]
			if var95_upvr == nil then
				return 1
			end
			return var95_upvr + arg1_9 * (1 - var95_upvr)
		end)
		tbl_4.BackgroundColor3 = Color3_fromRGB_result1_upvr_2
		tbl_4.Text = ""
		tbl_4.BorderSizePixel = 0
		var95_upvr = React_upvr.Event
		function var95_upvr() -- Line 247
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (readonly)
			]]
			any_useState_result2_upvr_2(true)
		end
		tbl_4[var95_upvr.MouseEnter] = var95_upvr
		var95_upvr = React_upvr.Event
		function var95_upvr() -- Line 250
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (readonly)
			]]
			any_useState_result2_upvr_2(false)
		end
		tbl_4[var95_upvr.MouseLeave] = var95_upvr
		var95_upvr = React_upvr.Event
		function var95_upvr() -- Line 253
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_3 (readonly)
				[2]: any_useState_result1_3_upvr (readonly)
			]]
			any_useState_result2_upvr_3(not any_useState_result1_3_upvr)
		end
		tbl_4[var95_upvr.Activated] = var95_upvr
		local tbl_16 = {}
		var95_upvr = React_upvr.createElement
		var95_upvr = var95_upvr("UICorner", {
			CornerRadius = UDim.new(0, 27);
		})
		tbl_16.UICorner = var95_upvr
		var95_upvr = React_upvr.createElement
		local tbl_3 = {
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromScale(0.6, 0.6);
			BackgroundTransparency = 1;
			Image = icons_navigation_cycleDown_upvr;
			ImageColor3 = Color3_fromRGB_result1_upvr;
		}
		local const_number_upvr = 0
		tbl_3.ImageTransparency = arg1.transparencyValue:map(function(arg1_10) -- Line 63
			--[[ Upvalues[1]:
				[1]: const_number_upvr (readonly)
			]]
			if const_number_upvr == nil then
				return 1
			end
			return const_number_upvr + arg1_10 * (1 - const_number_upvr)
		end)
		tbl_3.ScaleType = Enum.ScaleType.Stretch
		tbl_3.BorderSizePixel = 0
		var95_upvr = var95_upvr(ImageSetLabel_upvr, tbl_3)
		tbl_16.DropdownIconImage = var95_upvr
		tbl_6.TextButton = React_upvr.createElement("TextButton", tbl_4, tbl_16)
		local var101 = true
		if var101 then
			var101 = React_upvr.createElement
			local tbl_12 = {}
			var95_upvr = 0
			tbl_12.Size = UDim2.new(var95_upvr, 8, 0, 8)
			var95_upvr = 0
			tbl_12.Position = UDim2.new(var95_upvr, 18, 0.5, -4)
			var95_upvr = 1
			tbl_12.AnchorPoint = Vector2.new(var95_upvr, 0.5)
			var95_upvr = Config_upvr.ChannelTabsSettings
			tbl_12.BackgroundColor3 = var95_upvr.UnreadDotColor3
			var95_upvr = arg1.transparencyValue
			local var112_upvr = 0
			tbl_12.BackgroundTransparency = var95_upvr:map(function(arg1_11) -- Line 63
				--[[ Upvalues[1]:
					[1]: var112_upvr (readonly)
				]]
				if var112_upvr == nil then
					return 1
				end
				return var112_upvr + arg1_11 * (1 - var112_upvr)
			end)
			tbl_12.BorderSizePixel = 0
			local tbl_10 = {}
			var95_upvr = React_upvr.createElement
			local tbl_9 = {}
			var112_upvr = 1
			tbl_9.CornerRadius = UDim.new(var112_upvr, 0)
			var95_upvr = var95_upvr("UICorner", tbl_9)
			tbl_10.UICorner = var95_upvr
			var101 = var101("Frame", tbl_12, tbl_10)
		end
		tbl_6.UnreadDot = var101
		var87 = var87("Frame", {
			AnchorPoint = Vector2.new(1, 0);
			Position = UDim2.new(1, 0, 0, 8);
			Size = UDim2.new(0, Config_upvr.ChannelTabsSettings.DropdownIconContainerWidth, 1, -9);
			BackgroundColor3 = Color3.fromRGB(255, 0, 0);
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
		}, tbl_6)
	end
	module.DropdownButton = var87
	var87 = true
	local var107 = var87
	if var107 then
		var107 = React_upvr.createElement
		local tbl_5 = {
			AnchorPoint = Vector2.new(1, 0);
		}
		var95_upvr = Config_upvr.ChannelTabsSettings.HorizontalBarHeight
		tbl_5.Position = UDim2.new(1, -1, 0, var95_upvr + 1)
		tbl_5.Size = UDim2.new(0, 150, 0, var45)
		tbl_5.BackgroundTransparency = 1
		tbl_5.Visible = any_useState_result1_3_upvr
		local tbl_13 = {}
		local tbl_8 = {}
		var95_upvr = 150
		tbl_8.MaxSize = Vector2.new(var95_upvr, var32 * Config_upvr.ChatWindowMaxWidth)
		tbl_13.UISizeConstraint = React_upvr.createElement("UISizeConstraint", tbl_8)
		local tbl_18 = {
			ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		}
		var95_upvr = Config_upvr.ChannelTabsSettings
		tbl_18.Color = var95_upvr.BorderColor3
		var95_upvr = Config_upvr.ChannelTabsSettings.BorderTransparency
		function var112_upvr(arg1_12) -- Line 63
			--[[ Upvalues[1]:
				[1]: var95_upvr (readonly)
			]]
			if var95_upvr == nil then
				return 1
			end
			return var95_upvr + arg1_12 * (1 - var95_upvr)
		end
		tbl_18.Transparency = arg1.transparencyValue:map(var112_upvr)
		tbl_13.Border = React_upvr.createElement("UIStroke", tbl_18)
		local tbl_7 = {}
		var95_upvr = 1
		tbl_7.Size = UDim2.fromScale(var95_upvr, 1)
		var95_upvr = 0
		tbl_7.CanvasSize = UDim2.new(var95_upvr, 150, 0, var45)
		var95_upvr = arg1.transparencyValue
		var112_upvr = 0
		tbl_7.BackgroundTransparency = var95_upvr:map(function(arg1_13) -- Line 63
			--[[ Upvalues[1]:
				[1]: var112_upvr (readonly)
			]]
			if var112_upvr == nil then
				return 1
			end
			return var112_upvr + arg1_13 * (1 - var112_upvr)
		end)
		tbl_7.ScrollBarThickness = 4
		var95_upvr = arg1.transparencyValue
		var112_upvr = 0
		tbl_7.ScrollBarImageTransparency = var95_upvr:map(function(arg1_14) -- Line 63
			--[[ Upvalues[1]:
				[1]: var112_upvr (readonly)
			]]
			if var112_upvr == nil then
				return 1
			end
			return var112_upvr + arg1_14 * (1 - var112_upvr)
		end)
		tbl_7.ScrollingDirection = Enum.ScrollingDirection.Y
		tbl_7.ElasticBehavior = Enum.ElasticBehavior.Always
		tbl_7.ClipsDescendants = true
		tbl_7.BorderSizePixel = 0
		tbl_13.ScrollView = React_upvr.createElement("ScrollingFrame", tbl_7, tbl)
		var107 = var107("Frame", tbl_5, tbl_13)
	end
	module.DropdownMenu = var107
	return var63_upvr.createElement(var63_upvr, var73, module)
end