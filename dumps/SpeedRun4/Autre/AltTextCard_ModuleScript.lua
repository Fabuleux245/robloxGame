-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:28
-- Luau version 6, Types version 3
-- Time taken: 0.001186 seconds

local Parent = script:FindFirstAncestor("SocialCards").Parent
local Foundation_upvr = require(Parent.Foundation)
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local React_upvr = require(Parent.React)
return function(arg1) -- Line 13, Named "AltTextCard"
	--[[ Upvalues[3]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Foundation_upvr (readonly)
	]]
	local useTokens_upvr_result1 = useTokens_upvr()
	return React_upvr.createElement(Foundation_upvr.Text, {
		AutomaticSize = Enum.AutomaticSize.XY;
		fontStyle = {
			Font = useTokens_upvr_result1.Typography.BodyMedium.Font;
			FontSize = useTokens_upvr_result1.Typography.BodyMedium.FontSize;
		};
		padding = {
			bottom = UDim.new(0, useTokens_upvr_result1.Padding.Medium);
			left = UDim.new(0, useTokens_upvr_result1.Padding.Medium);
			right = UDim.new(0, useTokens_upvr_result1.Padding.Medium);
			top = UDim.new(0, useTokens_upvr_result1.Padding.Medium);
		};
		Text = arg1.altText;
		textStyle = {
			Color3 = useTokens_upvr_result1.Color.Content.Muted.Color3;
			Transparency = useTokens_upvr_result1.Color.Content.Muted.Transparency;
		};
		TextWrapped = true;
	})
end