-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:10:03
-- Luau version 6, Types version 3
-- Time taken: 0.012655 seconds

local HttpService_upvr = game:GetService("HttpService")
local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
local AvatarHandler_upvr = require(script.Parent.Parent.Classes.AvatarHandler)
local DataHandler_upvr = require(script.Parent.Parent.Classes.DataHandler)
local InventoryHandler_upvr = require(script.Parent.Parent.Classes.InventoryHandler)
local CatalogOnDeleteOutfit_upvr = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes"):WaitForChild("CatalogOnDeleteOutfit")
local Utils = script.Parent.Parent.Parent:FindFirstChild("Utils")
local var7_2_upvr = require(Utils)
local module_upvr_2 = require(Utils:WaitForChild("Fusion"))
local module_upvr = require(Utils:WaitForChild("Promise"))
local Value_upvr = module_upvr_2.Value
local Components = script.Parent.Parent.Components
local module_upvr_3 = {}
module_upvr_3.__index = module_upvr_3
function module_upvr_3.new(arg1) -- Line 42
	--[[ Upvalues[2]:
		[1]: module_upvr_3 (readonly)
		[2]: Value_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr_3)
	setmetatable_result1.Enabled = false
	setmetatable_result1.Container = arg1
	setmetatable_result1.Observers = {}
	setmetatable_result1.GuiObjects = {}
	setmetatable_result1.CurrentSelected = Value_upvr()
	setmetatable_result1.Debounces = {}
	setmetatable_result1.LoadedRobloxOutfits = false
	setmetatable_result1.RequestPermFailed = false
	setmetatable_result1.Outfits = Value_upvr({})
	setmetatable_result1.VisibleSet = Value_upvr({})
	return setmetatable_result1
end
local Computed_upvr = module_upvr_2.Computed
local New_upvr = module_upvr_2.New
local Out_upvr = module_upvr_2.Out
local Children_upvr = module_upvr_2.Children
local Sort_upvr = require(Components.ContentFrame.Sort)
local Button_upvr = require(script.Button)
local EmptyState_upvr = require(Components.EmptyState)
local ItemGrid_upvr = require(Components.ItemGrid)
local ForValues_upvr = module_upvr_2.ForValues
local OutfitsItemFrame_upvr = require(Components.OutfitsItemFrame)
function module_upvr_3.Init(arg1, arg2) -- Line 62
	--[[ Upvalues[18]:
		[1]: Value_upvr (readonly)
		[2]: Computed_upvr (readonly)
		[3]: var7_2_upvr (readonly)
		[4]: New_upvr (readonly)
		[5]: Out_upvr (readonly)
		[6]: Children_upvr (readonly)
		[7]: Sort_upvr (readonly)
		[8]: module_upvr_2 (readonly)
		[9]: Button_upvr (readonly)
		[10]: AvatarHandler_upvr (readonly)
		[11]: AvatarEditorService_upvr (readonly)
		[12]: EmptyState_upvr (readonly)
		[13]: ItemGrid_upvr (readonly)
		[14]: ForValues_upvr (readonly)
		[15]: CatalogOnDeleteOutfit_upvr (readonly)
		[16]: OutfitsItemFrame_upvr (readonly)
		[17]: InventoryHandler_upvr (readonly)
		[18]: HttpService_upvr (readonly)
	]]
	arg1.Controllers = arg2
	arg1.Enabled = arg2.NavigationController:GetEnabledComputed("OutfitsController")
	arg1.CurrentTab = Value_upvr("all")
	local var15_result1_upvr = Computed_upvr(function() -- Line 72
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var7_2_upvr (copied, readonly)
		]]
		local any_get_result1_8_upvr = arg1.CurrentTab:get()
		local var28
		if var7_2_upvr.count(var7_2_upvr.values(arg1.Outfits:get()), function(arg1_2) -- Line 76
			--[[ Upvalues[1]:
				[1]: any_get_result1_8_upvr (readonly)
			]]
			if any_get_result1_8_upvr == "game" and arg1_2.isRoblox:get() then
				return false
			end
			if any_get_result1_8_upvr == "roblox" and not arg1_2.isRoblox:get() then
				return false
			end
			return true
		end) ~= 0 then
			var28 = false
		else
			var28 = true
		end
		return var28
	end)
	local Value_upvr_result1_upvr = Value_upvr(Vector2.zero)
	local var11_result1_upvr = Value_upvr(Vector2.zero)
	local tbl_10 = {
		Parent = arg1.Container:WaitForChild("FrameContainer");
		Name = "Outfits";
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
		Visible = arg1.Enabled;
		[Out_upvr("AbsoluteSize")] = Value_upvr(Vector2.zero);
	}
	local tbl_2 = {}
	local tbl_5 = {
		Position = UDim2.fromOffset(0, 1);
		Size = UDim2.fromScale(1, 0.04);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		BackgroundTransparency = 1;
		[Out_upvr("AbsoluteSize")] = var11_result1_upvr;
	}
	local tbl_4 = {}
	local tbl_3 = {
		BackgroundTransparency = 1;
		Position = UDim2.fromScale(1, 0.5);
		AnchorPoint = Vector2.new(1, 0.5);
		Size = UDim2.fromScale(0.5, 1);
		[module_upvr_2.Out("AbsoluteSize")] = Value_upvr_result1_upvr;
	}
	local tbl_7 = {}
	local tbl = {
		Icon = "rbxassetid://14914253209";
		Text = "Save to Roblox";
		LayoutOrder = 1;
	}
	local function OnClick() -- Line 162
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:SaveCurrentOutfitToRoblox()
	end
	tbl.OnClick = OnClick
	tbl.MaxWidth = Computed_upvr(function() -- Line 165
		--[[ Upvalues[2]:
			[1]: Value_upvr_result1_upvr (readonly)
			[2]: arg1 (readonly)
		]]
		return Value_upvr_result1_upvr:get().X / 2 - arg1.Controllers.TopBarController.TopBarHeight:get() / 2 + 3
	end)
	tbl_7[1] = New_upvr("UIListLayout")({
		FillDirection = Enum.FillDirection.Horizontal;
		HorizontalAlignment = Enum.HorizontalAlignment.Right;
		VerticalAlignment = Enum.VerticalAlignment.Center;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = Computed_upvr(function() -- Line 150
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return UDim.new(0, arg1.Controllers.TopBarController.TopBarHeight:get() / 8 + 3)
		end);
	})
	tbl_7[2] = New_upvr("UIPadding")({
		PaddingRight = UDim.new(0, 1.5);
	})
	tbl_7[3] = Button_upvr(tbl)
	tbl_7[4] = Button_upvr({
		Icon = "rbxassetid://14914253209";
		Text = "Update Avatar";
		LayoutOrder = 2;
		OnClick = function() -- Line 174, Named "OnClick"
			--[[ Upvalues[4]:
				[1]: arg1 (readonly)
				[2]: AvatarHandler_upvr (copied, readonly)
				[3]: AvatarEditorService_upvr (copied, readonly)
				[4]: var7_2_upvr (copied, readonly)
			]]
			local any_GetOutfit_result1, any_GetOutfit_result2_2 = arg1.Controllers.AvatarPreviewController:GetOutfit()
			local any_RemoveUnownedItems_result1, _ = arg1:RemoveUnownedItems(any_GetOutfit_result1)
			local any_OutfitToHumDesc_result1 = AvatarHandler_upvr.OutfitToHumDesc(any_RemoveUnownedItems_result1, any_GetOutfit_result2_2:GetAppliedDescription())
			any_OutfitToHumDesc_result1.Parent = workspace
			AvatarEditorService_upvr:PromptSaveAvatar(any_OutfitToHumDesc_result1, Enum.HumanoidRigType.R15)
			local any_Wait_result1, any_Wait_result2 = AvatarEditorService_upvr.PromptSaveAvatarCompleted:Wait()
			var7_2_upvr.pprint(any_Wait_result1)
			var7_2_upvr.pprint(any_Wait_result2)
		end;
		MaxWidth = Computed_upvr(function() -- Line 187
			--[[ Upvalues[2]:
				[1]: Value_upvr_result1_upvr (readonly)
				[2]: arg1 (readonly)
			]]
			return Value_upvr_result1_upvr:get().X / 2 - arg1.Controllers.TopBarController.TopBarHeight:get() / 8 + 3
		end);
	})
	tbl_3[Children_upvr] = tbl_7
	tbl_4[1] = Sort_upvr({
		Size = UDim2.fromScale(0.5, 0.9);
		Buttons = {{
			Text = "Saved Outfits";
			Data = {};
			Id = "all";
		}, {
			Text = "This Game";
			Data = {};
			Id = "game";
		}, {
			Text = "Roblox Outfits";
			Data = {};
			Id = "roblox";
		}};
		Selected = arg1.CurrentTab;
	})
	tbl_4[2] = New_upvr("Frame")(tbl_3)
	tbl_5[Children_upvr] = tbl_4
	tbl_2[1] = New_upvr("Frame")(tbl_5)
	tbl_2[2] = New_upvr("Frame")({
		AnchorPoint = Vector2.new(0, 1);
		Position = UDim2.fromScale(0, 1);
		Size = Computed_upvr(function() -- Line 199
			--[[ Upvalues[1]:
				[1]: var11_result1_upvr (readonly)
			]]
			return UDim2.new(1, 0, 1, -var11_result1_upvr:get().Y * 1.2 - 3)
		end);
		BackgroundTransparency = 1;
		[Children_upvr] = {EmptyState_upvr({
			Size = UDim2.fromScale(1, 0.8);
			BackgroundTransparency = 1;
			Visible = var15_result1_upvr;
			Text = Computed_upvr(function() -- Line 212
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				local any_get_result1 = arg1.CurrentTab:get()
				if any_get_result1 == "all" then
					return "You don't have any outfits saved yet."
				end
				if any_get_result1 == "game" then
					return "You don't have any outfits saved to this game."
				end
				if any_get_result1 == "roblox" then
					return "You don't have any outfits in your Roblox inventory."
				end
			end);
			ButtonText = Computed_upvr(function() -- Line 223
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				local any_get_result1_2 = arg1.CurrentTab:get()
				if any_get_result1_2 == "all" then
					return "Save Outfit"
				end
				if any_get_result1_2 == "game" then
					return "Save Outfit"
				end
				if any_get_result1_2 == "roblox" then
					return "Save to Roblox"
				end
			end);
			Callback = function() -- Line 235, Named "Callback"
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				if arg1.CurrentTab:get() ~= "roblox" then
					arg1.Controllers.AvatarPreviewController:SaveChange()
				else
					arg1:SaveCurrentOutfitToRoblox()
				end
			end;
		}), ItemGrid_upvr({
			Gap = Computed_upvr(function() -- Line 247
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				return arg1.Controllers.TopBarController.TopBarHeight:get() / 8
			end);
			Columns = 4;
			Visible = Computed_upvr(function() -- Line 252
				--[[ Upvalues[1]:
					[1]: var15_result1_upvr (readonly)
				]]
				return not var15_result1_upvr:get()
			end);
			[Children_upvr] = ForValues_upvr(arg1.Outfits, function(arg1_3) -- Line 256
				--[[ Upvalues[10]:
					[1]: CatalogOnDeleteOutfit_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: OutfitsItemFrame_upvr (copied, readonly)
					[4]: module_upvr_2 (copied, readonly)
					[5]: Computed_upvr (copied, readonly)
					[6]: InventoryHandler_upvr (copied, readonly)
					[7]: AvatarHandler_upvr (copied, readonly)
					[8]: AvatarEditorService_upvr (copied, readonly)
					[9]: var7_2_upvr (copied, readonly)
					[10]: HttpService_upvr (copied, readonly)
				]]
				local id_upvr = arg1_3.id
				local var70_upvw
				local function _() -- Line 260, Named "delete"
					--[[ Upvalues[4]:
						[1]: var70_upvw (read and write)
						[2]: CatalogOnDeleteOutfit_upvr (copied, readonly)
						[3]: id_upvr (readonly)
						[4]: arg1 (copied, readonly)
					]]
					var70_upvw = true
					CatalogOnDeleteOutfit_upvr:FireServer(id_upvr)
					arg1.CurrentSelected:set(nil)
					local any_get_result1_9 = arg1.Outfits:get()
					any_get_result1_9[id_upvr] = nil
					arg1.Outfits:set(any_get_result1_9)
					var70_upvw = false
				end
				local isRoblox_upvr = arg1_3.isRoblox
				return OutfitsItemFrame_upvr({
					Outfit = arg1_3.data;
					IsRoblox = isRoblox_upvr;
					Selected = module_upvr_2.Computed(function() -- Line 279
						--[[ Upvalues[2]:
							[1]: arg1 (copied, readonly)
							[2]: id_upvr (readonly)
						]]
						local var75
						if arg1.CurrentSelected:get() ~= id_upvr then
							var75 = false
						else
							var75 = true
						end
						return var75
					end);
					Visible = Computed_upvr(function() -- Line 283
						--[[ Upvalues[2]:
							[1]: arg1 (copied, readonly)
							[2]: isRoblox_upvr (readonly)
						]]
						local any_get_result1_5 = arg1.CurrentTab:get()
						if any_get_result1_5 == "game" and isRoblox_upvr:get() then
							return false
						end
						if any_get_result1_5 == "roblox" and not isRoblox_upvr:get() then
							return false
						end
						return true
					end);
					OnTry = function(arg1_4) -- Line 294, Named "OnTry"
						--[[ Upvalues[2]:
							[1]: arg1 (copied, readonly)
							[2]: arg1_3 (readonly)
						]]
						arg1.Controllers.AvatarPreviewController:ApplyOutfit(arg1_3.data, arg1_4)
					end;
					OnDelete = module_upvr_2.Computed(function() -- Line 298
						--[[ Upvalues[5]:
							[1]: isRoblox_upvr (readonly)
							[2]: var70_upvw (read and write)
							[3]: CatalogOnDeleteOutfit_upvr (copied, readonly)
							[4]: id_upvr (readonly)
							[5]: arg1 (copied, readonly)
						]]
						if not isRoblox_upvr:get() then
							return function() -- Line 300
								--[[ Upvalues[4]:
									[1]: var70_upvw (copied, read and write)
									[2]: CatalogOnDeleteOutfit_upvr (copied, readonly)
									[3]: id_upvr (copied, readonly)
									[4]: arg1 (copied, readonly)
								]]
								if not var70_upvw then
									var70_upvw = true
									CatalogOnDeleteOutfit_upvr:FireServer(id_upvr)
									arg1.CurrentSelected:set(nil)
									local any_get_result1_7 = arg1.Outfits:get()
									any_get_result1_7[id_upvr] = nil
									arg1.Outfits:set(any_get_result1_7)
									var70_upvw = false
								end
							end
						end
					end);
					OnSaveToRoblox = module_upvr_2.Computed(function() -- Line 308
						--[[ Upvalues[10]:
							[1]: isRoblox_upvr (readonly)
							[2]: arg1 (copied, readonly)
							[3]: arg1_3 (readonly)
							[4]: InventoryHandler_upvr (copied, readonly)
							[5]: AvatarHandler_upvr (copied, readonly)
							[6]: AvatarEditorService_upvr (copied, readonly)
							[7]: var7_2_upvr (copied, readonly)
							[8]: HttpService_upvr (copied, readonly)
							[9]: CatalogOnDeleteOutfit_upvr (copied, readonly)
							[10]: id_upvr (readonly)
						]]
						if not isRoblox_upvr:get() then
							return function(arg1_5) -- Line 310
								--[[ Upvalues[10]:
									[1]: arg1 (copied, readonly)
									[2]: arg1_3 (copied, readonly)
									[3]: InventoryHandler_upvr (copied, readonly)
									[4]: AvatarHandler_upvr (copied, readonly)
									[5]: AvatarEditorService_upvr (copied, readonly)
									[6]: var7_2_upvr (copied, readonly)
									[7]: HttpService_upvr (copied, readonly)
									[8]: isRoblox_upvr (copied, readonly)
									[9]: CatalogOnDeleteOutfit_upvr (copied, readonly)
									[10]: id_upvr (copied, readonly)
								]]
								local any_RemoveUnownedItems_result1_3, any_RemoveUnownedItems_result2 = arg1:RemoveUnownedItems(arg1_3.data)
								local var85
								if 0 >= #any_RemoveUnownedItems_result2 then
									var85 = false
								else
									var85 = true
								end
								local function INLINED() -- Internal function, doesn't exist in bytecode
									var7_2_upvr.pprint(any_Wait_result2_3)
									var7_2_upvr.pprint(any_Wait_result1_2)
									local any_Wait_result1_2, any_Wait_result2_3 = AvatarEditorService_upvr.PromptCreateOutfitCompleted:Wait()
									AvatarEditorService_upvr:PromptCreateOutfit(any_OutfitToHumDesc_result1_2, Enum.HumanoidRigType.R15)
									any_OutfitToHumDesc_result1_2.Parent = workspace
									local any_OutfitToHumDesc_result1_2 = AvatarHandler_upvr.OutfitToHumDesc(any_RemoveUnownedItems_result1_3, arg1_5:GetAppliedDescription())
									return any_Wait_result1_2 == Enum.AvatarPromptResult.Success
								end
								if InventoryHandler_upvr.hasAccess() or InventoryHandler_upvr.requestAccess() or INLINED() then
									if var85 then
										arg1:LoadOutfit(HttpService_upvr:GenerateGUID(), any_RemoveUnownedItems_result1_3, true)
										return
									end
									isRoblox_upvr:set(true)
									CatalogOnDeleteOutfit_upvr:FireServer(id_upvr)
								end
							end
						end
					end);
					OnActivated = function() -- Line 340, Named "OnActivated"
						--[[ Upvalues[2]:
							[1]: arg1 (copied, readonly)
							[2]: id_upvr (readonly)
						]]
						if arg1.CurrentSelected:get() == id_upvr then
							arg1.CurrentSelected:set(nil)
						else
							arg1.CurrentSelected:set(id_upvr)
						end
					end;
				}).Instance
			end, module_upvr_2.cleanup);
		})};
	})
	tbl_10[Children_upvr] = tbl_2
	New_upvr("Frame")(tbl_10)
	arg1:Disable()
end
function module_upvr_3.Start(arg1) -- Line 362
	--[[ Upvalues[1]:
		[1]: DataHandler_upvr (readonly)
	]]
	arg1:GetSavedOutfits()
	DataHandler_upvr.DataChanged.Event:Connect(function(arg1_6, arg2) -- Line 365
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_6 ~= "Outfits" then
		else
			arg1:LoadOutfit(arg2.InnerKey, arg2.InnerValue)
		end
	end)
end
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local Players_upvr = game:GetService("Players")
function module_upvr_3.RemoveUnownedItems(arg1, arg2) -- Line 374
	--[[ Upvalues[4]:
		[1]: var7_2_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: MarketplaceService_upvr (readonly)
		[4]: Players_upvr (readonly)
	]]
	local tbl_9 = {}
	for i, _ in pairs(arg2) do
		if i ~= "BodyColors" then
			table.insert(tbl_9, tonumber(i))
		end
	end
	local _, any_await_result2 = module_upvr.all(var7_2_upvr.map(tbl_9, function(arg1_7) -- Line 383
		--[[ Upvalues[3]:
			[1]: module_upvr (copied, readonly)
			[2]: MarketplaceService_upvr (copied, readonly)
			[3]: Players_upvr (copied, readonly)
		]]
		return module_upvr.new(function(arg1_8) -- Line 384
			--[[ Upvalues[3]:
				[1]: MarketplaceService_upvr (copied, readonly)
				[2]: Players_upvr (copied, readonly)
				[3]: arg1_7 (readonly)
			]]
			arg1_8(MarketplaceService_upvr:PlayerOwnsAsset(Players_upvr.LocalPlayer, arg1_7))
		end)
	end)):await()
	for i_2, v_2 in ipairs(tbl_9) do
		if not any_await_result2[i_2] then
			var7_2_upvr.deepCopy(arg2)[tostring(v_2)] = nil
			table.insert({}, v_2)
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
	return var7_2_upvr.deepCopy(arg2), {}
end
function module_upvr_3.SaveCurrentOutfitToRoblox(arg1) -- Line 403
	--[[ Upvalues[6]:
		[1]: InventoryHandler_upvr (readonly)
		[2]: AvatarHandler_upvr (readonly)
		[3]: AvatarEditorService_upvr (readonly)
		[4]: var7_2_upvr (readonly)
		[5]: CatalogOnDeleteOutfit_upvr (readonly)
		[6]: HttpService_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_GetOutfit_result1_2, any_GetOutfit_result2 = arg1.Controllers.AvatarPreviewController:GetOutfit()
	local any_RemoveUnownedItems_result1_2, _ = arg1:RemoveUnownedItems(any_GetOutfit_result1_2)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [16] 12. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 16. Error Block 15 start (CF ANALYSIS FAILED)
	local any_OutfitToHumDesc_result1_3 = AvatarHandler_upvr.OutfitToHumDesc(any_RemoveUnownedItems_result1_2, any_GetOutfit_result2:GetAppliedDescription())
	any_OutfitToHumDesc_result1_3.Parent = workspace
	AvatarEditorService_upvr:PromptCreateOutfit(any_OutfitToHumDesc_result1_3, Enum.HumanoidRigType.R15)
	local any_Wait_result1_3, any_Wait_result2_2 = AvatarEditorService_upvr.PromptCreateOutfitCompleted:Wait()
	var7_2_upvr.pprint(any_Wait_result1_3)
	var7_2_upvr.pprint(any_Wait_result2_2)
	-- KONSTANTERROR: [21] 16. Error Block 15 end (CF ANALYSIS FAILED)
end
function module_upvr_3.LoadOutfit(arg1, arg2, arg3, arg4) -- Line 443
	--[[ Upvalues[1]:
		[1]: Value_upvr (readonly)
	]]
	if not arg2 or not arg3 then
	else
		local any_get_result1_4 = arg1.Outfits:get()
		local tbl_8 = {
			isRoblox = Value_upvr(arg4 or false);
		}
		tbl_8.data = arg3
		tbl_8.id = tostring(arg2)
		any_get_result1_4[tostring(arg2)] = tbl_8
		arg1.Outfits:set(any_get_result1_4)
	end
end
function module_upvr_3.ShowFrame(arg1, arg2) -- Line 458
	arg1.GuiObjects.ScrollingFrame.Visible = arg2
end
function module_upvr_3.GetSavedOutfits(arg1) -- Line 462
	--[[ Upvalues[2]:
		[1]: DataHandler_upvr (readonly)
		[2]: Value_upvr (readonly)
	]]
	local any_get_result1_6 = arg1.Outfits:get()
	for i_3, v_3 in pairs(DataHandler_upvr.GetData("Outfits")) do
		any_get_result1_6[tostring(i_3)] = {
			isRoblox = Value_upvr(false);
			data = v_3;
			id = tostring(i_3);
		}
	end
	arg1.Outfits:set(any_get_result1_6)
end
function module_upvr_3.LoadRobloxOutfits(arg1) -- Line 478
	--[[ Upvalues[5]:
		[1]: AvatarEditorService_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: var7_2_upvr (readonly)
		[4]: AvatarHandler_upvr (readonly)
		[5]: Value_upvr (readonly)
	]]
	if arg1.LoadedRobloxOutfits then
	else
		local any_GetOutfits_result1 = AvatarEditorService_upvr:GetOutfits(Enum.OutfitSource.Created)
		while not false do
			for _, v_4_upvr in any_GetOutfits_result1:GetCurrentPage(), nil do
				if v_4_upvr.IsEditable then
					local any_get_result1_3_upvr = arg1.Outfits:get()
					table.insert({}, module_upvr.new(function(arg1_9) -- Line 496
						--[[ Upvalues[7]:
							[1]: AvatarEditorService_upvr (copied, readonly)
							[2]: v_4_upvr (readonly)
							[3]: var7_2_upvr (copied, readonly)
							[4]: AvatarHandler_upvr (copied, readonly)
							[5]: any_get_result1_3_upvr (readonly)
							[6]: Value_upvr (copied, readonly)
							[7]: arg1 (readonly)
						]]
						local any_GetOutfitDetails_result1 = AvatarEditorService_upvr:GetOutfitDetails(v_4_upvr.Id)
						local tbl_6 = {
							BodyColors = any_GetOutfitDetails_result1.BodyColors;
						}
						for _, v_5 in ipairs(any_GetOutfitDetails_result1.Assets) do
							tbl_6[tostring(v_5.Id)] = var7_2_upvr.deepCopy(AvatarHandler_upvr.GetItemDataTable(v_5.Id))
							if v_5.Meta then
								tbl_6[tostring(v_5.Id)].Order = v_5.Meta.Order
							end
						end
						any_get_result1_3_upvr[tostring(v_4_upvr.Id)] = {
							isRoblox = Value_upvr(true);
							data = tbl_6;
							id = tostring(v_4_upvr.Id);
						}
						arg1.Outfits:set(any_get_result1_3_upvr)
						arg1_9()
					end))
				end
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			module_upvr.all({}):andThen(function() -- Line 523
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.Controllers.AvatarPreviewController:UpdateSaveButton()
			end):catch(warn)
			if not any_GetOutfits_result1.IsFinished then
				any_GetOutfits_result1:AdvanceToNextPageAsync()
			end
		end
		arg1.LoadedRobloxOutfits = true
	end
end
function module_upvr_3.Enable(arg1) -- Line 538
	--[[ Upvalues[1]:
		[1]: InventoryHandler_upvr (readonly)
	]]
	arg1.Controllers.TopBarController:ResetSearchBar()
	arg1.Controllers.OutfitFeedController:Disable()
	task.spawn(function() -- Line 542
		--[[ Upvalues[2]:
			[1]: InventoryHandler_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		if InventoryHandler_upvr.hasAccess() or not arg1.RequestPermFailed then
			if not arg1.LoadedRobloxOutfits then
				arg1.RequestPermFailed = not InventoryHandler_upvr.requestAccess()
				if not arg1.RequestPermFailed then
					arg1:LoadRobloxOutfits()
				end
			end
		end
	end)
end
function module_upvr_3.Disable(arg1) -- Line 553
end
return module_upvr_3