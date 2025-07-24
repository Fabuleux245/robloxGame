-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:41:39
-- Luau version 6, Types version 3
-- Time taken: 0.008204 seconds

local MarketplaceService_upvr = game:GetService("MarketplaceService")
local Parent = script.Parent.Parent.Parent
local Utils = Parent:FindFirstChild("Utils")
local var3_2_upvr = require(Utils)
local module_upvr = require(Utils:WaitForChild("Fusion"))
local var6_upvw
local var7_upvw
local Computed_upvr = module_upvr.Computed
local Components = Parent:WaitForChild("CatalogClient").Components
local tbl_upvr = {27, 28, 29, 30, 31, 79}
local module_upvr_3 = {}
module_upvr_3.__index = module_upvr_3
local Value_upvr = module_upvr.Value
local BloxbizRemotes_upvr = game:GetService("ReplicatedStorage"):WaitForChild("BloxbizRemotes")
function module_upvr_3.new(arg1) -- Line 41
	--[[ Upvalues[6]:
		[1]: module_upvr_3 (readonly)
		[2]: Value_upvr (readonly)
		[3]: Computed_upvr (readonly)
		[4]: var6_upvw (read and write)
		[5]: BloxbizRemotes_upvr (readonly)
		[6]: var7_upvw (read and write)
	]]
	local setmetatable_result1_upvr = setmetatable({}, module_upvr_3)
	setmetatable_result1_upvr.Container = arg1
	setmetatable_result1_upvr.Outfit = Value_upvr(nil)
	setmetatable_result1_upvr.Error = Value_upvr(nil)
	setmetatable_result1_upvr.Loading = Computed_upvr(function() -- Line 48
		--[[ Upvalues[1]:
			[1]: setmetatable_result1_upvr (readonly)
		]]
		return not (setmetatable_result1_upvr.Outfit:get() or setmetatable_result1_upvr.Error:get())
	end)
	var6_upvw = BloxbizRemotes_upvr:WaitForChild("CatalogOnPromptPurchase")
	var7_upvw = BloxbizRemotes_upvr:WaitForChild("catalogItemPromptEvent")
	return setmetatable_result1_upvr
end
local Modal_upvr = require(script.Modal)
local Children_upvr = module_upvr.Children
local LoadingFrame_upvr = require(Components.LoadingFrame)
local ItemGrid_upvr = require(Components.ItemGrid)
local ForValues_upvr = module_upvr.ForValues
local Item_upvr = require(script.Item)
function module_upvr_3.Init(arg1, arg2) -- Line 61
	--[[ Upvalues[12]:
		[1]: Computed_upvr (readonly)
		[2]: Modal_upvr (readonly)
		[3]: var3_2_upvr (readonly)
		[4]: Children_upvr (readonly)
		[5]: LoadingFrame_upvr (readonly)
		[6]: ItemGrid_upvr (readonly)
		[7]: ForValues_upvr (readonly)
		[8]: Item_upvr (readonly)
		[9]: var7_upvw (read and write)
		[10]: var6_upvw (read and write)
		[11]: MarketplaceService_upvr (readonly)
		[12]: module_upvr (readonly)
	]]
	arg1.Controllers = arg2
	arg1.Enabled = arg1.Controllers.NavigationController:GetEnabledComputed("BuyOutfitController")
	local TopBarHeight_upvr = arg1.Controllers.TopBarController.TopBarHeight
	local var8_result1_upvr = Computed_upvr(function() -- Line 66
		--[[ Upvalues[1]:
			[1]: TopBarHeight_upvr (readonly)
		]]
		return TopBarHeight_upvr:get() / 1.5
	end)
	local function _() -- Line 69
		--[[ Upvalues[1]:
			[1]: var8_result1_upvr (readonly)
		]]
		return UDim.new(0, var8_result1_upvr:get())
	end
	local tbl = {
		Parent = arg1.Container;
		Visible = arg1.Enabled;
		SizeStandard = TopBarHeight_upvr;
	}
	local function OnClose() -- Line 77
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:Disable()
	end
	tbl.OnClose = OnClose
	tbl.RemainingPrice = Computed_upvr(function() -- Line 81
		--[[ Upvalues[2]:
			[1]: var3_2_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return var3_2_upvr.sum(arg1.Outfit:get(), function(arg1_2) -- Line 82
			if arg1_2.Purchased then
				return 0
			end
			return arg1_2.Price or 0
		end)
	end)
	tbl.TotalPrice = Computed_upvr(function() -- Line 86
		--[[ Upvalues[2]:
			[1]: var3_2_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return var3_2_upvr.sum(arg1.Outfit:get(), function(arg1_3) -- Line 87
			return arg1_3.Price or 0
		end)
	end)
	tbl.RemainingItems = Computed_upvr(function() -- Line 91
		--[[ Upvalues[2]:
			[1]: var3_2_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return var3_2_upvr.count(arg1.Outfit:get(), function(arg1_4) -- Line 92
			local IsForSale = arg1_4.IsForSale
			if IsForSale then
				IsForSale = not arg1_4.Purchased
			end
			return IsForSale
		end)
	end)
	tbl.TotalItems = Computed_upvr(function() -- Line 96
		--[[ Upvalues[2]:
			[1]: var3_2_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return var3_2_upvr.count(arg1.Outfit:get(), function() -- Line 97
			return true
		end)
	end)
	tbl[Children_upvr] = {LoadingFrame_upvr({
		Visible = arg1.Loading;
		Size = UDim2.fromScale(1, 1);
	}), ItemGrid_upvr({
		Gap = 5;
		Columns = 3;
		Visible = Computed_upvr(function() -- Line 109
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local var40 = not arg1.Loading:get()
			if var40 then
				var40 = not arg1.Error:get()
			end
			return var40
		end);
		ItemRatio = 0.8;
		[Children_upvr] = ForValues_upvr(Computed_upvr(function() -- Line 114
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			local any_get_result1 = arg1.Outfit:get()
			if not any_get_result1 then
				any_get_result1 = {}
			end
			return any_get_result1
		end), function(arg1_5) -- Line 116
			--[[ Upvalues[6]:
				[1]: Item_upvr (copied, readonly)
				[2]: var7_upvw (copied, read and write)
				[3]: var6_upvw (copied, read and write)
				[4]: MarketplaceService_upvr (copied, readonly)
				[5]: var3_2_upvr (copied, readonly)
				[6]: arg1 (readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			local var44_upvr
			if var44_upvr then
			end
			var44_upvr = arg1_5.IsForSale
			if not var44_upvr then
			end
			if arg1_5.BundleId == nil then
				var44_upvr = false
			else
				var44_upvr = true
			end
			local module = {}
			local AssetId = arg1_5.AssetId
			if not AssetId then
				AssetId = arg1_5.BundleId
			end
			module.AssetId = AssetId
			module.IsBundle = var44_upvr
			module.IsPurchased = arg1_5.Purchased
			module.IsForSale = arg1_5.IsForSale
			module.Price = arg1_5.Price or 0
			module.Name = arg1_5.Name
			module.LayoutOrder = math.huge
			function module.OnClick() -- Line 137
				--[[ Upvalues[7]:
					[1]: var7_upvw (copied, read and write)
					[2]: var6_upvw (copied, read and write)
					[3]: arg1_5 (readonly)
					[4]: var44_upvr (readonly)
					[5]: MarketplaceService_upvr (copied, readonly)
					[6]: var3_2_upvr (copied, readonly)
					[7]: arg1 (copied, readonly)
				]]
				var7_upvw:FireServer("Buy Outfit")
				local AssetId_2 = arg1_5.AssetId
				if not AssetId_2 then
					AssetId_2 = arg1_5.BundleId
				end
				var6_upvw:InvokeServer(AssetId_2, var44_upvr)
				local var48
				if var44_upvr then
					local any_Wait_result1, any_Wait_result2_2, any_Wait_result3_2 = MarketplaceService_upvr.PromptBundlePurchaseFinished:Wait()
					_ = any_Wait_result1 -- Setting global
					_ = any_Wait_result2_2 -- Setting global
					var48 = any_Wait_result3_2
				else
					local any_Wait_result1_2, any_Wait_result2, any_Wait_result3 = MarketplaceService_upvr.PromptPurchaseFinished:Wait()
					_ = any_Wait_result1_2 -- Setting global
					_ = any_Wait_result2 -- Setting global
					var48 = any_Wait_result3
				end
				if var48 then
					local any_deepCopy_result1 = var3_2_upvr.deepCopy(arg1.Outfit:get())
					local AssetId_3 = arg1_5.AssetId
					if not AssetId_3 then
						AssetId_3 = arg1_5.BundleId
					end
					any_deepCopy_result1[tostring(AssetId_3)].Purchased = true
					arg1.Outfit:set(any_deepCopy_result1)
				end
			end
			return Item_upvr(module)
		end, module_upvr.cleanup);
	})}
	arg1.Modal = Modal_upvr(tbl)
end
function module_upvr_3.GetBundleName(arg1, arg2) -- Line 161
	--[[ Upvalues[1]:
		[1]: var3_2_upvr (readonly)
	]]
	local _1 = arg2.Name:split(" - ")[1]
	for _, v in ipairs({"Dynamic Head", "Head", "Torso", "Left Leg", "Left Arm", "Right Leg", "Right Arm"}) do
		_1 = var3_2_upvr.strip(_1, ' '..v)
	end
	return _1
end
local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
function module_upvr_3.FindBundle(arg1, arg2, arg3) -- Line 172
	--[[ Upvalues[2]:
		[1]: AvatarEditorService_upvr (readonly)
		[2]: var3_2_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local CatalogSearchParams_new_result1 = CatalogSearchParams.new()
	CatalogSearchParams_new_result1.BundleTypes = {Enum.BundleType.DynamicHead, Enum.BundleType.DynamicHeadAvatar, Enum.BundleType.BodyParts}
	CatalogSearchParams_new_result1.SearchKeyword = arg2
	local ipairs_result1, ipairs_result2, ipairs_result3_2 = ipairs(AvatarEditorService_upvr:SearchCatalog(CatalogSearchParams_new_result1):GetCurrentPage())
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [111] 76. Error Block 12 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [111] 76. Error Block 12 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 21. Error Block 22 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [111.12]
	if nil then
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [111.16]
		if not nil then
		end
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [111.17]
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [111.2147483650]
		if nil < nil then
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [111.18]
			for _, _ in nil do
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect (x2)
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if nil ~= 0 then
				-- KONSTANTWARNING: GOTO [111] #76
			end
			-- KONSTANTWARNING: GOTO [113] #77
		end
	else
	end
	-- KONSTANTERROR: [32] 21. Error Block 22 end (CF ANALYSIS FAILED)
end
function module_upvr_3.Enable(arg1) -- Line 223
end
function module_upvr_3.Disable(arg1) -- Line 226
	arg1.Outfit:set(nil)
	arg1.Error:set(nil)
end
function module_upvr_3.OnClose(arg1) -- Line 231
	arg1:Disable()
end
local module_upvr_2 = require(Utils:WaitForChild("Promise"))
local Players_upvr = game:GetService("Players")
function module_upvr_3.ShowModal(arg1) -- Line 235
	--[[ Upvalues[5]:
		[1]: var3_2_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: MarketplaceService_upvr (readonly)
		[5]: Players_upvr (readonly)
	]]
	local var86_upvw
	if var86_upvw then
		var86_upvw = arg1:Disable
		var86_upvw()
	else
		var86_upvw = arg1.Outfit:set
		var86_upvw(nil)
		var86_upvw = arg1:Enable
		var86_upvw()
		var86_upvw = var3_2_upvr.deepCopy(arg1.Controllers.AvatarPreviewController.EquippedItems:get())
		var86_upvw.BodyColors = nil
		local tbl_2 = {}
		for i_3_upvr, v_3_upvr in pairs(var86_upvw) do
			local table_find_result1 = table.find(tbl_upvr, v_3_upvr.AssetType)
			if table_find_result1 then
				table_find_result1 = arg1:GetBundleName(v_3_upvr)
				local var92 = tbl_2[table_find_result1]
				if not var92 then
					var92 = {}
				end
				tbl_2[table_find_result1] = var92
				tbl_2[table_find_result1][i_3_upvr] = v_3_upvr
				var86_upvw[i_3_upvr] = nil
			else
				if 0 >= v_3_upvr.Purchased then
					table_find_result1 = false
				else
					table_find_result1 = true
				end
				v_3_upvr.Purchased = table_find_result1
				table_find_result1 = v_3_upvr.Price
				local function INLINED() -- Internal function, doesn't exist in bytecode
					table_find_result1 = v_3_upvr.Quantity
					return table_find_result1 == 0
				end
				if table_find_result1 == nil or INLINED() then
					table_find_result1 = false
					v_3_upvr.IsForSale = table_find_result1
				end
				table_find_result1 = v_3_upvr.Purchased
				if not table_find_result1 then
					table_find_result1 = table.insert
					table_find_result1({}, module_upvr_2.new(function(arg1_6) -- Line 268
						--[[ Upvalues[5]:
							[1]: MarketplaceService_upvr (copied, readonly)
							[2]: Players_upvr (copied, readonly)
							[3]: v_3_upvr (readonly)
							[4]: var86_upvw (read and write)
							[5]: i_3_upvr (readonly)
						]]
						local pcall_result1, pcall_result2 = pcall(function() -- Line 269
							--[[ Upvalues[3]:
								[1]: MarketplaceService_upvr (copied, readonly)
								[2]: Players_upvr (copied, readonly)
								[3]: v_3_upvr (copied, readonly)
							]]
							return MarketplaceService_upvr:PlayerOwnsAsset(Players_upvr.LocalPlayer, v_3_upvr.AssetId)
						end)
						if pcall_result1 and pcall_result2 then
							var86_upvw[i_3_upvr].Purchased = true
						end
						arg1_6()
					end))
				end
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module_upvr_2.all({}):await()
		for i_4, v_4 in pairs(tbl_2) do
			var86_upvw = var3_2_upvr.merge(var86_upvw, arg1:FindBundle(i_4, v_4))
		end
		arg1.Outfit:set(var86_upvw)
	end
end
return module_upvr_3