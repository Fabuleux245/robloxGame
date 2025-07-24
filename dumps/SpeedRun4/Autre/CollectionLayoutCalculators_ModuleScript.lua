-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:23:42
-- Luau version 6, Types version 3
-- Time taken: 0.007251 seconds

local CollectionViews = script:FindFirstAncestor("CollectionViews")
local Parent = CollectionViews.Parent
local Responsive_upvr = require(Parent.Responsive)
local CollectionItemSize_upvr = require(CollectionViews.CollectionViewTypes).CollectionItemSize
local function _(arg1, arg2) -- Line 52, Named "getLegacySideMargin"
	if arg1 < 1024 then
		return arg2.Global.Space_150
	end
	if arg1 < 1280 then
		return 18
	end
	if arg1 < 1440 then
		return arg2.Global.Space_300
	end
	if arg1 < 1920 then
		return 34
	end
	if arg1 < 2260 then
		return 38
	end
	return arg2.Global.Space_600
end
local function _(arg1, arg2) -- Line 70, Named "getLegacyColumnGap"
	if arg1 < 1024 then
		return arg2.Global.Space_150
	end
	if arg1 < 1280 then
		return 18
	end
	return arg2.Global.Space_300
end
local hasExtraPlatformInset_upvr = Responsive_upvr.HardwareSafeAreaInsets.hasExtraPlatformInset
local function _(arg1, arg2) -- Line 113, Named "scaleSizeForPlatform"
	return arg1 * arg2.Global.Stroke_100
end
local game_DefineFastInt_result1_upvr_15 = game:DefineFastInt("XLargeCollectionItemMinItemWidth", 300)
local game_DefineFastInt_result1_upvr_4 = game:DefineFastInt("XLargeCollectionItemMinItemCount", 1)
local game_DefineFastInt_result1_upvr_19 = game:DefineFastInt("XLargeCollectionItemMaxItemCount", 1)
local game_DefineFastInt_result1_upvr_18 = game:DefineFastInt("LargeCollectionItemMinItemWidth", 300)
local game_DefineFastInt_result1_upvr_6 = game:DefineFastInt("LargeCollectionItemMinItemCount", 1)
local game_DefineFastInt_result1_upvr_11 = game:DefineFastInt("LargeCollectionItemMaxItemCount", 4)
local game_DefineFastInt_result1_upvr_5 = game:DefineFastInt("MediumCollectionItemMinItemWidth", 233)
local game_DefineFastInt_result1_upvr_7 = game:DefineFastInt("MediumCollectionItemMinItemCount", 2)
local game_DefineFastInt_result1_upvr_9 = game:DefineFastInt("MediumCollectionItemMaxItemCount", 6)
local ArgCheck_upvr = require(Parent.ArgCheck)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("SmallCollectionItemMinItemWidth", 150)
local game_DefineFastInt_result1_upvr_13 = game:DefineFastInt("SmallCollectionItemMinItemCount", 3)
local game_DefineFastInt_result1_upvr_16 = game:DefineFastInt("SmallCollectionItemMaxItemCount", 12)
local game_DefineFastInt_result1_upvr_14 = game:DefineFastInt("XSmallCollectionItemMinItemWidth", 100)
local game_DefineFastInt_result1_upvr_8 = game:DefineFastInt("XSmallCollectionItemMinItemCount", 3)
local game_DefineFastInt_result1_upvr_10 = game:DefineFastInt("XSmallCollectionItemMaxItemCount", 20)
local calculateNumColumns_upvr = require(CollectionViews.calculateNumColumns)
local game_DefineFastInt_result1_upvr_17 = game:DefineFastInt("XLargeCollectionItemVerticalGap", 16)
local game_DefineFastInt_result1_upvr_12 = game:DefineFastInt("LargeCollectionItemVerticalGap", 16)
local game_DefineFastInt_result1_upvr_20 = game:DefineFastInt("MediumCollectionItemVerticalGap", 16)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("SmallCollectionItemVerticalGap", 16)
local game_DefineFastInt_result1_upvr_3 = game:DefineFastInt("XSmallCollectionItemVerticalGap", 16)
local var35_upvr = game:DefineFastInt("XLargeCollectionItemFractionalPercent", 10) / 100
local var36_upvr = game:DefineFastInt("LargeCollectionItemFractionalPercent", 30) / 100
local var37_upvr = game:DefineFastInt("MediumCollectionItemFractionalPercent", 15) / 100
local var38_upvr = game:DefineFastInt("SmallCollectionItemFractionalPercent", 15) / 100
local var39_upvr = game:DefineFastInt("XSmallCollectionItemFractionalPercent", 15) / 100
return {
	calculateNumColumns = function(arg1, arg2, arg3, arg4, arg5) -- Line 118, Named "calculateNumColumnsForCollection"
		--[[ Upvalues[18]:
			[1]: CollectionItemSize_upvr (readonly)
			[2]: game_DefineFastInt_result1_upvr_15 (readonly)
			[3]: game_DefineFastInt_result1_upvr_4 (readonly)
			[4]: game_DefineFastInt_result1_upvr_19 (readonly)
			[5]: game_DefineFastInt_result1_upvr_18 (readonly)
			[6]: game_DefineFastInt_result1_upvr_6 (readonly)
			[7]: game_DefineFastInt_result1_upvr_11 (readonly)
			[8]: game_DefineFastInt_result1_upvr_5 (readonly)
			[9]: game_DefineFastInt_result1_upvr_7 (readonly)
			[10]: game_DefineFastInt_result1_upvr_9 (readonly)
			[11]: ArgCheck_upvr (readonly)
			[12]: game_DefineFastInt_result1_upvr_2 (readonly)
			[13]: game_DefineFastInt_result1_upvr_13 (readonly)
			[14]: game_DefineFastInt_result1_upvr_16 (readonly)
			[15]: game_DefineFastInt_result1_upvr_14 (readonly)
			[16]: game_DefineFastInt_result1_upvr_8 (readonly)
			[17]: game_DefineFastInt_result1_upvr_10 (readonly)
			[18]: calculateNumColumns_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var25
		local var26
		local var27
		if arg4 == CollectionItemSize_upvr.XLarge then
			var25 = game_DefineFastInt_result1_upvr_15 * arg5.Global.Stroke_100
			var26 = game_DefineFastInt_result1_upvr_4
			var27 = game_DefineFastInt_result1_upvr_19
		elseif arg4 == CollectionItemSize_upvr.Large then
			var25 = game_DefineFastInt_result1_upvr_18 * arg5.Global.Stroke_100
			var26 = game_DefineFastInt_result1_upvr_6
			var27 = game_DefineFastInt_result1_upvr_11
		elseif arg4 == CollectionItemSize_upvr.Medium then
			var25 = game_DefineFastInt_result1_upvr_5 * arg5.Global.Stroke_100
			var26 = game_DefineFastInt_result1_upvr_7
			var27 = game_DefineFastInt_result1_upvr_9
		elseif arg4 == CollectionItemSize_upvr.Small then
			local var28 = ArgCheck_upvr
			if arg4 ~= CollectionItemSize_upvr.Small then
				var28 = false
			else
				var28 = true
			end
			var28.assert(var28)
			var25 = game_DefineFastInt_result1_upvr_2 * arg5.Global.Stroke_100
			var26 = game_DefineFastInt_result1_upvr_13
			var27 = game_DefineFastInt_result1_upvr_16
		else
			local var29 = ArgCheck_upvr
			if arg4 ~= CollectionItemSize_upvr.XSmall then
			else
			end
			var29.assert(true)
			var25 = game_DefineFastInt_result1_upvr_14 * arg5.Global.Stroke_100
			var26 = game_DefineFastInt_result1_upvr_8
			var27 = game_DefineFastInt_result1_upvr_10
		end
		return calculateNumColumns_upvr(var25, arg3, var26, var27, arg1 - arg2 * 2)
	end;
	calculateSideMargin = function(arg1, arg2, arg3) -- Line 81, Named "calculateSideMargin"
		--[[ Upvalues[1]:
			[1]: hasExtraPlatformInset_upvr (readonly)
		]]
		if hasExtraPlatformInset_upvr() then
			return arg2.Global.Space_800
		end
		if arg3 < 1024 then
			return arg2.Global.Space_150
		end
		if arg3 < 1280 then
			return 18
		end
		if arg3 < 1440 then
			return arg2.Global.Space_300
		end
		if arg3 < 1920 then
			return 34
		end
		if arg3 < 2260 then
			return 38
		end
		local Space_600 = arg2.Global.Space_600
		do
			return Space_600
		end
		return Space_600
	end;
	calculateColumnGap = function(arg1, arg2, arg3) -- Line 100, Named "calculateColumnGap"
		if arg3 < 1024 then
			return arg2.Global.Space_150
		end
		if arg3 < 1280 then
			return 18
		end
		local Space_300 = arg2.Global.Space_300
		do
			return Space_300
		end
		return Space_300
	end;
	calculateVerticalPadding = function(arg1, arg2) -- Line 156, Named "calculateVerticalPadding"
		--[[ Upvalues[6]:
			[1]: CollectionItemSize_upvr (readonly)
			[2]: game_DefineFastInt_result1_upvr_17 (readonly)
			[3]: game_DefineFastInt_result1_upvr_12 (readonly)
			[4]: game_DefineFastInt_result1_upvr_20 (readonly)
			[5]: game_DefineFastInt_result1_upvr (readonly)
			[6]: game_DefineFastInt_result1_upvr_3 (readonly)
		]]
		if arg2 == CollectionItemSize_upvr.XLarge then
			return game_DefineFastInt_result1_upvr_17 * arg1.Global.Stroke_100
		end
		if arg2 == CollectionItemSize_upvr.Large then
			return game_DefineFastInt_result1_upvr_12 * arg1.Global.Stroke_100
		end
		if arg2 == CollectionItemSize_upvr.Medium then
			return game_DefineFastInt_result1_upvr_20 * arg1.Global.Stroke_100
		end
		if arg2 == CollectionItemSize_upvr.Small then
			return game_DefineFastInt_result1_upvr * arg1.Global.Stroke_100
		end
		return game_DefineFastInt_result1_upvr_3 * arg1.Global.Stroke_100
	end;
	calculateFractionalItemAmount = function(arg1, arg2) -- Line 181, Named "calculateFractionalItemAmount"
		--[[ Upvalues[7]:
			[1]: CollectionItemSize_upvr (readonly)
			[2]: Responsive_upvr (readonly)
			[3]: var35_upvr (readonly)
			[4]: var36_upvr (readonly)
			[5]: var37_upvr (readonly)
			[6]: var38_upvr (readonly)
			[7]: var39_upvr (readonly)
		]]
		if arg1 == CollectionItemSize_upvr.XLarge then
			if arg2 == Responsive_upvr.Input.Directional then
				return 0
			end
			return var35_upvr
		end
		if arg1 == CollectionItemSize_upvr.Large then
			if arg2 == Responsive_upvr.Input.Directional then
				return 0
			end
			return var36_upvr
		end
		if arg1 == CollectionItemSize_upvr.Medium then
			if arg2 == Responsive_upvr.Input.Directional then
				return 0
			end
			return var37_upvr
		end
		if arg1 == CollectionItemSize_upvr.Small then
			if arg2 == Responsive_upvr.Input.Directional then
				return 0
			end
			return var38_upvr
		end
		if arg2 == Responsive_upvr.Input.Directional then
			return 0
		end
		return var39_upvr
	end;
	calculateMaxTilesToShow = function(arg1) -- Line 172, Named "calculateMaxTilesToShow"
		--[[ Upvalues[1]:
			[1]: Responsive_upvr (readonly)
		]]
		if arg1 == Responsive_upvr.Input.Directional then
			return 20
		end
		return nil
	end;
	calculateLoadMoreThreshold = function(arg1) -- Line 195, Named "calculateLoadMoreThreshold"
		return math.max(1000, arg1)
	end;
}