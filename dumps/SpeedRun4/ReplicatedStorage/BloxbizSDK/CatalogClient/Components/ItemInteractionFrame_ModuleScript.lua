-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:12
-- Luau version 6, Types version 3
-- Time taken: 0.002349 seconds

local module = require(script.Parent.Parent.Parent:FindFirstChild("Utils"):WaitForChild("Fusion"))
local Value_upvr = module.Value
local Spring_upvr = module.Spring
local Computed_upvr = module.Computed
local Observer_upvr = module.Observer
local New_upvr = module.New
local Ref_upvr = module.Ref
local Cleanup_upvr = module.Cleanup
local Children_upvr = module.Children
return function(arg1) -- Line 26
	--[[ Upvalues[8]:
		[1]: Value_upvr (readonly)
		[2]: Spring_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: Observer_upvr (readonly)
		[5]: New_upvr (readonly)
		[6]: Ref_upvr (readonly)
		[7]: Cleanup_upvr (readonly)
		[8]: Children_upvr (readonly)
	]]
	local Value_upvr_result1_upvr = Value_upvr()
	local Spring_upvr_result1_upvr = Spring_upvr(Computed_upvr(function() -- Line 30
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1:get() then
			return 0
		end
		return 1
	end), 20, 1)
	local tbl = {
		Name = "HoverFrame";
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		BackgroundTransparency = Spring_upvr(Computed_upvr(function() -- Line 50
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1:get() then
				return 0.5
			end
			return 1
		end), 20, 1);
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(1, 1);
		Visible = false;
		ZIndex = 2;
		[Ref_upvr] = Value_upvr_result1_upvr;
	}
	local any_onChange_result1_upvr = Observer_upvr(Spring_upvr_result1_upvr):onChange(function() -- Line 39
		--[[ Upvalues[2]:
			[1]: Spring_upvr_result1_upvr (readonly)
			[2]: Value_upvr_result1_upvr (readonly)
		]]
		if Spring_upvr_result1_upvr:get() < 0.8 then
			Value_upvr_result1_upvr:get().Visible = true
		else
			Value_upvr_result1_upvr:get().Visible = false
		end
	end)
	tbl[Cleanup_upvr] = function() -- Line 68
		--[[ Upvalues[1]:
			[1]: any_onChange_result1_upvr (readonly)
		]]
		any_onChange_result1_upvr()
	end
	tbl[Children_upvr] = {New_upvr("UIListLayout")({
		Name = "UIListLayout";
		Padding = UDim.new(0.05, 0);
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	}), New_upvr("UICorner")({
		Name = "UICorner";
		CornerRadius = UDim.new(0.05, 0);
	})}
	New_upvr("Frame")(tbl)
	return Spring_upvr_result1_upvr, Value_upvr_result1_upvr:get()
end