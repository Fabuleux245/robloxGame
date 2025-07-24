-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:02
-- Luau version 6, Types version 3
-- Time taken: 0.000968 seconds

local React_upvr = require(game:GetService("CorePackages").Packages.React)
local Constants_upvr = require(script:FindFirstAncestor("ChromeShared").Unibar.Constants)
return function(arg1) -- Line 18
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local module = {
		Padding = React_upvr.createElement("UIPadding", {
			PaddingTop = Constants_upvr.CONTAINER_PADDING_TOP_BOTTOM;
			PaddingRight = Constants_upvr.CONTAINER_PADDING_LEFT_RIGHT;
			PaddingBottom = Constants_upvr.CONTAINER_PADDING_TOP_BOTTOM;
			PaddingLeft = Constants_upvr.CONTAINER_PADDING_LEFT_RIGHT;
		});
	}
	local var8
	if arg1.integration.integration and arg1.integration.integration.components.Container then
		var8 = arg1.integration.integration.components.Container(arg1.integration)
	else
		var8 = nil
	end
	module.IntegrationContainer = var8
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(0, arg1.containerWidthSlots * Constants_upvr.ICON_CELL_WIDTH, 1, 0);
		LayoutOrder = arg1.integration.order;
		BackgroundTransparency = 1;
		Position = arg1.position;
		Visible = arg1.visible;
		ZIndex = arg1.integration.order;
	}, module)
end