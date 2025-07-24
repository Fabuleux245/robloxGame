-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:51
-- Luau version 6, Types version 3
-- Time taken: 0.006001 seconds

local CorePackages = game:GetService("CorePackages")
local ContextActionService_upvr = game:GetService("ContextActionService")
local Roact_upvr = require(CorePackages.Packages.Roact)
local Parent = script.Parent.Parent
local UtilityFunctions_upvr = require(Parent.UtilityFunctions)
local FFlagEnableFavoriteButtonForUgc_upvr = require(Parent.Flags.FFlagEnableFavoriteButtonForUgc)
local any_extend_result1 = Roact_upvr.PureComponent:extend("FavoritesButton")
local getSelectionImageObjectRounded_upvr = require(Parent.getSelectionImageObjectRounded)
local Favorite_upvr = require(script.Parent.Common.ControllerShortcutKeycodes).Favorite
function any_extend_result1.init(arg1) -- Line 30
	--[[ Upvalues[3]:
		[1]: getSelectionImageObjectRounded_upvr (readonly)
		[2]: ContextActionService_upvr (readonly)
		[3]: Favorite_upvr (readonly)
	]]
	arg1.selectedImage = getSelectionImageObjectRounded_upvr()
	arg1.fetchFavoriteRetries = 0
	ContextActionService_upvr:BindCoreAction("FavoriteGamepadShortcut", function(arg1_2, arg2, arg3) -- Line 34
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg2 == Enum.UserInputState.End then
			arg1:activateButton()
			return Enum.ContextActionResult.Sink
		end
		return Enum.ContextActionResult.Pass
	end, false, Favorite_upvr)
end
function any_extend_result1.willUpdate(arg1, arg2) -- Line 43
	--[[ Upvalues[1]:
		[1]: UtilityFunctions_upvr (readonly)
	]]
	local var23 = arg2
	if var23 then
		var23 = arg2.assetInfo
		if var23 then
			var23 = not arg2.gotFavoriteForDetailsItem
			if var23 then
				if arg1.fetchFavoriteRetries >= 10 then
					var23 = false
				else
					var23 = true
				end
			end
		end
	end
	if var23 then
		local assetInfo_3_upvr = arg2.assetInfo
		local var25_upvr = assetInfo_3_upvr
		if var25_upvr then
			if assetInfo_3_upvr.parentBundleId == nil then
				var25_upvr = false
			else
				var25_upvr = true
			end
		end
		local getFavoriteForAsset_upvr_2 = arg1.props.getFavoriteForAsset
		local getFavoriteForBundle_upvr_3 = arg1.props.getFavoriteForBundle
		coroutine.wrap(function() -- Line 57
			--[[ Upvalues[5]:
				[1]: var25_upvr (readonly)
				[2]: getFavoriteForAsset_upvr_2 (readonly)
				[3]: assetInfo_3_upvr (readonly)
				[4]: UtilityFunctions_upvr (copied, readonly)
				[5]: getFavoriteForBundle_upvr_3 (readonly)
			]]
			if not var25_upvr then
				getFavoriteForAsset_upvr_2(assetInfo_3_upvr.assetId)
			else
				getFavoriteForBundle_upvr_3(UtilityFunctions_upvr.getBundleId(assetInfo_3_upvr))
			end
		end)()
		arg1.fetchFavoriteRetries += 1
	end
end
function any_extend_result1.activateButton(arg1) -- Line 69
	--[[ Upvalues[2]:
		[1]: FFlagEnableFavoriteButtonForUgc_upvr (readonly)
		[2]: UtilityFunctions_upvr (readonly)
	]]
	local IsDetailsItemPartOfBundleAndOffsale = arg1.props.IsDetailsItemPartOfBundleAndOffsale
	local assetInfo_4 = arg1.props.assetInfo
	local var31
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var31 = assetInfo_4.creatorId
		return var31
	end
	if not assetInfo_4 or not INLINED() then
		var31 = 0
	end
	if not FFlagEnableFavoriteButtonForUgc_upvr and var31 ~= '1' then
	else
		if arg1.props.isFavorited then
			if IsDetailsItemPartOfBundleAndOffsale then
				arg1.props.deleteFavoriteForBundle(UtilityFunctions_upvr.getBundleId(assetInfo_4))
			else
				arg1.props.deleteFavoriteForAsset(assetInfo_4.assetId)
			end
		end
		if IsDetailsItemPartOfBundleAndOffsale then
			arg1.props.createFavoriteForBundle(UtilityFunctions_upvr.getBundleId(assetInfo_4))
			return
		end
		arg1.props.createFavoriteForAsset(assetInfo_4.assetId)
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 103
	--[[ Upvalues[1]:
		[1]: ContextActionService_upvr (readonly)
	]]
	ContextActionService_upvr:UnbindCoreAction("FavoriteGamepadShortcut")
end
local Colors_upvr = require(Parent.Colors)
function any_extend_result1.render(arg1) -- Line 107
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Colors_upvr (readonly)
		[3]: FFlagEnableFavoriteButtonForUgc_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local assetInfo = arg1.props.assetInfo
	local var34
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 8. Error Block 24 start (CF ANALYSIS FAILED)
	var34 = assetInfo.creatorId
	if not var34 then
		-- KONSTANTERROR: [16] 10. Error Block 3 start (CF ANALYSIS FAILED)
		var34 = 0
		-- KONSTANTERROR: [16] 10. Error Block 3 end (CF ANALYSIS FAILED)
	end
	local module = {
		AnchorPoint = Vector2.new(0.5, 0);
		BackgroundTransparency = 1;
		Size = UDim2.new(0, 44, 0, 44);
		LayoutOrder = 1;
		Image = "rbxasset://textures/ui/InspectMenu/Button_outline.png";
		ImageColor3 = Colors_upvr.White;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(5, 5, 120, 20);
		SelectionImageObject = arg1.selectedImage;
	}
	if FFlagEnableFavoriteButtonForUgc_upvr then
	elseif var34 ~= '1' then
	else
	end
	module.Visible = true
	module[Roact_upvr.Ref] = arg1.props.favoriteButtonRef
	module[Roact_upvr.Event.Activated] = function() -- Line 126
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:activateButton()
	end
	local module_2 = {}
	local tbl = {
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundTransparency = 1;
		Size = UDim2.new(0, 26, 0, 26);
		Position = UDim2.new(0, 22, 0, 22);
	}
	if arg1.props.isFavorited then
	else
	end
	tbl.Image = "rbxasset://textures/ui/InspectMenu/ico_favorite_off.png"
	tbl.ImageColor3 = Colors_upvr.White
	module_2.FavoriteIcon = Roact_upvr.createElement("ImageLabel", tbl)
	do
		return Roact_upvr.createElement("ImageButton", module, module_2)
	end
	-- KONSTANTERROR: [13] 8. Error Block 24 end (CF ANALYSIS FAILED)
end
local GotFavoriteForDetailsItem_upvr = require(Parent.Selectors.GotFavoriteForDetailsItem)
local GetIsFavorite_upvr = require(Parent.Selectors.GetIsFavorite)
local IsDetailsItemPartOfBundleAndOffsale_2_upvr = require(Parent.Selectors.IsDetailsItemPartOfBundleAndOffsale)
local CreateFavoriteForAsset_upvr = require(Parent.Thunks.CreateFavoriteForAsset)
local DeleteFavoriteForAsset_upvr = require(Parent.Thunks.DeleteFavoriteForAsset)
local CreateFavoriteForBundle_upvr = require(Parent.Thunks.CreateFavoriteForBundle)
local DeleteFavoriteForBundle_upvr = require(Parent.Thunks.DeleteFavoriteForBundle)
local GetFavoriteForAsset_upvr = require(Parent.Thunks.GetFavoriteForAsset)
local GetFavoriteForBundle_upvr = require(Parent.Thunks.GetFavoriteForBundle)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 141
	--[[ Upvalues[3]:
		[1]: GotFavoriteForDetailsItem_upvr (readonly)
		[2]: GetIsFavorite_upvr (readonly)
		[3]: IsDetailsItemPartOfBundleAndOffsale_2_upvr (readonly)
	]]
	return {
		view = arg1.view;
		assetInfo = arg1.assets[arg1.detailsInformation.assetId];
		bundleInfo = arg1.bundles;
		gotFavoriteForDetailsItem = GotFavoriteForDetailsItem_upvr(arg1);
		isFavorited = GetIsFavorite_upvr(arg1);
		IsDetailsItemPartOfBundleAndOffsale = IsDetailsItemPartOfBundleAndOffsale_2_upvr(arg1);
	}
end, function(arg1) -- Line 152
	--[[ Upvalues[6]:
		[1]: CreateFavoriteForAsset_upvr (readonly)
		[2]: DeleteFavoriteForAsset_upvr (readonly)
		[3]: CreateFavoriteForBundle_upvr (readonly)
		[4]: DeleteFavoriteForBundle_upvr (readonly)
		[5]: GetFavoriteForAsset_upvr (readonly)
		[6]: GetFavoriteForBundle_upvr (readonly)
	]]
	return {
		createFavoriteForAsset = function(arg1_3) -- Line 154, Named "createFavoriteForAsset"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CreateFavoriteForAsset_upvr (copied, readonly)
			]]
			arg1(CreateFavoriteForAsset_upvr(arg1_3))
		end;
		deleteFavoriteForAsset = function(arg1_4) -- Line 157, Named "deleteFavoriteForAsset"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: DeleteFavoriteForAsset_upvr (copied, readonly)
			]]
			arg1(DeleteFavoriteForAsset_upvr(arg1_4))
		end;
		createFavoriteForBundle = function(arg1_5) -- Line 160, Named "createFavoriteForBundle"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: CreateFavoriteForBundle_upvr (copied, readonly)
			]]
			arg1(CreateFavoriteForBundle_upvr(arg1_5))
		end;
		deleteFavoriteForBundle = function(arg1_6) -- Line 163, Named "deleteFavoriteForBundle"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: DeleteFavoriteForBundle_upvr (copied, readonly)
			]]
			arg1(DeleteFavoriteForBundle_upvr(arg1_6))
		end;
		getFavoriteForAsset = function(arg1_7) -- Line 166, Named "getFavoriteForAsset"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: GetFavoriteForAsset_upvr (copied, readonly)
			]]
			arg1(GetFavoriteForAsset_upvr(arg1_7))
		end;
		getFavoriteForBundle = function(arg1_8) -- Line 169, Named "getFavoriteForBundle"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: GetFavoriteForBundle_upvr (copied, readonly)
			]]
			arg1(GetFavoriteForBundle_upvr(arg1_8))
		end;
	}
end)(any_extend_result1)