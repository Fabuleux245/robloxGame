-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:39
-- Luau version 6, Types version 3
-- Time taken: 0.014895 seconds

local module_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_10 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr_6 = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_9 = require(Modules:WaitForChild("ClientData"))
local module_upvr_5 = require(Modules:WaitForChild("ItemDataUtility"))
local module_upvr_4 = require(Modules:WaitForChild("NetworkRequestUtility"))
local module_upvr_2 = require(Modules:WaitForChild("Pets"))
local tbl_upvr = {
	AutoPurchaseEggsPending = false;
	PurchaseEggsPending = false;
	CanAutoPurchaseEggsAt = 0;
	CanPurchaseEggsAt = 0;
	ActiveEggBuyContexts = {};
	EggPurchaseResponseReflectsState = false;
	PendingEggPurchaseResponse = nil;
	PendingGroupRewardResponse = nil;
}
module_upvr.EggBuyState = {
	AutoPurchase = false;
	CanPurchaseAt = os.clock();
	EggData = nil;
	InContext = false;
	PermissionType = nil;
}
module_upvr.EggBuyStateDirty = false
module_upvr.EggPurchasePending = false
local function _() -- Line 65, Named "EggPurchasePendingResolve"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	local AutoPurchaseEggsPending_7 = tbl_upvr.AutoPurchaseEggsPending
	if not AutoPurchaseEggsPending_7 then
		AutoPurchaseEggsPending_7 = tbl_upvr.PurchaseEggsPending
	end
	module_upvr.EggPurchasePending = AutoPurchaseEggsPending_7
	if not module_upvr.EggPurchasePending then
		tbl_upvr.CanAutoPurchaseEggsAt = tbl_upvr.CanPurchaseEggsAt
	end
end
local function _() -- Line 76, Named "MarkEggBuyStateDirty"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	module_upvr.EggBuyStateDirty = true
	tbl_upvr.AutoPurchaseEggsPending = false
	tbl_upvr.PurchaseEggsPending = false
	tbl_upvr.EggPurchaseResponseReflectsState = false
	local AutoPurchaseEggsPending_5 = tbl_upvr.AutoPurchaseEggsPending
	if not AutoPurchaseEggsPending_5 then
		AutoPurchaseEggsPending_5 = tbl_upvr.PurchaseEggsPending
	end
	module_upvr.EggPurchasePending = AutoPurchaseEggsPending_5
	if not module_upvr.EggPurchasePending then
		tbl_upvr.CanAutoPurchaseEggsAt = tbl_upvr.CanPurchaseEggsAt
	end
end
local function ProcessEggPurchaseResponse_upvr(arg1) -- Line 91, Named "ProcessEggPurchaseResponse"
	--[[ Upvalues[6]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr_10 (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: module_upvr_6 (readonly)
		[5]: module_upvr (readonly)
		[6]: module_upvr_9 (readonly)
	]]
	if tbl_upvr.PendingEggPurchaseResponse ~= arg1 then
		warn(module_upvr_10.FormatOutput("Received stale EggPurchaseResponse", "ItemActionHandler"))
	else
		tbl_upvr.PendingEggPurchaseResponse = nil
		if arg1.Response == module_upvr_10.ResponseType.Success then
			local _1 = arg1.Args[1]
			for i_4, v_4 in _1 do
				table.create(#_1)[i_4] = module_upvr_2.PetData_ById[v_4]
				local var20
			end
			local os_clock_result1 = os.clock()
			tbl_upvr.CanPurchaseEggsAt = os_clock_result1 + module_upvr_6.PetsPurchaseCooldownMinimum
			tbl_upvr.CanAutoPurchaseEggsAt = os_clock_result1 + module_upvr_6.PetsPurchaseCooldownAuto
			module_upvr.EggBuyState.CanPurchaseAt = tbl_upvr.CanPurchaseEggsAt
			module_upvr_9.Signals.EggHatched:Fire(module_upvr_2.EggData_ById[arg1.Request.Args[1]], var20)
			return
		end
		if arg1.Response ~= module_upvr_10.ResponseType.TooManyRequests then
			tbl_upvr.AutoPurchaseEggsPending = false
			tbl_upvr.PurchaseEggsPending = false
			local AutoPurchaseEggsPending = tbl_upvr.AutoPurchaseEggsPending
			if not AutoPurchaseEggsPending then
				AutoPurchaseEggsPending = tbl_upvr.PurchaseEggsPending
			end
			module_upvr.EggPurchasePending = AutoPurchaseEggsPending
			if not module_upvr.EggPurchasePending then
				tbl_upvr.CanAutoPurchaseEggsAt = tbl_upvr.CanPurchaseEggsAt
			end
		end
	end
end
function module_upvr.EggBuyContextCreate() -- Line 140
	return {
		Active = false;
	}
end
function module_upvr.EggBuyContextSetActive(arg1, arg2) -- Line 149
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	local var24
	if arg1.Active ~= arg2 then
		arg1.Active = arg2
		var24 = tbl_upvr.ActiveEggBuyContexts
		local table_find_result1_3 = table.find(var24, arg1)
		if arg2 then
			if not table_find_result1_3 then
				var24 = tbl_upvr.ActiveEggBuyContexts
				var24[#tbl_upvr.ActiveEggBuyContexts + 1] = arg1
				-- KONSTANTWARNING: GOTO [33] #25
			end
		elseif table_find_result1_3 then
			var24 = table.remove
			var24(tbl_upvr.ActiveEggBuyContexts, table_find_result1_3)
		end
		if 0 >= #tbl_upvr.ActiveEggBuyContexts then
			var24 = false
		else
			var24 = true
		end
		if module_upvr.EggBuyState.InContext ~= var24 then
			module_upvr.EggBuyState.InContext = var24
		end
	end
end
function module_upvr.EggBuyStateSetAutoPurchase(arg1) -- Line 188
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	if module_upvr.EggBuyState.AutoPurchase ~= arg1 then
		module_upvr.EggBuyStateDirty = true
		tbl_upvr.AutoPurchaseEggsPending = false
		tbl_upvr.PurchaseEggsPending = false
		tbl_upvr.EggPurchaseResponseReflectsState = false
		local AutoPurchaseEggsPending_2 = tbl_upvr.AutoPurchaseEggsPending
		if not AutoPurchaseEggsPending_2 then
			AutoPurchaseEggsPending_2 = tbl_upvr.PurchaseEggsPending
		end
		module_upvr.EggPurchasePending = AutoPurchaseEggsPending_2
		if not module_upvr.EggPurchasePending then
			tbl_upvr.CanAutoPurchaseEggsAt = tbl_upvr.CanPurchaseEggsAt
		end
		module_upvr.EggBuyState.AutoPurchase = arg1
	end
end
function module_upvr.EggBuyStateSetEggData(arg1) -- Line 199
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
	]]
	if module_upvr.EggBuyState.EggData ~= arg1 then
		module_upvr.EggBuyStateDirty = true
		tbl_upvr.AutoPurchaseEggsPending = false
		tbl_upvr.PurchaseEggsPending = false
		tbl_upvr.EggPurchaseResponseReflectsState = false
		local AutoPurchaseEggsPending_6 = tbl_upvr.AutoPurchaseEggsPending
		if not AutoPurchaseEggsPending_6 then
			AutoPurchaseEggsPending_6 = tbl_upvr.PurchaseEggsPending
		end
		module_upvr.EggPurchasePending = AutoPurchaseEggsPending_6
		if not module_upvr.EggPurchasePending then
			tbl_upvr.CanAutoPurchaseEggsAt = tbl_upvr.CanPurchaseEggsAt
		end
		module_upvr.EggBuyState.EggData = arg1
	end
end
function module_upvr.EggBuyStateSetPermission(arg1) -- Line 210
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr_9 (readonly)
		[4]: tbl_upvr (readonly)
	]]
	if module_upvr.EggBuyState.PermissionType ~= arg1 then
		local var28 = true
		if arg1 then
			local var29 = false
			if module_upvr_2.EggsHatched_ByPermissionType[arg1] ~= nil then
				var29 = module_upvr_9.LocalPermissionState.HasPermission_ByType[arg1]
			end
			var28 = var29
		end
		if var28 then
			module_upvr.EggBuyStateDirty = true
			tbl_upvr.AutoPurchaseEggsPending = false
			tbl_upvr.PurchaseEggsPending = false
			tbl_upvr.EggPurchaseResponseReflectsState = false
			local AutoPurchaseEggsPending_8 = tbl_upvr.AutoPurchaseEggsPending
			if not AutoPurchaseEggsPending_8 then
				AutoPurchaseEggsPending_8 = tbl_upvr.PurchaseEggsPending
			end
			module_upvr.EggPurchasePending = AutoPurchaseEggsPending_8
			if not module_upvr.EggPurchasePending then
				tbl_upvr.CanAutoPurchaseEggsAt = tbl_upvr.CanPurchaseEggsAt
			end
			module_upvr.EggBuyState.PermissionType = arg1
		end
	end
end
function module_upvr.EggRequestCancel() -- Line 238
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	tbl_upvr.PurchaseEggsPending = false
	tbl_upvr.AutoPurchaseEggsPending = false
	local AutoPurchaseEggsPending_4 = tbl_upvr.AutoPurchaseEggsPending
	if not AutoPurchaseEggsPending_4 then
		AutoPurchaseEggsPending_4 = tbl_upvr.PurchaseEggsPending
	end
	module_upvr.EggPurchasePending = AutoPurchaseEggsPending_4
	if not module_upvr.EggPurchasePending then
		tbl_upvr.CanAutoPurchaseEggsAt = tbl_upvr.CanPurchaseEggsAt
	end
end
function module_upvr.EggRequestPurchase() -- Line 246
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: module_upvr_5 (readonly)
		[4]: module_upvr_9 (readonly)
	]]
	if os.clock() < tbl_upvr.CanPurchaseEggsAt then
	else
		local EggData_2 = module_upvr.EggBuyState.EggData
		if not EggData_2 or not module_upvr_5.SaveDataCanBuyEgg(module_upvr_9.LocalSaveData, EggData_2) then return end
		tbl_upvr.PurchaseEggsPending = true
		if module_upvr.EggBuyState.AutoPurchase then
			tbl_upvr.AutoPurchaseEggsPending = true
		end
		local AutoPurchaseEggsPending_3 = tbl_upvr.AutoPurchaseEggsPending
		if not AutoPurchaseEggsPending_3 then
			AutoPurchaseEggsPending_3 = tbl_upvr.PurchaseEggsPending
		end
		module_upvr.EggPurchasePending = AutoPurchaseEggsPending_3
		if not module_upvr.EggPurchasePending then
			tbl_upvr.CanAutoPurchaseEggsAt = tbl_upvr.CanPurchaseEggsAt
		end
	end
end
function module_upvr.EggRequestUnlock() -- Line 268
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_5 (readonly)
		[3]: module_upvr_9 (readonly)
		[4]: module_upvr_4 (readonly)
		[5]: module_upvr_10 (readonly)
	]]
	local EggData = module_upvr.EggBuyState.EggData
	if not EggData or module_upvr_5.SaveDataCanBuyEgg(module_upvr_9.LocalSaveData, EggData) then
	else
		module_upvr_4.MakeRequest({
			Request = module_upvr_10.StateRequestType.EggUnlock;
			Args = {EggData.Id};
		})
	end
end
module_upvr.GiftTarget = nil
module_upvr.GiftTargetDirty = false
local State_upvr = ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("State")
function module_upvr.GiftTargetSet(arg1) -- Line 294
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_10 (readonly)
		[3]: State_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 9. Error Block 10 start (CF ANALYSIS FAILED)
	module_upvr.GiftTargetSet(nil)
	local tbl_6 = {
		MonetizationState = module_upvr_10.MonetizationStateCreate();
	}
	tbl_6.PlayerState = arg1
	module_upvr.GiftTarget = tbl_6
	State_upvr:FireServer(module_upvr_10.StateRequestType.MonetizationState, arg1.UserId, true)
	module_upvr.GiftTargetDirty = true
	do
		return
	end
	-- KONSTANTERROR: [12] 9. Error Block 10 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [46] 33. Error Block 9 start (CF ANALYSIS FAILED)
	if module_upvr.GiftTarget then
		State_upvr:FireServer(module_upvr_10.StateRequestType.MonetizationState, module_upvr.GiftTarget.PlayerState.UserId, false)
		module_upvr.GiftTarget = nil
		module_upvr.GiftTargetDirty = true
	end
	-- KONSTANTERROR: [46] 33. Error Block 9 end (CF ANALYSIS FAILED)
end
local tbl_3_upvr = {}
local module_upvr_8 = require(Modules:WaitForChild("Utility"))
local module_upvr_3 = require(ReplicatedStorage:WaitForChild("Theme"))
local module_upvr_7 = require(Modules:WaitForChild("UserInterface"):WaitForChild("NotificationsUI"))
local function ResolveState_upvr(arg1) -- Line 345, Named "ProcessClaimResponse"
	--[[ Upvalues[8]:
		[1]: module_upvr_10 (readonly)
		[2]: module_upvr_8 (readonly)
		[3]: module_upvr_5 (readonly)
		[4]: module_upvr_9 (readonly)
		[5]: module_upvr_3 (readonly)
		[6]: module_upvr_7 (readonly)
		[7]: tbl_upvr (readonly)
		[8]: tbl_3_upvr (readonly)
	]]
	local var47
	if arg1.Response == module_upvr_10.ResponseType.Success then
		var47 = string.format("Thanks for supporting the game!\nYou have received %s!", module_upvr_8.FormatArray_OxfordComma(module_upvr_5.GroupRewardGetCurrentRewardStrings(module_upvr_9.LocalSaveData)))
	elseif arg1.Response == module_upvr_10.ResponseType.Failed then
		var47 = "Something went wrong. Please try again."
	elseif arg1.Response == module_upvr_10.ResponseType.NotStarted then
		var47 = string.format("To claim these rewards, please join %s\nand like the game, then try again!", module_upvr_3.GroupNameGet())
	end
	if var47 then
		local any_Create_result1 = module_upvr_7.Popup.Create(module_upvr_7.Popup.Type.Timed, var47, {
			Font = module_upvr_3.FontFaceNormal;
			Color = module_upvr_3.TextColor1;
		})
		module_upvr_7.Popup.Queue(any_Create_result1)
		any_Create_result1.Callback = coroutine.running()
		module_upvr_7.Popup.Queue(any_Create_result1)
		coroutine.yield()
	end
	tbl_upvr.PendingGroupRewardResponse = nil
	table.clear(tbl_3_upvr)
	for _, v in table.clone(tbl_3_upvr), nil do
		task.spawn(v)
	end
end
function module_upvr.GroupRewardClaimCurrent(arg1) -- Line 399
	--[[ Upvalues[8]:
		[1]: module_upvr_6 (readonly)
		[2]: module_upvr_10 (readonly)
		[3]: module_upvr_5 (readonly)
		[4]: module_upvr_9 (readonly)
		[5]: tbl_upvr (readonly)
		[6]: module_upvr_4 (readonly)
		[7]: ResolveState_upvr (readonly)
		[8]: tbl_3_upvr (readonly)
	]]
	if not module_upvr_6.GroupProvideMembershipReward then
		return module_upvr_10.ResponseType.NotAuthorized
	end
	if module_upvr_5.GroupRewardHasClaimedCurrent(module_upvr_9.LocalSaveData) then
		return module_upvr_10.ResponseType.AlreadyCompleted
	end
	local PendingGroupRewardResponse = tbl_upvr.PendingGroupRewardResponse
	if not PendingGroupRewardResponse then
		PendingGroupRewardResponse = module_upvr_4.MakeRequest({
			Request = module_upvr_10.StateRequestType.GroupRewardClaim;
			Args = {};
			Callback = ResolveState_upvr;
		})
		tbl_upvr.PendingGroupRewardResponse = PendingGroupRewardResponse
	end
	assert(PendingGroupRewardResponse)
	if arg1 then
		tbl_3_upvr[#tbl_3_upvr + 1] = coroutine.running()
		coroutine.yield()
	end
	return PendingGroupRewardResponse.Response
end
function tbl_3_upvr(arg1) -- Line 446, Named "InventoryGet"
	--[[ Upvalues[2]:
		[1]: module_upvr_9 (readonly)
		[2]: module_upvr_10 (readonly)
	]]
	local var52 = module_upvr_9.LocalSaveData.Inventory[module_upvr_10.ItemKey_ByItemType[arg1]]
	if not var52 then
		error(module_upvr_10.FormatOutput("Unsupported ItemType '%*'", "ItemActionHandler", nil, arg1))
	end
	return var52
end
module_upvr.InventoryGet = tbl_3_upvr
function tbl_3_upvr(arg1, arg2) -- Line 461, Named "InventoryAdd"
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_10 (readonly)
		[3]: module_upvr_9 (readonly)
	]]
	local any_InventoryGet_result1_4 = module_upvr.InventoryGet(arg1)
	local table_create_result1_2 = table.create(#arg2)
	for i_2, v_2 in arg2 do
		if not module_upvr_10.ItemInventoryOwnsItem(any_InventoryGet_result1_4, v_2) then
			any_InventoryGet_result1_4.Owned[#any_InventoryGet_result1_4.Owned + 1] = v_2
			table_create_result1_2[#table_create_result1_2 + 1] = v_2
		end
	end
	if 0 < #table_create_result1_2 then
		i_2 = table_create_result1_2
		module_upvr_9.Signals.InventoryOwnedAdded:Fire(arg1, i_2)
	end
	return table_create_result1_2
end
module_upvr.InventoryAdd = tbl_3_upvr
function tbl_3_upvr(arg1, arg2) -- Line 484, Named "InventoryRemove"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_9 (readonly)
	]]
	local any_InventoryGet_result1 = module_upvr.InventoryGet(arg1)
	local table_create_result1_3 = table.create(#arg2)
	local var72
	for i_3, v_3 in arg2 do
		local table_find_result1_5 = table.find(any_InventoryGet_result1.Owned, v_3)
		if table_find_result1_5 then
			table.remove(any_InventoryGet_result1.Owned, table_find_result1_5)
			table_create_result1_3[#table_create_result1_3 + 1] = v_3
			local table_find_result1_4 = table.find(any_InventoryGet_result1.Equipped, v_3)
			if table_find_result1_4 then
				table.remove(any_InventoryGet_result1.Equipped, table_find_result1_4)
			end
		end
	end
	if nil then
		i_3 = any_InventoryGet_result1.Equipped
		module_upvr_9.Signals.InventoryEquippedChanged:Fire(arg1, i_3)
	end
	if 0 < #table_create_result1_3 then
		i_3 = table_create_result1_3
		module_upvr_9.Signals.InventoryOwnedRemoved:Fire(arg1, i_3)
	end
	return table_create_result1_3
end
module_upvr.InventoryRemove = tbl_3_upvr
function tbl_3_upvr(arg1, arg2) -- Line 521, Named "InventorySetEquipped"
	--[[ Upvalues[3]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_10 (readonly)
		[3]: module_upvr_9 (readonly)
	]]
	local any_InventoryGet_result1_5 = module_upvr.InventoryGet(arg1)
	table.clear(any_InventoryGet_result1_5.Equipped)
	table.move(arg2, 1, #arg2, 1, any_InventoryGet_result1_5.Equipped)
	if arg1 == module_upvr_10.ItemType.Dimension then
		module_upvr_9.DimensionState.Dirty = true
	end
	module_upvr_9.Signals.InventoryEquippedChanged:Fire(arg1, arg2)
end
module_upvr.InventorySetEquipped = tbl_3_upvr
tbl_3_upvr = {}
local var76_upvr = tbl_3_upvr
ResolveState_upvr = module_upvr_10.ItemAction.Buy
var76_upvr[ResolveState_upvr] = function(arg1, arg2) -- Line 548
	--[[ Upvalues[4]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_10 (readonly)
		[3]: module_upvr_5 (readonly)
		[4]: module_upvr_9 (readonly)
	]]
	if module_upvr_10.ItemInventoryOwnsItem(module_upvr.InventoryGet(arg1), arg2.Id) then
		return module_upvr_10.ResponseType.AlreadyOwned
	end
	local any_GetItemCost_result1_2, any_GetItemCost_result2 = module_upvr_5.GetItemCost(arg2)
	if any_GetItemCost_result1_2 == module_upvr_5.TransactionType.Invalid then
		return module_upvr_10.ResponseType.NotAuthorized
	end
	if any_GetItemCost_result1_2 == module_upvr_5.TransactionType.Currency then
		if module_upvr_10.PlayerStateCanAfford(module_upvr_9.LocalPlayerState, module_upvr_10.CurrencyType_ByItemType[arg1], any_GetItemCost_result2) then
			return module_upvr_10.ResponseType.Success
		end
		return module_upvr_10.ResponseType.InsufficientFunds
	end
	return module_upvr_10.ResponseType.Success
end
ResolveState_upvr = module_upvr_10.ItemAction.Equip
var76_upvr[ResolveState_upvr] = function(arg1, arg2) -- Line 587
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_10 (readonly)
	]]
	local any_InventoryGet_result1_3 = module_upvr.InventoryGet(arg1)
	if table.find(any_InventoryGet_result1_3.Equipped, arg2.Id) then
		return module_upvr_10.ResponseType.Failed
	end
	if not module_upvr_10.CanUse(arg2, any_InventoryGet_result1_3) then
		return module_upvr_10.ResponseType.NotAuthorized
	end
	return module_upvr_10.ResponseType.Success
end
ResolveState_upvr = module_upvr_10.ItemAction.Unequip
var76_upvr[ResolveState_upvr] = function(arg1, arg2) -- Line 607
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_10 (readonly)
	]]
	if table.find(module_upvr.InventoryGet(arg1).Equipped, arg2.Id) then
		return module_upvr_10.ResponseType.Success
	end
	return module_upvr_10.ResponseType.Failed
end
function ResolveState_upvr(arg1, arg2, arg3) -- Line 625, Named "ItemActionCanPerform"
	--[[ Upvalues[2]:
		[1]: var76_upvr (readonly)
		[2]: module_upvr_10 (readonly)
	]]
	local var83 = arg2
	if var76_upvr[arg1](var83, arg3) ~= module_upvr_10.ResponseType.Success then
		var83 = false
	else
		var83 = true
	end
	return var83
end
module_upvr.ItemActionCanPerform = ResolveState_upvr
function ResolveState_upvr(arg1, arg2, arg3, arg4) -- Line 635, Named "ItemActionPerform"
	--[[ Upvalues[3]:
		[1]: module_upvr_10 (readonly)
		[2]: var76_upvr (readonly)
		[3]: module_upvr_4 (readonly)
	]]
	local var84
	local any_any_result1 = var76_upvr[arg1](arg2, arg3)
	if any_any_result1 == module_upvr_10.ResponseType.Success then
		local tbl_4 = {
			Request = module_upvr_10.StateRequestType.ItemAction;
		}
		local tbl_2 = {}
		tbl_2[1] = arg1
		tbl_2[2] = arg2
		tbl_2[3] = arg3.Id
		tbl_4.Args = tbl_2
		if arg4 then
			tbl_2 = coroutine.running()
		else
			tbl_2 = nil
		end
		tbl_4.Callback = tbl_2
		var84 = module_upvr_4.MakeRequest(tbl_4)
		any_any_result1 = var84.Response
	end
	return any_any_result1, var84
end
module_upvr.ItemActionPerform = ResolveState_upvr
function ResolveState_upvr(arg1, arg2) -- Line 661, Named "ItemBuyRandom"
	--[[ Upvalues[4]:
		[1]: module_upvr_10 (readonly)
		[2]: module_upvr_9 (readonly)
		[3]: module_upvr_5 (readonly)
		[4]: module_upvr_4 (readonly)
	]]
	local var88
	if not module_upvr_9.LocalPolicyState.LootboxesEnabled then
		var88 = module_upvr_10.ResponseType.NotAuthorized
		return var88
	end
	local any_GetRandomItemCost_result1, any_GetRandomItemCost_result2 = module_upvr_5.GetRandomItemCost(module_upvr_9.LocalSaveData, arg1)
	if any_GetRandomItemCost_result1 == module_upvr_5.TransactionType.Currency then
		if assert(any_GetRandomItemCost_result2, "Missing RandomCostCurrency") == nil then
		else
		end
	end
	local var91 = false
	if any_GetRandomItemCost_result1 == module_upvr_5.TransactionType.Invalid then
		var88 = module_upvr_10.ResponseType.NotAuthorized
	elseif any_GetRandomItemCost_result1 == module_upvr_5.TransactionType.Currency then
		if module_upvr_10.PlayerStateCanAfford(module_upvr_9.LocalPlayerState, module_upvr_5.RandomCostCurrency_ByItemType[arg1], any_GetRandomItemCost_result2) then
			var91 = true
		else
			var88 = module_upvr_10.ResponseType.InsufficientFunds
		end
	else
		var91 = true
	end
	if var91 then
		if not module_upvr_5.GetRandomUnownedItem(module_upvr_9.LocalSaveData, arg1) then
			var88 = module_upvr_10.ResponseType.AlreadyOwned
			return var88
		end
		local tbl = {
			Request = module_upvr_10.StateRequestType.ItemBuyRandom;
		}
		local tbl_5 = {}
		tbl_5[1] = arg1
		tbl.Args = tbl_5
		if arg2 then
			tbl_5 = coroutine.running()
		else
			tbl_5 = nil
		end
		tbl.Callback = tbl_5
		var88 = module_upvr_4.MakeRequest(tbl).Response
	end
	return var88
end
module_upvr.ItemBuyRandom = ResolveState_upvr
function ResolveState_upvr(arg1) -- Line 735, Named "PlayerRemoving"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr.GiftTarget and module_upvr.GiftTarget.PlayerState == arg1 then
		module_upvr.GiftTargetSet(nil)
	end
end
module_upvr.PlayerRemoving = ResolveState_upvr
function ResolveState_upvr(arg1, arg2) -- Line 748, Named "RenderStepped"
	--[[ Upvalues[8]:
		[1]: module_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: module_upvr_9 (readonly)
		[4]: module_upvr_2 (readonly)
		[5]: module_upvr_5 (readonly)
		[6]: module_upvr_10 (readonly)
		[7]: module_upvr_4 (readonly)
		[8]: ProcessEggPurchaseResponse_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 45 start (CF ANALYSIS FAILED)
	local var94
	if module_upvr.EggBuyState.EggData == nil then
		var94 = false
	else
		var94 = true
	end
	-- KONSTANTERROR: [0] 1. Error Block 45 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 24. Error Block 8 start (CF ANALYSIS FAILED)
	tbl_upvr.CanAutoPurchaseEggsAt = tbl_upvr.CanPurchaseEggsAt
	do
		return
	end
	-- KONSTANTERROR: [32] 24. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 29. Error Block 51 start (CF ANALYSIS FAILED)
	if module_upvr_9.Flags.LoadingScreenActive then
		tbl_upvr.AutoPurchaseEggsPending = false
	end
	local var95
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var95 = tbl_upvr.AutoPurchaseEggsPending
		return var95
	end
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var95 = tbl_upvr.PurchaseEggsPending
		return var95
	end
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		if tbl_upvr.AutoPurchaseEggsPending then
			var95 = tbl_upvr.CanAutoPurchaseEggsAt
		else
			var95 = tbl_upvr.CanPurchaseEggsAt
		end
		return var95 <= arg2
	end
	if not var95 and (INLINED() or INLINED_2()) or INLINED_3() then
		local assert_result1 = assert(module_upvr.EggBuyState.EggData)
		local PermissionType = module_upvr.EggBuyState.PermissionType
		local var98 = false
		local var99 = module_upvr_2.EggsHatched_ByPermissionType[PermissionType] or 1
		local any_GetItemCost_result1, any_GetItemCost_result2_2 = module_upvr_5.GetItemCost(assert_result1)
		if any_GetItemCost_result1 == module_upvr_5.TransactionType.Currency then
			if module_upvr_10.SaveDataGetAffordedUnits(module_upvr_9.LocalSaveData, module_upvr_10.CurrencyType_ByItemType[module_upvr_10.ItemType.Egg], var99, any_GetItemCost_result2_2) ~= var99 then
				var98 = false
			else
				var98 = true
			end
		end
		tbl_upvr.PurchaseEggsPending = false
		if not var98 then
			tbl_upvr.AutoPurchaseEggsPending = false
		else
			tbl_upvr.EggPurchaseResponseReflectsState = true
			tbl_upvr.PendingEggPurchaseResponse = module_upvr_4.MakeRequest({
				Request = module_upvr_10.StateRequestType.EggBuy;
				Args = {assert_result1.Id, PermissionType};
				Callback = ProcessEggPurchaseResponse_upvr;
			})
		end
	end
	assert_result1 = tbl_upvr.AutoPurchaseEggsPending
	local var104 = assert_result1
	if not var104 then
		var104 = tbl_upvr.PurchaseEggsPending
	end
	module_upvr.EggPurchasePending = var104
	if not module_upvr.EggPurchasePending then
		tbl_upvr.CanAutoPurchaseEggsAt = tbl_upvr.CanPurchaseEggsAt
	end
	-- KONSTANTERROR: [39] 29. Error Block 51 end (CF ANALYSIS FAILED)
end
module_upvr.RenderStepped = ResolveState_upvr
function ResolveState_upvr() -- Line 845, Named "ResetState"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: module_upvr_10 (readonly)
	]]
	module_upvr.EggBuyStateDirty = false
	if module_upvr.GiftTarget then
		module_upvr_10.MonetizationStateResolve(module_upvr.GiftTarget.MonetizationState)
	end
	module_upvr.GiftTargetDirty = false
end
module_upvr.ResetState = ResolveState_upvr
function ResolveState_upvr() -- Line 856, Named "ResolveState"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if module_upvr.GiftTarget and module_upvr.GiftTarget.MonetizationState.Dirty then
		module_upvr.GiftTargetDirty = true
	end
end
module_upvr.ResolveState = ResolveState_upvr
return module_upvr