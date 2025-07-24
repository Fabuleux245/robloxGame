-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:50
-- Luau version 6, Types version 3
-- Time taken: 0.002721 seconds

local module_2_upvr = {
	[Enum.HorizontalAlignment.Center] = {
		[Enum.VerticalAlignment.Center] = {
			anchor = Vector2.new(0.5, 0.5);
			position = UDim2.fromScale(0.5, 0.5);
		};
		[Enum.VerticalAlignment.Top] = {
			anchor = Vector2.new(0.5, 0);
			position = UDim2.fromScale(0.5, 0);
		};
		[Enum.VerticalAlignment.Bottom] = {
			anchor = Vector2.new(0.5, 1);
			position = UDim2.fromScale(0.5, 1);
		};
	};
	[Enum.HorizontalAlignment.Left] = {
		[Enum.VerticalAlignment.Center] = {
			anchor = Vector2.new(0, 0.5);
			position = UDim2.fromScale(0, 0.5);
		};
		[Enum.VerticalAlignment.Top] = {
			anchor = Vector2.new(0, 0);
			position = UDim2.fromScale(0, 0);
		};
		[Enum.VerticalAlignment.Bottom] = {
			anchor = Vector2.new(0, 1);
			position = UDim2.fromScale(0, 1);
		};
	};
	[Enum.HorizontalAlignment.Right] = {
		[Enum.VerticalAlignment.Center] = {
			anchor = Vector2.new(1, 0.5);
			position = UDim2.fromScale(1, 0.5);
		};
		[Enum.VerticalAlignment.Top] = {
			anchor = Vector2.new(1, 0);
			position = UDim2.fromScale(1, 0);
		};
		[Enum.VerticalAlignment.Bottom] = {
			anchor = Vector2.new(1, 1);
			position = UDim2.fromScale(1, 1);
		};
	};
}
local React_upvr = require(script:FindFirstAncestor("AppChat").Parent.React)
return function(arg1) -- Line 36, Named "Frame"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: module_2_upvr (readonly)
	]]
	local any_useMemo_result1, any_useMemo_result2 = React_upvr.useMemo(function() -- Line 37
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: module_2_upvr (copied, readonly)
		]]
		if arg1.horizontalAlignment and arg1.verticalAlignment then
			return module_2_upvr[arg1.horizontalAlignment][arg1.verticalAlignment].anchor, module_2_upvr[arg1.horizontalAlignment][arg1.verticalAlignment].position
		end
		return nil, nil
	end, {arg1.horizontalAlignment, arg1.verticalAlignment})
	local module = {
		AnchorPoint = arg1.AnchorPoint or any_useMemo_result1;
		BackgroundColor3 = arg1.BackgroundColor3;
		BackgroundTransparency = arg1.BackgroundTransparency or 1;
		BorderSizePixel = 0;
		ClipsDescendants = arg1.ClipsDescendants;
		LayoutOrder = arg1.LayoutOrder;
		Position = arg1.Position or any_useMemo_result2;
	}
	local Size = arg1.Size
	if not Size then
		Size = UDim2.fromScale(1, 1)
	end
	module.Size = Size
	module.ZIndex = arg1.ZIndex
	module.children = arg1.children
	return React_upvr.createElement("Frame", module)
end