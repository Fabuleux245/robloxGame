-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:29
-- Luau version 6, Types version 3
-- Time taken: 0.010053 seconds

local LocalPlayer = game:GetService("Players").LocalPlayer
local Parent = script.Parent.Parent.Parent.Parent
local CatalogClient = Parent:WaitForChild("CatalogClient")
local Utils = Parent:FindFirstChild("Utils")
local module_upvr = require(Utils:WaitForChild("Fusion"))
local BloxbizRemotes = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes")
local module_2_upvr = require(Utils:WaitForChild("FusionProps"))
local Value_upvr = module_upvr.Value
local Computed_upvr = module_upvr.Computed
local AvatarHandler_upvr = require(CatalogClient.Classes.AvatarHandler)
local Spring_upvr = module_upvr.Spring
local New_upvr = module_upvr.New
local Ref_upvr = module_upvr.Ref
local Out_upvr = module_upvr.Out
local Children_upvr = module_upvr.Children
local ViewportFrame_upvr = require(CatalogClient.Components.Generic.ViewportFrame)
local ForValues_upvr = module_upvr.ForValues
local Item_upvr = require(script.Item)
local catalogItemPromptEvent_upvr = BloxbizRemotes:WaitForChild("catalogItemPromptEvent")
local CatalogOnPromptPurchase_upvr = BloxbizRemotes:WaitForChild("CatalogOnPromptPurchase")
local PlayerInfo_upvr = require(script.PlayerInfo)
local Counter_upvr = require(script.Counter)
local Button_upvr = require(script.Button)
return function(arg1) -- Line 47
	--[[ Upvalues[18]:
		[1]: module_2_upvr (readonly)
		[2]: Value_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: AvatarHandler_upvr (readonly)
		[5]: module_upvr (readonly)
		[6]: Spring_upvr (readonly)
		[7]: New_upvr (readonly)
		[8]: Ref_upvr (readonly)
		[9]: Out_upvr (readonly)
		[10]: Children_upvr (readonly)
		[11]: ViewportFrame_upvr (readonly)
		[12]: ForValues_upvr (readonly)
		[13]: Item_upvr (readonly)
		[14]: catalogItemPromptEvent_upvr (readonly)
		[15]: CatalogOnPromptPurchase_upvr (readonly)
		[16]: PlayerInfo_upvr (readonly)
		[17]: Counter_upvr (readonly)
		[18]: Button_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_2_upvr.GetValues(arg1, {
		Parent = module_2_upvr.Nil;
		Id = module_2_upvr.Required;
		CreatorId = module_2_upvr.Required;
		ReadOnly = false;
		Outfit = module_2_upvr.Required;
		Items = module_2_upvr.Required;
		Likes = 0;
		Boosts = 0;
		TryOns = 0;
		Impressions = 0;
		OwnLike = false;
		HumanoidDescription = module_2_upvr.Required;
		OnImpression = module_2_upvr.Callback;
		OnTry = module_2_upvr.Callback;
		OnLike = module_2_upvr.Callback;
		OnBoost = module_2_upvr.Callback;
		Enabled = true;
		SelectedId = module_2_upvr.Nil;
		AvatarPreviewController = module_2_upvr.Required;
		AlreadySeen = false;
		AlreadyTriedOn = false;
	})
	local var9_result1_upvr_3 = Value_upvr(Vector2.zero)
	local Computed_upvr_result1_upvr_2 = Computed_upvr(function() -- Line 76
		--[[ Upvalues[1]:
			[1]: var9_result1_upvr_3 (readonly)
		]]
		var9_result1_upvr_3:get()
		local any_get_result1_3 = var9_result1_upvr_3:get()
		if not any_get_result1_3 then
			any_get_result1_3 = Vector2.zero
		end
		return any_get_result1_3.Y * 0.02
	end)
	local var9_result1_upvr = Value_upvr(Vector2.zero)
	local Computed_upvr_result1_upvr = Computed_upvr(function() -- Line 83
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		local var33
		if any_GetValues_result1_upvw.SelectedId:get() ~= any_GetValues_result1_upvw.Id:get() then
			var33 = false
		else
			var33 = true
		end
		return var33
	end)
	local any_GetModel_result1 = AvatarHandler_upvr.GetModel(any_GetValues_result1_upvw.HumanoidDescription:get())
	local Animate = any_GetModel_result1:FindFirstChild("Animate")
	if Animate then
		Animate.Disabled = true
	end
	local Value_upvr_result1_upvr = Value_upvr()
	local var12_result1_upvr = Spring_upvr(Computed_upvr(function() -- Line 100
		--[[ Upvalues[2]:
			[1]: Computed_upvr_result1_upvr (readonly)
			[2]: Computed_upvr_result1_upvr_2 (readonly)
		]]
		if Computed_upvr_result1_upvr:get() then
			return UDim2.new(0.75, -Computed_upvr_result1_upvr_2:get() - 1, 1, 0)
		end
		return UDim2.fromScale(1, 1)
	end), 30)
	local Value_upvr_result1_upvr_2 = Value_upvr()
	local var9_result1_upvr_2 = Value_upvr(Vector2.zero)
	local module = {
		Parent = any_GetValues_result1_upvw.Parent;
		Name = any_GetValues_result1_upvw.Id;
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
	}
	local any_onChange_result1_upvr = module_upvr.Observer(Computed_upvr_result1_upvr):onChange(function() -- Line 94
		--[[ Upvalues[2]:
			[1]: Computed_upvr_result1_upvr (readonly)
			[2]: Value_upvr_result1_upvr (readonly)
		]]
		if not Computed_upvr_result1_upvr:get() then
			Value_upvr_result1_upvr:set(nil)
		end
	end)
	module[module_upvr.Cleanup] = function() -- Line 117
		--[[ Upvalues[2]:
			[1]: module_upvr (copied, readonly)
			[2]: any_onChange_result1_upvr (readonly)
		]]
		module_upvr.cleanup(any_onChange_result1_upvr)
	end
	module[Ref_upvr] = Value_upvr_result1_upvr_2
	module[Out_upvr("AbsoluteSize")] = var9_result1_upvr_3
	module[module_upvr.OnChange("AbsolutePosition")] = function(arg1_2) -- Line 125
		--[[ Upvalues[2]:
			[1]: any_GetValues_result1_upvw (read and write)
			[2]: Value_upvr_result1_upvr_2 (readonly)
		]]
		if any_GetValues_result1_upvw.AlreadySeen:get() then
		else
			local any_get_result1 = Value_upvr_result1_upvr_2:get()
			if any_get_result1 and 0 < arg1_2.Y and arg1_2.Y < workspace.Camera.ViewportSize.Y - any_get_result1.AbsoluteSize.Y / 2 then
				if not any_GetValues_result1_upvw.AlreadySeen:get() then
					any_GetValues_result1_upvw.Impressions:set(any_GetValues_result1_upvw.Impressions:get() + 1)
				end
				any_GetValues_result1_upvw.AlreadySeen:set(true)
				any_GetValues_result1_upvw.OnImpression:get()()
			end
		end
	end
	local tbl_6 = {}
	local tbl = {
		BackgroundTransparency = 1;
		Size = Computed_upvr(function() -- Line 156
			--[[ Upvalues[1]:
				[1]: Computed_upvr_result1_upvr_2 (readonly)
			]]
			return UDim2.new(1, 0, 0.85, -Computed_upvr_result1_upvr_2:get() * 1)
		end);
	}
	local tbl_3 = {}
	local tbl_11 = {
		Name = "PreviewContainer";
		Size = var12_result1_upvr;
		BackgroundColor3 = Color3.fromHex("373B43");
		ZIndex = 10;
	}
	local tbl_7 = {}
	local tbl_10 = {
		RotateEnabled = true;
		AutoRotateEnabled = true;
		Model = any_GetModel_result1;
		Size = UDim2.fromScale(1, 1);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
	}
	local function OnClick() -- Line 181
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		if any_GetValues_result1_upvw.Id:get() == any_GetValues_result1_upvw.SelectedId:get() then
			any_GetValues_result1_upvw.SelectedId:set(nil)
		else
			any_GetValues_result1_upvw.SelectedId:set(any_GetValues_result1_upvw.Id:get())
		end
	end
	tbl_10.OnClick = OnClick
	tbl_10.AnimTrack = nil
	tbl_7[1] = New_upvr("UICorner")({
		CornerRadius = Computed_upvr(function() -- Line 170
			--[[ Upvalues[1]:
				[1]: Computed_upvr_result1_upvr_2 (readonly)
			]]
			return UDim.new(0, Computed_upvr_result1_upvr_2:get() * 2)
		end);
	})
	tbl_7[2] = ViewportFrame_upvr(tbl_10)
	tbl_11[Children_upvr] = tbl_7
	tbl_3[1] = New_upvr("TextButton")(tbl_11)
	tbl_3[2] = New_upvr("CanvasGroup")({
		Name = "Items";
		BackgroundTransparency = 1;
		GroupTransparency = Spring_upvr(Computed_upvr(function() -- Line 197
			--[[ Upvalues[1]:
				[1]: Computed_upvr_result1_upvr (readonly)
			]]
			if Computed_upvr_result1_upvr:get() then
				return 0
			end
			return 0.5
		end), 30);
		Visible = Computed_upvr(function() -- Line 204
			--[[ Upvalues[1]:
				[1]: var12_result1_upvr (readonly)
			]]
			local var60
			if var12_result1_upvr:get().X.Scale > 0.999 then
				var60 = false
			else
				var60 = true
			end
			return var60
		end);
		AnchorPoint = Vector2.new(1, 0);
		Position = UDim2.fromScale(1, 0);
		Size = UDim2.fromScale(0.25, 1);
		[Children_upvr] = {New_upvr("UICorner")({
			CornerRadius = Computed_upvr(function() -- Line 214
				--[[ Upvalues[1]:
					[1]: Computed_upvr_result1_upvr_2 (readonly)
				]]
				return UDim.new(0, Computed_upvr_result1_upvr_2:get() * 2)
			end);
		}), New_upvr("ScrollingFrame")({
			Size = UDim2.fromScale(1, 1);
			BackgroundTransparency = 1;
			ScrollBarThickness = 0;
			CanvasSize = Computed_upvr(function() -- Line 222
				--[[ Upvalues[1]:
					[1]: var9_result1_upvr (readonly)
				]]
				local any_get_result1_4 = var9_result1_upvr:get()
				if not any_get_result1_4 then
					any_get_result1_4 = Vector2.zero
				end
				return UDim2.new(1, 0, 0, any_get_result1_4.Y)
			end);
			ScrollingDirection = Enum.ScrollingDirection.Y;
			[Children_upvr] = {New_upvr("UIListLayout")({
				Padding = Computed_upvr(function() -- Line 229
					--[[ Upvalues[1]:
						[1]: Computed_upvr_result1_upvr_2 (readonly)
					]]
					return UDim.new(0, Computed_upvr_result1_upvr_2:get())
				end);
				[Out_upvr("AbsoluteContentSize")] = var9_result1_upvr;
			}), ForValues_upvr(any_GetValues_result1_upvw.Items, function(arg1_3) -- Line 232
				--[[ Upvalues[9]:
					[1]: New_upvr (copied, readonly)
					[2]: Children_upvr (copied, readonly)
					[3]: Item_upvr (copied, readonly)
					[4]: Value_upvr_result1_upvr (readonly)
					[5]: Computed_upvr (copied, readonly)
					[6]: any_GetValues_result1_upvw (read and write)
					[7]: Computed_upvr_result1_upvr_2 (readonly)
					[8]: catalogItemPromptEvent_upvr (copied, readonly)
					[9]: CatalogOnPromptPurchase_upvr (copied, readonly)
				]]
				if not arg1_3.AssetId then return end
				return New_upvr("Frame")({
					Size = UDim2.fromScale(1, 1);
					BackgroundTransparency = 1;
					[Children_upvr] = {New_upvr("UIAspectRatioConstraint")({
						DominantAxis = Enum.DominantAxis.Width;
						AspectRatio = 1;
					}), Item_upvr({
						AssetId = arg1_3.AssetId;
						SelectedId = Value_upvr_result1_upvr;
						CategoryName = "Feed";
						EquippedItems = Computed_upvr(function() -- Line 250
							--[[ Upvalues[1]:
								[1]: any_GetValues_result1_upvw (copied, read and write)
							]]
							return any_GetValues_result1_upvw.AvatarPreviewController:get().EquippedItems:get()
						end);
						CornerRadius = Computed_upvr(function() -- Line 253
							--[[ Upvalues[1]:
								[1]: Computed_upvr_result1_upvr_2 (copied, readonly)
							]]
							return Computed_upvr_result1_upvr_2:get() * 2
						end);
						OnBuy = function() -- Line 256, Named "OnBuy"
							--[[ Upvalues[3]:
								[1]: catalogItemPromptEvent_upvr (copied, readonly)
								[2]: arg1_3 (readonly)
								[3]: CatalogOnPromptPurchase_upvr (copied, readonly)
							]]
							catalogItemPromptEvent_upvr:FireServer("Feed")
							if arg1_3.AssetId then
								CatalogOnPromptPurchase_upvr:InvokeServer(arg1_3.AssetId, false)
							end
						end;
						OnTry = function() -- Line 263, Named "OnTry"
							--[[ Upvalues[2]:
								[1]: any_GetValues_result1_upvw (copied, read and write)
								[2]: arg1_3 (readonly)
							]]
							any_GetValues_result1_upvw.AvatarPreviewController:get():AddChange(arg1_3, "Feed")
						end;
					})};
				})
			end, module_upvr.cleanup)};
		})};
	})
	tbl[Children_upvr] = tbl_3
	local tbl_2 = {
		BackgroundTransparency = 1;
		AnchorPoint = Vector2.new(0, 0);
		Position = UDim2.fromScale(0, 0.86);
		Size = Computed_upvr(function() -- Line 283
			return UDim2.new(1, 0, 0.12, 0)
		end);
	}
	local tbl_5 = {}
	local tbl_9 = {
		AnchorPoint = Vector2.new(1, 0);
		Position = UDim2.fromScale(1, 0);
		Size = UDim2.fromScale(0.5, 1);
		BackgroundTransparency = 1;
	}
	local tbl_8 = {}
	local tbl_4 = {
		LayoutOrder = -2;
		Icon = Computed_upvr(function() -- Line 332
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			if any_GetValues_result1_upvw.OwnLike:get() then
				return "rbxassetid://14110764348"
			end
			return "rbxassetid://15234302220"
		end);
		Disabled = any_GetValues_result1_upvw.ReadOnly;
		Count = any_GetValues_result1_upvw.Likes;
	}
	local function OnClick() -- Line 342
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		local any_get_result1_2 = any_GetValues_result1_upvw.OwnLike:get()
		local var92
		if any_get_result1_2 then
			var92 = -1
		else
			var92 = 1
		end
		any_GetValues_result1_upvw.OwnLike:set(not any_get_result1_2)
		any_GetValues_result1_upvw.Likes:set(any_GetValues_result1_upvw.Likes:get() + var92)
		if not any_GetValues_result1_upvw.OnLike:get()(not any_get_result1_2) then
			any_GetValues_result1_upvw.OwnLike:set(any_get_result1_2)
			any_GetValues_result1_upvw.Likes:set(any_GetValues_result1_upvw.Likes:get() - var92)
		end
	end
	tbl_4.OnClick = OnClick
	tbl_8[1] = New_upvr("UIListLayout")({
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		HorizontalAlignment = Enum.HorizontalAlignment.Right;
		[Out_upvr("AbsoluteContentSize")] = var9_result1_upvr_2;
		Padding = Computed_upvr(function() -- Line 313
			--[[ Upvalues[1]:
				[1]: Computed_upvr_result1_upvr_2 (readonly)
			]]
			return UDim.new(0, Computed_upvr_result1_upvr_2:get())
		end);
	})
	tbl_8[2] = New_upvr("UIPadding")({
		PaddingRight = UDim.new(0, 1);
	})
	tbl_8[3] = Counter_upvr({
		LayoutOrder = -3;
		Icon = "rbxassetid://15234940872";
		Count = any_GetValues_result1_upvw.Impressions;
		Size = UDim2.fromScale(1, 1);
	})
	tbl_8[4] = Button_upvr(tbl_4)
	tbl_8[5] = Button_upvr({
		LayoutOrder = -1;
		Icon = "rbxassetid://15236081286";
		Count = any_GetValues_result1_upvw.TryOns;
		OnClick = function() -- Line 365, Named "OnClick"
			--[[ Upvalues[1]:
				[1]: any_GetValues_result1_upvw (read and write)
			]]
			any_GetValues_result1_upvw.OnTry:get()()
			any_GetValues_result1_upvw.AlreadyTriedOn:set(true)
		end;
	})
	tbl_9[Children_upvr] = tbl_8
	tbl_5[1] = PlayerInfo_upvr({
		PlayerId = any_GetValues_result1_upvw.CreatorId;
		Size = Computed_upvr(function() -- Line 290
			--[[ Upvalues[2]:
				[1]: var9_result1_upvr_2 (readonly)
				[2]: Computed_upvr_result1_upvr_2 (readonly)
			]]
			local any_get_result1_5 = var9_result1_upvr_2:get()
			if not any_get_result1_5 then
				any_get_result1_5 = Vector2.zero
			end
			return UDim2.new(1, -any_get_result1_5.X - Computed_upvr_result1_upvr_2:get(), 1, 0)
		end);
	})
	tbl_5[2] = New_upvr("Frame")(tbl_9)
	tbl_2[Children_upvr] = tbl_5
	tbl_6[1] = New_upvr("Frame")(tbl)
	tbl_6[2] = New_upvr("Frame")(tbl_2)
	module[Children_upvr] = tbl_6
	return New_upvr("Frame")(module)
end