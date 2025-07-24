-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:06
-- Luau version 6, Types version 3
-- Time taken: 0.001619 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local UIBlox = require(Parent.UIBlox)
local tbl_upvr = {
	animationConfig = {
		dampingRatio = 1;
		frequency = 3;
	};
	itemPadding = 36;
	safeAreaSize = Vector2.new(96, 144);
	trailingWhitespace = 3000;
}
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local getPlatformConfig_upvr = require(script.Parent.getPlatformConfig)
local useAnimateFullscreen_upvr = require(script.Parent.Hooks.useAnimateFullscreen)
local DetailsPageHeader_upvr = require(script.Parent.DetailsPageHeader)
local useDetailsPageRenderItems_upvr = require(script.Parent.Hooks.useDetailsPageRenderItems)
local DetailsPageRenderItem_upvr = require(script.Parent.DetailsPageRenderItem)
local LoadableImage_upvr = UIBlox.App.Loading.LoadableImage
local Overlay_upvr = UIBlox.App.Dialog.Overlay
local AnimatedFlatList_upvr = require(Parent.VirtualizedList).AnimatedFlatList
return function(arg1) -- Line 147, Named "DetailsPageTenfootTemplate"
	--[[ Upvalues[11]:
		[1]: tbl_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: getPlatformConfig_upvr (readonly)
		[5]: useAnimateFullscreen_upvr (readonly)
		[6]: DetailsPageHeader_upvr (readonly)
		[7]: useDetailsPageRenderItems_upvr (readonly)
		[8]: DetailsPageRenderItem_upvr (readonly)
		[9]: LoadableImage_upvr (readonly)
		[10]: Overlay_upvr (readonly)
		[11]: AnimatedFlatList_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 35 start (CF ANALYSIS FAILED)
	if arg1.tokens then
	end
	local any_useState_result1, _ = React_upvr.useState(true)
	local function _() -- Line 158
		--[[ Upvalues[2]:
			[1]: getPlatformConfig_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return getPlatformConfig_upvr(arg1.deviceType)
	end
	local _ = {arg1.deviceType}
	local _, any_useState_result2_upvr = React_upvr.useState(Vector2.new(0, 0))
	local function _(arg1_2) -- Line 164
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(arg1_2.AbsoluteSize)
	end
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	React_upvr.useEffect(function() -- Line 167
		--[[ Upvalues[2]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: any_useState_result2_upvr (readonly)
		]]
		if any_useRef_result1_upvr.current then
			any_useState_result2_upvr(any_useRef_result1_upvr.current.AbsoluteSize)
		end
	end, {})
	if arg1.thumbnailHeight then
	else
	end
	if arg1.headerBarBackgroundHeight ~= nil then
		-- KONSTANTWARNING: GOTO [80] #58
	end
	-- KONSTANTERROR: [0] 1. Error Block 35 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [78] 57. Error Block 39 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	if arg1.sideMargin then
		-- KONSTANTWARNING: GOTO [88] #63
	end
	-- KONSTANTERROR: [78] 57. Error Block 39 end (CF ANALYSIS FAILED)
end