-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:21
-- Luau version 6, Types version 3
-- Time taken: 0.005872 seconds

local Utils = script.Parent.Parent.Parent.Parent:FindFirstChild("Utils")
local module = require(Utils:WaitForChild("Fusion"))
local Computed_upvr = module.Computed
local module_2_upvr = {
	Save = {
		Image = "rbxassetid://13729958499";
	};
	Reset = {
		Text = "Reset";
		Image = "rbxassetid://13729954132";
	};
	Undo = {
		Text = "Undo";
		Image = "rbxassetid://13729949413";
	};
	Redo = {
		Text = "Redo";
		Image = "rbxassetid://13729823355";
	};
	Wearing = {
		Image = "rbxassetid://13733130817";
	};
	Outfits = {
		Image = "rbxassetid://13930689959";
	};
	Inventory = {
		Image = "rbxassetid://13730244296";
	};
	Body = {
		Image = "rbxassetid://14975667673";
	};
	Buy = {};
	Expand = {
		Image = "rbxassetid://15177304270";
	};
	Shrink = {
		Image = "rbxassetid://15177307285";
	};
}
local any_Value_result1_upvr = module.Value(Vector2.new(1280, 720))
game:GetService("RunService").RenderStepped:Connect(function() -- Line 67
	--[[ Upvalues[1]:
		[1]: any_Value_result1_upvr (readonly)
	]]
	if workspace.Camera.ViewportSize ~= any_Value_result1_upvr:get() then
		any_Value_result1_upvr:set(workspace.Camera.ViewportSize)
	end
end)
local module_3_upvr = require(Utils:WaitForChild("FusionProps"))
local Computed_upvr_result1_upvr = Computed_upvr(function() -- Line 74
	return 0
end)
local New_upvr = module.New
local Children_upvr = module.Children
local Button_upvr = require(script.Parent.Button)
local Utils_2_upvr = require(Utils)
return function(arg1) -- Line 78
	--[[ Upvalues[8]:
		[1]: module_3_upvr (readonly)
		[2]: Computed_upvr_result1_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: New_upvr (readonly)
		[5]: Children_upvr (readonly)
		[6]: Button_upvr (readonly)
		[7]: module_2_upvr (readonly)
		[8]: Utils_2_upvr (readonly)
	]]
	local any_GetValues_result1_upvw = module_3_upvr.GetValues(arg1, {
		Parent = module_3_upvr.Nil;
		Visible = true;
		FullScreen = false;
		OnFullScreen = module_3_upvr.Callback;
		OnSave = module_3_upvr.Nil;
		OnReset = module_3_upvr.Nil;
		OnUndo = module_3_upvr.Nil;
		OnRedo = module_3_upvr.Nil;
		OnOpenWearing = module_3_upvr.Nil;
		OnOpenOutfits = module_3_upvr.Nil;
		OnOpenInventory = module_3_upvr.Nil;
		OnOpenBody = module_3_upvr.Nil;
		OutfitsSelected = false;
		InventorySelected = false;
		BodySelected = false;
		UndoDisabled = false;
		RedoDisabled = false;
		SaveDisabled = false;
		WearingItems = module_3_upvr.Nil;
		WearingSelected = false;
		Position = UDim2.fromScale(0, 0);
		Size = UDim2.fromScale(1, 1);
		ButtonHeight = Computed_upvr_result1_upvr;
	})
	local ButtonHeight_upvr = any_GetValues_result1_upvw.ButtonHeight
	local Computed_upvr_result1 = Computed_upvr(function() -- Line 112
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		return UDim2.new(1, 0, 0, any_GetValues_result1_upvw.ButtonHeight:get())
	end)
	local Computed_upvr_result1_2 = Computed_upvr(function() -- Line 115
		--[[ Upvalues[1]:
			[1]: ButtonHeight_upvr (readonly)
		]]
		return UDim.new(0, ButtonHeight_upvr:get() / 5)
	end)
	local var4_result1 = Computed_upvr(function() -- Line 119
		--[[ Upvalues[1]:
			[1]: any_GetValues_result1_upvw (read and write)
		]]
		return not any_GetValues_result1_upvw.FullScreen:get()
	end)
	return New_upvr("Frame")({
		Name = "PreviewButtons";
		Parent = any_GetValues_result1_upvw.Parent;
		Position = any_GetValues_result1_upvw.Position;
		Size = any_GetValues_result1_upvw.Size;
		BackgroundTransparency = 1;
		ZIndex = 10;
		Visible = any_GetValues_result1_upvw.Visible;
		[Children_upvr] = {New_upvr("UIPadding")({
			PaddingBottom = UDim.new(0, 8);
			PaddingLeft = UDim.new(0, 8);
		}), New_upvr("Frame")({
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(0, 0);
			Position = UDim2.fromScale(0, 0);
			Size = Computed_upvr(function() -- Line 143
				--[[ Upvalues[1]:
					[1]: ButtonHeight_upvr (readonly)
				]]
				return UDim2.new(0.5, 0, 0, ButtonHeight_upvr:get())
			end);
			Visible = var4_result1;
			[Children_upvr] = {New_upvr("UIListLayout")({
				Padding = Computed_upvr_result1_2;
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
			}), Button_upvr({
				Size = Computed_upvr_result1;
				Icon = module_2_upvr.Outfits.Image;
				Text = "Outfits";
				OnClick = any_GetValues_result1_upvw.OnOpenOutfits;
				Selected = any_GetValues_result1_upvw.OutfitsSelected;
			}), Button_upvr({
				Size = Computed_upvr_result1;
				Icon = module_2_upvr.Inventory.Image;
				Text = "Inventory";
				OnClick = any_GetValues_result1_upvw.OnOpenInventory;
				Selected = any_GetValues_result1_upvw.InventorySelected;
			}), Button_upvr({
				Size = Computed_upvr_result1;
				Icon = module_2_upvr.Body.Image;
				Text = "Body";
				OnClick = any_GetValues_result1_upvw.OnOpenBody;
				Selected = any_GetValues_result1_upvw.BodySelected;
			})};
		}), New_upvr("Frame")({
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(1, 0);
			Position = UDim2.fromScale(1, 0);
			Size = UDim2.fromScale(0.4, 0.5);
			Visible = var4_result1;
			[Children_upvr] = {New_upvr("UIListLayout")({
				Padding = UDim.new(0, 8);
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Right;
			}), Button_upvr({
				Size = Computed_upvr_result1;
				Icon = module_2_upvr.Wearing.Image;
				Count = Computed_upvr(function() -- Line 201
					--[[ Upvalues[2]:
						[1]: Utils_2_upvr (copied, readonly)
						[2]: any_GetValues_result1_upvw (read and write)
					]]
					local any_get_result1 = any_GetValues_result1_upvw.WearingItems:get()
					if not any_get_result1 then
						any_get_result1 = {}
					end
					return Utils_2_upvr.getArraySize(any_get_result1)
				end);
				OnClick = any_GetValues_result1_upvw.OnOpenWearing;
				Alignment = "Right";
				Selected = any_GetValues_result1_upvw.WearingSelected;
			})};
		}), New_upvr("Frame")({
			BackgroundTransparency = 1;
			AnchorPoint = Vector2.new(0.5, 1);
			Position = UDim2.fromScale(0.5, 1);
			Size = Computed_upvr(function() -- Line 216
				--[[ Upvalues[1]:
					[1]: ButtonHeight_upvr (readonly)
				]]
				return UDim2.fromOffset(ButtonHeight_upvr:get() * 5 + 24, ButtonHeight_upvr:get())
			end);
			AutomaticSize = Enum.AutomaticSize.X;
			[Children_upvr] = {New_upvr("UIListLayout")({
				Padding = Computed_upvr_result1_2;
				SortOrder = Enum.SortOrder.LayoutOrder;
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			}), Button_upvr({
				Size = Computed_upvr_result1;
				Icon = module_2_upvr.Undo.Image;
				Text = module_2_upvr.Undo.Text;
				OnClick = any_GetValues_result1_upvw.OnUndo;
				Disabled = any_GetValues_result1_upvw.UndoDisabled;
				Visible = var4_result1;
			}), Button_upvr({
				Size = Computed_upvr_result1;
				Icon = module_2_upvr.Redo.Image;
				Text = module_2_upvr.Redo.Text;
				OnClick = any_GetValues_result1_upvw.OnRedo;
				Disabled = any_GetValues_result1_upvw.RedoDisabled;
				Visible = var4_result1;
			}), Button_upvr({
				Size = Computed_upvr_result1;
				Icon = module_2_upvr.Reset.Image;
				Text = module_2_upvr.Reset.Text;
				OnClick = any_GetValues_result1_upvw.OnReset;
				Visible = var4_result1;
			}), Button_upvr({
				Size = Computed_upvr_result1;
				Icon = module_2_upvr.Save.Image;
				Text = Computed_upvr(function() -- Line 262
					--[[ Upvalues[1]:
						[1]: any_GetValues_result1_upvw (read and write)
					]]
					if any_GetValues_result1_upvw.SaveDisabled:get() then
						return "Saved"
					end
					return "Save"
				end);
				Disabled = any_GetValues_result1_upvw.SaveDisabled;
				OnClick = any_GetValues_result1_upvw.OnSave;
				Visible = var4_result1;
			}), Button_upvr({
				Size = Computed_upvr_result1;
				Icon = Computed_upvr(function() -- Line 276
					--[[ Upvalues[2]:
						[1]: any_GetValues_result1_upvw (read and write)
						[2]: module_2_upvr (copied, readonly)
					]]
					if any_GetValues_result1_upvw.FullScreen:get() then
						return module_2_upvr.Shrink.Image
					end
					return module_2_upvr.Expand.Image
				end);
				IconSize = 0.8;
				OnClick = function() -- Line 284, Named "OnClick"
					--[[ Upvalues[1]:
						[1]: any_GetValues_result1_upvw (read and write)
					]]
					any_GetValues_result1_upvw.OnFullScreen:get()(not any_GetValues_result1_upvw.FullScreen:get())
				end;
			})};
		})};
	})
end