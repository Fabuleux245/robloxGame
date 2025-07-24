-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:09:52
-- Luau version 6, Types version 3
-- Time taken: 0.008002 seconds

local UserInputService_upvr = game:GetService("UserInputService")
local LocalPlayer = game:GetService("Players").LocalPlayer
local Parent = script.Parent.Parent.Parent.Parent
local Utils = Parent:FindFirstChild("Utils")
local module_2_upvr = require(Utils:WaitForChild("Fusion"))
local function _(arg1) -- Line 39, Named "validateInput"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var6
	if arg1.UserInputType ~= Enum.UserInputType.Touch then
		var6 = false
	else
		var6 = true
	end
	if arg1.UserInputType ~= Enum.UserInputType.MouseButton1 then
	else
	end
	return var6 or true
end
local function _(arg1, arg2, arg3) -- Line 46, Named "lerp"
	return arg1 + (arg2 - arg1) * arg3
end
local module_5_upvr = require(Utils:WaitForChild("FusionProps"))
local Value_upvr = module_2_upvr.Value
local CurrentCamera_upvr = workspace.CurrentCamera
local mouse_upvr = LocalPlayer:GetMouse()
local TouchEnabled_upvr = UserInputService_upvr.TouchEnabled
local RunService_upvr = game:GetService("RunService")
local module_4_upvr = require(Parent:WaitForChild("ConfigReader"))
local var15_upvw
local BloxbizRemotes_upvr = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes")
local Button_upvr = require(script.Button)
local TweenService_upvr = game:GetService("TweenService")
local New_upvr = module_2_upvr.New
local Out_upvr = module_2_upvr.Out
local OnEvent_upvr = module_2_upvr.OnEvent
local Cleanup_upvr = module_2_upvr.Cleanup
local Children_upvr = module_2_upvr.Children
local Ref_upvr = module_2_upvr.Ref
local OnChange_upvr = module_2_upvr.OnChange
local Computed_upvr = module_2_upvr.Computed
local ForPairs_upvr = module_2_upvr.ForPairs
local any_GetPolicyInfoForPlayerAsync_result1_upvr = game:GetService("PolicyService"):GetPolicyInfoForPlayerAsync(LocalPlayer)
return function(arg1) -- Line 52
	--[[ Upvalues[23]:
		[1]: module_5_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: CurrentCamera_upvr (readonly)
		[4]: mouse_upvr (readonly)
		[5]: TouchEnabled_upvr (readonly)
		[6]: RunService_upvr (readonly)
		[7]: UserInputService_upvr (readonly)
		[8]: module_4_upvr (readonly)
		[9]: var15_upvw (read and write)
		[10]: BloxbizRemotes_upvr (readonly)
		[11]: Button_upvr (readonly)
		[12]: module_2_upvr (readonly)
		[13]: TweenService_upvr (readonly)
		[14]: New_upvr (readonly)
		[15]: Out_upvr (readonly)
		[16]: OnEvent_upvr (readonly)
		[17]: Cleanup_upvr (readonly)
		[18]: Children_upvr (readonly)
		[19]: Ref_upvr (readonly)
		[20]: OnChange_upvr (readonly)
		[21]: Computed_upvr (readonly)
		[22]: ForPairs_upvr (readonly)
		[23]: any_GetPolicyInfoForPlayerAsync_result1_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_5_upvr.GetValues(arg1, {
		Categories = {};
		CurrentCategory = 1;
		OnChange = module_5_upvr.Nil;
		Parent = module_5_upvr.Nil;
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0, 0);
		AnchorPoint = Vector2.zero;
	})
	local var9_result1_upvr = Value_upvr()
	local Value_upvr_result1_upvr_3 = Value_upvr(Vector2.zero)
	local var9_result1_upvr_2 = Value_upvr(false)
	local var34_upvw = 0
	local var35_upvw = false
	local Value_upvr_result1_upvr_2 = Value_upvr(0)
	local function _() -- Line 79
		--[[ Upvalues[1]:
			[1]: var9_result1_upvr (readonly)
		]]
		task.wait()
		local any_get_result1_4 = var9_result1_upvr:get()
		if any_get_result1_4 then
			local UIListLayout = any_get_result1_4:FindFirstChild("UIListLayout")
			if UIListLayout then
				any_get_result1_4.CanvasSize = UDim2.fromOffset(UIListLayout.AbsoluteContentSize.X, 0)
			end
		end
	end
	local var42_upvw = 0
	if not TouchEnabled_upvr then
		RunService_upvr:BindToRenderStep("CategoryButtonScroll", 1, function() -- Line 91, Named "DragScroll"
			--[[ Upvalues[5]:
				[1]: mouse_upvr (copied, readonly)
				[2]: var9_result1_upvr (readonly)
				[3]: var35_upvw (read and write)
				[4]: var42_upvw (read and write)
				[5]: var34_upvw (read and write)
			]]
			local X = mouse_upvr.X
			local any_get_result1_6 = var9_result1_upvr:get()
			if var35_upvw and any_get_result1_6 then
				var42_upvw = X - (var34_upvw or X)
			else
				local var45 = var42_upvw
				var42_upvw = var45 + (0 - var45) * 0.05
			end
			any_get_result1_6.CanvasPosition = Vector2.new(math.floor(any_get_result1_6.CanvasPosition.X - var42_upvw), 0)
			var34_upvw = X
		end)
	end
	local function _(arg1_2) -- Line 109
		--[[ Upvalues[2]:
			[1]: var9_result1_upvr_2 (readonly)
			[2]: var35_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var47
		if arg1_2.UserInputType ~= Enum.UserInputType.Touch then
			var47 = false
		else
			var47 = true
		end
		if arg1_2.UserInputType ~= Enum.UserInputType.MouseButton1 then
		else
		end
		if (var47 or true) and var9_result1_upvr_2:get() then
			var35_upvw = true
		end
	end
	local function _(arg1_3) -- Line 115
		--[[ Upvalues[2]:
			[1]: var35_upvw (read and write)
			[2]: var34_upvw (read and write)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var49
		if arg1_3.UserInputType ~= Enum.UserInputType.Touch then
			var49 = false
		else
			var49 = true
		end
		if arg1_3.UserInputType ~= Enum.UserInputType.MouseButton1 then
		else
		end
		if var49 or true then
			var35_upvw = false
			var34_upvw = nil
		end
	end
	local function _(arg1_4) -- Line 122
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		local any_get_result1_2 = any_GetValues_result1_upvw.OnChange:get()
		if any_get_result1_2 then
			any_get_result1_2(arg1_4)
		else
			any_GetValues_result1_upvw.CurrentCategory:set(arg1_4)
		end
	end
	local Value_upvr_result1_upvr = Value_upvr(module_4_upvr:read("CatalogOutfitFeedEnabled"))
	task.spawn(function() -- Line 133
		--[[ Upvalues[3]:
			[1]: var15_upvw (copied, read and write)
			[2]: BloxbizRemotes_upvr (copied, readonly)
			[3]: Value_upvr_result1_upvr (readonly)
		]]
		var15_upvw = BloxbizRemotes_upvr:WaitForChild("CatalogOnRequestPermissionRemote")
		local any_InvokeServer_result1, any_InvokeServer_result2 = var15_upvw:InvokeServer()
		if any_InvokeServer_result2.outfit_feed_disabled then
			Value_upvr_result1_upvr:set(false)
		end
	end)
	local tbl = {
		LayoutOrder = 0;
		Id = "feed";
		Visible = Value_upvr_result1_upvr;
		SelectedId = any_GetValues_result1_upvw.CurrentCategory;
		Text = "Outfits";
		Icon = "rbxassetid://15111160205";
	}
	local function OnClick() -- Line 149
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		local any_get_result1_5 = any_GetValues_result1_upvw.OnChange:get()
		if any_get_result1_5 then
			any_get_result1_5("feed")
		else
			any_GetValues_result1_upvw.CurrentCategory:set("feed")
		end
	end
	tbl.OnClick = OnClick
	local module = {
		Parent = any_GetValues_result1_upvw.Parent;
		Position = any_GetValues_result1_upvw.Position;
		Size = any_GetValues_result1_upvw.Size;
		BackgroundTransparency = 1;
		LayoutOrder = 3;
		ClipsDescendants = true;
		[Out_upvr("AbsoluteSize")] = Value_upvr_result1_upvr_3;
		[OnEvent_upvr("MouseEnter")] = function() -- Line 192
			--[[ Upvalues[1]:
				[1]: var9_result1_upvr_2 (readonly)
			]]
			var9_result1_upvr_2:set(true)
		end;
		[OnEvent_upvr("MouseLeave")] = function() -- Line 195
			--[[ Upvalues[1]:
				[1]: var9_result1_upvr_2 (readonly)
			]]
			var9_result1_upvr_2:set(false)
		end;
	}
	local any_onChange_result1_upvr = module_2_upvr.Observer(any_GetValues_result1_upvw.CurrentCategory):onChange(function() -- Line 156
		--[[ Upvalues[3]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: var9_result1_upvr (readonly)
			[3]: TweenService_upvr (copied, readonly)
		]]
		if not any_GetValues_result1_upvw.CurrentCategory:get() then
		else
			local any_get_result1_3 = var9_result1_upvr:get()
			local SOME = any_get_result1_3:FindFirstChild(any_GetValues_result1_upvw.CurrentCategory:get())
			if not SOME then return end
			local maximum = math.max(0, (any_get_result1_3.CanvasPosition.X) + ((SOME.AbsolutePosition.X - any_get_result1_3.AbsolutePosition.X) - (any_get_result1_3.AbsoluteSize.X / 2 - SOME.AbsoluteSize.X / 2)))
			if maximum ~= any_get_result1_3.CanvasPosition.X then
				TweenService_upvr:Create(any_get_result1_3, TweenInfo.new(0.5), {
					CanvasPosition = Vector2.new(maximum, 0);
				}):Play()
			end
		end
	end)
	module[Cleanup_upvr] = function() -- Line 199
		--[[ Upvalues[2]:
			[1]: module_2_upvr (copied, readonly)
			[2]: any_onChange_result1_upvr (readonly)
		]]
		module_2_upvr.cleanup(any_onChange_result1_upvr)
	end
	module[Children_upvr] = {New_upvr("ScrollingFrame")({
		AutomaticCanvasSize = Enum.AutomaticSize.X;
		CanvasSize = UDim2.fromOffset(9084, 0);
		ElasticBehavior = Enum.ElasticBehavior.Always;
		ScrollBarImageTransparency = 1;
		ScrollingDirection = Enum.ScrollingDirection.X;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Position = UDim2.fromScale(0, 0);
		Selectable = false;
		Size = UDim2.fromScale(1, 1);
		ClipsDescendants = false;
		[Ref_upvr] = var9_result1_upvr;
		[OnChange_upvr("CanvasPosition")] = function(arg1_5) -- Line 219
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr_2 (readonly)
			]]
			Value_upvr_result1_upvr_2:set(arg1_5.X)
		end;
		[Children_upvr] = {New_upvr("UIListLayout")({
			Name = "UIListLayout";
			Padding = Computed_upvr(function() -- Line 231
				--[[ Upvalues[1]:
					[1]: Value_upvr_result1_upvr_3 (readonly)
				]]
				return UDim.new(0, Value_upvr_result1_upvr_3:get().Y / 8)
			end);
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.LayoutOrder;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		}), Button_upvr(tbl), ForPairs_upvr(any_GetValues_result1_upvw.Categories, function(arg1_6, arg2) -- Line 243
			--[[ Upvalues[3]:
				[1]: any_GetPolicyInfoForPlayerAsync_result1_upvr (copied, readonly)
				[2]: Button_upvr (copied, readonly)
				[3]: any_GetValues_result1_upvw (read and write)
			]]
			if not arg2.is_ad or arg2.is_ad and any_GetPolicyInfoForPlayerAsync_result1_upvr.AreAdsAllowed then
				local module_6 = {}
				module_6.Id = arg1_6
				module_6.SelectedId = any_GetValues_result1_upvw.CurrentCategory
				module_6.LayoutOrder = arg1_6
				module_6.Text = arg2.name
				function module_6.OnClick() -- Line 252
					--[[ Upvalues[2]:
						[1]: arg1_6 (readonly)
						[2]: any_GetValues_result1_upvw (copied, read and write)
					]]
					local var76 = arg1_6
					local any_get_result1 = any_GetValues_result1_upvw.OnChange:get()
					if any_get_result1 then
						any_get_result1(var76)
					else
						any_GetValues_result1_upvw.CurrentCategory:set(var76)
					end
				end
				return arg1_6, Button_upvr(module_6)
			end
			return arg1_6, nil
		end, module_2_upvr.cleanup)};
	}), New_upvr("UIGradient")({
		Transparency = Computed_upvr(function() -- Line 267
			--[[ Upvalues[1]:
				[1]: Value_upvr_result1_upvr_2 (readonly)
			]]
			local sine = math.sin(math.clamp(Value_upvr_result1_upvr_2:get(), 0, 20) / 20 * math.pi / 2)
			local module_3 = {NumberSequenceKeypoint.new(0, sine)}
			for i = 0, 8 do
				table.insert(module_3, NumberSequenceKeypoint.new(i / 8 * 0.05 + 0.01, (math.cos(i / 8 * math.pi) + 1) / 2 * sine))
			end
			for i_2 = 0, 8 do
				table.insert(module_3, NumberSequenceKeypoint.new(i_2 / 8 * 0.05 + 0.95 - 0.01, math.sin(i_2 / 8 * math.pi / 2) * 1))
			end
			table.insert(module_3, NumberSequenceKeypoint.new(1, 1))
			return NumberSequence.new(module_3)
		end);
	})}
	return New_upvr("CanvasGroup")(module)
end