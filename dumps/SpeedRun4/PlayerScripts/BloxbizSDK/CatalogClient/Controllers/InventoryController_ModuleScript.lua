-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:41:45
-- Luau version 6, Types version 3
-- Time taken: 0.006085 seconds

local Parent = script.Parent.Parent.Parent
local module_upvr_2 = require(Parent.CatalogClient.Classes:WaitForChild("InventoryHandler"))
local Utils = Parent:FindFirstChild("Utils")
local var3_2_upvr = require(Utils)
local module_upvr_3 = require(Utils:WaitForChild("Fusion"))
local Components = script.Parent.Parent.Components
local module_upvr_4 = {}
module_upvr_4.__index = module_upvr_4
local Value_upvr = module_upvr_3.Value
function module_upvr_4.new(arg1, arg2) -- Line 31
	--[[ Upvalues[2]:
		[1]: module_upvr_4 (readonly)
		[2]: Value_upvr (readonly)
	]]
	local setmetatable_result1 = setmetatable({}, module_upvr_4)
	setmetatable_result1.Enabled = false
	setmetatable_result1.Loaded = false
	setmetatable_result1.HasAccess = Value_upvr(false)
	setmetatable_result1.Loading = Value_upvr(false)
	setmetatable_result1.Container = arg1
	setmetatable_result1.Observers = {}
	local tbl = {}
	tbl.LoadingFrame = arg2
	setmetatable_result1.GuiObjects = tbl
	setmetatable_result1.CurrentSelectedItem = Value_upvr()
	setmetatable_result1.Content = {}
	setmetatable_result1.SelectedId = Value_upvr()
	return setmetatable_result1
end
local ListFrame_upvr = require(Components.ListFrame)
local EmptyState_upvr = require(Components.EmptyState)
local var13_upvw
local BloxbizRemotes_upvr = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes")
function module_upvr_4.Init(arg1, arg2) -- Line 53
	--[[ Upvalues[7]:
		[1]: ListFrame_upvr (readonly)
		[2]: EmptyState_upvr (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: var13_upvw (read and write)
		[5]: BloxbizRemotes_upvr (readonly)
		[6]: var3_2_upvr (readonly)
		[7]: module_upvr_2 (readonly)
	]]
	arg1.Controllers = arg2
	local ListFrame_upvr_result1, ListFrame_upvr_result2, ListFrame_upvr_result3 = ListFrame_upvr("Inventory Frame", true)
	ListFrame_upvr_result2.Visible = false
	arg1.GuiObjects.Frame = ListFrame_upvr_result1
	arg1.GuiObjects.ScrollingFrame = ListFrame_upvr_result2
	arg1.GuiObjects.ItemFrame = ListFrame_upvr_result3
	arg1.GuiObjects.EmptyStateFrame = EmptyState_upvr({
		Parent = ListFrame_upvr_result1;
		Text = "View inventory items by granting access.";
		BackgroundTransparency = 1;
		ButtonText = "Grant Access";
		Size = UDim2.fromScale(1, 0.8);
		Visible = module_upvr_3.Computed(function() -- Line 63
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return not (arg1.Loading:get() or arg1.HasAccess:get())
		end);
		Callback = function() -- Line 69, Named "Callback"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:RequestInventory()
		end;
	})
	var13_upvw = BloxbizRemotes_upvr:WaitForChild("CatalogOnPurchaseComplete")
	var13_upvw.OnClientEvent:Connect(function(arg1_2, arg2_2) -- Line 81
		--[[ Upvalues[2]:
			[1]: var3_2_upvr (copied, readonly)
			[2]: module_upvr_2 (copied, readonly)
		]]
		if arg2_2 then
			var3_2_upvr.pprint("Purchased", arg1_2)
			module_upvr_2.addAsset(arg1_2)
		end
	end)
	arg1:Disable()
end
function module_upvr_4.Start(arg1) -- Line 91
	arg1.GuiObjects.Frame.Parent = arg1.Container:WaitForChild("FrameContainer")
end
function module_upvr_4.Enable(arg1) -- Line 96
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	arg1.Enabled = true
	arg1.GuiObjects.Frame.Visible = true
	arg1.Controllers.TopBarController:ResetSearchBar()
	arg1.Controllers.OutfitFeedController:Disable()
	if module_upvr_2.hasAccess() and not arg1.Loaded then
		arg1.HasAccess:set(true)
		arg1:LoadItems()
	end
end
function module_upvr_4.Disable(arg1) -- Line 109
	arg1.Enabled = false
	arg1.GuiObjects.Frame.Visible = false
end
function module_upvr_4.RequestInventory(arg1) -- Line 114
	--[[ Upvalues[1]:
		[1]: module_upvr_2 (readonly)
	]]
	if arg1.Loaded then
	else
		arg1.GuiObjects.LoadingFrame.Visible = true
		arg1.Loading:set(true)
		local any_requestAccess_result1 = module_upvr_2.requestAccess()
		if any_requestAccess_result1 then
			arg1.HasAccess:set(true)
			arg1:LoadItems()
		end
		arg1.Loading:set(false)
		arg1.GuiObjects.LoadingFrame.Visible = false
		local GuiObjects = arg1.GuiObjects
		if any_requestAccess_result1 ~= true then
			GuiObjects = false
		else
			GuiObjects = true
		end
		GuiObjects.ScrollingFrame.Visible = GuiObjects
	end
end
local CatalogItem_upvr = require(Components.CatalogItem)
function module_upvr_4.LoadItems(arg1) -- Line 133
	--[[ Upvalues[3]:
		[1]: module_upvr_2 (readonly)
		[2]: var3_2_upvr (readonly)
		[3]: CatalogItem_upvr (readonly)
	]]
	if not module_upvr_2.hasAccess() then
	else
		arg1:ClearItemFrame()
		arg1.GuiObjects.LoadingFrame.Visible = true
		local any_values_result1 = var3_2_upvr.values(module_upvr_2.get())
		var3_2_upvr.sort(any_values_result1, function(arg1_3) -- Line 142
			return arg1_3.Name:lower()
		end)
		for _, v_2_upvr in pairs(any_values_result1) do
			local AvatarPreviewController_upvr = arg1.Controllers.AvatarPreviewController
			local var23_result1 = CatalogItem_upvr({
				Parent = arg1.GuiObjects.ItemFrame;
				AvatarPreviewController = AvatarPreviewController_upvr;
				ItemData = v_2_upvr;
				CategoryName = "Inventory";
				SourceBundleInfo = nil;
				OnTry = function() -- Line 155, Named "OnTry"
					--[[ Upvalues[2]:
						[1]: AvatarPreviewController_upvr (readonly)
						[2]: v_2_upvr (readonly)
					]]
					AvatarPreviewController_upvr.AddChange(AvatarPreviewController_upvr, v_2_upvr, "Inventory")
				end;
				SelectedId = arg1.SelectedId;
			})
			if var23_result1 then
				table.insert(arg1.Content, var23_result1)
			end
		end
		arg1.Loaded = true
		arg1.GuiObjects.LoadingFrame.Visible = false
	end
end
function module_upvr_4.ClearItemFrame(arg1) -- Line 170
	local ScrollingFrame = arg1.GuiObjects.ScrollingFrame
	if ScrollingFrame then
		ScrollingFrame.Visible = false
		ScrollingFrame.CanvasPosition = Vector2.new(0, 0)
		local any_get_result1 = arg1.CurrentSelectedItem:get()
		if any_get_result1 then
			for _, v in pairs(arg1.Content) do
				v.Parent = nil
			end
			if any_get_result1 then
				any_get_result1:set(false)
				arg1.CurrentSelectedItem:set(nil)
			end
		end
		ScrollingFrame.Visible = true
	end
end
local module_upvr = {}
function module_upvr_4.GetAvatarItemCache(arg1, arg2) -- Line 192
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	return module_upvr[arg2]
end
return module_upvr_4