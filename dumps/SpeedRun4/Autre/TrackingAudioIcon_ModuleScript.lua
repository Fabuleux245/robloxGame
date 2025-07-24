-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:05
-- Luau version 6, Types version 3
-- Time taken: 0.001135 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local tbl_upvr = {
	isMoving = true;
}
local Cryo_upvr = require(Songbird.Parent.Cryo)
local createNextOrder_upvr = require(Songbird.Parent.ReactUtils).createNextOrder
local Foundation_upvr = require(Songbird.Parent.Foundation)
local React_upvr = require(Songbird.Parent.React)
local MusicPlayingIcon_upvr = require(Songbird.Components.MusicPlayingIcon)
return function(arg1) -- Line 23, Named "TrackingAudioIcon"
	--[[ Upvalues[6]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: createNextOrder_upvr (readonly)
		[4]: Foundation_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: MusicPlayingIcon_upvr (readonly)
	]]
	local createNextOrder_upvr_result1 = createNextOrder_upvr()
	local var9 = Foundation_upvr.Hooks.useTokens().Semantic.Icon.Size[Foundation_upvr.Enums.IconSize.Medium]
	return React_upvr.createElement(Foundation_upvr.View, {
		Size = UDim2.fromOffset(var9, var9);
	}, {
		BaseIcon = React_upvr.createElement(Foundation_upvr.Image, {
			Image = "icons/common/musicTrackingBorder_medium";
			Size = UDim2.fromOffset(var9, var9);
			ZIndex = createNextOrder_upvr_result1();
		});
		CenterCover = React_upvr.createElement(Foundation_upvr.View, {
			Size = UDim2.fromOffset(var9 / 2, var9 / 2);
			Position = UDim2.fromScale(0.5, 0.5);
			AnchorPoint = Vector2.new(0.5, 0.5);
			Transparency = 1;
			ZIndex = createNextOrder_upvr_result1();
		}, {
			Bars = React_upvr.createElement(MusicPlayingIcon_upvr, {
				heightRange = NumberRange.new(0.25, 0.9);
				numAnimatedBars = 4;
				zIndex = createNextOrder_upvr_result1();
				isMoving = Cryo_upvr.Dictionary.join(tbl_upvr, arg1).isMoving;
			});
		});
	})
end