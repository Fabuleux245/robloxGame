-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:31
-- Luau version 6, Types version 3
-- Time taken: 0.001907 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local Skeleton_upvr = require(Foundation.Components.Skeleton)
local useTextSizeOffset_upvr = require(Foundation.Providers.Style.useTextSizeOffset)
local Text_upvr = require(Foundation.Components.Text)
local function getTypographyComponent_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 30, Named "getTypographyComponent"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: Skeleton_upvr (readonly)
		[3]: useTextSizeOffset_upvr (readonly)
		[4]: Text_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 36 start (CF ANALYSIS FAILED)
	local var6
	local var7
	local var8
	local var9
	if typeof(arg1) == "string" then
		var6 = arg2
		var7 = arg3
		var8 = arg5
	else
		if arg1.isLoading then
			var9 = React_upvr
			var9 = Skeleton_upvr
			local module_2 = {
				Size = UDim2.new(1 / arg6, 0, 0, arg2.FontSize);
			}
			module_2.LayoutOrder = arg6
			return var9.createElement(var9, module_2)
		end
		var6 = arg1.fontStyle or arg2
		var7 = arg1.colorStyle or arg3
		var8 = arg1.numLines or arg5
	end
	if var6 == nil then
		var9 = false
	else
		var9 = true
	end
	assert(var9, "fontStyle cannot be nil")
	if var7 == nil then
		var9 = false
		-- KONSTANTWARNING: GOTO [63] #48
	end
	-- KONSTANTERROR: [0] 1. Error Block 36 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [62] 47. Error Block 39 start (CF ANALYSIS FAILED)
	var9 = true
	assert(var9, "colorStyle cannot be nil")
	if var8 == nil then
		var9 = false
		-- KONSTANTWARNING: GOTO [73] #55
	end
	-- KONSTANTERROR: [62] 47. Error Block 39 end (CF ANALYSIS FAILED)
end
local tbl_upvr = {
	TextXAlignment = Enum.TextXAlignment.Left;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local View_upvr = require(Foundation.Components.View)
return function(arg1) -- Line 95, Named "TileHeader"
	--[[ Upvalues[6]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: getTypographyComponent_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: View_upvr (readonly)
	]]
	local var12_result1 = withDefaults_upvr(arg1, tbl_upvr)
	local var13_result1 = useTokens_upvr()
	local Color = var13_result1.Color
	if var12_result1.subtitle == nil then
		Color = 2
	else
		Color = 1
	end
	local module_3 = {}
	local tbl = {}
	Color = Enum.UIFlexMode.Shrink
	tbl.FlexMode = Color
	module_3.flexItem = tbl
	local tbl_2 = {}
	Color = Enum.HorizontalAlignment.Left
	tbl_2.HorizontalAlignment = Color
	Color = Enum.FillDirection.Vertical
	tbl_2.FillDirection = Color
	Color = Enum.SortOrder.LayoutOrder
	tbl_2.SortOrder = Color
	module_3.layout = tbl_2
	module_3.tag = "auto-y size-full-0 gap-xxsmall"
	local module = {
		Title = getTypographyComponent_upvr(var12_result1.title, var13_result1.Typography.TitleLarge, Color.Content.Emphasis, var12_result1.TextXAlignment, Color, 1);
	}
	if var12_result1.subtitle ~= nil then
		Color = getTypographyComponent_upvr(var12_result1.subtitle, var13_result1.Typography.CaptionLarge, var13_result1.Color.Content.Default, var12_result1.TextXAlignment, 1, 2)
	else
		Color = nil
	end
	module.Subtitle = Color
	return React_upvr.createElement(View_upvr, module_3, module)
end