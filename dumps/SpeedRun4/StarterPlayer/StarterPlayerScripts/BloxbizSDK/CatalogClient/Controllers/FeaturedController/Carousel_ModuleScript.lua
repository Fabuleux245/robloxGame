-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:36
-- Luau version 6, Types version 3
-- Time taken: 0.003972 seconds

local Utils = script.Parent.Parent.Parent.Parent:FindFirstChild("Utils")
local module_upvr = require(Utils:WaitForChild("Fusion"))
local module_3_upvr = require(Utils:WaitForChild("FusionProps"))
local Value_upvr = module_upvr.Value
local Computed_upvr = module_upvr.Computed
local ForPairs_upvr = module_upvr.ForPairs
local New_upvr = module_upvr.New
local Children_upvr = module_upvr.Children
local TweenService_upvr = game:GetService("TweenService")
local var2_2_upvr = require(Utils)
local RunService_upvr = game:GetService("RunService")
local Cleanup_upvr = module_upvr.Cleanup
local Out_upvr = module_upvr.Out
local Ref_upvr = module_upvr.Ref
return function(arg1) -- Line 28
	--[[ Upvalues[13]:
		[1]: module_3_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: ForPairs_upvr (readonly)
		[5]: New_upvr (readonly)
		[6]: Children_upvr (readonly)
		[7]: module_upvr (readonly)
		[8]: TweenService_upvr (readonly)
		[9]: var2_2_upvr (readonly)
		[10]: RunService_upvr (readonly)
		[11]: Cleanup_upvr (readonly)
		[12]: Out_upvr (readonly)
		[13]: Ref_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_3_upvr.GetValues(arg1, {
		Name = "Carousel";
		Parent = module_3_upvr.Nil;
		Position = UDim2.fromScale(0, 0);
		Size = UDim2.fromScale(1, 1);
		AnchorPoint = Vector2.new(0, 0);
		Transparency = 0;
		Items = {};
		ItemRatio = 1;
		MinGap = 5;
		Interval = 5;
		Pause = false;
	})
	local Value_upvr_result1_upvr = Value_upvr(Vector2.zero)
	local var7_result1_upvr = Computed_upvr(function() -- Line 45
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr (readonly)
			[2]: any_GetValues_result1_upvw (read and write)
		]]
		return math.min(Value_upvr_result1_upvr:get().Y * any_GetValues_result1_upvw.ItemRatio:get(), Value_upvr_result1_upvr:get().X)
	end)
	local var7_result1_upvr_2 = Computed_upvr(function() -- Line 48
		--[[ Upvalues[3]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: var7_result1_upvr (readonly)
			[3]: Value_upvr_result1_upvr (readonly)
		]]
		local any_get_result1_2 = any_GetValues_result1_upvw.MinGap:get()
		return math.max(1, math.floor((Value_upvr_result1_upvr:get().X - any_get_result1_2) / (var7_result1_upvr:get() + any_get_result1_2)))
	end)
	local var8_result1_upvr = ForPairs_upvr(any_GetValues_result1_upvw.Items, function(arg1_2, arg2) -- Line 62
		--[[ Upvalues[7]:
			[1]: New_upvr (copied, readonly)
			[2]: Computed_upvr (copied, readonly)
			[3]: Value_upvr_result1_upvr (readonly)
			[4]: var7_result1_upvr_2 (readonly)
			[5]: Children_upvr (copied, readonly)
			[6]: var7_result1_upvr (readonly)
			[7]: any_GetValues_result1_upvw (read and write)
		]]
		arg2.Position = UDim2.fromScale(0, 0)
		arg2.Size = UDim2.fromScale(1, 1)
		arg2.AnchorPoint = Vector2.new(0, 0)
		arg2.LayoutOrder = arg1_2
		local module = {
			BackgroundTransparency = 1;
		}
		module.LayoutOrder = arg1_2
		module.Size = Computed_upvr(function() -- Line 71
			--[[ Upvalues[2]:
				[1]: Value_upvr_result1_upvr (copied, readonly)
				[2]: var7_result1_upvr_2 (copied, readonly)
			]]
			return UDim2.new(0, Value_upvr_result1_upvr:get().X / var7_result1_upvr_2:get(), 1, 0)
		end)
		local tbl = {
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Size = Computed_upvr(function() -- Line 82
				--[[ Upvalues[2]:
					[1]: var7_result1_upvr (copied, readonly)
					[2]: any_GetValues_result1_upvw (copied, read and write)
				]]
				return UDim2.fromOffset(var7_result1_upvr:get(), var7_result1_upvr:get() / any_GetValues_result1_upvw.ItemRatio:get())
			end);
		}
		tbl[Children_upvr] = arg2
		module[Children_upvr] = New_upvr("Frame")(tbl)
		return arg1_2, New_upvr("Frame")(module)
	end, module_upvr.cleanup)
	local Value_upvr_result1_upvr_2 = Value_upvr()
	local function rotateItems_upvr() -- Line 95, Named "rotateItems"
		--[[ Upvalues[5]:
			[1]: Value_upvr_result1_upvr_2 (readonly)
			[2]: TweenService_upvr (copied, readonly)
			[3]: var7_result1_upvr_2 (readonly)
			[4]: var8_result1_upvr (readonly)
			[5]: var2_2_upvr (copied, readonly)
		]]
		if not Value_upvr_result1_upvr_2:get() then
		else
			local any_get_result1_upvr = Value_upvr_result1_upvr_2:get()
			local any_Create_result1 = TweenService_upvr:Create(any_get_result1_upvr, TweenInfo.new(0.5), {
				Position = UDim2.fromScale(-1 / var7_result1_upvr_2:get(), 0);
			})
			any_Create_result1.Completed:Connect(function() -- Line 109
				--[[ Upvalues[3]:
					[1]: var8_result1_upvr (copied, readonly)
					[2]: var2_2_upvr (copied, readonly)
					[3]: any_get_result1_upvr (readonly)
				]]
				local any_get_result1 = var8_result1_upvr:get()
				if 0 < #any_get_result1 then
					var2_2_upvr.sortByKey(any_get_result1, "LayoutOrder")
					local _1 = any_get_result1[1]
					_1.LayoutOrder += #var8_result1_upvr:get()
				end
				any_get_result1_upvr.Position = UDim2.fromScale(0, 0)
			end)
			any_Create_result1:Play()
		end
	end
	local var40_upvw = 0
	local module_2 = {
		Name = any_GetValues_result1_upvw.Name;
		Parent = any_GetValues_result1_upvw.Parent;
		Position = any_GetValues_result1_upvw.Position;
		Size = any_GetValues_result1_upvw.Size;
		AnchorPoint = any_GetValues_result1_upvw.AnchorPoint;
		BackgroundTransparency = 1;
	}
	local any_Connect_result1_upvr = RunService_upvr.Heartbeat:Connect(function() -- Line 126
		--[[ Upvalues[3]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: var40_upvw (read and write)
			[3]: rotateItems_upvr (readonly)
		]]
		local floored = math.floor(tick() / any_GetValues_result1_upvw.Interval:get())
		if floored ~= var40_upvw then
			var40_upvw = floored
			if not any_GetValues_result1_upvw.Pause:get() then
				rotateItems_upvr()
			end
		end
	end)
	module_2[Cleanup_upvr] = function() -- Line 146
		--[[ Upvalues[1]:
			[1]: any_Connect_result1_upvr (readonly)
		]]
		any_Connect_result1_upvr:Disconnect()
	end
	module_2[Out_upvr("AbsoluteSize")] = Value_upvr_result1_upvr
	local tbl_2 = {
		BackgroundTransparency = 1;
	}
	local var7_result1_upvr_3 = Computed_upvr(function() -- Line 58
		--[[ Upvalues[3]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: Value_upvr_result1_upvr (readonly)
			[3]: var7_result1_upvr_2 (readonly)
		]]
		return #any_GetValues_result1_upvw.Items:get() * Value_upvr_result1_upvr:get().X / var7_result1_upvr_2:get()
	end)
	tbl_2.Size = Computed_upvr(function() -- Line 154
		--[[ Upvalues[1]:
			[1]: var7_result1_upvr_3 (readonly)
		]]
		return UDim2.new(0, var7_result1_upvr_3:get(), 1, 0)
	end)
	tbl_2[Ref_upvr] = Value_upvr_result1_upvr_2
	tbl_2[Children_upvr] = {New_upvr("UIListLayout")({
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	}), var8_result1_upvr}
	module_2[Children_upvr] = New_upvr("Frame")(tbl_2)
	return New_upvr("CanvasGroup")(module_2)
end