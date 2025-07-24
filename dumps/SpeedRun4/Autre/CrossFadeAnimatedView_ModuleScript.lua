-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:17
-- Luau version 6, Types version 3
-- Time taken: 0.003227 seconds

local Parent = script:FindFirstAncestor("AppBlox").Parent
local tbl_upvr = {
	zIndex = 1;
	overlayTransparency = 0.5;
	animationConfig = {
		dampingRatio = 1;
		frequency = 6.666666666666667;
	};
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local React_upvr = require(Parent.React)
local ReactOtter_upvr = require(Parent.ReactOtter)
return function(arg1) -- Line 52, Named "CrossFadeAnimatedView"
	--[[ Upvalues[5]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: ReactOtter_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local len_upvr = #any_join_result1_upvr.items
	local any_useAnimatedBinding_result1, any_useAnimatedBinding_result2_upvr = ReactOtter_upvr.useAnimatedBinding(0, React_upvr.useCallback(function() -- Line 58
		--[[ Upvalues[1]:
			[1]: any_join_result1_upvr (readonly)
		]]
		if any_join_result1_upvr.crossAnim.isCrossFade then
			any_join_result1_upvr.crossAnim.setCrossFade(false)
			any_join_result1_upvr.crossAnim.setCurrentIndex(any_join_result1_upvr.crossAnim.nextIndex)
		end
	end, {any_join_result1_upvr.crossAnim.isCrossFade, any_join_result1_upvr.crossAnim.nextIndex, any_join_result1_upvr.crossAnim.setCrossFade, any_join_result1_upvr.crossAnim.setCurrentIndex}))
	React_upvr.useEffect(function() -- Line 74
		--[[ Upvalues[4]:
			[1]: len_upvr (readonly)
			[2]: any_join_result1_upvr (readonly)
			[3]: any_useAnimatedBinding_result2_upvr (readonly)
			[4]: ReactOtter_upvr (copied, readonly)
		]]
		if len_upvr < 2 then
		else
			if any_join_result1_upvr.crossAnim.isCrossFade then
				any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.spring(1, any_join_result1_upvr.animationConfig))
				return
			end
			any_useAnimatedBinding_result2_upvr(ReactOtter_upvr.instant(0))
		end
	end, {any_join_result1_upvr.crossAnim.isCrossFade, any_join_result1_upvr.crossAnim.nextIndex, any_join_result1_upvr.animationConfig})
	local module = {
		Size = UDim2.fromScale(1, 1);
		ZIndex = any_join_result1_upvr.zIndex;
	}
	local var17 = any_join_result1_upvr.items[any_join_result1_upvr.crossAnim.currentIndex]
	module.Image = var17.imageId
	module.ScaleType = Enum.ScaleType.Crop
	module.BackgroundTransparency = 1
	module.ImageTransparency = any_useAnimatedBinding_result1
	local module_2 = {}
	if 2 <= len_upvr then
		var17 = React_upvr.createElement
		var17 = var17("ImageLabel", {
			Position = UDim2.fromOffset(0, 0);
			Size = UDim2.fromScale(1, 1);
			Image = any_join_result1_upvr.items[any_join_result1_upvr.crossAnim.nextIndex].imageId;
			ScaleType = Enum.ScaleType.Crop;
			BackgroundTransparency = 1;
			ImageTransparency = any_useAnimatedBinding_result1:map(function(arg1_2) -- Line 107
				return 1 - arg1_2
			end);
		})
	else
		var17 = nil
	end
	module_2.NextImage = var17
	module_2.Overlay = React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = any_join_result1_upvr.overlayTransparency;
		BackgroundColor3 = useStyle_upvr().Theme.Overlay.Color;
	})
	return React_upvr.createElement("ImageLabel", module, module_2)
end