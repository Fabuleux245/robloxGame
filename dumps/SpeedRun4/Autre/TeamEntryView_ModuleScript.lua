-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:14
-- Luau version 6, Types version 3
-- Time taken: 0.006035 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local React_upvr = require(CorePackages.Packages.React)
local PlayerList = require(CorePackages.Workspace.Packages.PlayerList)
local useLayoutValues_upvr = PlayerList.Common.useLayoutValues
local useStyle_upvr = require(CorePackages.Packages.UIBlox).Core.Style.useStyle
local StatEntryContainer_upvr = require(Parent.Parent.Components.Container.StatEntryContainer)
local EntryFrameView_upvr = PlayerList.Presentation.EntryFrameView
local CellExtender_upvr = require(Parent.Presentation.CellExtender)
return React_upvr.memo(function(arg1) -- Line 48, Named "TeamEntryView"
	--[[ Upvalues[6]:
		[1]: useLayoutValues_upvr (readonly)
		[2]: useStyle_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: StatEntryContainer_upvr (readonly)
		[5]: EntryFrameView_upvr (readonly)
		[6]: CellExtender_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local useLayoutValues_upvr_result1_upvr = useLayoutValues_upvr()
	local var6_result1_upvr = useStyle_upvr()
	local var12_upvr = arg1.isSmallTouchDevice or false
	local var13_upvr = arg1.isDirectionalPreferred or false
	local var14
	if var13_upvr then
		local DefaultTextStyle_upvw = useLayoutValues_upvr_result1_upvr.DefaultTextStyle
		var14 = useLayoutValues_upvr_result1_upvr.TeamEntryFont
	end
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 68
		--[[ Upvalues[5]:
			[1]: var12_upvr (readonly)
			[2]: var6_result1_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: var13_upvr (readonly)
			[5]: useLayoutValues_upvr_result1_upvr (readonly)
		]]
		if var12_upvr then
			local tbl = {
				Color = arg1.teamColor;
				Transparency = var6_result1_upvr.Settings.PreferredTransparency * 0.5;
			}
			return tbl
		end
		if var13_upvr then
			local module = {}
			tbl = arg1.teamColor
			local var19 = tbl
			module.Color = var19
			if useLayoutValues_upvr_result1_upvr.BackgroundStyle then
				var19 = useLayoutValues_upvr_result1_upvr.BackgroundStyle.Default.Transparency
			else
				var19 = 0
			end
			module.Transparency = var19
			return module
		end
		return {
			Color = arg1.teamColor;
			Transparency = useLayoutValues_upvr_result1_upvr.TeamEntryBackgroundTransparency * var6_result1_upvr.Settings.PreferredTransparency;
		}
	end, {var12_upvr, var13_upvr, arg1.teamColor, var6_result1_upvr, useLayoutValues_upvr_result1_upvr})
	local tbl_4_upvr = {
		Color = Color3.new(1, 1, 1);
		Transparency = 1;
	}
	if var12_upvr then
		local module_2_upvr = {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
			NameFrame = React_upvr.createElement("TextLabel", {
				Size = UDim2.new(0, useLayoutValues_upvr_result1_upvr.PlayerNameSizeXMobile, 1, 0);
				TextXAlignment = Enum.TextXAlignment.Left;
				Font = var14;
				TextSize = useLayoutValues_upvr_result1_upvr.PlayerNameTextSize;
				LayoutOrder = 0;
				TextColor3 = DefaultTextStyle_upvw.Color;
				TextStrokeTransparency = DefaultTextStyle_upvw.StrokeTransparency;
				TextStrokeColor3 = DefaultTextStyle_upvw.StrokeColor;
				BackgroundTransparency = 1;
				Text = arg1.teamName;
				TextTruncate = Enum.TextTruncate.AtEnd;
			}, {
				UIPadding = React_upvr.createElement("UIPadding", {
					PaddingLeft = UDim.new(0, useLayoutValues_upvr_result1_upvr.TeamEntryTextPaddingMobile);
				});
			});
		}
		if 0 < arg1.gameStatsCount and 0 <= arg1.teamStatsCount then
			local MaxLeaderstats_upvr = useLayoutValues_upvr_result1_upvr.MaxLeaderstats
			arg1.gameStats.iterateData(function(arg1_2, arg2) -- Line 132
				--[[ Upvalues[6]:
					[1]: MaxLeaderstats_upvr (readonly)
					[2]: arg1 (readonly)
					[3]: module_2_upvr (readonly)
					[4]: React_upvr (copied, readonly)
					[5]: StatEntryContainer_upvr (copied, readonly)
					[6]: DefaultTextStyle_upvw (read and write)
				]]
				if MaxLeaderstats_upvr < arg2.order(false) then
				else
					local tbl_7 = {}
					tbl_7.statName = arg1_2
					tbl_7.stat = arg1.teamStats.getData(arg1_2, false)
					tbl_7.isTeamEntry = true
					tbl_7.showStatTitle = false
					tbl_7.textStyle = DefaultTextStyle_upvw
					module_2_upvr["GameStat_"..arg1_2] = React_upvr.createElement(StatEntryContainer_upvr, tbl_7)
				end
			end, false)
		end
		return React_upvr.createElement("Frame", {
			LayoutOrder = arg1.layoutOrder;
			Size = arg1.size;
			BackgroundColor3 = any_useMemo_result1_upvr.Color;
			BackgroundTransparency = any_useMemo_result1_upvr.Transparency;
			BorderSizePixel = 0;
			GroupTransparency = nil;
		}, module_2_upvr)
	end
	local module_upvr = {}
	if var13_upvr then
	end
	module_upvr.UIListLayout = React_upvr.createElement("UIListLayout", {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Horizontal;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		Padding = UDim.new(0, useLayoutValues_upvr_result1_upvr.PlayerEntryPadding);
	})
	local tbl_3 = {
		Shadow = React_upvr.createElement("ImageLabel", {
			BackgroundTransparency = 1;
			Image = useLayoutValues_upvr_result1_upvr.ShadowImage;
			Position = UDim2.new(0, -useLayoutValues_upvr_result1_upvr.ShadowSize, 0, 0);
			Size = UDim2.new(1, useLayoutValues_upvr_result1_upvr.ShadowSize * 2, 1, useLayoutValues_upvr_result1_upvr.ShadowSize);
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = useLayoutValues_upvr_result1_upvr.ShadowSliceRect;
			Visible = var13_upvr;
		});
	}
	local tbl_6 = {}
	local tbl_5 = {
		Position = UDim2.new(0, 0, 0, 0);
		Size = UDim2.new(1, 0, 1, 0);
		TextXAlignment = Enum.TextXAlignment.Left;
		Font = var14;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_5.TextSize = useLayoutValues_upvr_result1_upvr.PlayerNameTextSize
	tbl_5.TextColor3 = DefaultTextStyle_upvw.Color
	tbl_5.TextStrokeTransparency = DefaultTextStyle_upvw.StrokeTransparency
	tbl_5.TextStrokeColor3 = DefaultTextStyle_upvw.StrokeColor
	tbl_5.BackgroundTransparency = 1
	tbl_5.Text = arg1.teamName
	tbl_5.TextTruncate = Enum.TextTruncate.AtEnd
	tbl_6.TeamName = React_upvr.createElement("TextLabel", tbl_5, {React_upvr.createElement("UIPadding", {
		PaddingLeft = UDim.new(0, useLayoutValues_upvr_result1_upvr.TeamEntryTextPadding);
	})})
	tbl_3.BGFrame = React_upvr.createElement(EntryFrameView_upvr, {
		size = UDim2.new(0, arg1.entrySizeX, 0, useLayoutValues_upvr_result1_upvr.TeamEntrySizeY);
		isTeamFrame = true;
		backgroundStyle = any_useMemo_result1_upvr;
		overlayStyle = tbl_4_upvr;
		doubleOverlay = false;
	}, tbl_6)
	module_upvr.NameFrame = React_upvr.createElement("Frame", {
		LayoutOrder = 0;
		Size = UDim2.new(0, arg1.entrySizeX, 0, useLayoutValues_upvr_result1_upvr.TeamEntrySizeY);
		BackgroundTransparency = 1;
	}, tbl_3)
	if 0 < arg1.gameStatsCount and 0 <= arg1.teamStatsCount then
		arg1.gameStats.iterateData(function(arg1_3, arg2) -- Line 218
			--[[ Upvalues[8]:
				[1]: MaxLeaderstats_upvr (readonly)
				[2]: arg1 (readonly)
				[3]: module_upvr (readonly)
				[4]: React_upvr (copied, readonly)
				[5]: StatEntryContainer_upvr (copied, readonly)
				[6]: any_useMemo_result1_upvr (readonly)
				[7]: tbl_4_upvr (readonly)
				[8]: DefaultTextStyle_upvw (read and write)
			]]
			if MaxLeaderstats_upvr < arg2.order(false) then
			else
				local tbl_2 = {}
				tbl_2.statName = arg1_3
				tbl_2.stat = arg1.teamStats.getData(arg1_3, false)
				tbl_2.isTeamEntry = true
				tbl_2.showStatTitle = false
				tbl_2.backgroundStyle = any_useMemo_result1_upvr
				tbl_2.overlayStyle = tbl_4_upvr
				tbl_2.doubleOverlay = false
				tbl_2.textStyle = DefaultTextStyle_upvw
				module_upvr["GameStat_"..arg1_3] = React_upvr.createElement(StatEntryContainer_upvr, tbl_2)
			end
		end, false)
	end
	if not var13_upvr then
		module_upvr.BackgroundExtender = React_upvr.createElement(CellExtender_upvr, {
			layoutOrder = 100;
			size = UDim2.new(0, useLayoutValues_upvr_result1_upvr.ExtraContainerPadding, 1, 0);
			backgroundStyle = any_useMemo_result1_upvr;
			overlayStyle = tbl_4_upvr;
			doubleOverlay = false;
		})
	end
	return React_upvr.createElement("Frame", {
		Size = arg1.size;
		BackgroundColor3 = Color3.new(1, 1, 1);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		LayoutOrder = arg1.layoutOrder;
		GroupTransparency = nil;
	}, module_upvr)
end)