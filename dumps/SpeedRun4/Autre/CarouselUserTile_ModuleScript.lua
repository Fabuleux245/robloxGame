-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:28:00
-- Luau version 6, Types version 3
-- Time taken: 0.003389 seconds

local Parent = script:FindFirstAncestor("SocialCommon").Parent
local UIBlox = require(Parent.UIBlox)
local Constants = require(script.Parent.Constants)
local function var4_upvr() -- Line 16
end
local tbl_2_upvr = {
	tileSize = Constants.TILE_SIZE;
	nameTopPadding = Constants.NAME_TOP_PADDING;
	contextualTopPadding = Constants.CONTEXTUAL_TOP_PADDING;
}
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local PlayerTile_upvr = UIBlox.App.Tile.PlayerTile
local getStandardSizeAvatarHeadShotRbxthumb_upvr = require(Parent.UserLib).Utils.getStandardSizeAvatarHeadShotRbxthumb
local PlayerName_upvr = require(script.Parent.PlayerName)
local FFlagUseSizeInClipRect_upvr = require(Parent.SharedFlags).FFlagUseSizeInClipRect
local Interactable_upvr = UIBlox.Core.Control.Interactable
return function(arg1) -- Line 50
	--[[ Upvalues[9]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: PlayerTile_upvr (readonly)
		[5]: getStandardSizeAvatarHeadShotRbxthumb_upvr (readonly)
		[6]: PlayerName_upvr (readonly)
		[7]: FFlagUseSizeInClipRect_upvr (readonly)
		[8]: Interactable_upvr (readonly)
		[9]: var4_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_2_upvr, arg1)
	local tileSize = any_join_result1_upvr.tileSize
	local function _() -- Line 54
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		if any_join_result1_upvr.renderButtons then
			return any_join_result1_upvr.renderButtons()
		end
		return nil
	end
	local function _() -- Line 72
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		if any_join_result1_upvr.renderContextualInfo then
			return any_join_result1_upvr.renderContextualInfo()
		end
		return nil
	end
	local function _() -- Line 76
		--[[ Upvalues[3]:
			[1]: any_join_result1_upvr (readonly)
			[2]: React_upvr (copied, readonly)
			[3]: PlayerName_upvr (copied, readonly)
		]]
		local var23
		if any_join_result1_upvr.renderPlayerName then
			var23 = any_join_result1_upvr.renderPlayerName()
			return var23
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var23 = var23(PlayerName_upvr, tbl_4)
			tbl_4.width = any_join_result1_upvr.tileSize
			tbl_4.name = any_join_result1_upvr.userName
			local tbl_4 = {}
			var23 = React_upvr.createElement
			return var23
		end
		if not any_join_result1_upvr.userName or not INLINED() then
			var23 = nil
		end
		return var23
	end
	local module_2 = {}
	local layoutOrder = any_join_result1_upvr.layoutOrder
	module_2.LayoutOrder = layoutOrder
	local var27
	if FFlagUseSizeInClipRect_upvr then
		layoutOrder = UDim2.new(0, tileSize, 1, 0)
	else
		layoutOrder = UDim2.fromOffset(tileSize, 0)
	end
	module_2.Size = layoutOrder
	module_2.BackgroundTransparency = 1
	local module_3 = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local any_createElement_result1 = React_upvr.createElement("Frame", {
		LayoutOrder = 1;
		Size = UDim2.fromOffset(tileSize, tileSize);
		BackgroundTransparency = 1;
	}, {
		PlayerTile = (function() -- Line 58
			--[[ Upvalues[4]:
				[1]: any_join_result1_upvr (readonly)
				[2]: React_upvr (copied, readonly)
				[3]: PlayerTile_upvr (copied, readonly)
				[4]: getStandardSizeAvatarHeadShotRbxthumb_upvr (copied, readonly)
			]]
			if any_join_result1_upvr.renderPlayerTile then
				return any_join_result1_upvr.renderPlayerTile()
			end
			local module = {
				title = "";
			}
			local udim2 = UDim2.fromOffset(any_join_result1_upvr.tileSize, any_join_result1_upvr.tileSize)
			module.tileSize = udim2
			if any_join_result1_upvr.headshotImageUrl then
				udim2 = any_join_result1_upvr.headshotImageUrl
			else
				udim2 = getStandardSizeAvatarHeadShotRbxthumb_upvr(any_join_result1_upvr.userId)
			end
			module.thumbnail = udim2
			udim2 = any_join_result1_upvr.onActivatedTile
			local var20 = udim2
			module.onActivated = var20
			if any_join_result1_upvr.renderButtons then
				var20 = any_join_result1_upvr.renderButtons()
			else
				var20 = nil
			end
			module.buttons = var20
			return React_upvr.createElement(PlayerTile_upvr, module)
		end)();
	})
	module_3.PlayerTileFrame = any_createElement_result1
	if any_join_result1_upvr.nameTopPadding then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1("Frame", {
			LayoutOrder = 2;
			Size = UDim2.fromOffset(0, any_join_result1_upvr.nameTopPadding);
			BackgroundTransparency = 1;
		})
	else
		any_createElement_result1 = nil
	end
	module_3.NameTopPadding = any_createElement_result1
	local tbl = {
		UIListLayout = React_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local tbl_6 = {}
	var27 = _()
	tbl_6.PlayerName = var27
	tbl.PlayerNameFrame = React_upvr.createElement("Frame", {
		LayoutOrder = 1;
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.XY;
	}, tbl_6)
	if any_join_result1_upvr.contextualTopPadding then
		local tbl_5 = {
			LayoutOrder = 2;
		}
		var27 = 0
		tbl_5.Size = UDim2.fromOffset(var27, any_join_result1_upvr.contextualTopPadding)
		tbl_5.BackgroundTransparency = 1
		-- KONSTANTWARNING: GOTO [214] #154
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [213] 153. Error Block 28 start (CF ANALYSIS FAILED)
	tbl.ContextualTopPadding = nil
	local tbl_3 = {}
	if any_join_result1_upvr.renderContextualInfo then
		var27 = any_join_result1_upvr.renderContextualInfo()
	else
		var27 = nil
	end
	tbl_3.ContextualInfo = var27
	tbl.ContextualInfoFrame = React_upvr.createElement("Frame", {
		LayoutOrder = 3;
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.XY;
	}, tbl_3)
	module_3.UserInfo = React_upvr.createElement(Interactable_upvr, {
		LayoutOrder = 3;
		[React_upvr.Event.Activated] = any_join_result1_upvr.onActivatedContextual;
		AutomaticSize = Enum.AutomaticSize.XY;
		onStateChanged = var4_upvr;
		BackgroundTransparency = 1;
	}, tbl)
	do
		return React_upvr.createElement("Frame", module_2, module_3)
	end
	-- KONSTANTERROR: [213] 153. Error Block 28 end (CF ANALYSIS FAILED)
end