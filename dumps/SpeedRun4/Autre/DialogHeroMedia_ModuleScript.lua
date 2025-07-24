-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:29
-- Luau version 6, Types version 3
-- Time taken: 0.002693 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local tbl_upvr = {
	height = UDim.new(1, 0);
	hasBleed = false;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useDialogLayout_upvr = require(script.Parent.Parent.useDialogLayout)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local React_upvr = require(Foundation.Parent.React)
local View_upvr = require(Foundation.Components.View)
local Image_upvr = require(Foundation.Components.Image)
local renderFade_upvr = require(script.Parent.Parent.renderFade)
return function(arg1) -- Line 30, Named "DialogHeroMedia"
	--[[ Upvalues[8]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useDialogLayout_upvr (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: View_upvr (readonly)
		[7]: Image_upvr (readonly)
		[8]: renderFade_upvr (readonly)
	]]
	local var3_result1_upvr = withDefaults_upvr(arg1, tbl_upvr)
	local var4_result1_upvr = useDialogLayout_upvr()
	local useTokens_upvr_result1 = useTokens_upvr()
	React_upvr.useEffect(function() -- Line 36
		--[[ Upvalues[2]:
			[1]: var4_result1_upvr (readonly)
			[2]: var3_result1_upvr (readonly)
		]]
		var4_result1_upvr.setHasMediaBleed(var3_result1_upvr.hasBleed)
	end, {var4_result1_upvr, var3_result1_upvr.hasBleed})
	local function var15() -- Line 41
		--[[ Upvalues[1]:
			[1]: var4_result1_upvr (readonly)
		]]
		return function() -- Line 42
			--[[ Upvalues[1]:
				[1]: var4_result1_upvr (copied, readonly)
			]]
			var4_result1_upvr.setHasMediaBleed(false)
		end
	end
	React_upvr.useEffect(var15, {})
	var15 = useTokens_upvr_result1.Padding
	local var17 = var15
	local XXLarge = var17.XXLarge
	if var4_result1_upvr.hasMediaBleed then
		var17 = 0
	else
		var17 = useTokens_upvr_result1.Padding.XXLarge
	end
	local hasMediaBleed = var4_result1_upvr.hasMediaBleed
	if not hasMediaBleed then
		hasMediaBleed = not var4_result1_upvr.isTitleVisible
	end
	local module = {}
	local tbl_2 = {
		tag = {
			["radius-medium"] = hasMediaBleed;
		};
		aspectRatio = var3_result1_upvr.aspectRatio;
		Image = var3_result1_upvr.media;
		Size = UDim2.new(1, XXLarge * 2, var3_result1_upvr.height.Scale, var3_result1_upvr.height.Offset);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
	}
	local var25 = 0
	tbl_2.Position = UDim2.new(var25, -XXLarge, 0, -var17)
	local tbl = {}
	if hasMediaBleed then
		var25 = renderFade_upvr(-90, 0)
	else
		var25 = nil
	end
	tbl.TransparencyGradient = var25
	module.Image = React_upvr.createElement(Image_upvr, tbl_2, tbl)
	return React_upvr.createElement(View_upvr, {
		tag = {
			["auto-y size-full-0 position-top-center"] = true;
			["radius-medium"] = hasMediaBleed;
		};
		LayoutOrder = -2147483648;
	}, module)
end