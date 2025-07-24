-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:26
-- Luau version 6, Types version 3
-- Time taken: 0.001258 seconds

local Utils = script.Parent.Parent.Parent.Parent:FindFirstChild("Utils")
local module_upvr_2 = require(Utils:WaitForChild("Fusion"))
local module_upvr = require(Utils:WaitForChild("FusionProps"))
local Children_upvr = module_upvr_2.Children
local New_upvr = module_upvr_2.New
return function(arg1) -- Line 11
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: Children_upvr (readonly)
		[3]: New_upvr (readonly)
		[4]: module_upvr_2 (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr.GetValues(arg1, {
		[Children_upvr] = module_upvr.Nil;
		Parent = module_upvr.Nil;
		Padding = 7;
	})
	return New_upvr("Frame")({
		Parent = any_GetValues_result1_upvw.Parent;
		Name = "TopBarFrame";
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Position = UDim2.fromScale(0.012, 0.017);
		Size = UDim2.fromScale(0.668, 0.07);
		[Children_upvr] = {New_upvr("UIListLayout")({
			Name = "UIListLayout";
			Padding = module_upvr_2.Computed(function() -- Line 30
				--[[ Upvalues[1]:
					[1]: any_GetValues_result1_upvw (read and write)
				]]
				return UDim.new(0, any_GetValues_result1_upvw.Padding:get())
			end);
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
		}), New_upvr("UISizeConstraint")({
			MaxSize = Vector2.new(math.huge, 50);
		}), any_GetValues_result1_upvw[Children_upvr]};
	})
end