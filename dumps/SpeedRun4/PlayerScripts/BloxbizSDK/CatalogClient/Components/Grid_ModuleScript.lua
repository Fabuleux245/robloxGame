-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:25
-- Luau version 6, Types version 3
-- Time taken: 0.003383 seconds

local Utils = script.Parent.Parent.Parent:FindFirstChild("Utils")
local module_upvr_2 = require(Utils:WaitForChild("Fusion"))
local module_upvr = require(Utils:WaitForChild("FusionProps"))
local Children_upvr = module_upvr_2.Children
local Value_upvr = module_upvr_2.Value
local Computed_upvr = module_upvr_2.Computed
local New_upvr = module_upvr_2.New
local Out_upvr = module_upvr_2.Out
local ForValues_upvr = module_upvr_2.ForValues
return function(arg1) -- Line 24
	--[[ Upvalues[8]:
		[1]: module_upvr (readonly)
		[2]: Children_upvr (readonly)
		[3]: Value_upvr (readonly)
		[4]: Computed_upvr (readonly)
		[5]: New_upvr (readonly)
		[6]: Out_upvr (readonly)
		[7]: ForValues_upvr (readonly)
		[8]: module_upvr_2 (readonly)
	]]
	local any_GetValues_result1_upvw = module_upvr.GetValues(arg1, {
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0, 0);
		AnchorPoint = Vector2.new(0, 0);
		LayoutOrder = 1;
		CellsX = 1;
		CellsY = 1;
		Padding = UDim.new(0, 0);
		Content = {};
		Name = "Grid";
		Parent = module_upvr.Nil;
		[Children_upvr] = module_upvr.Nil;
	})
	local var6_result1_upvr = Value_upvr(Vector2.zero)
	local var7_result1_upvr_3 = Computed_upvr(function() -- Line 42
		--[[ Upvalues[2]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: var6_result1_upvr (readonly)
		]]
		local any_get_result1 = any_GetValues_result1_upvw.Padding:get()
		return math.min(var6_result1_upvr:get().X, var6_result1_upvr:get().Y) * any_get_result1.Scale + any_get_result1.Offset
	end)
	local module = {
		Parent = any_GetValues_result1_upvw.Parent;
		Name = any_GetValues_result1_upvw.Name;
		Size = any_GetValues_result1_upvw.Size;
		Position = any_GetValues_result1_upvw.Position;
		AnchorPoint = any_GetValues_result1_upvw.AnchorPoint;
		BackgroundTransparency = 1;
		GroupTransparency = any_GetValues_result1_upvw.Transparency;
		Visible = any_GetValues_result1_upvw.Visible;
		LayoutOrder = any_GetValues_result1_upvw.LayoutOrder;
		[Out_upvr("AbsoluteSize")] = var6_result1_upvr;
	}
	local var7_result1_upvr = Computed_upvr(function() -- Line 46
		--[[ Upvalues[3]:
			[1]: var6_result1_upvr (readonly)
			[2]: var7_result1_upvr_3 (readonly)
			[3]: any_GetValues_result1_upvw (read and write)
		]]
		local any_get_result1_3 = any_GetValues_result1_upvw.CellsX:get()
		return (var6_result1_upvr:get().X - var7_result1_upvr_3:get() * (any_get_result1_3 - 1)) / any_get_result1_3
	end)
	local var7_result1_upvr_2 = Computed_upvr(function() -- Line 52
		--[[ Upvalues[3]:
			[1]: var6_result1_upvr (readonly)
			[2]: var7_result1_upvr_3 (readonly)
			[3]: any_GetValues_result1_upvw (read and write)
		]]
		local any_get_result1_2 = any_GetValues_result1_upvw.CellsY:get()
		return (var6_result1_upvr:get().Y - var7_result1_upvr_3:get() * (any_get_result1_2 - 1)) / any_get_result1_2
	end)
	module[Children_upvr] = ForValues_upvr(any_GetValues_result1_upvw.Content, function(arg1_2) -- Line 74
		--[[ Upvalues[6]:
			[1]: New_upvr (copied, readonly)
			[2]: Computed_upvr (copied, readonly)
			[3]: var7_result1_upvr (readonly)
			[4]: var7_result1_upvr_3 (readonly)
			[5]: var7_result1_upvr_2 (readonly)
			[6]: Children_upvr (copied, readonly)
		]]
		arg1_2.Width = arg1_2.Width or 1
		arg1_2.Height = arg1_2.Height or 1
		return New_upvr("Frame")({
			BackgroundTransparency = 1;
			Position = Computed_upvr(function() -- Line 80
				--[[ Upvalues[4]:
					[1]: arg1_2 (readonly)
					[2]: var7_result1_upvr (copied, readonly)
					[3]: var7_result1_upvr_3 (copied, readonly)
					[4]: var7_result1_upvr_2 (copied, readonly)
				]]
				return UDim2.fromOffset(arg1_2.X * var7_result1_upvr:get() + arg1_2.X * var7_result1_upvr_3:get(), arg1_2.Y * var7_result1_upvr_2:get() + arg1_2.Y * var7_result1_upvr_3:get())
			end);
			Size = Computed_upvr(function() -- Line 86
				--[[ Upvalues[4]:
					[1]: arg1_2 (readonly)
					[2]: var7_result1_upvr (copied, readonly)
					[3]: var7_result1_upvr_3 (copied, readonly)
					[4]: var7_result1_upvr_2 (copied, readonly)
				]]
				return UDim2.fromOffset(arg1_2.Width * var7_result1_upvr:get() + (arg1_2.Width - 1) * var7_result1_upvr_3:get(), arg1_2.Height * var7_result1_upvr_2:get() + (arg1_2.Height - 1) * var7_result1_upvr_3:get())
			end);
			[Children_upvr] = arg1_2.Element;
		})
	end, module_upvr_2.cleanup)
	return New_upvr("CanvasGroup")(module)
end