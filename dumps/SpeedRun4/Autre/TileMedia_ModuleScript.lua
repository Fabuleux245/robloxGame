-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:32
-- Luau version 6, Types version 3
-- Time taken: 0.002106 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local MediaShape_upvr = require(Foundation.Enums.MediaShape)
local tbl_upvr = {
	[MediaShape_upvr.Circle] = 1;
	[MediaShape_upvr.Square] = 1;
	[MediaShape_upvr.Landscape] = 1.7777777777777777;
	[MediaShape_upvr.Portrait] = 0.5625;
}
local tbl_upvr_2 = {
	shape = MediaShape_upvr.Square;
	LayoutOrder = 1;
}
local function renderGradient_upvr(arg1, arg2) -- Line 55, Named "renderGradient"
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local module = {}
	local var7
	if arg1 == Enum.FillDirection.Vertical then
		var7 = 90
	else
		var7 = 0
	end
	module.Rotation = var7
	var7 = NumberSequence.new
	local tbl = {}
	if arg2 then
		-- KONSTANTWARNING: GOTO [25] #19
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 18. Error Block 22 start (CF ANALYSIS FAILED)
	if arg2 then
	else
	end
	tbl[1] = NumberSequenceKeypoint.new(0, 1)
	tbl[2] = NumberSequenceKeypoint.new(0.5, 0)
	tbl[3] = NumberSequenceKeypoint.new(1, 0)
	var7 = var7(tbl)
	module.Transparency = var7
	do
		return React_upvr.createElement("UIGradient", module)
	end
	-- KONSTANTERROR: [24] 18. Error Block 22 end (CF ANALYSIS FAILED)
end
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTileLayout_upvr = require(Foundation.Components.Tile.useTileLayout)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local getRbxThumb_upvr = require(Foundation.Utility.getRbxThumb)
local Image_upvr = require(Foundation.Components.Image)
local View_upvr = require(Foundation.Components.View)
return function(arg1) -- Line 67, Named "TileMedia"
	--[[ Upvalues[11]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: useTileLayout_upvr (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: getRbxThumb_upvr (readonly)
		[7]: MediaShape_upvr (readonly)
		[8]: renderGradient_upvr (readonly)
		[9]: Image_upvr (readonly)
		[10]: View_upvr (readonly)
		[11]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 83 start (CF ANALYSIS FAILED)
	local var9_result1_upvr = withDefaults_upvr(arg1, tbl_upvr_2)
	if var9_result1_upvr.background then
	else
	end
	if var9_result1_upvr.background then
		-- KONSTANTWARNING: GOTO [26] #21
	end
	-- KONSTANTERROR: [0] 1. Error Block 83 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 20. Error Block 91 start (CF ANALYSIS FAILED)
	local function _() -- Line 76
		--[[ Upvalues[2]:
			[1]: var9_result1_upvr (readonly)
			[2]: getRbxThumb_upvr (copied, readonly)
		]]
		if var9_result1_upvr.id == nil or var9_result1_upvr.type == nil then
			return nil
		end
		return getRbxThumb_upvr(var9_result1_upvr.type, var9_result1_upvr.id)
	end
	local tbl_2 = {var9_result1_upvr.type, var9_result1_upvr.id}
	if var9_result1_upvr.shape == MediaShape_upvr.Circle then
		-- KONSTANTWARNING: GOTO [65] #46
	end
	-- KONSTANTERROR: [25] 20. Error Block 91 end (CF ANALYSIS FAILED)
end