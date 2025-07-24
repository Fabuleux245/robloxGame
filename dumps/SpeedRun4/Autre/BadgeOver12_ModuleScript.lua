-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:19
-- Luau version 6, Types version 3
-- Time taken: 0.001309 seconds

local CorePackages = game:GetService("CorePackages")
local useStyle_upvr = require(CorePackages.Packages.UIBlox).Core.Style.useStyle
local React_upvr = require(CorePackages.Packages.React)
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
return function(arg1) -- Line 12
	--[[ Upvalues[3]:
		[1]: useStyle_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: AppFonts_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	return React_upvr.createElement("TextLabel", {
		AnchorPoint = Vector2.new(0, 1);
		Position = arg1.position;
		Text = "12+";
		Font = AppFonts_upvr.default:getMedium();
		TextSize = 9;
		TextColor3 = useStyle_upvr_result1.Theme.TextEmphasis.Color;
		BackgroundColor3 = useStyle_upvr_result1.Theme.BackgroundUIContrast.Color;
		BackgroundTransparency = 0;
		AutomaticSize = Enum.AutomaticSize.XY;
		LineHeight = 1.25;
		ZIndex = 2;
	}, {
		Padding = React_upvr.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, 2);
			PaddingRight = UDim.new(0, 2);
		});
		Shape = React_upvr.createElement("UICorner", {
			CornerRadius = UDim.new(0, 8);
		});
	})
end