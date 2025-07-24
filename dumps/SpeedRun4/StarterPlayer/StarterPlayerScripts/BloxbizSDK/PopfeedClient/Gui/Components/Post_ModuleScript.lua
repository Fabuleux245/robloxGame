-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:11
-- Luau version 6, Types version 3
-- Time taken: 0.047522 seconds

local Parent_2 = script.Parent.Parent
local Fusion_upvr = require(Parent_2.Parent.Parent.Utils.Fusion)
local Components = Parent_2.Components
local LocalPlayer_upvr = game:GetService("Players").LocalPlayer
local function _(arg1) -- Line 37, Named "validateInput"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5
	if arg1.UserInputType ~= Enum.UserInputType.Touch then
		var5 = false
	else
		var5 = true
	end
	if arg1.UserInputType ~= Enum.UserInputType.MouseButton1 then
	else
	end
	return var5 or true
end
local function _(arg1, arg2) -- Line 44, Named "offsetToScale"
	local AbsoluteSize_3 = arg1.AbsoluteSize
	if AbsoluteSize_3 == Vector2.zero then
		AbsoluteSize_3 = Vector2.new(1, 1)
	end
	return Vector2.new(arg2.X / AbsoluteSize_3.X, arg2.Y / AbsoluteSize_3.Y)
end
local function getUnderline_upvr(arg1, arg2, arg3) -- Line 53, Named "getUnderline"
	if not arg2 then
		return UDim2.fromScale(0, 0)
	end
	local Parent = arg2.Parent
	if Parent then
		local AbsolutePosition = arg3.AbsolutePosition
		local AbsoluteSize_2 = arg3.AbsoluteSize
		local var10 = Vector2.new(AbsolutePosition.X + AbsoluteSize_2.X / 2, AbsolutePosition.Y + AbsoluteSize_2.Y) - Parent.AbsolutePosition
		local AbsoluteSize = arg1.AbsoluteSize
		if AbsoluteSize == Vector2.zero then
			AbsoluteSize = Vector2.new(1, 1)
		end
		local vector2 = Vector2.new(var10.X / AbsoluteSize.X, var10.Y / AbsoluteSize.Y)
		return UDim2.fromScale(vector2.X, vector2.Y)
	end
	return UDim2.fromScale(0, 0)
end
local Value_upvr = Fusion_upvr.Value
local RunService_upvr = game:GetService("RunService")
local Observer_upvr = Fusion_upvr.Observer
local New_upvr = Fusion_upvr.New
local OnEvent_upvr = Fusion_upvr.OnEvent
local Children_upvr = Fusion_upvr.Children
local UserInputService_upvr = game:GetService("UserInputService")
local mouse_upvr = LocalPlayer_upvr:GetMouse()
local Spring_upvr = Fusion_upvr.Spring
local Computed_upvr = Fusion_upvr.Computed
local Cleanup_upvr = Fusion_upvr.Cleanup
local IconButton_upvr = require(Components.IconButton)
local DonateEmptyState_upvr = require(Components.Profile.DonateEmptyState)
local DonateRow_upvr = require(Components.Profile.DonateRow)
local ForValues_upvr = Fusion_upvr.ForValues
local Ref_upvr = Fusion_upvr.Ref
local OnChange_upvr = Fusion_upvr.OnChange
local var31_upvw
local ForPairs_upvr = Fusion_upvr.ForPairs
local SelectButton_upvr = require(Components.SelectButton)
local Line_upvr = require(Components.Line)
local TextButton_upvr = require(Components.TextButton)
return function(arg1) -- Line 74
	--[[ Upvalues[25]:
		[1]: Value_upvr (readonly)
		[2]: RunService_upvr (readonly)
		[3]: Observer_upvr (readonly)
		[4]: New_upvr (readonly)
		[5]: OnEvent_upvr (readonly)
		[6]: Children_upvr (readonly)
		[7]: UserInputService_upvr (readonly)
		[8]: LocalPlayer_upvr (readonly)
		[9]: mouse_upvr (readonly)
		[10]: Spring_upvr (readonly)
		[11]: Computed_upvr (readonly)
		[12]: getUnderline_upvr (readonly)
		[13]: Cleanup_upvr (readonly)
		[14]: Fusion_upvr (readonly)
		[15]: IconButton_upvr (readonly)
		[16]: DonateEmptyState_upvr (readonly)
		[17]: DonateRow_upvr (readonly)
		[18]: ForValues_upvr (readonly)
		[19]: Ref_upvr (readonly)
		[20]: OnChange_upvr (readonly)
		[21]: var31_upvw (read and write)
		[22]: ForPairs_upvr (readonly)
		[23]: SelectButton_upvr (readonly)
		[24]: Line_upvr (readonly)
		[25]: TextButton_upvr (readonly)
	]]
	local Font_fromEnum_result1_upvr = Font.fromEnum(Enum.Font.Arial)
	Font_fromEnum_result1_upvr.Bold = true
	local Images_upvr = arg1.Images
	local Value_upvr_result1_upvr_12 = Value_upvr()
	local Value_upvr_result1_upvr_2 = Value_upvr(false)
	local Value_upvr_result1_upvr_15 = Value_upvr(false)
	local var14_result1_upvr_2 = Value_upvr(false)
	local var14_result1_upvr_5 = Value_upvr(false)
	local Value_upvr_result1_upvr = Value_upvr(false)
	local Value_upvr_result1_upvr_13 = Value_upvr(false)
	local Value_upvr_result1_upvr_7 = Value_upvr()
	local Value_upvr_result1_upvr_6 = Value_upvr({})
	local var14_result1_upvr_3 = Value_upvr(false)
	local Value_upvr_result1_upvr_5 = Value_upvr()
	local Value_upvr_result1_upvr_4 = Value_upvr()
	local Value_upvr_result1_upvr_14 = Value_upvr(false)
	local var52_upvw
	Observer_upvr(Images_upvr):onChange(function() -- Line 135
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr (readonly)
			[2]: Images_upvr (readonly)
		]]
		local var57
		if #Images_upvr:get() ~= 0 then
			var57 = false
		else
			var57 = true
		end
		Value_upvr_result1_upvr:set(var57)
	end)
	local Value_upvr_result1_upvr_8 = Value_upvr(true)
	local var14_result1_upvr = Value_upvr(true)
	local function onImageSelect_upvr(arg1_2) -- Line 142, Named "onImageSelect"
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr_6 (readonly)
			[2]: var14_result1_upvr (readonly)
		]]
		local any_get_result1_6 = Value_upvr_result1_upvr_6:get()
		local table_find_result1 = table.find(any_get_result1_6, arg1_2)
		if table_find_result1 then
			table.remove(any_get_result1_6, table_find_result1)
		else
			if #any_get_result1_6 == 4 then return end
			table.insert(any_get_result1_6, arg1_2)
		end
		if #any_get_result1_6 == 0 then
			var14_result1_upvr:set(true)
		else
			var14_result1_upvr:set(false)
		end
		Value_upvr_result1_upvr_6:set(any_get_result1_6)
	end
	local Value_upvr_result1_upvr_3 = Value_upvr()
	local var14_result1_upvr_4 = Value_upvr()
	Observer_upvr(arg1.ScreenshotData):onChange(function() -- Line 169
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: New_upvr (copied, readonly)
			[3]: OnEvent_upvr (copied, readonly)
			[4]: onImageSelect_upvr (readonly)
			[5]: Value_upvr_result1_upvr_8 (readonly)
			[6]: Children_upvr (copied, readonly)
			[7]: Value_upvr_result1_upvr_6 (readonly)
		]]
		local any_get_result1_12 = arg1.ScreenshotData:get()
		if not any_get_result1_12 then
		else
			arg1.IsOpened:set(true)
			local Viewport_upvr = any_get_result1_12.Viewport
			task.defer(function() -- Line 179
				--[[ Upvalues[7]:
					[1]: Viewport_upvr (readonly)
					[2]: New_upvr (copied, readonly)
					[3]: OnEvent_upvr (copied, readonly)
					[4]: onImageSelect_upvr (copied, readonly)
					[5]: Value_upvr_result1_upvr_8 (copied, readonly)
					[6]: Children_upvr (copied, readonly)
					[7]: Value_upvr_result1_upvr_6 (copied, readonly)
				]]
				Viewport_upvr.ZIndex = 7
				Viewport_upvr.Size = UDim2.fromScale(1, 1)
				Viewport_upvr.Visible = true
				New_upvr("TextButton")({
					Name = "CloseButton";
					Size = UDim2.fromScale(0.15, 0.15);
					Position = UDim2.fromScale(0.975, 0.025);
					AnchorPoint = Vector2.new(1, 0);
					BackgroundColor3 = Color3.fromRGB(0, 0, 0);
					SizeConstraint = Enum.SizeConstraint.RelativeXX;
					BackgroundTransparency = 0.2;
					ZIndex = 7;
					[OnEvent_upvr("Activated")] = function() -- Line 194
						--[[ Upvalues[3]:
							[1]: onImageSelect_upvr (copied, readonly)
							[2]: Viewport_upvr (copied, readonly)
							[3]: Value_upvr_result1_upvr_8 (copied, readonly)
						]]
						onImageSelect_upvr(Viewport_upvr)
						Value_upvr_result1_upvr_8:set(true)
					end;
					[Children_upvr] = {New_upvr("TextLabel")({
						Text = 'X';
						BackgroundTransparency = 1;
						Size = UDim2.fromScale(1, 1);
						Position = UDim2.fromScale(0.5, 0.5);
						AnchorPoint = Vector2.new(0.5, 0.5);
						TextScaled = true;
						TextColor3 = Color3.fromRGB(255, 255, 255);
						ZIndex = 7;
					}), New_upvr("UICorner")({
						CornerRadius = UDim.new(0.5, 0);
					})};
				}).Parent = Viewport_upvr
				Value_upvr_result1_upvr_8:set(false)
				local any_get_result1_15 = Value_upvr_result1_upvr_6:get()
				table.insert(any_get_result1_15, Viewport_upvr)
				Value_upvr_result1_upvr_6:set(any_get_result1_15)
			end)
		end
	end)
	task.defer(function() -- Line 227
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr_3 (readonly)
			[2]: var14_result1_upvr_4 (readonly)
		]]
		local any_get_result1_4_upvr = Value_upvr_result1_upvr_3:get()
		local any_get_result1_8_upvr = var14_result1_upvr_4:get()
		any_get_result1_4_upvr:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function() -- Line 231
			--[[ Upvalues[2]:
				[1]: any_get_result1_8_upvr (readonly)
				[2]: any_get_result1_4_upvr (readonly)
			]]
			any_get_result1_8_upvr.CanvasSize = UDim2.new(0, any_get_result1_4_upvr.AbsoluteContentSize.X, 0, 0)
		end)
	end)
	local tbl_9_upvw = {}
	if not UserInputService_upvr.TouchEnabled then
		local PlayerGui_upvr = LocalPlayer_upvr:WaitForChild("PlayerGui")
		local var80_upvw = false
		local var81_upvw
		local function _() -- Line 245, Named "hoveringOverScrollingFrame"
			--[[ Upvalues[3]:
				[1]: PlayerGui_upvr (readonly)
				[2]: mouse_upvr (copied, readonly)
				[3]: var14_result1_upvr_4 (readonly)
			]]
			for _, v in PlayerGui_upvr:GetGuiObjectsAtPosition(mouse_upvr.X, mouse_upvr.Y), nil do
				if v == var14_result1_upvr_4:get() then
					return true
				end
			end
			return false
		end
		local var84_upvw = 0
		table.insert(tbl_9_upvw, RunService_upvr.RenderStepped:Connect(function() -- Line 257, Named "dragScroll"
			--[[ Upvalues[5]:
				[1]: var80_upvw (read and write)
				[2]: var14_result1_upvr_4 (readonly)
				[3]: mouse_upvr (copied, readonly)
				[4]: var84_upvw (read and write)
				[5]: var81_upvw (read and write)
			]]
			if not var80_upvw then
			else
				local any_get_result1_13 = var14_result1_upvr_4:get()
				if not any_get_result1_13 then return end
				local X = mouse_upvr.X
				var84_upvw = X - (var81_upvw or X)
				any_get_result1_13.CanvasPosition = Vector2.new(math.floor(any_get_result1_13.CanvasPosition.X - var84_upvw), 0)
				var81_upvw = X
			end
		end))
		table.insert(tbl_9_upvw, UserInputService_upvr.InputBegan:Connect(function(arg1_3) -- Line 279
			--[[ Upvalues[4]:
				[1]: PlayerGui_upvr (readonly)
				[2]: mouse_upvr (copied, readonly)
				[3]: var14_result1_upvr_4 (readonly)
				[4]: var80_upvw (read and write)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 24 start (CF ANALYSIS FAILED)
			local var88
			if arg1_3.UserInputType ~= Enum.UserInputType.Touch then
				var88 = false
			else
				var88 = true
			end
			if arg1_3.UserInputType ~= Enum.UserInputType.MouseButton1 then
			else
			end
			-- KONSTANTERROR: [0] 1. Error Block 24 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [42] 31. Error Block 25 start (CF ANALYSIS FAILED)
			if false then
				var80_upvw = true
			end
			-- KONSTANTERROR: [42] 31. Error Block 25 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [46] 35. Error Block 17 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [46] 35. Error Block 17 end (CF ANALYSIS FAILED)
		end))
		table.insert(tbl_9_upvw, UserInputService_upvr.InputEnded:Connect(function(arg1_4) -- Line 288
			--[[ Upvalues[2]:
				[1]: var80_upvw (read and write)
				[2]: var81_upvw (read and write)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var90
			if arg1_4.UserInputType ~= Enum.UserInputType.Touch then
				var90 = false
			else
				var90 = true
			end
			if arg1_4.UserInputType ~= Enum.UserInputType.MouseButton1 then
			else
			end
			if var90 or true then
				var80_upvw = false
				var81_upvw = nil
			end
		end))
	end
	PlayerGui_upvr = Value_upvr()
	local var91_upvr = PlayerGui_upvr
	local Value_upvr_result1_upvr_9 = Value_upvr()
	local Value_upvr_result1_upvr_10 = Value_upvr()
	Observer_upvr(var14_result1_upvr_5):onChange(function() -- Line 302
		--[[ Upvalues[3]:
			[1]: var14_result1_upvr_5 (readonly)
			[2]: Value_upvr_result1_upvr_10 (readonly)
			[3]: arg1 (readonly)
		]]
		task.defer(function() -- Line 303
			--[[ Upvalues[3]:
				[1]: var14_result1_upvr_5 (copied, readonly)
				[2]: Value_upvr_result1_upvr_10 (copied, readonly)
				[3]: arg1 (copied, readonly)
			]]
			task.wait()
			if var14_result1_upvr_5:get() == true then
				Value_upvr_result1_upvr_10:set("ImagesButton")
				arg1.ImagesLoadedKeyword = ""
				arg1.DecalsNextPageCursor = nil
			else
				Value_upvr_result1_upvr_10:set()
			end
		end)
	end)
	local module_4 = {
		Name = "Post";
		Visible = Computed_upvr(function() -- Line 99, Named "visible"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Value_upvr_result1_upvr_5 (readonly)
			]]
			local any_get_result1_11 = arg1.IsPosting:get()
			if any_get_result1_11 then
				Value_upvr_result1_upvr_5:get():CaptureFocus()
			end
			return any_get_result1_11
		end);
		BackgroundColor3 = Color3.fromRGB(25, 25, 25);
		Size = UDim2.fromScale(1, 1);
		AutoButtonColor = false;
		ZIndex = 5;
		[Cleanup_upvr] = function() -- Line 342
			--[[ Upvalues[1]:
				[1]: tbl_9_upvw (read and write)
			]]
			for _, v_2 in tbl_9_upvw do
				v_2:Disconnect()
			end
			tbl_9_upvw = nil
		end;
	}
	local tbl_16 = {}
	local tbl_23 = {
		Name = "Bottom";
		Position = UDim2.fromScale(0.5, 1);
		AnchorPoint = Vector2.new(0.5, 1);
		BackgroundTransparency = 1;
		ClipsDescendants = true;
		Size = Computed_upvr(function() -- Line 358
			--[[ Upvalues[1]:
				[1]: var14_result1_upvr_5 (readonly)
			]]
			local var106
			if var14_result1_upvr_5:get() ~= true then
				var106 = false
			else
				var106 = true
			end
			if var106 then
				return UDim2.fromScale(1, 0.856)
			end
			return UDim2.fromScale(1, 0.928)
		end);
	}
	local tbl_6 = {}
	local tbl_15 = {
		Name = "Actions";
		Size = UDim2.fromScale(1, 0.08);
		BackgroundTransparency = 1;
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		LayoutOrder = 6;
		ZIndex = 5;
		Visible = Computed_upvr(function() -- Line 449
			--[[ Upvalues[1]:
				[1]: var14_result1_upvr_5 (readonly)
			]]
			return not var14_result1_upvr_5:get()
		end);
	}
	local tbl_13 = {}
	local tbl_24 = {
		Name = "Container";
		AnchorPoint = Vector2.new(0.5, 0);
		Position = UDim2.fromScale(0.5, 0);
		Size = UDim2.fromScale(0.92, 1);
		BackgroundTransparency = 1;
		ZIndex = 5;
	}
	local tbl_22 = {}
	local tbl_3 = {
		Name = "Images";
		Text = "Images";
		Icon = "rbxassetid://13184649573";
		BoldText = true;
		IconSize = 0.6;
		LabelSize = 0.55;
		IconPositionX = 0.115;
		LabelPositionX = 0.065;
		IconAnchorPointX = 1;
		TextColor = Color3.fromRGB(255, 255, 255);
		BackgroundColor = Color3.fromRGB(70, 70, 70);
		CornerRadius = UDim.new(0.2, 0);
		Size = UDim2.fromScale(0.3, 1);
		LayoutOrder = 2;
		ZIndex = 5;
		Visible = Computed_upvr(function() -- Line 487
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr_8 (readonly)
			]]
			return Value_upvr_result1_upvr_8:get()
		end);
		Selected = Value_upvr();
	}
	local function OnActivated() -- Line 493
		--[[ Upvalues[3]:
			[1]: Value_upvr_result1_upvr_4 (readonly)
			[2]: var14_result1_upvr_5 (readonly)
			[3]: Value_upvr_result1_upvr_13 (readonly)
		]]
		Value_upvr_result1_upvr_4:get().Text = ""
		var14_result1_upvr_5:set(true)
		Value_upvr_result1_upvr_13:set(true)
	end
	tbl_3.OnActivated = OnActivated
	local tbl_4 = {
		Name = "Donate";
		Text = "Donate";
		Icon = "rbxassetid://13184649429";
		BoldText = true;
		IconSize = 0.6;
		LabelSize = 0.55;
		IconPositionX = 0.125;
		LabelPositionX = 0.075;
		IconAnchorPointX = 1;
		TextColor = Color3.fromRGB(255, 255, 255);
		SelectedTextColor = Color3.fromRGB(30, 30, 30);
		BackgroundColor = Color3.fromRGB(71, 70, 70);
		SelectedBackgroundColor = Color3.fromRGB(255, 255, 255);
		CornerRadius = UDim.new(0.2, 0);
		Size = UDim2.fromScale(0.3, 1);
		LayoutOrder = 3;
		ZIndex = 5;
		Selected = var14_result1_upvr_2;
		IsLoading = Value_upvr_result1_upvr_2;
	}
	local function OnActivated() -- Line 523
		--[[ Upvalues[6]:
			[1]: Value_upvr_result1_upvr_2 (readonly)
			[2]: arg1 (readonly)
			[3]: LocalPlayer_upvr (copied, readonly)
			[4]: Value_upvr_result1_upvr_12 (readonly)
			[5]: var14_result1_upvr_2 (readonly)
			[6]: Value_upvr_result1_upvr_15 (readonly)
		]]
		Value_upvr_result1_upvr_2:set(true)
		local any_RequestDonationItems_result1 = arg1.RequestDonationItems(LocalPlayer_upvr.UserId)
		if any_RequestDonationItems_result1 == "Loading" then
		else
			local var128 = true
			if any_RequestDonationItems_result1 ~= nil then
				if #any_RequestDonationItems_result1.donations ~= 0 then
					var128 = false
				else
					var128 = true
				end
			end
			Value_upvr_result1_upvr_2:set(false)
			if not var128 then
				Value_upvr_result1_upvr_12:set(any_RequestDonationItems_result1.donations)
				var14_result1_upvr_2:set(not var14_result1_upvr_2:get())
				Value_upvr_result1_upvr_15:set(false)
				return
			end
			Value_upvr_result1_upvr_15:set(true)
		end
	end
	tbl_4.OnActivated = OnActivated
	local tbl_2 = {
		Name = "Camera";
		Text = "Camera";
		Icon = "rbxassetid://16464224175";
		BoldText = true;
		IconSize = 0.6;
		LabelSize = 0.55;
		IconPositionX = 0.115;
		LabelPositionX = 0.065;
		IconAnchorPointX = 1;
		TextColor = Color3.fromRGB(255, 255, 255);
		SelectedTextColor = Color3.fromRGB(30, 30, 30);
		BackgroundColor = Color3.fromRGB(71, 70, 70);
		SelectedBackgroundColor = Color3.fromRGB(255, 255, 255);
		CornerRadius = UDim.new(0.2, 0);
		Size = UDim2.fromScale(0.32, 1);
		LayoutOrder = 1;
		ZIndex = 5;
		Visible = Computed_upvr(function() -- Line 563
			--[[ Upvalues[1]:
				[1]: var14_result1_upvr (readonly)
			]]
			return var14_result1_upvr:get()
		end);
		Selected = Value_upvr();
	}
	local function OnActivated() -- Line 569
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr_6 (readonly)
			[2]: arg1 (readonly)
		]]
		Value_upvr_result1_upvr_6:set({})
		arg1.IsOpened:set(false)
		arg1.ToggleCamera(true)
	end
	tbl_2.OnActivated = OnActivated
	tbl_22[1] = New_upvr("UIListLayout")({
		Padding = UDim.new(0.0125, 0);
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Horizontal;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	})
	tbl_22[2] = IconButton_upvr(tbl_3)
	tbl_22[3] = IconButton_upvr(tbl_4)
	tbl_22[4] = IconButton_upvr(tbl_2)
	tbl_24[Children_upvr] = tbl_22
	tbl_13[1] = New_upvr("Frame")(tbl_24)
	tbl_15[Children_upvr] = tbl_13
	local tbl_21 = {
		Name = "ImageSearch";
		Size = UDim2.fromScale(1, 0.08);
		BackgroundTransparency = 1;
		LayoutOrder = 1;
		Visible = Computed_upvr(function() -- Line 954
			--[[ Upvalues[2]:
				[1]: var14_result1_upvr_5 (readonly)
				[2]: Value_upvr_result1_upvr_10 (readonly)
			]]
			local var192
			if var192 ~= true then
				var192 = false
				return var192
			end
			if Value_upvr_result1_upvr_10:get() ~= "ImagesButton" then
				var192 = false
			else
				var192 = true
			end
			return var192
		end);
	}
	local tbl_14 = {}
	local tbl_11 = {
		Name = "Container";
		Size = UDim2.fromScale(0.9, 0.7);
		Position = UDim2.fromScale(0.5, 0.55);
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(70, 70, 70);
		ZIndex = 5;
	}
	local tbl_20 = {}
	local tbl_10 = {
		Text = "Cancel";
		Name = "CancelButton";
		Size = UDim2.fromScale(0, 0.41);
		Color = Color3.fromRGB(255, 255, 255);
		Position = UDim2.fromScale(0.83, 0.5);
		AnchorPoint = Vector2.new(0, 0.5);
		AutomaticSize = Enum.AutomaticSize.X;
		ZIndex = 5;
		Bold = true;
		Visible = Computed_upvr(function() -- Line 983
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr_14 (readonly)
			]]
			return Value_upvr_result1_upvr_14:get()
		end);
	}
	local function OnActivated() -- Line 987
		--[[ Upvalues[5]:
			[1]: Value_upvr_result1_upvr_13 (readonly)
			[2]: Value_upvr_result1_upvr (readonly)
			[3]: Value_upvr_result1_upvr_4 (readonly)
			[4]: Images_upvr (readonly)
			[5]: arg1 (readonly)
		]]
		Value_upvr_result1_upvr_13:set(true)
		Value_upvr_result1_upvr:set(false)
		Value_upvr_result1_upvr_4:get().Text = ""
		Value_upvr_result1_upvr_4:get():CaptureFocus()
		Images_upvr:set({})
		arg1.ImagesLoadedKeyword = ""
	end
	tbl_10.OnActivated = OnActivated
	tbl_20[1] = SelectButton_upvr(tbl_10)
	tbl_20[2] = New_upvr("TextBox")({
		Name = "SearchBox";
		Size = UDim2.fromScale(0.65, 0.45);
		Position = UDim2.fromScale(0.11, 0.5);
		AnchorPoint = Vector2.new(0, 0.5);
		FontFace = Font.fromEnum(Enum.Font.Arial);
		TextXAlignment = Enum.TextXAlignment.Left;
		BackgroundTransparency = 1;
		TextScaled = true;
		TextColor3 = Color3.fromRGB(255, 255, 255);
		PlaceholderText = "Search images by term or ID";
		PlaceholderColor3 = Color3.fromRGB(255, 255, 255);
		ZIndex = 5;
		[Ref_upvr] = Value_upvr_result1_upvr_4;
		[OnChange_upvr("Text")] = function() -- Line 1013
			--[[ Upvalues[2]:
				[1]: Value_upvr_result1_upvr_4 (readonly)
				[2]: Value_upvr_result1_upvr_14 (readonly)
			]]
			if 0 < #Value_upvr_result1_upvr_4:get().Text then
				Value_upvr_result1_upvr_14:set(true)
			else
				Value_upvr_result1_upvr_14:set(false)
			end
		end;
		[OnEvent_upvr("FocusLost")] = function(arg1_7) -- Line 1021
			--[[ Upvalues[3]:
				[1]: Value_upvr_result1_upvr_13 (readonly)
				[2]: Value_upvr_result1_upvr_4 (readonly)
				[3]: arg1 (readonly)
			]]
			if not arg1_7 then
			else
				Value_upvr_result1_upvr_13:set(false)
				local Text = Value_upvr_result1_upvr_4:get().Text
				if Text == arg1.ImagesLoadedKeyword then return end
				arg1.OnImagesButtonClicked(Text, 1)
			end
		end;
	})
	tbl_20[3] = New_upvr("ImageLabel")({
		Size = UDim2.fromScale(0.5, 0.5);
		Position = UDim2.fromScale(0.04, 0.5);
		AnchorPoint = Vector2.new(0, 0.5);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		BackgroundTransparency = 1;
		Image = "rbxassetid://13114890388";
		ZIndex = 5;
	})
	tbl_20[4] = New_upvr("UICorner")({
		CornerRadius = UDim.new(0.5, 0);
	})
	tbl_11[Children_upvr] = tbl_20
	tbl_14[1] = New_upvr("Frame")(tbl_11)
	tbl_21[Children_upvr] = tbl_14
	local tbl_17 = {
		Name = "TextComposer";
		Size = UDim2.fromScale(1, 0);
		Position = UDim2.fromScale(0.5, 1);
		AnchorPoint = Vector2.new(0.5, 1);
		BackgroundTransparency = 1;
		LayoutOrder = 1;
		AutomaticSize = Enum.AutomaticSize.Y;
		Visible = Computed_upvr(function() -- Line 1064
			--[[ Upvalues[1]:
				[1]: var14_result1_upvr_5 (readonly)
			]]
			return not var14_result1_upvr_5:get()
		end);
	}
	local tbl_19 = {}
	local tbl_18 = {
		Name = "Content";
		Size = UDim2.fromScale(0.75, 0.1);
		Position = UDim2.fromScale(0.175, 0.25);
		FontFace = Font.fromEnum(Enum.Font.Arial);
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		TextWrapped = true;
		BackgroundTransparency = 1;
		TextColor3 = Color3.fromRGB(255, 255, 255);
		PlaceholderText = "Write something...";
		PlaceholderColor3 = Color3.fromRGB(100, 100, 100);
		AutomaticSize = Enum.AutomaticSize.Y;
		ZIndex = 5;
	}
	local X_upvr = workspace.CurrentCamera.ViewportSize.X
	tbl_18.TextSize = Computed_upvr(function() -- Line 1111
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: X_upvr (readonly)
		]]
		if arg1.IsVertical:get() == true then
			return X_upvr / 40
		end
		return X_upvr / 60
	end)
	tbl_18.Text = Computed_upvr(function() -- Line 1119
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.PostingContent:get() or ""
	end)
	tbl_18[OnEvent_upvr("FocusLost")] = function() -- Line 1123
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: Value_upvr_result1_upvr_5 (readonly)
		]]
		arg1.PostingContent:set(Value_upvr_result1_upvr_5:get().Text)
	end
	tbl_18[OnChange_upvr("Text")] = function() -- Line 1127
		--[[ Upvalues[1]:
			[1]: Value_upvr_result1_upvr_5 (readonly)
		]]
		local Text_2 = Value_upvr_result1_upvr_5:get().Text
		if 280 < #Text_2 then
			Value_upvr_result1_upvr_5:get().Text = Text_2:sub(1, 280)
		end
	end
	tbl_18[Ref_upvr] = Value_upvr_result1_upvr_5
	tbl_19[1] = New_upvr("ImageLabel")({
		Name = "ProfilePicture";
		Size = UDim2.fromScale(0.11, 0.11);
		Position = UDim2.fromScale(0.04, 0.3);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		Image = arg1.GetUserProfilePicture(LocalPlayer_upvr.UserId);
		BackgroundTransparency = 1;
		ZIndex = 6;
		[Children_upvr] = {New_upvr("UICorner")({
			CornerRadius = UDim.new(1, 0);
		}), New_upvr("Frame")({
			Name = "Background";
			Position = UDim2.new(0, 0, 0, -1);
			Size = UDim2.fromScale(1, 1);
			ZIndex = 5;
			[Children_upvr] = New_upvr("UICorner")({
				CornerRadius = UDim.new(1, 0);
			});
		})};
	})
	tbl_19[2] = New_upvr("TextBox")(tbl_18)
	tbl_17[Children_upvr] = tbl_19
	tbl_6[1] = New_upvr("UIListLayout")({
		Padding = UDim.new(0.01, 0);
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Vertical;
	})
	tbl_6[2] = New_upvr("Frame")({
		Visible = Computed_upvr(function() -- Line 375
			--[[ Upvalues[3]:
				[1]: arg1 (readonly)
				[2]: var14_result1_upvr_5 (readonly)
				[3]: Value_upvr_result1_upvr_10 (readonly)
			]]
			local var111
			if arg1.PostingCommentParent:get() == nil then
				var111 = false
			else
				var111 = true
			end
			if var111 and not var14_result1_upvr_5:get() then
				return true
			end
			if var14_result1_upvr_5:get() and Value_upvr_result1_upvr_10:get() == "DecalsButton" then
				return true
			end
			return false
		end);
		Name = "BlankSpace";
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		Size = UDim2.fromScale(1, 0.04);
		BackgroundTransparency = 1;
		LayoutOrder = -2;
	})
	tbl_6[3] = New_upvr("ImageButton")({
		Visible = Computed_upvr(function() -- Line 394
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: var14_result1_upvr_5 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var114
			if arg1.PostingCommentParent:get() == nil then
				var114 = false
			else
				var114 = true
			end
			if var114 then
			end
			return not var14_result1_upvr_5:get()
		end);
		Name = "ReplyingTo";
		Size = UDim2.fromScale(1, 0);
		BackgroundTransparency = 1;
		ImageTransparency = 1;
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		LayoutOrder = -1;
		AutomaticSize = Enum.AutomaticSize.Y;
		[OnEvent_upvr("Activated")] = Fusion_upvr.doNothing;
		[Children_upvr] = {New_upvr("ImageLabel")({
			Name = "ReplyingIcon";
			Size = UDim2.fromScale(1.3, 1.3);
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			AnchorPoint = Vector2.new(0.5, 0.5);
			ZIndex = 5;
			Position = UDim2.fromScale(0.075, 0.5);
			ImageColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			Image = "rbxassetid://12120467571";
		}), New_upvr("TextLabel")({
			Name = "Message";
			Size = UDim2.fromScale(0.76, 0);
			AnchorPoint = Vector2.new(0.5, 0);
			Position = UDim2.fromScale(0.5, 0);
			ZIndex = 5;
			BackgroundTransparency = 1;
			Text = "Replying to someone";
			TextWrapped = true;
			TextSize = workspace.CurrentCamera.ViewportSize.Y / 45;
			FontFace = Font_fromEnum_result1_upvr;
			TextColor3 = Color3.fromRGB(142, 142, 142);
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Top;
			AutomaticSize = Enum.AutomaticSize.Y;
		})};
	})
	tbl_6[4] = New_upvr("Frame")(tbl_15)
	tbl_6[5] = New_upvr("ScrollingFrame")({
		Name = "DonationEmptyState";
		Size = UDim2.fromScale(1, 0.875);
		CanvasSize = UDim2.fromScale(1, 1);
		ScrollBarThickness = 0;
		ScrollingDirection = Enum.ScrollingDirection.Y;
		BackgroundTransparency = 1;
		LayoutOrder = 6;
		ZIndex = 4;
		Visible = Computed_upvr(function() -- Line 590
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr_15 (readonly)
			]]
			return Value_upvr_result1_upvr_15:get()
		end);
		[Children_upvr] = New_upvr("Frame")({
			Name = "Container";
			Size = UDim2.fromScale(1, 0.65);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
			ZIndex = 4;
			LayoutOrder = 5;
			[Children_upvr] = DonateEmptyState_upvr(arg1);
		});
	})
	tbl_6[6] = DonateRow_upvr({
		ZIndex = 5;
		LayoutOrder = 3;
		Size = UDim2.fromScale(1, 0.1);
		ScrollingFramePosition = UDim2.fromScale(0.175, 0);
		ScrollingFrameSize = UDim2.fromScale(0.825, 1);
		donationData = Computed_upvr(function() -- Line 613
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr_12 (readonly)
			]]
			local any_get_result1_10 = Value_upvr_result1_upvr_12:get()
			if not any_get_result1_10 then
				any_get_result1_10 = {}
			end
			return any_get_result1_10
		end);
		Visible = Computed_upvr(function() -- Line 617
			--[[ Upvalues[2]:
				[1]: var14_result1_upvr_5 (readonly)
				[2]: var14_result1_upvr_2 (readonly)
			]]
			local var138 = not var14_result1_upvr_5:get()
			if var138 then
				var138 = var14_result1_upvr_2:get()
			end
			return var138
		end);
	})
	tbl_6[7] = New_upvr("Frame")({
		Name = "SearchTerms";
		Size = UDim2.fromScale(1, 0.86);
		BackgroundTransparency = 1;
		LayoutOrder = 2;
		ZIndex = 5;
		Visible = Computed_upvr(function() -- Line 629
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr_13 (readonly)
			]]
			return Value_upvr_result1_upvr_13:get()
		end);
		[Children_upvr] = {New_upvr("Frame")({
			Name = "List";
			Size = UDim2.fromScale(0.9, 0.5);
			Position = UDim2.fromScale(0.5, 0.015);
			AnchorPoint = Vector2.new(0.5, 0);
			BackgroundTransparency = 1;
			[Children_upvr] = {New_upvr("UIGridLayout")({
				CellSize = UDim2.fromScale(0.33, 0.1);
				CellPadding = UDim2.fromScale(0.1, 0.05);
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			}), ForValues_upvr(arg1.ImageSearchTerms, function(arg1_5) -- Line 649
				--[[ Upvalues[7]:
					[1]: New_upvr (copied, readonly)
					[2]: OnEvent_upvr (copied, readonly)
					[3]: arg1 (readonly)
					[4]: Value_upvr_result1_upvr_13 (readonly)
					[5]: Value_upvr_result1_upvr_4 (readonly)
					[6]: Value_upvr_result1_upvr_14 (readonly)
					[7]: Children_upvr (copied, readonly)
				]]
				local module_2 = {}
				module_2.Name = arg1_5
				module_2.ZIndex = 5
				module_2.BackgroundTransparency = 1
				module_2[OnEvent_upvr("Activated")] = function() -- Line 655
					--[[ Upvalues[5]:
						[1]: arg1 (copied, readonly)
						[2]: arg1_5 (readonly)
						[3]: Value_upvr_result1_upvr_13 (copied, readonly)
						[4]: Value_upvr_result1_upvr_4 (copied, readonly)
						[5]: Value_upvr_result1_upvr_14 (copied, readonly)
					]]
					arg1.ImagesLoadedKeyword = arg1_5
					arg1.OnImagesButtonClicked(arg1_5, 1)
					Value_upvr_result1_upvr_13:set(false)
					Value_upvr_result1_upvr_4:get().Text = arg1_5
					Value_upvr_result1_upvr_14:set(true)
				end
				local tbl_7 = {}
				local tbl_8 = {
					Name = "Term";
				}
				tbl_8.Text = arg1_5
				tbl_8.BackgroundTransparency = 1
				tbl_8.Size = UDim2.fromScale(0, 1)
				tbl_8.TextScaled = true
				tbl_8.FontFace = Font.fromEnum(Enum.Font.Arial)
				tbl_8.TextColor3 = Color3.fromRGB(63, 160, 240)
				tbl_8.AutomaticSize = Enum.AutomaticSize.X
				tbl_8.LayoutOrder = 3
				tbl_8.ZIndex = 5
				tbl_7[1] = New_upvr("UIListLayout")({
					Padding = UDim.new(0.015, 0);
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Horizontal;
					VerticalAlignment = Enum.VerticalAlignment.Center;
				})
				tbl_7[2] = New_upvr("ImageLabel")({
					Size = UDim2.fromScale(0.7, 0.7);
					SizeConstraint = Enum.SizeConstraint.RelativeYY;
					BackgroundTransparency = 1;
					Image = "rbxassetid://13114890388";
					ImageColor3 = Color3.fromRGB(63, 160, 240);
					LayoutOrder = 1;
					ZIndex = 5;
				})
				tbl_7[3] = New_upvr("Frame")({
					Name = "BlankSpace";
					SizeConstraint = Enum.SizeConstraint.RelativeXX;
					Size = UDim2.fromScale(0.05, 0.01);
					BackgroundTransparency = 1;
					LayoutOrder = 2;
				})
				tbl_7[4] = New_upvr("TextLabel")(tbl_8)
				module_2[Children_upvr] = tbl_7
				return New_upvr("TextButton")(module_2)
			end, Fusion_upvr.cleanup)};
		})};
	})
	tbl_6[8] = New_upvr("ScrollingFrame")({
		Name = "ImageList";
		Size = UDim2.fromScale(1, 0.875);
		ScrollBarThickness = 0;
		ScrollingDirection = Enum.ScrollingDirection.Y;
		BackgroundTransparency = 1;
		LayoutOrder = 4;
		ZIndex = 5;
		[Ref_upvr] = arg1.ImageScrollingFrame;
		Visible = Computed_upvr(function() -- Line 721
			--[[ Upvalues[2]:
				[1]: Value_upvr_result1_upvr_13 (readonly)
				[2]: var14_result1_upvr_5 (readonly)
			]]
			if Value_upvr_result1_upvr_13:get() == false and var14_result1_upvr_5:get() == true then
				return true
			end
			return false
		end);
		[OnChange_upvr("CanvasPosition")] = function() -- Line 729
			--[[ Upvalues[5]:
				[1]: arg1 (readonly)
				[2]: Value_upvr_result1_upvr_10 (readonly)
				[3]: var14_result1_upvr_3 (readonly)
				[4]: Value_upvr_result1_upvr_4 (readonly)
				[5]: var31_upvw (copied, read and write)
			]]
			local any_get_result1_9 = arg1.ImageScrollingFrame:get()
			if not any_get_result1_9 then
			elseif any_get_result1_9.CanvasSize.Y.Offset - any_get_result1_9.AbsoluteWindowSize.Y - any_get_result1_9.AbsoluteSize.Y * 3 < any_get_result1_9.CanvasPosition.Y then
				if Value_upvr_result1_upvr_10:get() == "DecalsButton" then
					if var14_result1_upvr_3:get() then
					else
						var14_result1_upvr_3:set(true)
						arg1.OnDecalsButtonClicked(arg1.DecalsNextPageCursor, true)
						var14_result1_upvr_3:set(false)
					end
				end
				local Text_3 = Value_upvr_result1_upvr_4:get().Text
				if var31_upvw == Text_3 then return end
				if var14_result1_upvr_3:get() then return end
				var14_result1_upvr_3:set(true)
				if arg1.OnImagesButtonClicked(Text_3, arg1.ImagesPage + 1, true) then
					var31_upvw = Text_3
				end
				var14_result1_upvr_3:set(false)
			end
		end;
		[Children_upvr] = {New_upvr("TextLabel")({
			Name = "NoResults";
			BackgroundTransparency = 1;
			TextScaled = true;
			FontFace = Font_fromEnum_result1_upvr;
			TextColor3 = Color3.fromRGB(255, 255, 255);
			AnchorPoint = Vector2.new(0.5, 0);
			Position = UDim2.fromScale(0.5, 0.02);
			Size = UDim2.fromScale(0.8, 0.035);
			ZIndex = 5;
			Text = Computed_upvr(function() -- Line 781
				--[[ Upvalues[1]:
					[1]: Value_upvr_result1_upvr_10 (readonly)
				]]
				local var161
				if Value_upvr_result1_upvr_10:get() ~= "DecalsButton" then
					var161 = false
				else
					var161 = true
				end
				if var161 then
					return "Upload decals on the Roblox website"
				end
				return "No Results Found"
			end);
			Visible = Computed_upvr(function() -- Line 790
				--[[ Upvalues[1]:
					[1]: Value_upvr_result1_upvr (readonly)
				]]
				return Value_upvr_result1_upvr:get()
			end);
		}), New_upvr("Frame")({
			Name = "Container";
			Size = UDim2.fromScale(0.925, 1.4);
			Position = UDim2.fromScale(0.5, 0);
			AnchorPoint = Vector2.new(0.5, 0);
			SizeConstraint = Enum.SizeConstraint.RelativeXX;
			BackgroundTransparency = 1;
			ZIndex = 5;
			[Children_upvr] = {New_upvr("UIGridLayout")({
				CellPadding = UDim2.fromScale(0.02, 0.011);
				CellSize = UDim2.fromScale(0.32, 0.211);
				SortOrder = Enum.SortOrder.LayoutOrder;
			}), New_upvr("Frame")({
				Name = "PlaceHolder";
				LayoutOrder = 1000000;
				Visible = Computed_upvr(function() -- Line 815
					--[[ Upvalues[1]:
						[1]: var14_result1_upvr_3 (readonly)
					]]
					return var14_result1_upvr_3:get()
				end);
			}), New_upvr("Frame")({
				Name = "SpinnerFrame";
				LayoutOrder = 1000001;
				Visible = Computed_upvr(function() -- Line 109, Named "spinnerVisible"
					--[[ Upvalues[5]:
						[1]: Images_upvr (readonly)
						[2]: var14_result1_upvr_3 (readonly)
						[3]: var52_upvw (read and write)
						[4]: RunService_upvr (copied, readonly)
						[5]: Value_upvr_result1_upvr_7 (readonly)
					]]
					if #Images_upvr:get() % 42 ~= 0 then
						return false
					end
					local any_get_result1 = var14_result1_upvr_3:get()
					if any_get_result1 == true and not var52_upvw then
						var52_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 116
							--[[ Upvalues[1]:
								[1]: Value_upvr_result1_upvr_7 (copied, readonly)
							]]
							local any_get_result1_7 = Value_upvr_result1_upvr_7:get()
							if not any_get_result1_7 then
							else
								any_get_result1_7.Rotation += 2
							end
						end)
						return any_get_result1
					end
					if var52_upvw then
						var52_upvw:Disconnect()
						var52_upvw = nil
					end
					return any_get_result1
				end);
				[OnChange_upvr("Visible")] = function() -- Line 826
					--[[ Upvalues[1]:
						[1]: arg1 (readonly)
					]]
					local any_get_result1_upvr = arg1.ImageScrollingFrame:get()
					if any_get_result1_upvr then
						task.defer(function() -- Line 829
							--[[ Upvalues[1]:
								[1]: any_get_result1_upvr (readonly)
							]]
							any_get_result1_upvr.CanvasSize = UDim2.fromOffset(0, any_get_result1_upvr.Container.UIGridLayout.AbsoluteContentSize.Y)
						end)
					end
				end;
				[Children_upvr] = {New_upvr("ImageLabel")({
					Name = "Spinner";
					Size = UDim2.fromScale(0.5, 0.5);
					Position = UDim2.fromScale(0.5, 0.425);
					AnchorPoint = Vector2.new(0.5, 0.5);
					Image = "rbxassetid://11304130802";
					SizeConstraint = Enum.SizeConstraint.RelativeYY;
					BackgroundTransparency = 1;
					ZIndex = 5;
					[Ref_upvr] = Value_upvr_result1_upvr_7;
				})};
			}), ForPairs_upvr(Images_upvr, function(arg1_6, arg2) -- Line 854
				--[[ Upvalues[8]:
					[1]: New_upvr (copied, readonly)
					[2]: OnEvent_upvr (copied, readonly)
					[3]: onImageSelect_upvr (readonly)
					[4]: Children_upvr (copied, readonly)
					[5]: Computed_upvr (copied, readonly)
					[6]: Value_upvr_result1_upvr_6 (readonly)
					[7]: Font_fromEnum_result1_upvr (readonly)
					[8]: Fusion_upvr (copied, readonly)
				]]
				local AssetId_upvr = arg2.AssetId
				if not AssetId_upvr then
					AssetId_upvr = arg2.assetId
				end
				local module = {
					Name = AssetId_upvr;
					Image = "rbxthumb://type=Asset&id=%s&w=150&h=150":format(AssetId_upvr);
					BackgroundColor3 = Color3.fromRGB(70, 70, 70);
				}
				module.LayoutOrder = arg1_6
				module.ZIndex = 5
				module[OnEvent_upvr("Activated")] = function() -- Line 865
					--[[ Upvalues[2]:
						[1]: onImageSelect_upvr (copied, readonly)
						[2]: AssetId_upvr (readonly)
					]]
					onImageSelect_upvr(AssetId_upvr)
				end
				module[Children_upvr] = {Computed_upvr(function() -- Line 870
					--[[ Upvalues[5]:
						[1]: Value_upvr_result1_upvr_6 (copied, readonly)
						[2]: AssetId_upvr (readonly)
						[3]: New_upvr (copied, readonly)
						[4]: Children_upvr (copied, readonly)
						[5]: Font_fromEnum_result1_upvr (copied, readonly)
					]]
					local table_find_result1_2 = table.find(Value_upvr_result1_upvr_6:get(), AssetId_upvr)
					if table_find_result1_2 then
						return {New_upvr("Frame")({
							Name = "Number";
							Size = UDim2.fromScale(0.175, 0.175);
							Position = UDim2.fromScale(0.875, 0.125);
							AnchorPoint = Vector2.new(0.5, 0.5);
							BackgroundColor3 = Color3.fromRGB(0, 170, 255);
							ZIndex = 5;
							[Children_upvr] = {New_upvr("TextLabel")({
								Text = table_find_result1_2;
								Size = UDim2.fromScale(0.8, 0.8);
								Position = UDim2.fromScale(0.5, 0.5);
								AnchorPoint = Vector2.new(0.5, 0.5);
								TextColor3 = Color3.fromRGB(255, 255, 255);
								BackgroundTransparency = 1;
								ZIndex = 5;
								FontFace = Font_fromEnum_result1_upvr;
							}), New_upvr("UICorner")({
								CornerRadius = UDim.new(0.5, 0);
							})};
						}), New_upvr("Frame")({
							Name = "Top";
							Size = UDim2.fromScale(1, 0.025);
							Position = UDim2.fromScale(0, 0);
							BackgroundColor3 = Color3.fromRGB(0, 170, 255);
							ZIndex = 5;
						}), New_upvr("Frame")({
							Name = "Bottom";
							Size = UDim2.fromScale(1, 0.025);
							Position = UDim2.fromScale(0, 1);
							AnchorPoint = Vector2.new(0, 1);
							BackgroundColor3 = Color3.fromRGB(0, 170, 255);
							ZIndex = 5;
						}), New_upvr("Frame")({
							Name = "Left";
							Size = UDim2.fromScale(0.025, 1);
							Position = UDim2.fromScale(0, 0);
							BackgroundColor3 = Color3.fromRGB(0, 170, 255);
							ZIndex = 5;
						}), New_upvr("Frame")({
							Name = "Top";
							Size = UDim2.fromScale(0.025, 1);
							Position = UDim2.fromScale(1, 0);
							AnchorPoint = Vector2.new(1, 0);
							BackgroundColor3 = Color3.fromRGB(0, 170, 255);
							ZIndex = 5;
						})}
					end
				end, Fusion_upvr.cleanup), New_upvr("UIAspectRatioConstraint")({})}
				return arg1_6, New_upvr("ImageButton")(module)
			end, Fusion_upvr.cleanup)};
		})};
	})
	tbl_6[9] = New_upvr("Frame")(tbl_21)
	tbl_6[10] = New_upvr("Frame")(tbl_17)
	tbl_6[11] = New_upvr("Frame")({
		Name = "Images";
		Size = UDim2.fromScale(0.6, 0.6);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		BackgroundTransparency = 1;
		LayoutOrder = 2;
		ZIndex = 5;
		Visible = Computed_upvr(function() -- Line 1147
			--[[ Upvalues[2]:
				[1]: var14_result1_upvr_5 (readonly)
				[2]: Value_upvr_result1_upvr_6 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var221
			if var14_result1_upvr_5:get() ~= true then
				var221 = false
			else
				var221 = true
			end
			if 0 >= #Value_upvr_result1_upvr_6:get() then
			else
			end
			return not var221 and true
		end);
		[Children_upvr] = {New_upvr("ScrollingFrame")({
			Name = "Images";
			Size = UDim2.fromScale(1.377, 1);
			Position = UDim2.fromScale(0.29, 0);
			CanvasSize = UDim2.fromScale(0, 0);
			ScrollingDirection = Enum.ScrollingDirection.X;
			SizeConstraint = Enum.SizeConstraint.RelativeYY;
			ScrollBarThickness = 10;
			ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			ClipsDescendants = false;
			ZIndex = 5;
			[Ref_upvr] = var14_result1_upvr_4;
			[Children_upvr] = {New_upvr("Frame")({
				Name = "Container";
				Size = UDim2.new(1, -16, 1, -16);
				SizeConstraint = Enum.SizeConstraint.RelativeYY;
				BackgroundTransparency = 1;
				ZIndex = 5;
				[Children_upvr] = {New_upvr("UIListLayout")({
					Padding = UDim.new(0.04, 0);
					SortOrder = Enum.SortOrder.LayoutOrder;
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Left;
					[Ref_upvr] = Value_upvr_result1_upvr_3;
				}), ForPairs_upvr(Value_upvr_result1_upvr_6, function(arg1_8, arg2) -- Line 1188
					--[[ Upvalues[4]:
						[1]: New_upvr (copied, readonly)
						[2]: Children_upvr (copied, readonly)
						[3]: OnEvent_upvr (copied, readonly)
						[4]: onImageSelect_upvr (readonly)
					]]
					if typeof(arg2) == "Instance" then
						return arg1_8, arg2
					end
					local module_3 = {
						Name = "Image";
						Size = UDim2.fromScale(1, 1);
						SizeConstraint = Enum.SizeConstraint.RelativeXX;
						BackgroundTransparency = 1;
					}
					module_3.LayoutOrder = arg1_8
					module_3.Image = "rbxthumb://type=Asset&id=%s&w=150&h=150":format(arg2)
					module_3.ZIndex = 5
					module_3[Children_upvr] = {New_upvr("TextButton")({
						Name = "CloseButton";
						Size = UDim2.fromScale(0.15, 0.15);
						Position = UDim2.fromScale(0.975, 0.025);
						AnchorPoint = Vector2.new(1, 0);
						BackgroundColor3 = Color3.fromRGB(0, 0, 0);
						SizeConstraint = Enum.SizeConstraint.RelativeXX;
						BackgroundTransparency = 0.2;
						ZIndex = 5;
						[OnEvent_upvr("Activated")] = function() -- Line 1214
							--[[ Upvalues[2]:
								[1]: onImageSelect_upvr (copied, readonly)
								[2]: arg2 (readonly)
							]]
							onImageSelect_upvr(arg2)
						end;
						[Children_upvr] = {New_upvr("TextLabel")({
							Text = 'X';
							BackgroundTransparency = 1;
							Size = UDim2.fromScale(1, 1);
							Position = UDim2.fromScale(0.5, 0.5);
							AnchorPoint = Vector2.new(0.5, 0.5);
							TextScaled = true;
							TextColor3 = Color3.fromRGB(255, 255, 255);
							ZIndex = 5;
						}), New_upvr("UICorner")({
							CornerRadius = UDim.new(0.5, 0);
						})};
					}), New_upvr("UICorner")({
						CornerRadius = UDim.new(0, 8);
					})}
					return arg1_8, New_upvr("ImageLabel")(module_3)
				end, Fusion_upvr.cleanup)};
			})};
		})};
	})
	tbl_6[12] = Computed_upvr(function() -- Line 1249
		--[[ Upvalues[2]:
			[1]: var14_result1_upvr_5 (readonly)
			[2]: Line_upvr (copied, readonly)
		]]
		local var238
		if var14_result1_upvr_5:get() ~= true then
			var238 = false
		else
			var238 = true
		end
		if var238 then
			return nil
		end
		return Line_upvr({
			ZIndex = 5;
			LayoutOrder = 1;
			Size = UDim2.fromScale(1, 0.002);
			Position = UDim2.fromScale(0.5, 0.55);
			AnchorPoint = Vector2.new(0.5, 0);
		})
	end, Fusion_upvr.cleanup)
	tbl_6[13] = New_upvr("Frame")({
		Name = "BlankSpace";
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		Size = UDim2.fromScale(1, 0);
		BackgroundTransparency = 1;
		LayoutOrder = 5;
	})
	tbl_23[Children_upvr] = tbl_6
	local tbl = {
		Name = "Top";
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0);
		AnchorPoint = Vector2.new(0.5, 0);
		Size = Computed_upvr(function() -- Line 1280
			--[[ Upvalues[1]:
				[1]: var14_result1_upvr_5 (readonly)
			]]
			local var243
			if var14_result1_upvr_5:get() ~= true then
				var243 = false
			else
				var243 = true
			end
			if var243 then
				return UDim2.fromScale(1, 0.144)
			end
			return UDim2.fromScale(1, 0.072)
		end);
	}
	local tbl_12 = {}
	local Value_upvr_result1_upvr_11 = Value_upvr()
	local var22_result1_upvr = Spring_upvr(Computed_upvr(function() -- Line 317
		--[[ Upvalues[4]:
			[1]: Value_upvr_result1_upvr_10 (readonly)
			[2]: var91_upvr (readonly)
			[3]: Value_upvr_result1_upvr_9 (readonly)
			[4]: getUnderline_upvr (copied, readonly)
		]]
		local any_get_result1_14 = Value_upvr_result1_upvr_10:get()
		local any_get_result1_5 = var91_upvr:get()
		if any_get_result1_14 and any_get_result1_5 and Value_upvr_result1_upvr_9 then
			return getUnderline_upvr(any_get_result1_5, Value_upvr_result1_upvr_9:get(), any_get_result1_5:FindFirstChild(any_get_result1_14))
		end
		return UDim2.new(0.147, 0, 1, 0)
	end), 40, 1)
	local tbl_5 = {
		Name = "PostButton";
		AnchorPoint = Vector2.new(1, 0.5);
		TextSize = UDim2.fromScale(0.9, 0.58);
		CornerRadius = UDim.new(0.5, 0);
		ZIndex = 5;
		Bold = true;
		Position = Computed_upvr(function() -- Line 1421
			--[[ Upvalues[1]:
				[1]: var14_result1_upvr_5 (readonly)
			]]
			local var267
			if var14_result1_upvr_5:get() ~= true then
				var267 = false
			else
				var267 = true
			end
			if var267 then
				return UDim2.fromScale(0.94, 0.3)
			end
			return UDim2.fromScale(0.94, 0.5)
		end);
		TextColor = Computed_upvr(function() -- Line 1430
			--[[ Upvalues[2]:
				[1]: var14_result1_upvr_5 (readonly)
				[2]: Value_upvr_result1_upvr_6 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var269
			if var14_result1_upvr_5:get() ~= true then
				var269 = false
			else
				var269 = true
			end
			if 0 >= #Value_upvr_result1_upvr_6:get() then
			else
			end
			if var269 and not true then
				return Color3.fromRGB(180, 180, 180)
			end
			return Color3.fromRGB(255, 255, 255)
		end);
		Color = Computed_upvr(function() -- Line 1441
			--[[ Upvalues[2]:
				[1]: var14_result1_upvr_5 (readonly)
				[2]: Value_upvr_result1_upvr_6 (readonly)
			]]
			local var271
			if var14_result1_upvr_5:get() ~= true then
				var271 = false
			else
				var271 = true
			end
			if 0 >= #Value_upvr_result1_upvr_6:get() then
			else
			end
			if var271 and not Value_upvr_result1_upvr_6 then
				return Color3.fromRGB(0, 103, 155)
			end
			return Color3.fromRGB(0, 170, 255)
		end);
		Size = Computed_upvr(function() -- Line 1452
			--[[ Upvalues[3]:
				[1]: var14_result1_upvr_5 (readonly)
				[2]: Value_upvr_result1_upvr_6 (readonly)
				[3]: arg1 (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 25 start (CF ANALYSIS FAILED)
			local var273
			if var14_result1_upvr_5:get() ~= true then
				var273 = false
			else
				var273 = true
			end
			if 0 >= #Value_upvr_result1_upvr_6:get() then
				-- KONSTANTWARNING: GOTO [18] #15
			end
			-- KONSTANTERROR: [0] 1. Error Block 25 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [17] 14. Error Block 27 start (CF ANALYSIS FAILED)
			if var273 then
				if true then
					return UDim2.fromScale(0.3, 0.375)
				end
				return UDim2.fromScale(0.4, 0.375)
			end
			local any_get_result1_3 = arg1.PostingCommentParent:get()
			if not not any_get_result1_3 then
				any_get_result1_3 = 0.205
			else
				any_get_result1_3 = 0.15
			end
			do
				return UDim2.fromScale(any_get_result1_3, 0.65)
			end
			-- KONSTANTERROR: [17] 14. Error Block 27 end (CF ANALYSIS FAILED)
		end);
		Text = Computed_upvr(function() -- Line 1469
			--[[ Upvalues[3]:
				[1]: Value_upvr_result1_upvr_6 (readonly)
				[2]: var14_result1_upvr_5 (readonly)
				[3]: arg1 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local len = #Value_upvr_result1_upvr_6:get()
			local var277
			if var277 >= len then
			else
			end
			if var14_result1_upvr_5:get() ~= true then
				var277 = false
			else
				var277 = true
			end
			if var277 then
				if true then
					return "Add "..len.." images"
				end
				return "Select an image"
			end
			if not not arg1.PostingCommentParent:get() then
				return "Reply"
			end
			return "Post"
		end);
	}
	local function OnActivated() -- Line 1487
		--[[ Upvalues[7]:
			[1]: var14_result1_upvr_5 (readonly)
			[2]: Value_upvr_result1_upvr_6 (readonly)
			[3]: Value_upvr_result1_upvr_13 (readonly)
			[4]: arg1 (readonly)
			[5]: var14_result1_upvr_2 (readonly)
			[6]: var14_result1_upvr (readonly)
			[7]: Value_upvr_result1_upvr_8 (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 16 start (CF ANALYSIS FAILED)
		local var278
		if var14_result1_upvr_5:get() ~= true then
			var278 = false
		else
			var278 = true
		end
		local any_get_result1_2 = Value_upvr_result1_upvr_6:get()
		if 0 >= #any_get_result1_2 then
		else
		end
		-- KONSTANTERROR: [0] 1. Error Block 16 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [20] 17. Error Block 10 start (CF ANALYSIS FAILED)
		var14_result1_upvr_5:set(false)
		Value_upvr_result1_upvr_13:set(false)
		do
			return
		end
		-- KONSTANTERROR: [20] 17. Error Block 10 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [31] 26. Error Block 11 start (CF ANALYSIS FAILED)
		arg1.OnPostButtonClicked(any_get_result1_2, var14_result1_upvr_2:get())
		arg1.ScreenshotData:set()
		Value_upvr_result1_upvr_6:set({})
		var14_result1_upvr:set(true)
		Value_upvr_result1_upvr_8:set(true)
		-- KONSTANTERROR: [31] 26. Error Block 11 end (CF ANALYSIS FAILED)
	end
	tbl_5.OnActivated = OnActivated
	tbl_12[1] = Computed_upvr(function() -- Line 1290
		--[[ Upvalues[14]:
			[1]: var14_result1_upvr_5 (readonly)
			[2]: New_upvr (copied, readonly)
			[3]: Ref_upvr (copied, readonly)
			[4]: Value_upvr_result1_upvr_11 (readonly)
			[5]: Children_upvr (copied, readonly)
			[6]: var22_result1_upvr (readonly)
			[7]: Value_upvr_result1_upvr_9 (readonly)
			[8]: var91_upvr (readonly)
			[9]: Font_fromEnum_result1_upvr (readonly)
			[10]: Computed_upvr (copied, readonly)
			[11]: Value_upvr_result1_upvr_10 (readonly)
			[12]: OnEvent_upvr (copied, readonly)
			[13]: Value_upvr_result1_upvr_13 (readonly)
			[14]: arg1 (readonly)
		]]
		local var248
		if var14_result1_upvr_5:get() ~= true then
			var248 = false
		else
			var248 = true
		end
		if var248 then
			return New_upvr("ScrollingFrame")({
				Name = "Navigation";
				Size = UDim2.fromScale(0.7, 0.34);
				Position = UDim2.fromScale(0.5, 1);
				AnchorPoint = Vector2.new(0.5, 1);
				CanvasSize = UDim2.fromScale(0, 0);
				ScrollBarThickness = 0;
				ScrollingDirection = Enum.ScrollingDirection.X;
				AutomaticCanvasSize = Enum.AutomaticSize.X;
				BackgroundTransparency = 1;
				[Ref_upvr] = Value_upvr_result1_upvr_11;
				[Children_upvr] = {New_upvr("Frame")({
					Name = "Container";
					Size = UDim2.fromScale(1, 1);
					BackgroundTransparency = 1;
					[Children_upvr] = {New_upvr("Frame")({
						Name = "Underline";
						AnchorPoint = Vector2.new(0.5, 1);
						BackgroundColor3 = Color3.fromRGB(0, 170, 255);
						Position = var22_result1_upvr;
						Size = UDim2.fromScale(0.09, 0.1);
						ZIndex = 5;
						[Ref_upvr] = Value_upvr_result1_upvr_9;
						[Children_upvr] = {New_upvr("UICorner")({
							CornerRadius = UDim.new(0.5, 0);
						})};
					}), New_upvr("Frame")({
						Name = "Holder";
						Size = UDim2.fromScale(1, 0.6);
						BackgroundTransparency = 1;
						[Ref_upvr] = var91_upvr;
						[Children_upvr] = {New_upvr("UIListLayout")({
							Padding = UDim.new(0.15, 0);
							SortOrder = Enum.SortOrder.LayoutOrder;
							FillDirection = Enum.FillDirection.Horizontal;
							HorizontalAlignment = Enum.HorizontalAlignment.Center;
						}), New_upvr("TextButton")({
							Name = "ImagesButton";
							Text = "All Images";
							Size = UDim2.fromScale(0, 1);
							AutomaticSize = Enum.AutomaticSize.X;
							BackgroundTransparency = 1;
							TextScaled = true;
							FontFace = Font_fromEnum_result1_upvr;
							ZIndex = 5;
							TextColor3 = Computed_upvr(function() -- Line 1357
								--[[ Upvalues[1]:
									[1]: Value_upvr_result1_upvr_10 (copied, readonly)
								]]
								if Value_upvr_result1_upvr_10:get() == "ImagesButton" then
									return Color3.fromRGB(255, 255, 255)
								end
								return Color3.fromRGB(134, 134, 134)
							end);
							[OnEvent_upvr("Activated")] = function() -- Line 1366
								--[[ Upvalues[3]:
									[1]: Value_upvr_result1_upvr_10 (copied, readonly)
									[2]: Value_upvr_result1_upvr_13 (copied, readonly)
									[3]: arg1 (copied, readonly)
								]]
								Value_upvr_result1_upvr_10:set("ImagesButton")
								Value_upvr_result1_upvr_13:set(true)
								arg1.Images:set({})
								arg1.ImagesLoadedKeyword = ""
								arg1.DecalsNextPageCursor = nil
							end;
						}), New_upvr("TextButton")({
							Name = "DecalsButton";
							Text = "Your Decals";
							Size = UDim2.fromScale(0, 1);
							AutomaticSize = Enum.AutomaticSize.X;
							BackgroundTransparency = 1;
							TextScaled = true;
							FontFace = Font_fromEnum_result1_upvr;
							ZIndex = 5;
							TextColor3 = Computed_upvr(function() -- Line 1385
								--[[ Upvalues[1]:
									[1]: Value_upvr_result1_upvr_10 (copied, readonly)
								]]
								if Value_upvr_result1_upvr_10:get() == "DecalsButton" then
									return Color3.fromRGB(255, 255, 255)
								end
								return Color3.fromRGB(134, 134, 134)
							end);
							[OnEvent_upvr("Activated")] = function() -- Line 1394
								--[[ Upvalues[3]:
									[1]: Value_upvr_result1_upvr_10 (copied, readonly)
									[2]: arg1 (copied, readonly)
									[3]: Value_upvr_result1_upvr_13 (copied, readonly)
								]]
								Value_upvr_result1_upvr_10:set("DecalsButton")
								arg1.Images:set({})
								arg1.OnDecalsButtonClicked(arg1.DecalsNextPageCursor)
								Value_upvr_result1_upvr_13:set(false)
							end;
						})};
					})};
				})};
			})
		end
		return nil
	end, Fusion_upvr.cleanup)
	tbl_12[2] = TextButton_upvr(tbl_5)
	tbl_12[3] = SelectButton_upvr({
		Name = "CancelButton";
		Color = Color3.fromRGB(255, 255, 255);
		AnchorPoint = Vector2.new(0, 0.5);
		AutomaticSize = Enum.AutomaticSize.X;
		ZIndex = 5;
		Bold = true;
		Size = Computed_upvr(function() -- Line 1515
			--[[ Upvalues[1]:
				[1]: var14_result1_upvr_5 (readonly)
			]]
			local var282
			if var14_result1_upvr_5:get() ~= true then
				var282 = false
			else
				var282 = true
			end
			if var282 then
				return UDim2.fromScale(0, 0.22)
			end
			return UDim2.fromScale(0, 0.41)
		end);
		Position = Computed_upvr(function() -- Line 1524
			--[[ Upvalues[1]:
				[1]: var14_result1_upvr_5 (readonly)
			]]
			local var284
			if var14_result1_upvr_5:get() ~= true then
				var284 = false
			else
				var284 = true
			end
			if var284 then
				return UDim2.fromScale(0.06, 0.3)
			end
			return UDim2.fromScale(0.06, 0.5)
		end);
		Text = Computed_upvr(function() -- Line 1533
			--[[ Upvalues[1]:
				[1]: var14_result1_upvr_5 (readonly)
			]]
			local var286
			if var14_result1_upvr_5:get() ~= true then
				var286 = false
			else
				var286 = true
			end
			if var286 then
				return "< Back"
			end
			return "Cancel"
		end);
		OnActivated = function() -- Line 1542, Named "OnActivated"
			--[[ Upvalues[8]:
				[1]: var14_result1_upvr_5 (readonly)
				[2]: arg1 (readonly)
				[3]: Value_upvr_result1_upvr_13 (readonly)
				[4]: Value_upvr_result1_upvr_4 (readonly)
				[5]: Images_upvr (readonly)
				[6]: Value_upvr_result1_upvr_6 (readonly)
				[7]: var14_result1_upvr (readonly)
				[8]: Value_upvr_result1_upvr_8 (readonly)
			]]
			local var287
			if var14_result1_upvr_5:get() ~= true then
				var287 = false
			else
				var287 = true
			end
			if var287 then
				arg1.ImagesLoadedKeyword = ""
				arg1.IsLoading:set(false)
				Value_upvr_result1_upvr_13:set(false)
				var14_result1_upvr_5:set(false)
				Value_upvr_result1_upvr_4:get().Text = ""
				Images_upvr:set({})
			else
				arg1.IsPosting:set(false)
				arg1.PostingContent:set(nil)
				arg1.ScreenshotData:set()
			end
			Value_upvr_result1_upvr_6:set({})
			var14_result1_upvr:set(true)
			Value_upvr_result1_upvr_8:set(true)
		end;
	})
	tbl_12[4] = Line_upvr({
		ZIndex = 5;
		Size = Computed_upvr(function() -- Line 1566
			--[[ Upvalues[1]:
				[1]: var14_result1_upvr_5 (readonly)
			]]
			local var290
			if var14_result1_upvr_5:get() ~= true then
				var290 = false
			else
				var290 = true
			end
			if var290 then
				return UDim2.fromScale(1, 0.01)
			end
			return UDim2.fromScale(1, 0.02)
		end);
	})
	tbl[Children_upvr] = tbl_12
	tbl_16[1] = New_upvr("Frame")(tbl_23)
	tbl_16[2] = New_upvr("Frame")(tbl)
	tbl_16[3] = New_upvr("UICorner")({
		CornerRadius = Computed_upvr(function() -- Line 1579
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.IsVertical:get() == true then
				return UDim.new(0, 0)
			end
			return UDim.new(0, 16)
		end);
	})
	module_4[Children_upvr] = tbl_16
	return New_upvr("TextButton")(module_4)
end