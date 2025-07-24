-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:12
-- Luau version 6, Types version 3
-- Time taken: 0.014332 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent
local Parent_2 = Parent.Parent
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local React_upvr = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local PlayerList = require(CorePackages.Workspace.Packages.PlayerList)
local EntryFrameView_upvr = PlayerList.Presentation.EntryFrameView
local module_4_upvr = {
	Transparency = 1;
	Color = Color3.new(1, 1, 1);
}
local PlayerIcon_upvr = require(Parent.PlayerIcon)
local PlayerNameTag_upvr = require(Parent_2.Presentation.PlayerNameTag)
local any_memo_result1_upvw = React_upvr.memo(function(arg1) -- Line 97, Named "IconAndName"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: PlayerIcon_upvr (readonly)
		[3]: PlayerNameTag_upvr (readonly)
	]]
	return React_upvr.createElement(React_upvr.Fragment, {}, {
		Layout = React_upvr.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder;
			FillDirection = Enum.FillDirection.Horizontal;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			Padding = UDim.new(0, arg1.layoutValues.InitalPlayerEntryPadding);
		});
		InitalPadding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, arg1.layoutValues.InitalPlayerEntryPadding);
		});
		PlayerIcon = React_upvr.createElement(PlayerIcon_upvr, {
			player = arg1.player;
			playerIconInfo = arg1.playerIconInfo;
			playerRelationship = arg1.playerRelationship;
			layoutOrder = 1;
		});
		PlayerName = React_upvr.createElement(PlayerNameTag_upvr, {
			player = arg1.player;
			isTitleEntry = arg1.titlePlayerEntry;
			isHovered = arg1.isHovered;
			textStyle = arg1.textStyle;
			textFont = arg1.playerNameFont;
			layoutOrder = 3;
		});
	})
end)
local StatEntryContainer_upvr = require(Parent_2.Parent.Components.Container.StatEntryContainer)
local CellExtender_upvr = require(Parent_2.Presentation.CellExtender)
local SignalsReact_upvr = require(CorePackages.Packages.SignalsReact)
local Enabled_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Chrome.Enabled)
local useLayoutValues_upvr = PlayerList.Common.useLayoutValues
local useStyle_upvr = require(CorePackages.Packages.UIBlox).Core.Style.useStyle
local Players_upvr = game:GetService("Players")
local GetFFlagGateLeaderboardPlayerDropdownViaGUAC_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagGateLeaderboardPlayerDropdownViaGUAC
local InExperienceCapabilities_upvr = require(CorePackages.Workspace.Packages.InExperienceCapabilities).InExperienceCapabilities
local ControlState_upvr = Foundation.Enums.ControlState
local View_upvr = Foundation.View
local any_memo_result1_upvw_2 = React_upvr.memo(function(arg1) -- Line 152, Named "PlayerEntryChildren"
	--[[ Upvalues[6]:
		[1]: React_upvr (readonly)
		[2]: any_memo_result1_upvw (read and write)
		[3]: EntryFrameView_upvr (readonly)
		[4]: StatEntryContainer_upvr (readonly)
		[5]: Cryo_upvr (readonly)
		[6]: CellExtender_upvr (readonly)
	]]
	local var20 = arg1.isSmallTouchDevice or false
	local var21 = arg1.isDirectionalPreferred or false
	local layoutValues = arg1.layoutValues
	local textStyle = arg1.textStyle
	local isPressed = arg1.isPressed
	local gameStats = arg1.gameStats
	local module_3_upvr = {}
	local tbl_4 = {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Horizontal;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	}
	if var21 then
		tbl_4.Padding = UDim.new(0, layoutValues.PlayerEntryPadding)
	end
	module_3_upvr.Layout = React_upvr.createElement("UIListLayout", tbl_4)
	local any_createElement_result1 = React_upvr.createElement(any_memo_result1_upvw, {
		player = arg1.player;
		playerIconInfo = arg1.playerIconInfo;
		playerRelationship = arg1.playerRelationship;
		titlePlayerEntry = arg1.titlePlayerEntry;
		isHovered = arg1.isHovered;
		textStyle = textStyle;
		playerNameFont = arg1.playerNameFont;
		layoutValues = layoutValues;
	})
	local tbl_5 = {
		LayoutOrder = 0;
		BackgroundTransparency = 1;
	}
	if var20 then
		tbl_5.Size = UDim2.new(0, layoutValues.PlayerNameSizeXMobile, 0, layoutValues.PlayerEntrySizeY)
	else
		tbl_5.Size = UDim2.new(0, arg1.entrySizeX, 0, layoutValues.PlayerEntrySizeY)
	end
	module_3_upvr.NameFrame = React_upvr.createElement("Frame", tbl_5, any_createElement_result1)
	if var21 then
		module_3_upvr.NameFrame = React_upvr.createElement("Frame", tbl_5, {
			Shadow = React_upvr.createElement("ImageLabel", {
				BackgroundTransparency = 1;
				Image = layoutValues.ShadowImage;
				Position = UDim2.new(0, -layoutValues.ShadowSize, 0, 0);
				Size = UDim2.new(1, layoutValues.ShadowSize * 2, 1, layoutValues.ShadowSize);
				ScaleType = Enum.ScaleType.Slice;
				SliceCenter = layoutValues.ShadowSliceRect;
				Visible = var21;
			});
			BackgroundFrame = React_upvr.createElement(EntryFrameView_upvr, arg1.backgroundFrameProps, any_createElement_result1);
		})
	end
	local tbl_3_upvr = {
		isTeamEntry = false;
		showStatTitle = arg1.titlePlayerEntry and var21;
		textStyle = textStyle;
	}
	if var21 then
		tbl_3_upvr.backgroundStyle = arg1.backgroundStyle
		tbl_3_upvr.overlayStyle = arg1.overlayStyle
		tbl_3_upvr.doubleOverlay = isPressed
	end
	if gameStats and 0 < arg1.gameStatsCount and arg1.playerStats and 0 <= arg1.playerStatsCount then
		local MaxLeaderstats_upvr = layoutValues.MaxLeaderstats
		local playerStats_upvr = arg1.playerStats
		gameStats.iterateData(function(arg1_2, arg2) -- Line 242
			--[[ Upvalues[7]:
				[1]: MaxLeaderstats_upvr (readonly)
				[2]: playerStats_upvr (readonly)
				[3]: module_3_upvr (readonly)
				[4]: React_upvr (copied, readonly)
				[5]: StatEntryContainer_upvr (copied, readonly)
				[6]: Cryo_upvr (copied, readonly)
				[7]: tbl_3_upvr (readonly)
			]]
			if MaxLeaderstats_upvr < arg2.order(false) then
			else
				local tbl = {}
				tbl.statName = arg1_2
				tbl.stat = playerStats_upvr.getData(arg1_2, false)
				module_3_upvr["GameStat_"..arg1_2] = React_upvr.createElement(StatEntryContainer_upvr, Cryo_upvr.Dictionary.join(tbl_3_upvr, tbl))
			end
		end, false)
	end
	if not var20 and not var21 then
		module_3_upvr.BackgroundExtender = React_upvr.createElement(CellExtender_upvr, {
			layoutOrder = 100;
			size = UDim2.new(0, layoutValues.ExtraContainerPadding, 1, 0);
			backgroundStyle = {
				Color = Color3.new(1, 1, 1);
				Transparency = 1;
			};
			overlayStyle = {
				Color = Color3.new(1, 1, 1);
				Transparency = 1;
			};
			doubleOverlay = isPressed;
		})
	end
	return React_upvr.createElement(React_upvr.Fragment, {}, module_3_upvr)
end)
return React_upvr.memo(function(arg1) -- Line 279, Named "PlayerEntryView"
	--[[ Upvalues[14]:
		[1]: SignalsReact_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Enabled_upvr (readonly)
		[4]: useLayoutValues_upvr (readonly)
		[5]: useStyle_upvr (readonly)
		[6]: Players_upvr (readonly)
		[7]: GetFFlagGateLeaderboardPlayerDropdownViaGUAC_upvr (readonly)
		[8]: InExperienceCapabilities_upvr (readonly)
		[9]: ControlState_upvr (readonly)
		[10]: module_4_upvr (readonly)
		[11]: View_upvr (readonly)
		[12]: any_memo_result1_upvw_2 (read and write)
		[13]: EntryFrameView_upvr (readonly)
		[14]: Cryo_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useSignalState_result1_upvr = SignalsReact_upvr.useSignalState(arg1.playerData.stats.getCount)
	local any_useSignalBinding_result1_upvr = SignalsReact_upvr.useSignalBinding(arg1.playerData.order)
	local any_useMemo_result1 = React_upvr.useMemo(function() -- Line 293
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: any_useSignalBinding_result1_upvr (readonly)
		]]
		if arg1.layoutOrder then
			return arg1.layoutOrder
		end
		return any_useSignalBinding_result1_upvr
	end, {arg1.layoutOrder, any_useSignalBinding_result1_upvr})
	local any_useState_result1_upvr, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_useState_result1_upvr_2, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local var42_result1_upvr = Enabled_upvr()
	local useLayoutValues_upvr_result1_upvr = useLayoutValues_upvr()
	local useStyle_upvr_result1_upvr = useStyle_upvr()
	local var70_upvr
	if arg1.size then
		local size = arg1.size
	else
		var70_upvr = 0
	end
	local isSmallTouchDevice_upvr = arg1.isSmallTouchDevice
	local IsTenFoot_upvr = useLayoutValues_upvr_result1_upvr.IsTenFoot
	if arg1.player ~= Players_upvr.LocalPlayer then
		var70_upvr = false
	else
		var70_upvr = true
	end
	local var74
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 316
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: GetFFlagGateLeaderboardPlayerDropdownViaGUAC_upvr (copied, readonly)
			[3]: InExperienceCapabilities_upvr (copied, readonly)
			[4]: any_useRef_result1_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
		if not arg1.openDropdown or not arg1.closeDropdown then return end
		-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [13] 11. Error Block 6 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [13] 11. Error Block 6 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [21] 16. Error Block 7 start (CF ANALYSIS FAILED)
		arg1.closeDropdown()
		do
			return
		end
		-- KONSTANTERROR: [21] 16. Error Block 7 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [26] 20. Error Block 8 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [26] 20. Error Block 8 end (CF ANALYSIS FAILED)
	end, {arg1.dropdownOpen, arg1.selectedPlayer, arg1.player, arg1.openDropdown, arg1.closeDropdown, arg1.setDropDownPlayerDimensionY, any_useRef_result1_upvr.current})
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_5) -- Line 347
		--[[ Upvalues[3]:
			[1]: ControlState_upvr (copied, readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: any_useState_result2_upvr_2 (readonly)
		]]
		if arg1_5 == ControlState_upvr.Pressed or arg1_5 == ControlState_upvr.SelectedPressed then
			any_useState_result2_upvr(true)
		else
			if arg1_5 == ControlState_upvr.Hover or arg1_5 == ControlState_upvr.Selected then
				any_useState_result2_upvr_2(true)
				return
			end
			if arg1_5 == ControlState_upvr.Default then
				any_useState_result2_upvr_2(false)
				any_useState_result2_upvr(false)
			end
		end
	end, {})
	local any_useMemo_result1_2_upvr = React_upvr.useMemo(function() -- Line 358
		--[[ Upvalues[2]:
			[1]: var42_result1_upvr (readonly)
			[2]: useStyle_upvr_result1_upvr (readonly)
		]]
		local var81
		if var42_result1_upvr then
			var81 = useStyle_upvr_result1_upvr.Theme.BackgroundUIContrast.Color
		else
			var81 = useStyle_upvr_result1_upvr.Theme.BackgroundContrast.Color
		end
		return {
			Color = var81;
			Transparency = 1;
		}
	end, {var42_result1_upvr, IsTenFoot_upvr})
	local any_useMemo_result1_4_upvr = React_upvr.useMemo(function() -- Line 368
		--[[ Upvalues[1]:
			[1]: useLayoutValues_upvr_result1_upvr (readonly)
		]]
		return {
			Color = useLayoutValues_upvr_result1_upvr.RowHoverColor;
			Transparency = 0.8;
		}
	end, {useLayoutValues_upvr_result1_upvr})
	local any_useMemo_result1_7_upvr = React_upvr.useMemo(function() -- Line 375
		--[[ Upvalues[1]:
			[1]: useLayoutValues_upvr_result1_upvr (readonly)
		]]
		return {
			Color = useLayoutValues_upvr_result1_upvr.RowDefaultColor;
			Transparency = 0.8;
		}
	end, {useLayoutValues_upvr_result1_upvr})
	local any_useMemo_result1_3_upvr = React_upvr.useMemo(function() -- Line 472
		--[[ Upvalues[6]:
			[1]: isSmallTouchDevice_upvr (readonly)
			[2]: var70_upvr (readonly)
			[3]: useStyle_upvr_result1_upvr (readonly)
			[4]: IsTenFoot_upvr (readonly)
			[5]: arg1 (readonly)
			[6]: useLayoutValues_upvr_result1_upvr (readonly)
		]]
		if isSmallTouchDevice_upvr then
			if var70_upvr then
				return {
					Font = useStyle_upvr_result1_upvr.Font.CaptionHeader.Font;
					Size = useStyle_upvr_result1_upvr.Font.CaptionHeader.RelativeSize * useStyle_upvr_result1_upvr.Font.BaseSize;
					MinSize = useStyle_upvr_result1_upvr.Font.Footer.RelativeMinSize * useStyle_upvr_result1_upvr.Font.BaseSize;
				}
			end
			return {
				Font = useStyle_upvr_result1_upvr.Font.CaptionBody.Font;
				Size = useStyle_upvr_result1_upvr.Font.CaptionBody.RelativeSize * useStyle_upvr_result1_upvr.Font.BaseSize;
				MinSize = useStyle_upvr_result1_upvr.Font.Footer.RelativeMinSize * useStyle_upvr_result1_upvr.Font.BaseSize;
			}
		end
		if IsTenFoot_upvr then
			if arg1.titlePlayerEntry then
				return {
					Font = useLayoutValues_upvr_result1_upvr.TitlePlayerEntryFont;
					Size = useLayoutValues_upvr_result1_upvr.PlayerNameTextSize;
					MinSize = useLayoutValues_upvr_result1_upvr.PlayerNameTextSize;
				}
			end
			return {
				Font = useLayoutValues_upvr_result1_upvr.PlayerEntryFont;
				Size = useLayoutValues_upvr_result1_upvr.PlayerNameTextSize;
				MinSize = useLayoutValues_upvr_result1_upvr.PlayerNameTextSize;
			}
		end
		if var70_upvr then
			return {
				Font = useStyle_upvr_result1_upvr.Font.CaptionHeader.Font;
				Size = useStyle_upvr_result1_upvr.Font.CaptionHeader.RelativeSize * useStyle_upvr_result1_upvr.Font.BaseSize;
				MinSize = useStyle_upvr_result1_upvr.Font.Footer.RelativeMinSize * useStyle_upvr_result1_upvr.Font.BaseSize;
			}
		end
		return {
			Font = useStyle_upvr_result1_upvr.Font.CaptionBody.Font;
			Size = useStyle_upvr_result1_upvr.Font.CaptionBody.RelativeSize * useStyle_upvr_result1_upvr.Font.BaseSize;
			MinSize = useStyle_upvr_result1_upvr.Font.Footer.RelativeMinSize * useStyle_upvr_result1_upvr.Font.BaseSize;
		}
	end, {isSmallTouchDevice_upvr, IsTenFoot_upvr, var70_upvr, useStyle_upvr_result1_upvr, useLayoutValues_upvr_result1_upvr})
	local var111_upvr = React_upvr.useCallback(function() -- Line 383
		--[[ Upvalues[9]:
			[1]: isSmallTouchDevice_upvr (readonly)
			[2]: any_useState_result1_upvr (readonly)
			[3]: any_useState_result1_upvr_2 (readonly)
			[4]: any_useMemo_result1_4_upvr (readonly)
			[5]: any_useMemo_result1_7_upvr (readonly)
			[6]: IsTenFoot_upvr (readonly)
			[7]: any_useMemo_result1_2_upvr (readonly)
			[8]: arg1 (readonly)
			[9]: useLayoutValues_upvr_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var94
		if isSmallTouchDevice_upvr then
			if not any_useState_result1_upvr then
			end
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var94 = any_useMemo_result1_4_upvr
				return var94
			end
			if not any_useState_result1_upvr_2 or not INLINED() then
				var94 = any_useMemo_result1_7_upvr
			end
			return var94
		end
		if not IsTenFoot_upvr then
			return any_useMemo_result1_2_upvr
		end
		if arg1.dropdownOpen then
			if arg1.selectedPlayer ~= arg1.player then
			else
			end
		end
		if arg1.titlePlayerEntry and useLayoutValues_upvr_result1_upvr.BackgroundStyle then
			if any_useState_result1_upvr and useLayoutValues_upvr_result1_upvr.BackgroundStyle.HoveredTitle then
				return useLayoutValues_upvr_result1_upvr.BackgroundStyle.HoveredTitle
			end
			if useLayoutValues_upvr_result1_upvr.BackgroundStyle.Title then
				return useLayoutValues_upvr_result1_upvr.BackgroundStyle.Title
			end
		end
		if true and useLayoutValues_upvr_result1_upvr.BackgroundStyle and useLayoutValues_upvr_result1_upvr.BackgroundStyle.Selected then
			local Selected = useLayoutValues_upvr_result1_upvr.BackgroundStyle.Selected
			if not Selected then
				Selected = useLayoutValues_upvr_result1_upvr.BackgroundStyle.Default
			end
			return Selected
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if any_useState_result1_upvr and useLayoutValues_upvr_result1_upvr.BackgroundStyle and useLayoutValues_upvr_result1_upvr.BackgroundStyle.Hovered then
			return useLayoutValues_upvr_result1_upvr.BackgroundStyle.Hovered
		end
		if useLayoutValues_upvr_result1_upvr.BackgroundStyle and useLayoutValues_upvr_result1_upvr.BackgroundStyle.Default then
			return useLayoutValues_upvr_result1_upvr.BackgroundStyle.Default
		end
		return any_useMemo_result1_2_upvr
	end, {any_useMemo_result1_2_upvr, isSmallTouchDevice_upvr, arg1.dropdownOpen, arg1.selectedPlayer, arg1.player, arg1.titlePlayerEntry, any_useState_result1_upvr, any_useState_result1_upvr_2})()
	local var112_upvr = React_upvr.useCallback(function() -- Line 428
		--[[ Upvalues[5]:
			[1]: IsTenFoot_upvr (readonly)
			[2]: any_useState_result1_upvr (readonly)
			[3]: useLayoutValues_upvr_result1_upvr (readonly)
			[4]: var70_upvr (readonly)
			[5]: useStyle_upvr_result1_upvr (readonly)
		]]
		if IsTenFoot_upvr then
			if any_useState_result1_upvr then
				return useLayoutValues_upvr_result1_upvr.HoveredTextStyle, useLayoutValues_upvr_result1_upvr.PlayerNameTextSize
			end
			return useLayoutValues_upvr_result1_upvr.DefaultTextStyle, useLayoutValues_upvr_result1_upvr.PlayerNameTextSize
		end
		if var70_upvr then
			return useStyle_upvr_result1_upvr.Theme.TextEmphasis, useLayoutValues_upvr_result1_upvr.PlayerNameTextSize
		end
		return useStyle_upvr_result1_upvr.Theme.TextDefault, useLayoutValues_upvr_result1_upvr.PlayerNameTextSize
	end, {any_useState_result1_upvr, var70_upvr, IsTenFoot_upvr, useLayoutValues_upvr_result1_upvr, useStyle_upvr_result1_upvr})()
	local var113_upvr = React_upvr.useCallback(function() -- Line 449
		--[[ Upvalues[6]:
			[1]: IsTenFoot_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: any_useState_result1_upvr_2 (readonly)
			[4]: useStyle_upvr_result1_upvr (readonly)
			[5]: any_useState_result1_upvr (readonly)
			[6]: module_4_upvr (copied, readonly)
		]]
		if not IsTenFoot_upvr then
			local dropdownOpen = arg1.dropdownOpen
			if dropdownOpen then
				if arg1.selectedPlayer ~= arg1.player then
					dropdownOpen = false
				else
					dropdownOpen = true
				end
			end
			if any_useState_result1_upvr_2 then
				return useStyle_upvr_result1_upvr.Theme.BackgroundOnPress
			end
			if dropdownOpen then
				return useStyle_upvr_result1_upvr.Theme.BackgroundOnPress
			end
			if any_useState_result1_upvr then
				return useStyle_upvr_result1_upvr.Theme.BackgroundOnHover
			end
		end
		return module_4_upvr
	end, {any_useState_result1_upvr, any_useState_result1_upvr_2, arg1.dropdownOpen, arg1.selectedPlayer, arg1.player, useStyle_upvr_result1_upvr, IsTenFoot_upvr})()
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 297
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.playerData.order(false) == 1 then
			return arg1.firstPlayerRef
		end
		return nil
	end, {arg1.playerData.order, arg1.firstPlayerRef})
	local any_useMemo_result1_6_upvr = React_upvr.useMemo(function() -- Line 520
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: useLayoutValues_upvr_result1_upvr (readonly)
			[3]: var111_upvr (readonly)
			[4]: var113_upvr (readonly)
			[5]: any_useState_result1_upvr_2 (readonly)
			[6]: any_useMemo_result1_upvr (readonly)
			[7]: any_useCallback_result1_upvr (readonly)
			[8]: any_useCallback_result1_upvr_2 (readonly)
		]]
		return {
			size = UDim2.new(0, arg1.entrySizeX, 0, useLayoutValues_upvr_result1_upvr.PlayerEntrySizeY);
			isTeamFrame = false;
			backgroundStyle = var111_upvr;
			overlayStyle = var113_upvr;
			doubleOverlay = any_useState_result1_upvr_2;
			firstPlayerRef = any_useMemo_result1_upvr;
			onActivated = any_useCallback_result1_upvr;
			onStateChanged = any_useCallback_result1_upvr_2;
		}
	end, {arg1.entrySizeX, useLayoutValues_upvr_result1_upvr.PlayerEntrySizeY, var111_upvr, var113_upvr, any_useState_result1_upvr_2, any_useCallback_result1_upvr, any_useCallback_result1_upvr_2})
	local any_useMemo_result1_5 = React_upvr.useMemo(function() -- Line 542
		--[[ Upvalues[12]:
			[1]: isSmallTouchDevice_upvr (readonly)
			[2]: IsTenFoot_upvr (readonly)
			[3]: useLayoutValues_upvr_result1_upvr (readonly)
			[4]: var112_upvr (readonly)
			[5]: any_useMemo_result1_3_upvr (readonly)
			[6]: any_useState_result1_upvr (readonly)
			[7]: var111_upvr (readonly)
			[8]: var113_upvr (readonly)
			[9]: any_useState_result1_upvr_2 (readonly)
			[10]: arg1 (readonly)
			[11]: any_useSignalState_result1_upvr (readonly)
			[12]: any_useMemo_result1_6_upvr (readonly)
		]]
		return {
			isSmallTouchDevice = isSmallTouchDevice_upvr;
			isDirectionalPreferred = IsTenFoot_upvr;
			layoutValues = useLayoutValues_upvr_result1_upvr;
			textStyle = var112_upvr;
			playerNameFont = any_useMemo_result1_3_upvr;
			isHovered = any_useState_result1_upvr;
			backgroundStyle = var111_upvr;
			overlayStyle = var113_upvr;
			isPressed = any_useState_result1_upvr_2;
			player = arg1.player;
			playerIconInfo = arg1.playerIconInfo;
			playerRelationship = arg1.playerRelationship;
			titlePlayerEntry = arg1.titlePlayerEntry;
			entrySizeX = arg1.entrySizeX;
			gameStats = arg1.gameStats;
			playerStats = arg1.playerData.stats;
			playerStatsCount = any_useSignalState_result1_upvr;
			gameStatsCount = arg1.gameStatsCount;
			backgroundFrameProps = any_useMemo_result1_6_upvr;
		}
	end, {isSmallTouchDevice_upvr, IsTenFoot_upvr, useLayoutValues_upvr_result1_upvr, var112_upvr, any_useMemo_result1_3_upvr, any_useState_result1_upvr, var111_upvr, var113_upvr, any_useState_result1_upvr_2, arg1.player, arg1.playerIconInfo, arg1.playerRelationship, arg1.titlePlayerEntry, arg1.entrySizeX, arg1.playerData.stats, arg1.gameStats, any_useSignalState_result1_upvr, arg1.gameStatsCount, any_useMemo_result1_6_upvr})
	if isSmallTouchDevice_upvr then
		local module_2 = {
			ChildrenFrame = React_upvr.createElement("Frame", {
				Size = UDim2.fromScale(1, 1);
				Position = UDim2.new(0, 0, 0, 0);
				BackgroundTransparency = 1;
			}, React_upvr.createElement(any_memo_result1_upvw_2, any_useMemo_result1_5));
		}
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			tbl_2.BackgroundTransparency = 0.8
			tbl_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			tbl_2.AnchorPoint = Vector2.new(0, 0)
			tbl_2.Position = UDim2.new(0, 0, 0, 0)
			tbl_2.Size = UDim2.new(1, 0, 0, 1)
			local tbl_2 = {}
			return React_upvr.createElement("Frame", tbl_2)
		end
		if arg1.titlePlayerEntry or not INLINED_2() then
		end
		module_2.TopDiv = nil
		module_2.BottomDiv = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 1);
			Position = UDim2.new(0, 0, 1, 0);
			AnchorPoint = Vector2.new(0, 1);
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 0.8;
			Visible = SignalsReact_upvr.useSignalBinding(function(arg1_3) -- Line 285
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				local var54 = true
				if arg1.playerData.order(arg1_3) ~= arg1.teamPlayersCount(arg1_3) then
					var54 = arg1.titlePlayerEntry
				end
				return var54
			end);
		})
		return React_upvr.createElement(View_upvr, {
			Size = UDim2.new(1, useLayoutValues_upvr_result1_upvr.EntryXOffset, var70_upvr, useLayoutValues_upvr_result1_upvr.PlayerEntrySizeY);
			BackgroundColor3 = var111_upvr.Color;
			BackgroundTransparency = var111_upvr.Transparency;
			AutoButtonColor = false;
			BorderSizePixel = 0;
			Image = "";
			LayoutOrder = any_useMemo_result1;
			ref = any_useRef_result1_upvr;
			onActivated = any_useCallback_result1_upvr;
			onStateChanged = any_useCallback_result1_upvr_2;
		}, module_2)
	end
	if IsTenFoot_upvr then
		local module_5 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module_5.Size = UDim2.new(1, useLayoutValues_upvr_result1_upvr.EntryXOffset, var70_upvr, useLayoutValues_upvr_result1_upvr.PlayerEntrySizeY)
		module_5.BackgroundTransparency = 1
		module_5.LayoutOrder = any_useMemo_result1
		module_5.ref = any_useRef_result1_upvr
		return React_upvr.createElement("Frame", module_5, React_upvr.createElement(any_memo_result1_upvw_2, any_useMemo_result1_5))
	end
	local module = {}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.Size = UDim2.new(1, useLayoutValues_upvr_result1_upvr.EntryXOffset, var70_upvr, useLayoutValues_upvr_result1_upvr.PlayerEntrySizeY)
	module.BackgroundTransparency = 1
	module.LayoutOrder = any_useMemo_result1
	module.ref = any_useRef_result1_upvr
	return React_upvr.createElement("Frame", module, {
		PlayerEntryContentFrame = React_upvr.createElement(EntryFrameView_upvr, Cryo_upvr.Dictionary.join(any_useMemo_result1_6_upvr, {
			size = UDim2.new(1, 0, 0, useLayoutValues_upvr_result1_upvr.PlayerEntrySizeY);
		}), React_upvr.createElement(any_memo_result1_upvw_2, any_useMemo_result1_5));
		Divider = React_upvr.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, 1);
			Position = UDim2.new(0, 0, 1, 0);
			AnchorPoint = Vector2.new(0, 1);
			BackgroundTransparency = useStyle_upvr_result1_upvr.Theme.Divider.Transparency;
			BackgroundColor3 = useStyle_upvr_result1_upvr.Theme.Divider.Color;
			BorderSizePixel = 0;
			Visible = SignalsReact_upvr.useSignalBinding(function(arg1_4) -- Line 289
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				local var56
				if arg1.playerData.order(arg1_4) == arg1.teamPlayersCount(arg1_4) then
					var56 = false
				else
					var56 = true
				end
				return var56
			end);
		});
	})
end)