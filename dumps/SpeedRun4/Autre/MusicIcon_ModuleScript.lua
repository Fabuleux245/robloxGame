-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:00
-- Luau version 6, Types version 3
-- Time taken: 0.000943 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local createNextOrder_upvr = require(Songbird.Parent.ReactUtils).createNextOrder
local Foundation_upvr = require(Songbird.Parent.Foundation)
local React_upvr = require(Songbird.Parent.React)
return function() -- Line 10, Named "MusicIcon"
	--[[ Upvalues[3]:
		[1]: createNextOrder_upvr (readonly)
		[2]: Foundation_upvr (readonly)
		[3]: React_upvr (readonly)
	]]
	local createNextOrder_upvr_result1 = createNextOrder_upvr()
	local any_useTokens_result1 = Foundation_upvr.Hooks.useTokens()
	local var7 = any_useTokens_result1.Semantic.Icon.Size[Foundation_upvr.Enums.IconSize.Medium]
	return React_upvr.createElement(Foundation_upvr.View, {
		Size = UDim2.fromOffset(var7, var7);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
		backgroundStyle = {
			Color3 = Color3.fromRGB(43, 45, 50);
			Transparency = 0;
		};
		cornerRadius = UDim.new(0, any_useTokens_result1.Radius.Medium);
		ZIndex = createNextOrder_upvr_result1();
	}, {
		Icon = React_upvr.createElement(Foundation_upvr.Icon, {
			name = "icons/common/music";
			size = Foundation_upvr.Enums.IconSize.Medium;
			Position = UDim2.new(0.5, -1, 0.5, 0);
			AnchorPoint = Vector2.new(0.5, 0.5);
			ZIndex = createNextOrder_upvr_result1();
		});
	})
end