-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:31
-- Luau version 6, Types version 3
-- Time taken: 0.012557 seconds

local Parent = script.Parent.Parent.Parent.Parent
local Utils = Parent:FindFirstChild("Utils")
local Generic = Parent.CatalogClient.Components.Generic
local Button_upvr = require(Generic.Button)
local function CreateButton_upvr(arg1) -- Line 59, Named "CreateButton"
	--[[ Upvalues[1]:
		[1]: Button_upvr (readonly)
	]]
	return Button_upvr({
		Position = UDim2.fromScale(0.5, 0);
		Size = UDim2.fromScale(0.3, 0.8);
		AnchorPoint = Vector2.new(0.5, 0);
		CornerRadius = UDim.new(0.2, 0);
		Text = arg1.Text;
		Name = arg1.Action;
		Image = arg1.Image;
		TextScaled = false;
		TextWrapped = false;
		Enabled = arg1.Enabled;
		ImageTransparency = {
			Default = 0;
			Hover = 0.1;
			MouseDown = 0.2;
			Disabled = 0.5;
		};
		ImageColor3 = {
			Default = Color3.fromRGB(255, 255, 255);
			Hover = Color3.fromRGB(255, 255, 255);
			MouseDown = Color3.fromRGB(255, 255, 255);
			Disabled = Color3.fromRGB(75, 75, 75);
		};
		BackgroundColor3 = {
			Default = Color3.new(1, 1, 1);
			Hover = Color3.fromHex("#c5c5c5");
			MouseDown = Color3.fromRGB(138, 138, 138);
			Disabled = Color3.fromRGB(138, 138, 138);
		};
		BackgroundTransparency = {
			Default = 0;
			Hover = 0.1;
			MouseDown = 0.2;
			Disabled = 0.3;
		};
		TextColor3 = {
			Default = Color3.new(0, 0, 0);
			Hover = Color3.new(0, 0, 0);
			MouseDown = Color3.new(0, 0, 0);
			Disabled = Color3.new(0, 0, 0);
		};
		TextTransparency = {
			Default = 0;
			Hover = 0.1;
			MouseDown = 0.2;
			Disabled = 0.3;
		};
		Callback = function(arg1_2, arg2) -- Line 114, Named "Callback"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_2:get() then
				arg1_2:set(false)
				local var13_upvw
				if var13_upvw == "like" and arg1.OwnLike:get() then
					var13_upvw = "unlike"
				end
				if var13_upvw == "like" then
					arg1.Likes:set(arg1.Likes:get() + 1)
					arg1.OwnLike:set(true)
				elseif var13_upvw == "unlike" then
					arg1.Likes:set(arg1.Likes:get() - 1)
					arg1.OwnLike:set(false)
				end
				task.spawn(function() -- Line 131
					--[[ Upvalues[2]:
						[1]: arg1 (copied, readonly)
						[2]: var13_upvw (read and write)
					]]
					if not arg1.Callback(var13_upvw) then
						if var13_upvw == "like" then
							arg1.Likes:set(arg1.Likes:get() - 1)
							arg1.OwnLike:set(false)
							return
						end
						if var13_upvw == "unlike" then
							arg1.Likes:set(arg1.Likes:get() + 1)
							arg1.OwnLike:set(true)
						end
					end
				end)
				arg1_2:set(true)
			end
		end;
	})
end
local module_upvr_2 = require(Parent:FindFirstChild("CatalogClient").Classes:WaitForChild("AvatarHandler"))
local ViewportFrame_upvr = require(Generic.ViewportFrame)
local function CreateViewport_upvr(arg1) -- Line 151, Named "CreateViewport"
	--[[ Upvalues[2]:
		[1]: module_upvr_2 (readonly)
		[2]: ViewportFrame_upvr (readonly)
	]]
	local any_GetModel_result1 = module_upvr_2.GetModel(arg1)
	local Animate = any_GetModel_result1:FindFirstChild("Animate")
	if Animate then
		Animate.Disabled = true
	end
	return ViewportFrame_upvr({
		RotateEnabled = true;
		AutoRotateEnabled = true;
		Model = any_GetModel_result1;
		Size = UDim2.fromScale(0.19, 1);
		Position = UDim2.fromScale(0.00159, 0.5);
		AnchorPoint = Vector2.new(0, 0.5);
		AnimTrack = nil;
	})
end
local ScrollingFrame_upvr = require(Generic.ScrollingFrame)
local function CreateItemList_upvr(arg1) -- Line 194, Named "CreateItemList"
	--[[ Upvalues[1]:
		[1]: ScrollingFrame_upvr (readonly)
	]]
	local var20_result1 = ScrollingFrame_upvr({
		Size = UDim2.fromScale(1, 0.7);
		Position = UDim2.fromScale(0.5, 0.675);
		ScrollingDirection = Enum.ScrollingDirection.X;
		ScrollBarThickness = 0;
		Layout = {
			Type = "UIListLayout";
			Padding = UDim.new(0.025, 0);
			FillDirection = Enum.FillDirection.Horizontal;
			SortOrder = Enum.SortOrder.Name;
			HorizontalAlignment = Enum.HorizontalAlignment.Left;
			VerticalAlignment = Enum.VerticalAlignment.Center;
		};
	})
	local ItemFrame = var20_result1:FindFirstChild("ItemFrame")
	for _, v in pairs(arg1) do
		v.Parent = ItemFrame
	end
	return var20_result1
end
local Players_upvr = game:GetService("Players")
local module_upvr = require(Utils:WaitForChild("Fusion"))
local CatalogUtils_upvr = require(Parent:FindFirstChild("CatalogShared").CatalogUtils)
local Utils_2_upvr = require(Utils)
return function(arg1) -- Line 222
	--[[ Upvalues[7]:
		[1]: Players_upvr (readonly)
		[2]: CreateViewport_upvr (readonly)
		[3]: module_upvr (readonly)
		[4]: CatalogUtils_upvr (readonly)
		[5]: Utils_2_upvr (readonly)
		[6]: CreateButton_upvr (readonly)
		[7]: CreateItemList_upvr (readonly)
	]]
	local Data = arg1.Data
	local CreatorId = Data.CreatorId
	local var39 = Players_upvr:GetNameFromUserIdAsync(CreatorId) or "N/A"
	repeat
		task.wait()
	until 60 < 1 + 1
	local CreatedAt = Data.CreatedAt
	local Data_2 = arg1.Data
	local any_Value_result1_upvr_3 = module_upvr.Value(Data_2.Likes or 0)
	local any_Value_result1_upvr_5 = module_upvr.Value(Data_2.Boosts or 0)
	local any_Value_result1_upvr_2 = module_upvr.Value(Data_2.OwnLike)
	local any_GetTime_result1, any_GetTime_result2 = CatalogUtils_upvr.GetTime(CreatedAt)
	if 4 <= any_GetTime_result2 then
		any_GetTime_result1 = CatalogUtils_upvr.FormatIsoDate(CreatedAt)
	end
	local any_Value_result1_upvr_4 = module_upvr.Value(CatalogUtils_upvr.GetNameRichText(var39, any_GetTime_result1))
	local any_Value_result1_upvr = module_upvr.Value()
	local tbl = {
		Name = Data_2.GUID;
		BackgroundColor3 = Color3.fromRGB(41, 43, 48);
		Position = UDim2.fromScale(0, 0);
		Size = UDim2.fromScale(1, 0.369);
		[module_upvr.Ref] = any_Value_result1_upvr;
	}
	local var62_upvw = false
	tbl[module_upvr.OnChange("AbsolutePosition")] = function(arg1_3) -- Line 332
		--[[ Upvalues[3]:
			[1]: var62_upvw (read and write)
			[2]: any_Value_result1_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		if var62_upvw then
		else
			local any_get_result1 = any_Value_result1_upvr:get()
			if any_get_result1 and 0 < arg1_3.Y and arg1_3.Y < workspace.Camera.ViewportSize.Y - any_get_result1.AbsoluteSize.Y / 2 then
				var62_upvw = true
				arg1.OnImpression()
			end
		end
	end
	tbl[module_upvr.Children] = {module_upvr.New("UICorner")({
		Name = "UICorner";
		CornerRadius = UDim.new(0.065, 0);
	}), module_upvr.New("Frame")({
		Name = "Holder";
		AnchorPoint = Vector2.new(0.5, 0.5);
		BackgroundColor3 = Color3.fromRGB(255, 255, 255);
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(0.98, 0.9);
		[module_upvr.Children] = {module_upvr.New("Frame")({
			Name = "Content";
			AnchorPoint = Vector2.new(0.5, 0.5);
			BackgroundColor3 = Color3.fromRGB(255, 255, 255);
			BackgroundTransparency = 1;
			Position = UDim2.fromScale(0.602, 0.5);
			Size = UDim2.fromScale(0.796, 1);
			[module_upvr.Children] = {module_upvr.New("Frame")({
				Name = "Buttons";
				Active = true;
				AnchorPoint = Vector2.new(1, 0.5);
				BackgroundColor3 = Color3.fromRGB(79, 173, 116);
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Position = UDim2.fromScale(1, 0.1);
				Selectable = true;
				Size = UDim2.fromScale(0.55, 0.26);
				[module_upvr.Children] = {module_upvr.New("UIListLayout")({
					Name = "UIListLayout";
					Padding = UDim.new(0.02, 0);
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Right;
					SortOrder = Enum.SortOrder.LayoutOrder;
					VerticalAlignment = Enum.VerticalAlignment.Center;
				}), CreateButton_upvr({
					Action = "try";
					Text = "Try On";
					Image = "rbxassetid://14248504143";
					Outfit = Data;
					Callback = arg1.ActionCallback;
					Enabled = true;
					OwnLike = any_Value_result1_upvr_2;
					Boosts = any_Value_result1_upvr_5;
					Likes = any_Value_result1_upvr_3;
				}), CreateButton_upvr({
					Action = "like";
					Text = module_upvr.Computed(function() -- Line 257
						--[[ Upvalues[2]:
							[1]: any_Value_result1_upvr_3 (readonly)
							[2]: Utils_2_upvr (copied, readonly)
						]]
						local any_get_result1_2 = any_Value_result1_upvr_3:get()
						local var51 = 0
						if var51 < any_get_result1_2 then
							if 1 < any_get_result1_2 then
								var51 = "Likes"
							else
								var51 = "Like"
							end
							return Utils_2_upvr.toLocaleNumber(any_get_result1_2)..' '..var51
						end
						return "Like"
					end, module_upvr.cleanup);
					Image = module_upvr.Computed(function() -- Line 277
						--[[ Upvalues[1]:
							[1]: any_Value_result1_upvr_2 (readonly)
						]]
						if any_Value_result1_upvr_2:get() then
							return "rbxassetid://14110764348"
						end
						return "rbxassetid://14375965247"
					end, module_upvr.cleanup);
					Outfit = Data;
					Callback = arg1.ActionCallback;
					Enabled = arg1.Enabled;
					OwnLike = any_Value_result1_upvr_2;
					Boosts = any_Value_result1_upvr_5;
					Likes = any_Value_result1_upvr_3;
				}), CreateButton_upvr({
					Action = "boost";
					Text = module_upvr.Computed(function() -- Line 267
						--[[ Upvalues[2]:
							[1]: any_Value_result1_upvr_5 (readonly)
							[2]: Utils_2_upvr (copied, readonly)
						]]
						local any_get_result1_3 = any_Value_result1_upvr_5:get()
						local var54 = 0
						if var54 < any_get_result1_3 then
							if 1 < any_get_result1_3 then
								var54 = "Boosts"
							else
								var54 = "Boost"
							end
							return Utils_2_upvr.toLocaleNumber(any_get_result1_3)..' '..var54
						end
						return "Boost"
					end, module_upvr.cleanup);
					Image = "rbxassetid://14110768489";
					Outfit = Data;
					Callback = arg1.ActionCallback;
					Enabled = arg1.Enabled;
					OwnLike = any_Value_result1_upvr_2;
					Boosts = any_Value_result1_upvr_5;
					Likes = any_Value_result1_upvr_3;
					TextSize = UDim2.fromScale(0.55, 0.8);
				})};
			}), CreateItemList_upvr(arg1.Items), module_upvr.New("TextLabel")({
				Name = "OutfitName";
				Text = Data.Name;
				TextColor3 = Color3.fromRGB(255, 255, 255);
				TextScaled = true;
				TextSize = 22;
				TextWrapped = true;
				TextXAlignment = Enum.TextXAlignment.Left;
				AnchorPoint = Vector2.new(0, 0.2);
				BackgroundColor3 = Color3.fromRGB(255, 255, 255);
				BackgroundTransparency = 1;
				Position = UDim2.fromScale(0, 0);
				Size = UDim2.fromScale(0.45, 0.2);
			}), module_upvr.New("ImageLabel")({
				Name = "Icon";
				AnchorPoint = Vector2.new(0, 0.5);
				Image = Players_upvr:GetUserThumbnailAsync(CreatorId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420) or nil;
				Position = UDim2.fromScale(0, 0.235);
				Size = UDim2.fromScale(0.2, 0.11);
				BackgroundTransparency = 0.5;
				BackgroundColor3 = Color3.new(1, 1, 1);
				[module_upvr.Children] = {module_upvr.New("UIAspectRatioConstraint")({}), module_upvr.New("UICorner")({
					Name = "UICorner";
					CornerRadius = UDim.new(1, 0);
				}), module_upvr.New("TextLabel")({
					Name = "Username";
					Text = module_upvr.Computed(function() -- Line 253
						--[[ Upvalues[1]:
							[1]: any_Value_result1_upvr_4 (readonly)
						]]
						return any_Value_result1_upvr_4:get()
					end, module_upvr.cleanup);
					TextColor3 = Color3.fromRGB(255, 255, 255);
					TextScaled = true;
					TextSize = 22;
					TextWrapped = true;
					RichText = true;
					TextXAlignment = Enum.TextXAlignment.Left;
					AnchorPoint = Vector2.new(0, 0.5);
					BackgroundColor3 = Color3.fromRGB(255, 255, 255);
					BackgroundTransparency = 1;
					Position = UDim2.fromScale(1.5, 0.5);
					Size = UDim2.fromScale(12, 1);
				})};
			})};
		}), CreateViewport_upvr(arg1.HumanoidDescription)};
	})}
	local var78 = module_upvr.New("Frame")(tbl)
	arg1.Feeds[Data_2.GUID] = {
		Name = var39;
		Frame = var78;
		PostedTime = CreatedAt;
		StringValue = any_Value_result1_upvr_4;
		Likes = any_Value_result1_upvr_3;
		Boosts = any_Value_result1_upvr_5;
		TryOns = module_upvr.Value(Data_2.TryOns or 0);
		Impressions = module_upvr.Value(Data_2.Impressions or 0);
		OwnLike = any_Value_result1_upvr_2;
	}
	return var78
end