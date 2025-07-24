-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:15
-- Luau version 6, Types version 3
-- Time taken: 0.001693 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent.Parent
local React_upvr = require(CorePackages.Packages.React)
local useLayoutValues_upvr = require(CorePackages.Workspace.Packages.PlayerList).Common.useLayoutValues
local TeamEntryContainer_upvr = require(Parent.Components.Container.TeamEntryContainer)
local PlayerEntryContainer_upvr = require(Parent.Components.Container.PlayerEntryContainer)
return React_upvr.memo(function(arg1) -- Line 41, Named "TeamListView"
	--[[ Upvalues[4]:
		[1]: useLayoutValues_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: TeamEntryContainer_upvr (readonly)
		[4]: PlayerEntryContainer_upvr (readonly)
	]]
	local useLayoutValues_upvr_result1_upvr = useLayoutValues_upvr()
	local var8
	if arg1.size then
		var8 = arg1.size
	else
		var8 = UDim2.new(1, 0, 0, useLayoutValues_upvr_result1_upvr.TeamEntrySizeY)
	end
	local module_upvr = {}
	local tbl = {
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Vertical;
		VerticalAlignment = Enum.VerticalAlignment.Top;
	}
	local Left = Enum.HorizontalAlignment.Left
	tbl.HorizontalAlignment = Left
	if arg1.isDirectionalPreferred then
		Left = UDim.new(0, useLayoutValues_upvr_result1_upvr.EntryPadding)
	else
		Left = nil
	end
	tbl.Padding = Left
	module_upvr.UIListLayout = React_upvr.createElement("UIListLayout", tbl)
	if arg1.showTeamEntry then
		module_upvr.TeamEntry = React_upvr.createElement(TeamEntryContainer_upvr, {
			size = var8;
			teamData = arg1.teamData;
			entrySizeX = arg1.entrySizeX;
			isSmallTouchDevice = arg1.isSmallTouchDevice;
			isDirectionalPreferred = arg1.isDirectionalPreferred;
			layoutOrder = -1;
		})
	end
	if 0 < arg1.teamPlayersCount then
		arg1.teamData.players.iterateData(function(arg1_2, arg2) -- Line 68
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: module_upvr (readonly)
				[3]: React_upvr (copied, readonly)
				[4]: PlayerEntryContainer_upvr (copied, readonly)
				[5]: useLayoutValues_upvr_result1_upvr (readonly)
			]]
			local var14 = arg1.playerIconInfos[arg2]
			local var15 = arg1.playerRelationships[arg2]
			if not var14 or not var15 then
			else
				local tbl_2 = {
					size = UDim2.new(1, useLayoutValues_upvr_result1_upvr.EntryXOffset, 0, useLayoutValues_upvr_result1_upvr.PlayerEntrySizeY);
				}
				tbl_2.player = arg1_2
				tbl_2.titlePlayerEntry = false
				tbl_2.entrySizeX = arg1.entrySizeX
				tbl_2.playerIconInfo = var14
				tbl_2.playerRelationship = var15
				tbl_2.teamData = arg1.teamData
				tbl_2.setDropDownPlayerDimensionY = arg1.setDropDownPlayerDimensionY
				tbl_2.firstPlayerRef = arg1.firstPlayerRef
				module_upvr["p_"..tostring(arg2)] = React_upvr.createElement(PlayerEntryContainer_upvr, tbl_2)
			end
		end, false)
	end
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
	}, module_upvr)
end)