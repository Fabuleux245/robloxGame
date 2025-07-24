-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:53
-- Luau version 6, Types version 3
-- Time taken: 0.000896 seconds

local Parent = script:FindFirstAncestor("AppChat").Parent
local Foundation_upvr = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
function GameCardError() -- Line 12
	--[[ Upvalues[4]:
		[1]: useTokens_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Foundation_upvr (readonly)
	]]
	local useTokens_upvr_result1 = useTokens_upvr()
	return React_upvr.createElement(Foundation_upvr.View, {
		tag = "size-full-0 auto-xy bg-action-subtle align-x-center col align-y-top gap-small";
	}, {
		LoadingFailedImage = React_upvr.createElement(Foundation_upvr.Image, {
			Image = "icons/graphic/error_xlarge";
			tag = "size-2400 bg-action-subtle padding-xsmall";
			LayoutOrder = 1;
		});
		LoadingFailedText = React_upvr.createElement(Foundation_upvr.Text, {
			tag = "auto-xy text-wrap padding-xsmall";
			Text = useLocalization_upvr({
				contentLoadingFailed = "Feature.Chat.Label.ContentLoadingFailed";
			}).contentLoadingFailed;
			textStyle = useTokens_upvr_result1.Color.Content.Muted;
			fontStyle = useTokens_upvr_result1.Typography.BodyLarge;
			LayoutOrder = 2;
		});
	})
end
return React_upvr.memo(GameCardError)