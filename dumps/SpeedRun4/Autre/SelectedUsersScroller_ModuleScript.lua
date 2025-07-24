-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:24
-- Luau version 6, Types version 3
-- Time taken: 0.003444 seconds

local FriendsMenu = script:FindFirstAncestor("FriendsMenu")
local Parent = FriendsMenu.Parent
local React_upvr = require(Parent.React)
local SelectedUsersContext_upvr = require(FriendsMenu.Context.SelectedUsersContext)
local Responsive_upvr = require(Parent.Responsive)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local getRenameFriendsToConnectionsEnabledFriendsMenu_upvr = require(FriendsMenu.utils.getRenameFriendsToConnectionsEnabledFriendsMenu)
local FriendsMenuUserCard_upvr = require(script.Parent.FriendsMenuUserCard)
local SquadInviteChangesExperimentation_upvr = require(Parent.SocialExperiments).SquadInviteChangesExperimentation
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local Constants_upvr = require(FriendsMenu.Constants)
return function(arg1) -- Line 26
	--[[ Upvalues[10]:
		[1]: React_upvr (readonly)
		[2]: SelectedUsersContext_upvr (readonly)
		[3]: Responsive_upvr (readonly)
		[4]: useStyle_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: getRenameFriendsToConnectionsEnabledFriendsMenu_upvr (readonly)
		[7]: FriendsMenuUserCard_upvr (readonly)
		[8]: SquadInviteChangesExperimentation_upvr (readonly)
		[9]: dependencyArray_upvr (readonly)
		[10]: Constants_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 27 start (CF ANALYSIS FAILED)
	local any_useContext_result1_upvr = React_upvr.useContext(SelectedUsersContext_upvr)
	local tbl = {}
	local tbl_2 = {}
	local var18
	if getRenameFriendsToConnectionsEnabledFriendsMenu_upvr() then
		var18 = "Feature.FriendsMenu.Label.SelectedConnectionsCount"
	else
		var18 = "Feature.FriendsMenu.Label.SelectedFriendsCount"
	end
	tbl_2[1] = var18
	tbl_2.numerator = any_useContext_result1_upvr.selectedFriendsSize
	tbl_2.denominator = arg1.selectionLimit
	tbl.selectedFriendsCountText = tbl_2
	local tbl_3 = {}
	if getRenameFriendsToConnectionsEnabledFriendsMenu_upvr() then
		var18 = "Feature.FriendsMenu.Label.SelectedConnectionsCountNoLimit"
		-- KONSTANTWARNING: GOTO [50] #37
	end
	-- KONSTANTERROR: [0] 1. Error Block 27 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [49] 36. Error Block 30 start (CF ANALYSIS FAILED)
	var18 = "Feature.FriendsMenu.Label.SelectedFriendsCountNoLimit"
	tbl_3[1] = var18
	tbl_3.selectedCount = any_useContext_result1_upvr.selectedFriendsSize
	tbl.selectedFriendsCountNoLimitText = tbl_3
	local function _() -- Line 50
		--[[ Upvalues[4]:
			[1]: React_upvr (copied, readonly)
			[2]: any_useContext_result1_upvr (readonly)
			[3]: FriendsMenuUserCard_upvr (copied, readonly)
			[4]: SquadInviteChangesExperimentation_upvr (copied, readonly)
		]]
		local module = {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Horizontal;
				Padding = UDim.new(0, 8);
				SortOrder = Enum.SortOrder.LayoutOrder;
			});
		}
		for i, v in pairs(any_useContext_result1_upvr.selectedFriends) do
			local tbl_4 = {
				displayName = v.displayName;
			}
			local layoutOrder = v.layoutOrder
			tbl_4.layoutOrder = layoutOrder
			tbl_4.userId = i
			if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
				layoutOrder = v.unremovable
			else
				layoutOrder = nil
			end
			tbl_4.unremovable = layoutOrder
			module["User-"..tostring(i)] = React_upvr.createElement(FriendsMenuUserCard_upvr, tbl_4)
		end
		return module
	end
	var18 = dependencyArray_upvr(any_useContext_result1_upvr.selectedFriends)
	var18 = React_upvr
	var18 = "Frame"
	local _ = {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.layoutOrder;
	}
	;({}).VerticalLayout = React_upvr.createElement("UIListLayout", {
		FillDirection = Enum.FillDirection.Vertical;
		Padding = UDim.new(0, 8);
		SortOrder = Enum.SortOrder.LayoutOrder;
	})
	local _ = {
		Size = UDim2.new(1, 0, 0, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		BackgroundTransparency = 1;
		Font = useStyle_upvr().Font.Header2.Font;
		LayoutOrder = 0;
	}
	if arg1.selectionLimit then
		-- KONSTANTWARNING: GOTO [159] #111
	end
	-- KONSTANTERROR: [49] 36. Error Block 30 end (CF ANALYSIS FAILED)
end