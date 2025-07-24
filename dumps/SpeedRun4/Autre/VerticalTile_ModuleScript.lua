-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:42
-- Luau version 6, Types version 3
-- Time taken: 0.004431 seconds

local Parent = script.Parent.Parent.Parent
local Parent_3 = Parent.Parent
local Parent_2 = Parent_3.Parent
local Core = Parent_2.Core
local Parent_4 = Parent_2.Parent
local React_upvr = require(Parent_4.React)
local useDebouncedState_upvr = require(Parent_4.ReactUtils).useDebouncedState
local function useIsHoveredState_upvr(arg1, arg2) -- Line 65, Named "useIsHoveredState"
	--[[ Upvalues[2]:
		[1]: useDebouncedState_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local var7_result1_upvr, var7_result2 = useDebouncedState_upvr(false, arg1)
	local tbl = {}
	tbl[1] = arg2
	tbl[2] = var7_result1_upvr
	React_upvr.useLayoutEffect(function() -- Line 68
		--[[ Upvalues[2]:
			[1]: arg2 (readonly)
			[2]: var7_result1_upvr (readonly)
		]]
		if arg2 ~= nil then
			arg2(var7_result1_upvr)
		end
	end, tbl)
	return var7_result1_upvr, var7_result2
end
local useStyle_upvr = require(Core.Style.useStyle)
local Cryo_upvr = require(Parent_4.Cryo)
local udim_upvr = UDim.new(0, 8)
local TileOverlay_upvr = require(Parent.SplitTile.TileOverlay)
local ImageSetComponent_upvr = require(Core.ImageSet.ImageSetComponent)
local Images_upvr = require(Parent_3.ImageSet.Images)
return function(arg1) -- Line 77, Named "VerticalTile"
	--[[ Upvalues[8]:
		[1]: useStyle_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: udim_upvr (readonly)
		[4]: useIsHoveredState_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: TileOverlay_upvr (readonly)
		[7]: ImageSetComponent_upvr (readonly)
		[8]: Images_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 78 start (CF ANALYSIS FAILED)
	local Theme = useStyle_upvr().Theme
	local any_join_result1 = Cryo_upvr.Dictionary.join({
		hasBackground = true;
		hasOutline = true;
		isHoverEnabled = true;
		isOverlayVisible = true;
		isActive = true;
		backgroundColor = {
			Color = Theme.BackgroundUIDefault.Color;
			Transparency = Theme.BackgroundUIDefault.Transparency;
		};
		border = {
			BorderColor = {
				Color = Theme.Divider.Color;
				Transparency = Theme.Divider.Transparency;
			};
			CornerRadius = udim_upvr;
			Width = 1;
		};
		dropShadow = {
			Position = UDim2.new(0.5, 0, 0.5, 2);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Size = UDim2.new(1, 10, 1, 12);
			ImageColor = {
				Color = Theme.DropShadow.Color;
				Transparency = Theme.DropShadow.Transparency;
			};
			ImageAssetName = "component_assets/dropshadow_24_6";
			SliceCenter = Rect.new(18, 18, 18, 18);
		};
	}, arg1)
	local hasBackground = any_join_result1.hasBackground
	local useIsHoveredState_upvr_result1, useIsHoveredState_result2_upvr = useIsHoveredState_upvr(any_join_result1.hoverDelay, any_join_result1.onHoverChanged)
	local function _(arg1_2) -- Line 113
		--[[ Upvalues[1]:
			[1]: useIsHoveredState_result2_upvr (readonly)
		]]
		return function() -- Line 114
			--[[ Upvalues[2]:
				[1]: useIsHoveredState_result2_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
			]]
			useIsHoveredState_result2_upvr(arg1_2)
		end
	end
	local tbl_2 = {}
	local var33
	if hasBackground then
		var33 = any_join_result1.backgroundColor
		tbl_2 = var33.Color
	else
		tbl_2 = nil
	end
	if hasBackground then
		var33 = any_join_result1.backgroundColor.Transparency
	else
		var33 = 1
	end
	local _ = {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}
	if any_join_result1.minTileSize then
		local _ = {
			MinSize = any_join_result1.minTileSize;
		}
		-- KONSTANTWARNING: GOTO [187] #128
	end
	-- KONSTANTERROR: [0] 1. Error Block 78 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [186] 127. Error Block 87 start (CF ANALYSIS FAILED)
	;({}).UISizeConstraint = nil
	local _ = {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundColor3 = tbl_2;
		BackgroundTransparency = var33;
	}
	if any_join_result1.isHoverEnabled then
		-- KONSTANTWARNING: GOTO [219] #151
	end
	-- KONSTANTERROR: [186] 127. Error Block 87 end (CF ANALYSIS FAILED)
end