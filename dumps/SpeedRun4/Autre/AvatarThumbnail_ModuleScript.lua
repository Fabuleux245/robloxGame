-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:19
-- Luau version 6, Types version 3
-- Time taken: 0.000668 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local React_upvr = require(Parent.React)
local LoadableImage_upvr = require(Parent.UIBlox).App.Loading.LoadableImage
return function(arg1) -- Line 13, Named "AvatarThumbnail"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: LoadableImage_upvr (readonly)
	]]
	return React_upvr.createElement(LoadableImage_upvr, {
		Size = UDim2.fromScale(1, 1);
		Image = arg1.thumbnail;
		useShimmerAnimationWhileLoading = true;
		showFailedStateWhenLoadingFailed = true;
		cornerRadius = arg1.cornerRadius;
	})
end