-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:18
-- Luau version 6, Types version 3
-- Time taken: 0.004039 seconds

local Utils = script.Parent.Parent.Parent:FindFirstChild("Utils")
local module = require(Utils:WaitForChild("Fusion"))
local module_2_upvr = require(Utils:WaitForChild("FusionProps"))
local Children_upvr = module.Children
local Value_upvr = module.Value
local Computed_upvr = module.Computed
local TextService_upvr = game:GetService("TextService")
local New_upvr = module.New
local Out_upvr = module.Out
local OnEvent_upvr = module.OnEvent
return function(arg1) -- Line 18
	--[[ Upvalues[8]:
		[1]: module_2_upvr (readonly)
		[2]: Children_upvr (readonly)
		[3]: Value_upvr (readonly)
		[4]: Computed_upvr (readonly)
		[5]: TextService_upvr (readonly)
		[6]: New_upvr (readonly)
		[7]: Out_upvr (readonly)
		[8]: OnEvent_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_2_upvr.GetValues(arg1, {
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0, 0);
		AnchorPoint = Vector2.new(1, 0);
		Alignment = "Right";
		SearchTerm = "";
		SearchingIn = "";
		Visible = true;
		OnSearchAll = module_2_upvr.Nil;
		SearchAllText = "Search All Items";
		Parent = module_2_upvr.Nil;
		[Children_upvr] = module_2_upvr.Nil;
	})
	local Value_upvr_result1_upvr = Value_upvr(Vector2.zero)
	local var7_result1_upvr_2 = Computed_upvr(function() -- Line 36
		--[[ Upvalues[1]:
			[1]: Value_upvr_result1_upvr (readonly)
		]]
		return Value_upvr_result1_upvr:get().Y
	end)
	local var7_result1_upvr_3 = Computed_upvr(function() -- Line 40
		--[[ Upvalues[3]:
			[1]: TextService_upvr (copied, readonly)
			[2]: any_GetValues_result1_upvw (read and write)
			[3]: var7_result1_upvr_2 (readonly)
		]]
		return TextService_upvr:GetTextSize(any_GetValues_result1_upvw.SearchAllText:get(), var7_result1_upvr_2:get(), Enum.Font.GothamBold, Vector2.new(math.huge, math.huge)).X
	end)
	local var7_result1_upvr_4 = Computed_upvr(function() -- Line 49
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		return string.format("Searching %s in %s.", any_GetValues_result1_upvw.SearchTerm:get() or "", any_GetValues_result1_upvw.SearchingIn:get() or "")
	end)
	local var7_result1_upvr_5 = Computed_upvr(function() -- Line 56
		--[[ Upvalues[3]:
			[1]: TextService_upvr (copied, readonly)
			[2]: var7_result1_upvr_4 (readonly)
			[3]: var7_result1_upvr_2 (readonly)
		]]
		return TextService_upvr:GetTextSize(var7_result1_upvr_4:get(), var7_result1_upvr_2:get(), Enum.Font.GothamBold, Vector2.new(math.huge, math.huge)).X
	end)
	local var7_result1_upvr = Computed_upvr(function() -- Line 65
		--[[ Upvalues[3]:
			[1]: var7_result1_upvr_5 (readonly)
			[2]: var7_result1_upvr_3 (readonly)
			[3]: var7_result1_upvr_2 (readonly)
		]]
		return var7_result1_upvr_5:get() + var7_result1_upvr_3:get() + var7_result1_upvr_2:get() / 2
	end)
	return New_upvr("Frame")({
		Parent = any_GetValues_result1_upvw.Parent;
		Position = any_GetValues_result1_upvw.Position;
		Size = any_GetValues_result1_upvw.Size;
		AnchorPoint = any_GetValues_result1_upvw.AnchorPoint;
		BackgroundTransparency = 1;
		Visible = any_GetValues_result1_upvw.Visible;
		[Out_upvr("AbsoluteSize")] = Value_upvr_result1_upvr;
		[Children_upvr] = {New_upvr("Frame")({
			Name = "ScaledContainer";
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);
			AnchorPoint = any_GetValues_result1_upvw.AnchorPoint;
			Position = Computed_upvr(function() -- Line 88
				--[[ Upvalues[1]:
					[1]: any_GetValues_result1_upvw (read and write)
				]]
				return UDim2.fromScale(any_GetValues_result1_upvw.AnchorPoint:get().X, any_GetValues_result1_upvw.AnchorPoint:get().Y)
			end);
			[Children_upvr] = {New_upvr("UIScale")({
				Scale = Computed_upvr(function() -- Line 68
					--[[ Upvalues[2]:
						[1]: Value_upvr_result1_upvr (readonly)
						[2]: var7_result1_upvr (readonly)
					]]
					return math.min(1, Value_upvr_result1_upvr:get().X / var7_result1_upvr:get())
				end);
			}), New_upvr("UIListLayout")({
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Right;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = Computed_upvr(function() -- Line 101
					--[[ Upvalues[1]:
						[1]: var7_result1_upvr_2 (readonly)
					]]
					return UDim.new(0, var7_result1_upvr_2:get() / 2)
				end);
			}), New_upvr("TextLabel")({
				Name = "Info";
				LayoutOrder = 1;
				BackgroundTransparency = 1;
				TextColor3 = Color3.new(1, 1, 1);
				Text = Computed_upvr(function() -- Line 52
					--[[ Upvalues[1]:
						[1]: any_GetValues_result1_upvw (read and write)
					]]
					return string.format("Searching <b>%s</b> in <b>%s</b>.", any_GetValues_result1_upvw.SearchTerm:get() or "", any_GetValues_result1_upvw.SearchingIn:get() or "")
				end);
				RichText = true;
				TextSize = var7_result1_upvr_2;
				TextXAlignment = Enum.TextXAlignment.Right;
				Font = Enum.Font.GothamMedium;
				Size = Computed_upvr(function() -- Line 118
					--[[ Upvalues[1]:
						[1]: var7_result1_upvr_5 (readonly)
					]]
					return UDim2.new(0, var7_result1_upvr_5:get(), 1, 0)
				end);
			}), New_upvr("TextButton")({
				Name = "Button";
				LayoutOrder = 2;
				BackgroundTransparency = 1;
				TextColor3 = Color3.fromRGB(95, 166, 255);
				Text = Computed_upvr(function() -- Line 128
					--[[ Upvalues[1]:
						[1]: any_GetValues_result1_upvw (read and write)
					]]
					return "<b>"..any_GetValues_result1_upvw.SearchAllText:get().."</b>"
				end);
				RichText = true;
				TextSize = var7_result1_upvr_2;
				Font = Enum.Font.GothamBold;
				TextXAlignment = Enum.TextXAlignment.Left;
				Size = Computed_upvr(function() -- Line 136
					--[[ Upvalues[1]:
						[1]: var7_result1_upvr_3 (readonly)
					]]
					return UDim2.new(0, var7_result1_upvr_3:get(), 1, 0)
				end);
				[OnEvent_upvr("Activated")] = function() -- Line 140
					--[[ Upvalues[1]:
						[1]: any_GetValues_result1_upvw (read and write)
					]]
					local any_get_result1 = any_GetValues_result1_upvw.OnSearchAll:get()
					if any_get_result1 then
						any_get_result1()
					end
				end;
			})};
		})};
	})
end