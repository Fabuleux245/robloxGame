-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:13
-- Luau version 6, Types version 3
-- Time taken: 0.017670 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local React_upvr = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Enabled_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Chrome.Enabled)
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local var6_result1_upvr = Enabled_upvr()
if var6_result1_upvr then
	var6_result1_upvr = not game:DefineFastFlag("DisablePlayerListDisplayCloseBtn", false)
end
local tbl_3_upvr = {
	dampingRatio = 1;
	frequency = 4;
}
local useLayoutValues_upvr = require(CorePackages.Workspace.Packages.PlayerList).Common.useLayoutValues
local useStyle_upvr = UIBlox.Core.Style.useStyle
local Otter_upvr = require(CorePackages.Packages.Otter)
local GuiService_upvr = game:GetService("GuiService")
local UserInputService_upvr = game:GetService("UserInputService")
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local PlayerEntryContainer_upvr = require(Parent_2.Components.Container.PlayerEntryContainer)
local TitleBarContainer_upvr = require(Parent_2.Components.Container.TitleBarContainer)
local TeamListContainer_upvr = require(Parent_2.Components.Container.TeamListContainer)
local FFlagPlayerListFixMobileScrolling_upvr = require(Parent_2.Flags.FFlagPlayerListFixMobileScrolling)
local any_getIconSize_result1_upvr = UIBlox.App.ImageSet.getIconSize(IconSize_upvr.Small)
local IconButton_upvr = UIBlox.App.Button.IconButton
local Images_upvr = UIBlox.App.ImageSet.Images
local PlayerDropDown_upvr = require(Parent.Presentation.PlayerDropDown)
return React_upvr.memo(function(arg1) -- Line 76, Named "PlayerListDisplayView"
	--[[ Upvalues[19]:
		[1]: useLayoutValues_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Otter_upvr (readonly)
		[5]: tbl_3_upvr (readonly)
		[6]: GuiService_upvr (readonly)
		[7]: UserInputService_upvr (readonly)
		[8]: LocalPlayer_upvr (readonly)
		[9]: PlayerEntryContainer_upvr (readonly)
		[10]: TitleBarContainer_upvr (readonly)
		[11]: TeamListContainer_upvr (readonly)
		[12]: FFlagPlayerListFixMobileScrolling_upvr (readonly)
		[13]: Enabled_upvr (readonly)
		[14]: var6_result1_upvr (readonly)
		[15]: any_getIconSize_result1_upvr (readonly)
		[16]: IconButton_upvr (readonly)
		[17]: IconSize_upvr (readonly)
		[18]: Images_upvr (readonly)
		[19]: PlayerDropDown_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useLayoutValues_upvr_result1_upvr = useLayoutValues_upvr()
	local var11_result1 = useStyle_upvr()
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_3 = React_upvr.useRef(nil)
	local any_useRef_result1_upvr_2 = React_upvr.useRef(Otter_upvr.createSingleMotor(0))
	local any_useState_result1, any_useState_result2_upvr_8 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_7_upvr, any_useState_result2_upvr_9 = React_upvr.useState(100)
	local any_useState_result1_2, any_useState_result2_upvr_3 = React_upvr.useState(0)
	local any_useState_result1_6, any_useState_result2_upvr_2 = React_upvr.useState(true)
	local any_useState_result1_4_upvr, any_useState_result2_upvr_5 = React_upvr.useState(Vector2.new(0, 0))
	local any_useState_result1_9, any_useState_result2_upvr_6 = React_upvr.useState(0)
	local any_useState_result1_5_upvr, any_useState_result2_upvr_4 = React_upvr.useState(0)
	local any_useState_result1_8, any_useState_result2_upvr_7 = React_upvr.useState(0)
	local any_useState_result1_3, any_useState_result2_upvr = React_upvr.useState(nil)
	local any_createBinding_result1_2, any_createBinding_result2_upvr = React_upvr.createBinding(0)
	local any_createBinding_result1, any_createBinding_result2 = React_upvr.createBinding(0)
	local any_createBinding_result1_3, any_createBinding_result2_2 = React_upvr.createBinding(0)
	local any_map_result1 = React_upvr.joinBindings({any_createBinding_result1_2, any_createBinding_result1, any_createBinding_result1_3}):map(function(arg1_2) -- Line 106
		local _2 = arg1_2[2]
		return _2 + (arg1_2[3] - _2) * arg1_2[1]
	end)
	local any_useCallback_result1 = React_upvr.useCallback(function(arg1_4) -- Line 118
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_9 (readonly)
		]]
		any_useState_result2_upvr_9(arg1_4.AbsoluteSize.Y)
	end, {})
	local function var60(arg1_5) -- Line 122
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_8 (readonly)
		]]
		any_useState_result2_upvr_8(arg1_5.CanvasPosition)
	end
	React_upvr.useEffect(function() -- Line 141
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr_2 (readonly)
			[2]: any_createBinding_result2_upvr (readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
		]]
		any_useRef_result1_upvr_2.current:onStep(any_createBinding_result2_upvr)
		any_useRef_result1_upvr_2.current:onComplete(function(arg1_7) -- Line 143
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr_2 (copied, readonly)
			]]
			if arg1_7 == 0 then
				any_useState_result2_upvr_2(true)
			end
		end)
	end, {})
	React_upvr.useEffect(function() -- Line 150
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr_2 (readonly)
			[3]: any_useRef_result1_upvr_2 (readonly)
			[4]: Otter_upvr (copied, readonly)
			[5]: tbl_3_upvr (copied, readonly)
		]]
		if arg1.isSmallTouchDevice then
			any_useState_result2_upvr_2(not arg1.isMinimized)
		else
			if any_useRef_result1_upvr_2.current then
				local var68 = Otter_upvr
				if arg1.isMinimized then
					var68 = 1
				else
					var68 = 0
				end
				any_useRef_result1_upvr_2.current:setGoal(var68.spring(var68, tbl_3_upvr))
			end
			if arg1.isMinimized then
				any_useState_result2_upvr_2(false)
			end
		end
	end, {arg1.isSmallTouchDevice, arg1.isMinimized, any_useRef_result1_upvr_2.current})
	React_upvr.useEffect(function() -- Line 165
		--[[ Upvalues[5]:
			[1]: any_useState_result1_7_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: useLayoutValues_upvr_result1_upvr (readonly)
			[4]: any_useState_result1_5_upvr (readonly)
			[5]: any_useState_result2_upvr_6 (readonly)
		]]
		local var71 = any_useState_result1_7_upvr - 8
		if 0 < arg1.gameStatsCount then
			var71 -= useLayoutValues_upvr_result1_upvr.TitleBarSizeY or 0
		end
		any_useState_result2_upvr_6(math.min(any_useState_result1_5_upvr, var71))
	end, {any_useState_result1_7_upvr, any_useState_result1_5_upvr, arg1.gameStatsCount, useLayoutValues_upvr_result1_upvr.TitleBarSizeY})
	React_upvr.useEffect(function() -- Line 176
		--[[ Upvalues[5]:
			[1]: any_useState_result1_4_upvr (readonly)
			[2]: any_useRef_result1_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: any_useState_result2_upvr_7 (readonly)
			[5]: any_useState_result2_upvr (readonly)
		]]
		local X = any_useState_result1_4_upvr.X
		local Y = any_useState_result1_4_upvr.Y
		local current = any_useRef_result1_upvr.current
		if arg1.isSmallTouchDevice or not current then
			any_useState_result2_upvr_7(X)
			any_useState_result2_upvr(nil)
		else
			local var77 = X - current.AbsolutePosition.Y
			if current.AbsoluteSize.Y <= var77 + Y then
				local var78 = var77 + Y - current.AbsoluteSize.Y
				any_useState_result2_upvr_7(var77 - var78)
				any_useState_result2_upvr(Vector2.new(0, current.CanvasPosition.Y + var78))
				return
			end
			any_useState_result2_upvr_7(var77)
			any_useState_result2_upvr(nil)
		end
	end, {any_useState_result1_4_upvr, arg1.isSmallTouchDevice, any_useRef_result1_upvr.current})
	React_upvr.useEffect(function() -- Line 199
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: GuiService_upvr (copied, readonly)
			[3]: any_useRef_result1_upvr_3 (readonly)
			[4]: UserInputService_upvr (copied, readonly)
			[5]: any_useRef_result1_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [31] 23. Error Block 7 start (CF ANALYSIS FAILED)
		any_useRef_result1_upvr.current.SelectionGroup = true
		any_useRef_result1_upvr.current.SelectionBehaviorUp = Enum.SelectionBehavior.Stop
		any_useRef_result1_upvr.current.SelectionBehaviorDown = Enum.SelectionBehavior.Stop
		any_useRef_result1_upvr.current.SelectionBehaviorLeft = Enum.SelectionBehavior.Stop
		any_useRef_result1_upvr.current.SelectionBehaviorRight = Enum.SelectionBehavior.Stop
		do
			return
		end
		-- KONSTANTERROR: [31] 23. Error Block 7 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [66] 44. Error Block 22 start (CF ANALYSIS FAILED)
		if arg1.isDirectionalPreferred and arg1.isUsingGamepad then
			UserInputService_upvr.OverrideMouseIconBehavior = Enum.OverrideMouseIconBehavior.None
		end
		if any_useRef_result1_upvr.current and GuiService_upvr.SelectedCoreObject and GuiService_upvr.SelectedCoreObject:IsDescendantOf(any_useRef_result1_upvr.current) then
			GuiService_upvr.SelectedCoreObject = nil
		end
		if any_useRef_result1_upvr.current and not arg1.isSmallTouchDevice then
			any_useRef_result1_upvr.current.SelectionGroup = false
		end
		-- KONSTANTERROR: [66] 44. Error Block 22 end (CF ANALYSIS FAILED)
	end, {arg1.isVisible, arg1.isSmallTouchDevice, arg1.isDirectionalPreferred, arg1.isUsingGamepad, any_useRef_result1_upvr_3.current, any_useRef_result1_upvr.current})
	local tbl_5_upvr = {}
	local tbl_12 = {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Vertical;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
	}
	local var84
	if arg1.isDirectionalPreferred then
		var84 = UDim.new(0, useLayoutValues_upvr_result1_upvr.EntryPadding)
	else
		var84 = nil
	end
	tbl_12.Padding = var84
	tbl_5_upvr.UIListLayout = React_upvr.createElement("UIListLayout", tbl_12)
	if LocalPlayer_upvr and arg1.isSmallTouchDevice and React_upvr.useCallback(function() -- Line 130
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var63
		if not var63 then
			var63 = false
			return var63
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var63 = true
			return 0 >= arg1.teamList.getCount(false)
		end
		if not arg1.teamList or INLINED() then
			var63 = false
		end
		if 0 >= arg1.gameStatsCount then
		end
		return var63 or false
	end, {arg1.gameStatsCount, arg1.isSmallTouchDevice, arg1.teamList})() then
		local tbl_15 = {}
		var84 = arg1.entrySizeX
		tbl_15.entrySizeX = var84
		var84 = -2
		tbl_15.layoutOrder = var84
		var84 = true
		tbl_15.titlePlayerEntry = var84
		var84 = LocalPlayer_upvr
		tbl_15.player = var84
		var84 = arg1.playerIconInfo[LocalPlayer_upvr.UserId]
		if not var84 then
			var84 = {}
			var84.isPlaceOwner = false
		end
		tbl_15.playerIconInfo = var84
		if not arg1.playerRelationship[LocalPlayer_upvr.UserId] then
			({}).isBlocked = false
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({}).friendStatus = Enum.FriendStatus.NotFriend
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({}).isFollowing = false
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({}).isFollower = false
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_15.playerRelationship = {}
		tbl_15.setDropDownPlayerDimensionY = any_useState_result2_upvr_5
		tbl_5_upvr.TitlePlayer = React_upvr.createElement(PlayerEntryContainer_upvr, tbl_15)
	end
	if arg1.isSmallTouchDevice then
		tbl_5_upvr.TitleBar = React_upvr.createElement(TitleBarContainer_upvr, {
			size = UDim2.new(1, 0, 0, useLayoutValues_upvr_result1_upvr.TitleBarSizeY);
			entrySizeX = arg1.entrySizeX;
			layoutOrder = -1;
			contentsVisible = any_useState_result1_6;
			isSmallTouchDevice = true;
		})
	end
	if 0 < arg1.teamListCount then
		local var88_upvw = math.huge
		local var89_upvw = 0
		arg1.teamList.iterateData(function(arg1_8, arg2) -- Line 269
			--[[ Upvalues[9]:
				[1]: var88_upvw (read and write)
				[2]: var89_upvw (read and write)
				[3]: tbl_5_upvr (readonly)
				[4]: React_upvr (copied, readonly)
				[5]: TeamListContainer_upvr (copied, readonly)
				[6]: useLayoutValues_upvr_result1_upvr (readonly)
				[7]: arg1 (readonly)
				[8]: any_useRef_result1_upvr_3 (readonly)
				[9]: any_useState_result2_upvr_5 (readonly)
			]]
			local var90
			if arg2.order(false) <= var88_upvw and 0 < arg2.players.getCount(false) then
				var88_upvw = arg2.order(false)
				var90 = true
			end
			var89_upvw += 1
			local tbl_7 = {
				size = UDim2.new(1, 0, 0, useLayoutValues_upvr_result1_upvr.TeamEntrySizeY);
				entrySizeX = arg1.entrySizeX;
			}
			tbl_7.teamData = arg2
			tbl_7.playerIconInfos = arg1.playerIconInfo
			local playerRelationship = arg1.playerRelationship
			tbl_7.playerRelationships = playerRelationship
			if var90 then
				playerRelationship = any_useRef_result1_upvr_3
			else
				playerRelationship = nil
			end
			tbl_7.firstPlayerRef = playerRelationship
			tbl_7.setDropDownPlayerDimensionY = any_useState_result2_upvr_5
			tbl_7.isSmallTouchDevice = arg1.isSmallTouchDevice
			tbl_7.isDirectionalPreferred = arg1.isDirectionalPreferred
			tbl_5_upvr["t_"..tostring(var89_upvw)] = React_upvr.createElement(TeamListContainer_upvr, tbl_7)
		end, false)
	end
	if arg1.isSmallTouchDevice then
		local var93 = true
		if not FFlagPlayerListFixMobileScrolling_upvr then
			var93 = not arg1.dropDownVisible
		end
		;({}).Active = FFlagPlayerListFixMobileScrolling_upvr
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).Size = UDim2.fromScale(1, 1)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).CanvasSize = UDim2.new(0, 0, 0, 0)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).AutomaticCanvasSize = Enum.AutomaticSize.Y
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).BackgroundTransparency = 1
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).ScrollBarImageColor3 = useLayoutValues_upvr_result1_upvr.ScrollImageColor
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).ScrollBarImageTransparency = useLayoutValues_upvr_result1_upvr.ScrollImageTransparency
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).BorderSizePixel = 0
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).ScrollBarThickness = useLayoutValues_upvr_result1_upvr.ScrollBarSizeMobile
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).VerticalScrollBarInset = Enum.ScrollBarInset.None
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).HorizontalScrollBarInset = Enum.ScrollBarInset.None
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).ClipsDescendants = true
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).ScrollingEnabled = var93
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).ElasticBehavior = Enum.ElasticBehavior.Never
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).Selectable = false
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).ScrollingDirection = Enum.ScrollingDirection.Y
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({})[React_upvr.Change.CanvasPosition] = React_upvr.useCallback(var60, {})
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({})[React_upvr.Change.AbsoluteSize] = any_useCallback_result1
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return React_upvr.createElement("ScrollingFrame", {}, tbl_5_upvr)
	end
	local var94
	if arg1.isDirectionalPreferred then
		local tbl_13 = {}
		var94 = UDim2.new(1, 0, 1, 0)
		tbl_13.Size = var94
		var94 = UDim2.new(0, 0, 0, 0)
		tbl_13.CanvasSize = var94
		var94 = Enum.AutomaticSize.Y
		tbl_13.AutomaticCanvasSize = var94
		var94 = 1
		tbl_13.BackgroundTransparency = var94
		var94 = useLayoutValues_upvr_result1_upvr.ScrollImageColor
		tbl_13.ScrollBarImageColor3 = var94
		var94 = useLayoutValues_upvr_result1_upvr.ScrollImageTransparency
		tbl_13.ScrollBarImageTransparency = var94
		var94 = 0
		tbl_13.BorderSizePixel = var94
		var94 = 6
		tbl_13.ScrollBarThickness = var94
		var94 = Enum.ScrollBarInset.Always
		tbl_13.VerticalScrollBarInset = var94
		var94 = true
		tbl_13.ClipsDescendants = var94
		var94 = not arg1.dropDownVisible
		tbl_13.ScrollingEnabled = var94
		var94 = false
		tbl_13.Selectable = var94
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var94 = any_useState_result1_3
			return var94
		end
		if not arg1.dropDownVisible or not INLINED_2() then
			var94 = any_useState_result1
		end
		tbl_13.CanvasPosition = var94
		tbl_13.ref = any_useRef_result1_upvr
		var94 = React_upvr.Change.CanvasPosition
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_13[var94] = React_upvr.useCallback(var60, {})
		var94 = tbl_5_upvr
		;({}).TenFootScrollingFrame = React_upvr.createElement("ScrollingFrame", tbl_13, var94)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		return React_upvr.createElement("Frame", {
			Position = useLayoutValues_upvr_result1_upvr.PlayerScrollListPosition;
			Size = useLayoutValues_upvr_result1_upvr.PlayerScrollListSize;
			BackgroundTransparency = 1;
			[React_upvr.Change.AbsoluteSize] = any_useCallback_result1;
		}, {})
	end
	local var97 = useLayoutValues_upvr_result1_upvr.ScrollBarOffset or 0
	if Enabled_upvr() then
	else
	end
	any_createBinding_result2(useLayoutValues_upvr_result1_upvr.OverrideBackgroundTransparency * var11_result1.Settings.PreferredTransparency)
	any_createBinding_result2_2(useLayoutValues_upvr_result1_upvr.FadedBackgroundTransparency or 0)
	local module = {}
	local tbl_8 = {}
	local tbl_16 = {}
	local var104_upvr = useLayoutValues_upvr_result1_upvr.FadedBackgroundScaleDelta or 0
	tbl_16.Scale = any_createBinding_result1_2:map(function(arg1_9) -- Line 376
		--[[ Upvalues[1]:
			[1]: var104_upvr (readonly)
		]]
		return 1 - var104_upvr * arg1_9
	end)
	tbl_8.UIScale = React_upvr.createElement("UIScale", tbl_16)
	local any_createElement_result1_2 = React_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Vertical;
		VerticalAlignment = Enum.VerticalAlignment.Top;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
	})
	tbl_8.UIListLayout = any_createElement_result1_2
	if not var6_result1_upvr then
		any_createElement_result1_2 = React_upvr.createElement
		any_createElement_result1_2 = any_createElement_result1_2("ImageLabel", {
			LayoutOrder = 1;
			BackgroundTransparency = 1;
			Image = "rbxasset://textures/ui/TopRoundedRect8px.png";
			ImageColor3 = var11_result1.Theme.BackgroundContrast.Color;
			ImageTransparency = any_map_result1;
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect.new(8, 8, 24, 18);
			SliceScale = 0.5;
			Size = UDim2.new(1, 0, 0, 4);
		})
	else
		any_createElement_result1_2 = React_upvr.createElement
		local tbl_10 = {}
		local tbl_4 = {
			Size = UDim2.new(1, 0, 0, (any_getIconSize_result1_upvr + 2) * 2);
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_4.BackgroundColor3 = var11_result1.Theme.BackgroundContrast.Color
		tbl_4.BackgroundTransparency = any_map_result1
		tbl_10.DismissIconFrame = React_upvr.createElement("Frame", tbl_4, {
			DismissButton = React_upvr.createElement(IconButton_upvr, {
				position = UDim2.new(0, 1, 0, 1);
				iconSize = IconSize_upvr.Small;
				icon = Images_upvr["icons/navigation/close"];
				onActivated = arg1.dismissPlayerList;
			});
			UICorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, 7);
			});
		})
		any_createElement_result1_2 = any_createElement_result1_2("Frame", {
			LayoutOrder = 1;
			ClipsDescendants = true;
			Size = UDim2.new(1, 0, 0, any_getIconSize_result1_upvr + 2);
			BackgroundTransparency = 1;
		}, tbl_10)
	end
	tbl_8.TopRoundedRect = any_createElement_result1_2
	any_createElement_result1_2 = false
	local var114 = any_createElement_result1_2
	if 0 < arg1.gameStatsCount then
		var114 = React_upvr.createElement
		var114 = var114(TitleBarContainer_upvr, {
			size = UDim2.new(1, 0, 0, useLayoutValues_upvr_result1_upvr.TitleBarSizeY);
			entrySizeX = arg1.entrySizeX;
			layoutOrder = 2;
			contentsVisible = any_useState_result1_6;
			showBackground = true;
			backgroundTransparency = any_map_result1;
		})
	end
	tbl_8.TitleBar = var114
	local tbl_2 = {
		LayoutOrder = 3;
		Position = UDim2.new(0, 0, 0, 0);
		Size = UDim2.new(1, 0, 0, any_useState_result1_9);
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_2.BackgroundColor3 = var11_result1.Theme.BackgroundContrast.Color
	tbl_2.BackgroundTransparency = any_map_result1
	tbl_2.BorderSizePixel = 0
	local Change = React_upvr.Change
	tbl_2[Change.AbsolutePosition] = React_upvr.useCallback(function(arg1_6) -- Line 126
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr_3 (readonly)
		]]
		any_useState_result2_upvr_3(arg1_6.AbsolutePosition.Y)
	end, {})
	local tbl_14 = {}
	if any_useState_result1_6 then
		Change = React_upvr.createElement
		Change = Change(PlayerDropDown_upvr, {
			contentsVisible = any_useState_result1_6;
			selectedPlayer = arg1.dropDownPlayer;
			positionY = any_useState_result1_8;
			minPositionBoundY = -any_useState_result1_2 + useLayoutValues_upvr_result1_upvr.DropDownScreenSidePadding;
			maxPositionBoundY = arg1.screenSizeY - any_useState_result1_2 - useLayoutValues_upvr_result1_upvr.DropDownScreenSidePadding;
		})
	else
		Change = nil
	end
	tbl_14.PlayerDropDown = Change
	local tbl_17 = {}
	local tbl_11 = {
		Size = UDim2.new(1, -var97, 0, any_useState_result1_9);
		CanvasSize = UDim2.new(0, 0, 0, 0);
		AutomaticCanvasSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		ScrollBarImageColor3 = useLayoutValues_upvr_result1_upvr.ScrollImageColor;
		ScrollBarImageTransparency = useLayoutValues_upvr_result1_upvr.ScrollImageTransparency;
		BorderSizePixel = 0;
		ScrollBarThickness = useLayoutValues_upvr_result1_upvr.ScrollBarSize;
		VerticalScrollBarInset = Enum.ScrollBarInset.Always;
		ClipsDescendants = false;
		ScrollingEnabled = not arg1.dropDownVisible;
		Selectable = false;
	}
	if not arg1.dropDownVisible or not any_useState_result1_3 then
	end
	tbl_11.CanvasPosition = any_useState_result1
	tbl_11.ref = any_useRef_result1_upvr
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_11[React_upvr.Change.CanvasPosition] = React_upvr.useCallback(var60, {})
	tbl_17.ScrollingFrame = React_upvr.createElement("ScrollingFrame", tbl_11, {
		OffsetUndoFrame = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, var97 + (useLayoutValues_upvr_result1_upvr.ScrollBarSize or 0), 0, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			[React_upvr.Change.AbsoluteSize] = React_upvr.useCallback(function(arg1_3) -- Line 114
				--[[ Upvalues[1]:
					[1]: any_useState_result2_upvr_4 (readonly)
				]]
				any_useState_result2_upvr_4(arg1_3.AbsoluteSize.Y)
			end, {});
		}, tbl_5_upvr);
	})
	tbl_14.ScrollingFrameClippingFrame = React_upvr.createElement("Frame", {
		Visible = any_useState_result1_6;
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		ClipsDescendants = true;
	}, tbl_17)
	tbl_8.ScrollingFrameContainer = React_upvr.createElement("Frame", tbl_2, tbl_14)
	if not var6_result1_upvr then
		local tbl_6 = {
			LayoutOrder = 4;
			BackgroundTransparency = 1;
			Image = "rbxasset://textures/ui/BottomRoundedRect8px.png";
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_6.ImageColor3 = var11_result1.Theme.BackgroundContrast.Color
		tbl_6.ImageTransparency = any_map_result1
		tbl_6.ScaleType = Enum.ScaleType.Slice
		tbl_6.SliceCenter = Rect.new(8, 8, 24, 16)
		tbl_6.SliceScale = 0.5
		tbl_6.Size = UDim2.new(1, 0, 0, 4)
		local any_createElement_result1 = React_upvr.createElement("ImageLabel", tbl_6)
	else
		local tbl_9 = {}
		local tbl = {
			Position = UDim2.new(0, 0, 0, -8);
			Size = UDim2.new(1, 0, 0, 14);
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.BackgroundColor3 = var11_result1.Theme.BackgroundContrast.Color
		tbl.BackgroundTransparency = any_map_result1
		tbl.BorderSizePixel = 0
		tbl_9[1] = React_upvr.createElement("Frame", tbl, {React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, 7);
		})})
	end
	tbl_8.BottomRoundedRect = React_upvr.createElement("Frame", {
		LayoutOrder = 4;
		ClipsDescendants = true;
		Size = UDim2.new(1, 0, 0, 7);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}, tbl_9)
	module.SizeOffsetFrame = React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
	}, tbl_8)
	return React_upvr.createElement("Frame", {
		Position = useLayoutValues_upvr_result1_upvr.PlayerScrollListPosition;
		Size = useLayoutValues_upvr_result1_upvr.PlayerScrollListSize;
		BackgroundTransparency = 1;
		[React_upvr.Change.AbsoluteSize] = any_useCallback_result1;
	}, module)
end)