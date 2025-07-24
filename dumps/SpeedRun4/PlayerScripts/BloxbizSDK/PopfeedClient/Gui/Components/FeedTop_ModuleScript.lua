-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:27
-- Luau version 6, Types version 3
-- Time taken: 0.014517 seconds

local Parent = script.Parent.Parent
local Fusion_upvr = require(Parent.Parent.Parent.Utils.Fusion)
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local function _(arg1, arg2, arg3) -- Line 31, Named "lerp"
	return arg1 + (arg2 - arg1) * arg3
end
local function _(arg1) -- Line 35, Named "validateInput"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var4
	if arg1.UserInputType ~= Enum.UserInputType.Touch then
		var4 = false
	else
		var4 = true
	end
	if arg1.UserInputType ~= Enum.UserInputType.MouseButton1 then
	else
	end
	return var4 or true
end
local function _(arg1, arg2) -- Line 42, Named "offsetToScale"
	local AbsoluteSize_2 = arg1.AbsoluteSize
	if AbsoluteSize_2 == Vector2.zero then
		AbsoluteSize_2 = Vector2.new(1, 1)
	end
	return Vector2.new(arg2.X / AbsoluteSize_2.X, arg2.Y / AbsoluteSize_2.Y)
end
local function getUnderline_upvr(arg1, arg2, arg3) -- Line 51, Named "getUnderline"
	local Parent_2 = arg2.Parent
	if Parent_2 then
		local AbsolutePosition = arg3.AbsolutePosition
		local AbsoluteSize_3 = arg3.AbsoluteSize
		local var9 = Vector2.new(AbsolutePosition.X + AbsoluteSize_3.X / 2, AbsolutePosition.Y + AbsoluteSize_3.Y) - Parent_2.AbsolutePosition
		local AbsoluteSize = arg1.AbsoluteSize
		if AbsoluteSize == Vector2.zero then
			AbsoluteSize = Vector2.new(1, 1)
		end
		local vector2 = Vector2.new(var9.X / AbsoluteSize.X, var9.Y / AbsoluteSize.Y)
		return UDim2.fromScale(vector2.X, vector2.Y)
	end
	return UDim2.fromScale(0, 0)
end
local Observer_upvr = Fusion_upvr.Observer
local BindableEvent_upvr = Instance.new("BindableEvent")
local Value_upvr = Fusion_upvr.Value
local Spring_upvr = Fusion_upvr.Spring
local Computed_upvr = Fusion_upvr.Computed
local mouse_upvr = LocalPlayer_upvr:GetMouse()
local var19_upvw = false
local var20_upvw = 0
local var21_upvw
local UserInputService_upvr = game:GetService("UserInputService")
local RunService_upvr = game:GetService("RunService")
local New_upvr = Fusion_upvr.New
local Ref_upvr = Fusion_upvr.Ref
local Children_upvr = Fusion_upvr.Children
local ForValues_upvr = Fusion_upvr.ForValues
local OnEvent_upvr = Fusion_upvr.OnEvent
local Line_upvr = require(Parent.Components.Line)
return function(arg1) -- Line 68
	--[[ Upvalues[20]:
		[1]: LocalPlayer_upvr (readonly)
		[2]: Observer_upvr (readonly)
		[3]: BindableEvent_upvr (readonly)
		[4]: Value_upvr (readonly)
		[5]: Spring_upvr (readonly)
		[6]: Computed_upvr (readonly)
		[7]: getUnderline_upvr (readonly)
		[8]: mouse_upvr (readonly)
		[9]: var19_upvw (read and write)
		[10]: var20_upvw (read and write)
		[11]: var21_upvw (read and write)
		[12]: UserInputService_upvr (readonly)
		[13]: RunService_upvr (readonly)
		[14]: New_upvr (readonly)
		[15]: Ref_upvr (readonly)
		[16]: Children_upvr (readonly)
		[17]: ForValues_upvr (readonly)
		[18]: OnEvent_upvr (readonly)
		[19]: Fusion_upvr (readonly)
		[20]: Line_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local PlayerGui_upvr = LocalPlayer_upvr:WaitForChild("PlayerGui")
	Observer_upvr(arg1.FetchingFeedTypeValue):onChange(function() -- Line 71
		--[[ Upvalues[1]:
			[1]: BindableEvent_upvr (copied, readonly)
		]]
		BindableEvent_upvr:Fire()
	end)
	BindableEvent_upvr.Event:Wait()
	local Font_fromEnum_result1_upvr = Font.fromEnum(Enum.Font.Arial)
	Font_fromEnum_result1_upvr.Bold = true
	local tbl_upvr = {}
	for _, v in arg1.Config.feeds.main do
		table.insert(tbl_upvr, v)
	end
	for _, v_2 in tbl_upvr do
		table.insert({}, v_2.name)
		local _
	end
	local function visibleNavigationBar() -- Line 90
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local any_get_result1_3 = arg1.FetchingFeedTypeValue:get()
		if not any_get_result1_3 then return end
		if arg1.isProfileFeed(any_get_result1_3) then
			return false
		end
		if any_get_result1_3 == "replies" then
			return false
		end
		if any_get_result1_3 == "notifications" then
			return false
		end
		if any_get_result1_3 == "explore" then
			return false
		end
		return true
	end
	local Value_upvr_result1_upvr = Value_upvr()
	local var15_result1_upvr_2 = Value_upvr()
	local var15_result1_upvr = Value_upvr()
	local Value_upvr_result1_upvr_2 = Value_upvr()
	task.defer(function() -- Line 114
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr_2 (readonly)
			[2]: tbl_upvr (readonly)
		]]
		Value_upvr_result1_upvr_2:set(tbl_upvr[1].id)
	end)
	local function _() -- Line 136, Named "hoveringOverScrollingFrame"
		--[[ Upvalues[3]:
			[1]: PlayerGui_upvr (readonly)
			[2]: mouse_upvr (copied, readonly)
			[3]: var15_result1_upvr_2 (readonly)
		]]
		for _, v_3 in PlayerGui_upvr:GetGuiObjectsAtPosition(mouse_upvr.X, mouse_upvr.Y), nil do
			if v_3 == var15_result1_upvr_2:get() then
				return true
			end
		end
		return false
	end
	if not UserInputService_upvr.TouchEnabled then
		RunService_upvr:BindToRenderStep("CategoryButtonScroll", 1, function() -- Line 148, Named "dragScroll"
			--[[ Upvalues[5]:
				[1]: var15_result1_upvr_2 (readonly)
				[2]: var19_upvw (copied, read and write)
				[3]: mouse_upvr (copied, readonly)
				[4]: var20_upvw (copied, read and write)
				[5]: var21_upvw (copied, read and write)
			]]
			local any_get_result1 = var15_result1_upvr_2:get()
			if not var19_upvw or not any_get_result1 then
			else
				local X = mouse_upvr.X
				var20_upvw = X - (var21_upvw or X)
				any_get_result1.CanvasPosition = Vector2.new(math.floor(any_get_result1.CanvasPosition.X - var20_upvw), 0)
				var21_upvw = X
			end
		end)
	end
	UserInputService_upvr.InputBegan:Connect(function(arg1_2) -- Line 167
		--[[ Upvalues[4]:
			[1]: PlayerGui_upvr (readonly)
			[2]: mouse_upvr (copied, readonly)
			[3]: var15_result1_upvr_2 (readonly)
			[4]: var19_upvw (copied, read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
		local var65
		if arg1_2.UserInputType ~= Enum.UserInputType.Touch then
			var65 = false
		else
			var65 = true
		end
		if arg1_2.UserInputType ~= Enum.UserInputType.MouseButton1 then
		else
		end
		-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [42] 31. Error Block 25 start (CF ANALYSIS FAILED)
		if false then
			var19_upvw = true
		end
		-- KONSTANTERROR: [42] 31. Error Block 25 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [46] 35. Error Block 17 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [46] 35. Error Block 17 end (CF ANALYSIS FAILED)
	end)
	UserInputService_upvr.InputEnded:Connect(function(arg1_3) -- Line 173
		--[[ Upvalues[2]:
			[1]: var19_upvw (copied, read and write)
			[2]: var21_upvw (copied, read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var67
		if arg1_3.UserInputType ~= Enum.UserInputType.Touch then
			var67 = false
		else
			var67 = true
		end
		if arg1_3.UserInputType ~= Enum.UserInputType.MouseButton1 then
		else
		end
		if var67 or true then
			var19_upvw = false
			var21_upvw = nil
		end
	end)
	return {New_upvr("ImageButton")({
		Name = "Info";
		Image = "rbxassetid://13758970742";
		Size = UDim2.fromScale(0.07, 0.07);
		Position = UDim2.fromScale(0.95, 0.2);
		AnchorPoint = Vector2.new(1, 0);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		BackgroundTransparency = 1;
		Visible = false;
	}), New_upvr("ImageLabel")({
		Name = "Logo";
		Image = "rbxassetid://14109181142";
		Size = UDim2.fromScale(0.3, 0.25);
		Position = UDim2.fromScale(0.05, 0.2);
		ScaleType = Enum.ScaleType.Fit;
		BackgroundTransparency = 1;
		Visible = Computed_upvr(visibleNavigationBar);
	}), New_upvr("ScrollingFrame")({
		Name = "Navigation";
		Size = UDim2.fromScale(0.95, 0.35);
		Position = UDim2.fromScale(1, 1);
		AnchorPoint = Vector2.new(1, 1);
		CanvasSize = UDim2.fromScale(0, 0);
		ScrollBarThickness = 0;
		ScrollingDirection = Enum.ScrollingDirection.X;
		AutomaticCanvasSize = Enum.AutomaticSize.X;
		BackgroundTransparency = 1;
		Visible = Computed_upvr(visibleNavigationBar);
		[Ref_upvr] = var15_result1_upvr_2;
		[Children_upvr] = {New_upvr("Frame")({
			Name = "Container";
			Size = UDim2.fromScale(17.956, 1);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			BackgroundTransparency = 1;
			[Children_upvr] = {New_upvr("Frame")({
				Name = "Underline";
				AnchorPoint = Vector2.new(0.5, 1);
				BackgroundColor3 = Color3.fromRGB(0, 170, 255);
				Position = Spring_upvr(Computed_upvr(function() -- Line 119
					--[[ Upvalues[4]:
						[1]: Value_upvr_result1_upvr_2 (readonly)
						[2]: Value_upvr_result1_upvr (readonly)
						[3]: var15_result1_upvr (readonly)
						[4]: getUnderline_upvr (copied, readonly)
					]]
					local any_get_result1_2 = Value_upvr_result1_upvr_2:get()
					local any_get_result1_4 = Value_upvr_result1_upvr:get()
					if any_get_result1_2 and any_get_result1_4 and var15_result1_upvr then
						return getUnderline_upvr(any_get_result1_4, var15_result1_upvr:get(), any_get_result1_4:FindFirstChild(any_get_result1_2))
					end
					return UDim2.new(0.147, 0, 1, 0)
				end), 40, 1);
				Size = UDim2.fromScale(0.06, 0.15);
				[Ref_upvr] = var15_result1_upvr;
				[Children_upvr] = {New_upvr("UICorner")({
					CornerRadius = UDim.new(0.5, 0);
				})};
			}), New_upvr("Frame")({
				Name = "Holder";
				Size = UDim2.fromScale(1, 0.6);
				BackgroundTransparency = 1;
				[Ref_upvr] = Value_upvr_result1_upvr;
				[Children_upvr] = {New_upvr("UIListLayout")({
					Padding = UDim.new(0.05, 0);
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Horizontal;
				}), ForValues_upvr(tbl_upvr, function(arg1_4) -- Line 257
					--[[ Upvalues[7]:
						[1]: New_upvr (copied, readonly)
						[2]: Font_fromEnum_result1_upvr (readonly)
						[3]: Computed_upvr (copied, readonly)
						[4]: Value_upvr_result1_upvr_2 (readonly)
						[5]: OnEvent_upvr (copied, readonly)
						[6]: arg1 (readonly)
						[7]: LocalPlayer_upvr (copied, readonly)
					]]
					return New_upvr("TextButton")({
						Name = arg1_4.id;
						Text = arg1_4.name;
						Size = UDim2.fromScale(0, 1);
						AutomaticSize = Enum.AutomaticSize.X;
						BackgroundTransparency = 1;
						TextScaled = true;
						FontFace = Font_fromEnum_result1_upvr;
						TextColor3 = Computed_upvr(function() -- Line 267
							--[[ Upvalues[2]:
								[1]: Value_upvr_result1_upvr_2 (copied, readonly)
								[2]: arg1_4 (readonly)
							]]
							if Value_upvr_result1_upvr_2:get() == arg1_4.id then
								return Color3.fromRGB(255, 255, 255)
							end
							return Color3.fromRGB(134, 134, 134)
						end);
						[OnEvent_upvr("Activated")] = function() -- Line 276
							--[[ Upvalues[4]:
								[1]: Value_upvr_result1_upvr_2 (copied, readonly)
								[2]: arg1_4 (readonly)
								[3]: arg1 (copied, readonly)
								[4]: LocalPlayer_upvr (copied, readonly)
							]]
							Value_upvr_result1_upvr_2:set(arg1_4.id)
							if arg1_4.id == "player" then
								arg1.OnSwitchFeedClicked(arg1_4.id, LocalPlayer_upvr.UserId)
							else
								arg1.OnSwitchFeedClicked(arg1_4.id, nil)
							end
						end;
					})
				end, Fusion_upvr.cleanup)};
			})};
		})};
	}), Line_upvr({
		Size = UDim2.fromScale(1, 0.02);
	})}
end