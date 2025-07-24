-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:36:49
-- Luau version 6, Types version 3
-- Time taken: 0.000601 seconds

local Parent = script:FindFirstAncestor("InterventionShared").Parent
local useStyle_upvr = require(Parent.UIBlox).Core.Style.useStyle
local React_upvr = require(Parent.React)
return function(arg1) -- Line 13, Named "InterventionOverlay"
	--[[ Upvalues[2]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
	]]
	local var2_result1 = useStyle_upvr()
	return React_upvr.createElement("TextButton", {
		AutoButtonColor = false;
		Size = UDim2.fromScale(1, 1);
		BackgroundColor3 = var2_result1.Tokens.Semantic.Color.Common.Overlay.Color3;
		BackgroundTransparency = var2_result1.Tokens.Semantic.Color.Common.Overlay.Transparency;
		BorderSizePixel = 0;
		Text = "";
		[React_upvr.Event.Activated] = arg1.onDismiss;
	}, arg1.children)
end