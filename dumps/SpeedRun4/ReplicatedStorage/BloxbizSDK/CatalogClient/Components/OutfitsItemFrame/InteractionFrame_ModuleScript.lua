-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:20
-- Luau version 6, Types version 3
-- Time taken: 0.001922 seconds

local Utils = script.Parent.Parent.Parent.Parent:FindFirstChild("Utils")
local module = require(Utils:WaitForChild("Fusion"))
local module_upvr = require(Utils:WaitForChild("FusionProps"))
local Value_upvr = module.Value
local Spring_upvr = module.Spring
local Computed_upvr = module.Computed
local Observer_upvr = module.Observer
local New_upvr = module.New
local Cleanup_upvr = module.Cleanup
local Children_upvr = module.Children
local Ref_upvr = module.Ref
return function(arg1) -- Line 27
	--[[ Upvalues[9]:
		[1]: module_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: Spring_upvr (readonly)
		[4]: Computed_upvr (readonly)
		[5]: Observer_upvr (readonly)
		[6]: New_upvr (readonly)
		[7]: Cleanup_upvr (readonly)
		[8]: Children_upvr (readonly)
		[9]: Ref_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr.GetValues(arg1, {
		Selected = false;
		Items = module_upvr.Nil;
	})
	local var6_result1_upvr = Value_upvr()
	local Spring_upvr_result1_upvr = Spring_upvr(Computed_upvr(function() -- Line 36
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		if any_GetValues_result1_upvw.Selected:get() then
			return 0
		end
		return 1
	end), 20, 1)
	local any_onChange_result1_upvr = Observer_upvr(Spring_upvr_result1_upvr):onChange(function() -- Line 47
		--[[ Upvalues[2]:
			[1]: var6_result1_upvr (readonly)
			[2]: Spring_upvr_result1_upvr (readonly)
		]]
		local any_get_result1 = var6_result1_upvr:get()
		if Spring_upvr_result1_upvr:get() < 0.8 then
			any_get_result1.Visible = true
		else
			any_get_result1.Visible = false
		end
	end)
	return New_upvr("CanvasGroup")({
		GroupTransparency = Spring_upvr_result1_upvr;
		Position = UDim2.fromScale(0, 0);
		Size = UDim2.fromScale(1, 1);
		ZIndex = 2;
		BackgroundTransparency = 1;
		[Cleanup_upvr] = function() -- Line 64
			--[[ Upvalues[1]:
				[1]: any_onChange_result1_upvr (readonly)
			]]
			any_onChange_result1_upvr()
		end;
		[Children_upvr] = {New_upvr("Frame")({
			Name = "HoverFrame";
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundColor3 = Color3.fromRGB(0, 0, 0);
			BackgroundTransparency = 0.5;
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.fromScale(1, 1);
			Visible = false;
			[Ref_upvr] = var6_result1_upvr;
			[Cleanup_upvr] = function() -- Line 79
				--[[ Upvalues[1]:
					[1]: any_onChange_result1_upvr (readonly)
				]]
				any_onChange_result1_upvr()
			end;
			[Children_upvr] = {New_upvr("UIListLayout")({
				Name = "UIListLayout";
				Padding = UDim.new(0.05, 0);
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			}), New_upvr("UICorner")({
				Name = "UICorner";
				CornerRadius = UDim.new(0.05, 0);
			}), any_GetValues_result1_upvw.Items};
		})};
	})
end