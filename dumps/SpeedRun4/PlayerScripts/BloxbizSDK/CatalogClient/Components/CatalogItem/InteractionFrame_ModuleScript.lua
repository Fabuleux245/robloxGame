-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:20
-- Luau version 6, Types version 3
-- Time taken: 0.002489 seconds

local Utils = script.Parent.Parent.Parent.Parent:FindFirstChild("Utils")
local module_2 = require(Utils:WaitForChild("Fusion"))
local module_upvr = require(Utils:WaitForChild("FusionProps"))
local Children_upvr = module_2.Children
local Value_upvr = module_2.Value
local Spring_upvr = module_2.Spring
local Computed_upvr = module_2.Computed
local Observer_upvr = module_2.Observer
local New_upvr = module_2.New
local Ref_upvr = module_2.Ref
local Cleanup_upvr = module_2.Cleanup
return function(arg1) -- Line 27
	--[[ Upvalues[9]:
		[1]: module_upvr (readonly)
		[2]: Children_upvr (readonly)
		[3]: Value_upvr (readonly)
		[4]: Spring_upvr (readonly)
		[5]: Computed_upvr (readonly)
		[6]: Observer_upvr (readonly)
		[7]: New_upvr (readonly)
		[8]: Ref_upvr (readonly)
		[9]: Cleanup_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr.GetValues(arg1, {
		Selected = false;
		[Children_upvr] = module_upvr.Nil;
	})
	local var7_result1_upvr = Value_upvr()
	local Spring_upvr_result1_upvr = Spring_upvr(Computed_upvr(function() -- Line 36
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		if any_GetValues_result1_upvw.Selected:get() then
			return 0
		end
		return 1
	end), 20, 1)
	local module = {
		GroupTransparency = Spring_upvr_result1_upvr;
		Position = UDim2.fromScale(0, 0);
		Size = UDim2.fromScale(1, 1);
		ZIndex = 2;
		BackgroundTransparency = 1;
	}
	local tbl = {}
	local tbl_2 = {
		Name = "HoverFrame";
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		BackgroundTransparency = 0.5;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
		Visible = false;
		[Ref_upvr] = var7_result1_upvr;
	}
	local any_onChange_result1_upvr = Observer_upvr(Spring_upvr_result1_upvr):onChange(function() -- Line 47
		--[[ Upvalues[2]:
			[1]: var7_result1_upvr (readonly)
			[2]: Spring_upvr_result1_upvr (readonly)
		]]
		local any_get_result1 = var7_result1_upvr:get()
		if Spring_upvr_result1_upvr:get() < 0.8 then
			any_get_result1.Visible = true
		else
			any_get_result1.Visible = false
		end
	end)
	tbl_2[Cleanup_upvr] = function() -- Line 75
		--[[ Upvalues[1]:
			[1]: any_onChange_result1_upvr (readonly)
		]]
		any_onChange_result1_upvr()
	end
	tbl_2[Children_upvr] = {New_upvr("UIListLayout")({
		Name = "UIListLayout";
		Padding = UDim.new(0.05, 0);
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	}), New_upvr("UICorner")({
		Name = "UICorner";
		CornerRadius = UDim.new(0.05, 0);
	}), any_GetValues_result1_upvw[Children_upvr]}
	tbl[1] = New_upvr("Frame")(tbl_2)
	module[Children_upvr] = tbl
	return New_upvr("CanvasGroup")(module)
end