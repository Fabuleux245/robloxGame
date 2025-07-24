-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:28
-- Luau version 6, Types version 3
-- Time taken: 0.000754 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local tbl_upvr = {
	LayoutOrder = 2;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local useTileLayout_upvr = require(Foundation.Components.Tile.useTileLayout)
local React_upvr = require(Foundation.Parent.React)
local View_upvr = require(Foundation.Components.View)
return function(arg1) -- Line 20, Named "TileContent"
	--[[ Upvalues[6]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useTileLayout_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: View_upvr (readonly)
	]]
	local withDefaults_upvr_result1 = withDefaults_upvr(arg1, tbl_upvr)
	local module = {
		tag = "size-full col gap-small align-y-top";
	}
	local tbl = {
		FlexMode = Enum.UIFlexMode.Shrink;
	}
	module.flexItem = tbl
	if useTileLayout_upvr().isContained then
		tbl = useTokens_upvr().Padding.Small
	else
		tbl = nil
	end
	module.padding = tbl
	module.LayoutOrder = withDefaults_upvr_result1.LayoutOrder
	return React_upvr.createElement(View_upvr, module, withDefaults_upvr_result1.children)
end