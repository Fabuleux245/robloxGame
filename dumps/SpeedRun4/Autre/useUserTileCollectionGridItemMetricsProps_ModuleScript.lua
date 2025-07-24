-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:26
-- Luau version 6, Types version 3
-- Time taken: 0.002368 seconds

local Parent = script:FindFirstAncestor("FriendsLanding").Parent
local Responsive_upvr = require(Parent.Responsive)
local RoactUtils = require(Parent.RoactUtils)
local UIBlox = require(Parent.UIBlox)
local usePreferredInput_upvr = Responsive_upvr.usePreferredInput
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local useScreenSize_upvr = require(Parent.RobloxAppHooks).useScreenSize
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AddFriendsUserTileHeightFix", false)
local useTextSizeOffset_upvr = UIBlox.Core.Style.useTextSizeOffset
local useSelector_upvr = RoactUtils.Hooks.RoactRodux.useSelector
local GridMetrics_upvr = UIBlox.App.Grid.GridMetrics
local React_upvr = require(Parent.React)
local dependencyArray_upvr = RoactUtils.Hooks.dependencyArray
local getPageMargin_upvr = UIBlox.App.Container.getPageMargin
return function() -- Line 22
	--[[ Upvalues[11]:
		[1]: usePreferredInput_upvr (readonly)
		[2]: useDesignTokens_upvr (readonly)
		[3]: useScreenSize_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
		[5]: useTextSizeOffset_upvr (readonly)
		[6]: useSelector_upvr (readonly)
		[7]: Responsive_upvr (readonly)
		[8]: GridMetrics_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: dependencyArray_upvr (readonly)
		[11]: getPageMargin_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 36 start (CF ANALYSIS FAILED)
	local var7_result1 = useDesignTokens_upvr()
	local useScreenSize_upvr_result1 = useScreenSize_upvr()
	local var18_upvr
	if game_DefineFastFlag_result1_upvr then
	else
	end
	var18_upvr = Responsive_upvr.Input.Directional
	if usePreferredInput_upvr() ~= var18_upvr then
		-- KONSTANTWARNING: GOTO [24] #22
	end
	-- KONSTANTERROR: [0] 1. Error Block 36 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 21. Error Block 39 start (CF ANALYSIS FAILED)
	local var20 = true
	if var20 then
		var18_upvr = var7_result1.Global.Space_800
	else
		var18_upvr = var7_result1.Global.Space_1000
	end
	if var20 then
	else
	end
	local const_number_upvr = 0
	local var23 = var7_result1.LuaApps.FriendsLanding.AddFriendsPage.ItemMargin or 12
	local Page = var7_result1.LuaApps.App.Page
	local SafeAreaMargin = Page.SafeAreaMargin
	if 0 < SafeAreaMargin.X then
		Page = SafeAreaMargin.X
	else
		Page = getPageMargin_upvr(useScreenSize_upvr_result1.X)
	end
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(useScreenSize_upvr_result1.X - 2 * Page - useSelector_upvr(function(arg1) -- Line 27
		return arg1.GlobalGuiInset
	end).left)
	local any_getMediumMetrics_result1 = GridMetrics_upvr.getMediumMetrics(any_useState_result1, var23)
	local module = {
		numColumns = any_getMediumMetrics_result1.itemsPerRow;
	}
	if any_getMediumMetrics_result1.itemsPerRow > 2 or not var23 then
	end
	module.columnGap = nil
	module.getItemHeight = React_upvr.useCallback(function(arg1) -- Line 39
		--[[ Upvalues[3]:
			[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
			[2]: var18_upvr (readonly)
			[3]: const_number_upvr (readonly)
		]]
		if game_DefineFastFlag_result1_upvr then
			return arg1 + var18_upvr + 3 * const_number_upvr
		end
		return arg1 + var18_upvr
	end, dependencyArray_upvr(var18_upvr))
	function module.onContainerSizeChanged(arg1) -- Line 53
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(arg1.X)
	end
	do
		return module, any_getMediumMetrics_result1
	end
	-- KONSTANTERROR: [23] 21. Error Block 39 end (CF ANALYSIS FAILED)
end