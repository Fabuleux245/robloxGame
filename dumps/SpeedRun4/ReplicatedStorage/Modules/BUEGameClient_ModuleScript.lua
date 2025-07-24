-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:44
-- Luau version 6, Types version 3
-- Time taken: 0.024847 seconds

local module_6_upvr = {}
local ContextActionService_upvr = game:GetService("ContextActionService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_11_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_19_upvr = require(ReplicatedStorage:WaitForChild("Settings"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_10_upvr = require(Modules:WaitForChild("ClientData"))
local module_8_upvr = require(Modules:WaitForChild("InputMode"))
local module_7_upvr = require(Modules:WaitForChild("UIExclusivityGroups"))
local module_13_upvr = require(Modules:WaitForChild("UIShared"))
local module_4_upvr = require(Modules:WaitForChild("Utility"))
local module_17_upvr = require(Modules:WaitForChild("Worlds"))
local module_5_upvr = require(Modules:WaitForChild("UserInterface"):WaitForChild("SidebarUI"))
local UILegacySupportProxy = Modules:WaitForChild("UILegacySupport"):WaitForChild("UILegacySupportProxy")
if script:GetAttribute("EventsDisabled") ~= true then
	UILegacySupportProxy = false
else
	UILegacySupportProxy = true
end
module_6_upvr.RewardClaimability = table.freeze({
	Ineligible = 1;
	Claimable = 2;
	Claimed = 3;
})
module_6_upvr.EventsEnabled = not UILegacySupportProxy
if not UILegacySupportProxy then
	local module_9_upvr = require(ReplicatedStorage:WaitForChild("BUEClient"))
	local module_14_upvr = require(ReplicatedStorage:WaitForChild("BUEGameShared"))
	local module_12_upvr = require(ReplicatedStorage:WaitForChild("BUEShared"))
	local any_MemberCreate_result1_upvr = module_7_upvr.MemberCreate(module_7_upvr.EventUIGroup)
	local tbl_upvr = {
		OpenUI = nil;
		AutoLocatorSuspended = false;
		AutoLocatorUI = nil;
		EventCollectibleModels = {};
		EventCollectibleStates_ByAssetSubscription = {};
		PurchaseValidators = {};
		PurchaseThreadValid = {};
	}
	local module_16_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
	local OpenShops_upvr = ReplicatedStorage:WaitForChild("Bindables"):WaitForChild("OpenShops")
	local module_18_upvr = require(Modules:WaitForChild("UIButton"))
	local function OpenUICreate_upvr() -- Line 135, Named "OpenUICreate"
		--[[ Upvalues[7]:
			[1]: module_9_upvr (readonly)
			[2]: module_13_upvr (readonly)
			[3]: any_MemberCreate_result1_upvr (readonly)
			[4]: module_7_upvr (readonly)
			[5]: OpenShops_upvr (readonly)
			[6]: module_18_upvr (readonly)
			[7]: module_5_upvr (readonly)
		]]
		local module_15_upvr = {
			Active = not module_9_upvr.IsOpen;
			Connections = {};
			OpenButton = module_9_upvr.OpenButtonCreate({});
		}
		module_9_upvr.OpenButtonDestroy(module_15_upvr.OpenButton)
		module_15_upvr.SidebarButton = module_5_upvr.ButtonProfileRegister({
			ButtonTheme = module_18_upvr.Button.Themes.Floating;
			Icon = module_15_upvr.OpenButton.Icon.Image;
			Order = module_5_upvr.SidebarButtonOrder.Event;
			PressFunction = function(arg1) -- Line 174, Named "OpenButtonPressed"
				--[[ Upvalues[6]:
					[1]: module_9_upvr (copied, readonly)
					[2]: module_13_upvr (copied, readonly)
					[3]: any_MemberCreate_result1_upvr (copied, readonly)
					[4]: module_7_upvr (copied, readonly)
					[5]: OpenShops_upvr (copied, readonly)
					[6]: module_15_upvr (readonly)
				]]
				if module_9_upvr.IsOpen then
					module_9_upvr.RequestCloseMenu()
				else
					module_13_upvr.UIExclusivityMember.SetActive(any_MemberCreate_result1_upvr, true)
					module_7_upvr.ClosePopups()
					OpenShops_upvr:Fire(module_15_upvr.OpenButton.Button)
					module_9_upvr.PlayUIClickSound()
				end
			end;
			Style = module_5_upvr.SidebarButtonStyle.IconText;
			Text = module_15_upvr.OpenButton.Label.Text;
		}, module_5_upvr.SidebarRegion.Left)
		module_15_upvr.OpenButton.Button = module_15_upvr.SidebarButton.Button.Button
		module_15_upvr.OpenButton.Icon = module_15_upvr.SidebarButton.Button.Image
		module_15_upvr.OpenButton.Label = module_15_upvr.SidebarButton.Button.Image
		module_15_upvr.Connections[#module_15_upvr.Connections + 1] = OpenShops_upvr.Event:Connect(function(arg1) -- Line 216
			--[[ Upvalues[2]:
				[1]: module_15_upvr (readonly)
				[2]: module_9_upvr (copied, readonly)
			]]
			if arg1 and arg1 ~= module_15_upvr.OpenButton.Button then
				module_9_upvr.RequestCloseMenu()
			end
		end)
		return module_15_upvr
	end
	local function _(arg1) -- Line 233, Named "OpenUIDestroy"
		--[[ Upvalues[2]:
			[1]: module_9_upvr (readonly)
			[2]: module_5_upvr (readonly)
		]]
		for _, v in arg1.Connections do
			v:Disconnect()
		end
		module_9_upvr.OpenButtonDestroy(arg1.OpenButton)
		module_5_upvr.SidebarButtonDestroy(arg1.SidebarButton)
	end
	local function AutoLocatorCreate_upvr(arg1) -- Line 253, Named "AutoLocatorCreate"
		--[[ Upvalues[2]:
			[1]: module_9_upvr (readonly)
			[2]: module_13_upvr (readonly)
		]]
		local module = {}
		local tbl = {}
		tbl.Adornee = arg1
		tbl.ClipsDescendants = false
		tbl.Parent = module_13_upvr.PlayerGui
		module.Billboard = module_9_upvr.AutoLocatorBillboardCreate(tbl)
		return module
	end
	local function _(arg1) -- Line 282, Named "AutoLocatorDestroy"
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		module_9_upvr.AutoLocatorBillboardDestroy(arg1.Billboard)
	end
	local function AutoLocatorUICreate_upvr() -- Line 293, Named "AutoLocatorUICreate"
		--[[ Upvalues[3]:
			[1]: module_4_upvr (readonly)
			[2]: module_13_upvr (readonly)
			[3]: module_9_upvr (readonly)
		]]
		local module_3 = {
			Dirty = true;
			AutoLocators_ByTarget = {};
			ScreenGui = module_4_upvr.I("ScreenGui", module_13_upvr.Properties.ScreenGui_Legacy, {
				Name = "BUE_AutoLocator";
				Parent = module_13_upvr.PlayerGui;
			});
			Button = module_9_upvr.AutoLocatorButtonCreate({
				Parent = module_3.ScreenGui;
			});
		}
		module_3.Button.Button.Activated:Connect(function() -- Line 317
			--[[ Upvalues[1]:
				[1]: module_9_upvr (copied, readonly)
			]]
			module_9_upvr.RequestCloseAutoLocator()
		end)
		return module_3
	end
	local function AutoLocatorUIDestroy_upvr(arg1) -- Line 328, Named "AutoLocatorUIDestroy"
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		module_9_upvr.AutoLocatorButtonDestroy(arg1.Button)
		for _, v_2 in arg1.AutoLocators_ByTarget do
			module_9_upvr.AutoLocatorBillboardDestroy(v_2.Billboard)
		end
		table.clear(arg1.AutoLocators_ByTarget)
		arg1.ScreenGui:Destroy()
	end
	function module_6_upvr.CharacterRemoving() -- Line 342
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		module_9_upvr.IsOpen = false
	end
	function module_6_upvr.CollectiblesCreate(arg1) -- Line 346
		--[[ Upvalues[5]:
			[1]: tbl_upvr (readonly)
			[2]: module_17_upvr (readonly)
			[3]: module_11_upvr (readonly)
			[4]: module_9_upvr (readonly)
			[5]: module_19_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 29 start (CF ANALYSIS FAILED)
		if tbl_upvr.EventCollectibleStates_ByAssetSubscription[arg1] then return end
		local Data = arg1.Level.Data
		if not module_17_upvr.Data_ByLevel[Data].AssociatedEvents then return end
		local any_LevelGetEventCollectibleIndexRange_result1_2, any_LevelGetEventCollectibleIndexRange_result2 = module_17_upvr.LevelGetEventCollectibleIndexRange(Data)
		if not any_LevelGetEventCollectibleIndexRange_result1_2 or not any_LevelGetEventCollectibleIndexRange_result2 then return end
		local assert_result1 = assert(Data.Collectibles)
		-- KONSTANTERROR: [0] 1. Error Block 29 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [69] 53. Error Block 33 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [69.11]
		table.create(assert_result1)[1] = nil:GetPivot().Position
		-- KONSTANTERROR: [69] 53. Error Block 33 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [48] 37. Error Block 10 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [48] 37. Error Block 10 end (CF ANALYSIS FAILED)
	end
	function module_6_upvr.CollectiblesDestroy(arg1) -- Line 420
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: module_9_upvr (readonly)
		]]
		local var48 = tbl_upvr.EventCollectibleStates_ByAssetSubscription[arg1]
		if var48 then
			tbl_upvr.EventCollectibleStates_ByAssetSubscription[arg1] = nil
			for _, v_3 in var48 do
				module_9_upvr.CS_Destroy(v_3)
			end
		end
	end
	function module_6_upvr.GetEventIcon() -- Line 436
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		local var49
		local LoadedEvent_2 = module_9_upvr.LoadedEvent
		if LoadedEvent_2 then
			if type(LoadedEvent_2.Icon) == "number" then
				var49 = "rbxassetid://"..LoadedEvent_2.Icon
				return var49
			end
			var49 = LoadedEvent_2.Icon
		end
		return var49
	end
	function module_6_upvr.GetLoadedEventId() -- Line 452
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		local var51
		if module_9_upvr.LoadedEventInstanceState then
			var51 = module_9_upvr.LoadedEventInstanceState.EventId
		end
		return var51
	end
	function module_6_upvr.GetLevelDataForCollectibleIndex(arg1, arg2) -- Line 463
		--[[ Upvalues[3]:
			[1]: module_9_upvr (readonly)
			[2]: module_17_upvr (readonly)
			[3]: module_11_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var52
		if not var52 and module_9_upvr.LoadedEventInstanceState then
			var52 = module_9_upvr.LoadedEventInstanceState.EventId
		end
		if var52 then
			local any_WorldsGetWorldsHostingEvent_result1 = module_17_upvr.WorldsGetWorldsHostingEvent(var52)
			if 1 < #any_WorldsGetWorldsHostingEvent_result1 then
				warn(module_11_upvr.FormatOutput("Multiple worlds host the '%s' event", "BUEGameClient", nil, var52))
			end
			local _1 = any_WorldsGetWorldsHostingEvent_result1[1]
			if _1 then
			end
		end
		return module_17_upvr.WorldGetLevelContainingCollectible(_1, arg1)
	end
	function module_6_upvr.GetOwnedCollectibleCountForLevel(arg1, arg2) -- Line 491
		--[[ Upvalues[3]:
			[1]: module_9_upvr (readonly)
			[2]: module_17_upvr (readonly)
			[3]: module_6_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var65
		if not var65 and module_9_upvr.LoadedEventInstanceState then
			var65 = module_9_upvr.LoadedEventInstanceState.EventId
		end
		if var65 then
			if module_17_upvr.LevelHostsEvent(arg1, var65) then
				local any_LevelGetEventCollectibleIndexRange_result1_3, any_LevelGetEventCollectibleIndexRange_result2_3 = module_17_upvr.LevelGetEventCollectibleIndexRange(arg1)
				if any_LevelGetEventCollectibleIndexRange_result1_3 and any_LevelGetEventCollectibleIndexRange_result2_3 then
					for i_4 = any_LevelGetEventCollectibleIndexRange_result1_3, any_LevelGetEventCollectibleIndexRange_result2_3 do
						if module_6_upvr.IsCollectibleOwned(i_4, var65) then
						end
					end
				end
			end
		end
		return 0 + 1
	end
	function module_6_upvr.GetRewardForItemData(arg1, arg2) -- Line 521
		--[[ Upvalues[4]:
			[1]: module_9_upvr (readonly)
			[2]: module_12_upvr (readonly)
			[3]: module_14_upvr (readonly)
			[4]: module_6_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var72
		local var73
		local LoadedEventInstanceState_3 = module_9_upvr.LoadedEventInstanceState
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 10. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [11] 10. Error Block 2 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [95] 65. Error Block 29 start (CF ANALYSIS FAILED)
		if var72 and var73 then
			local var75 = module_9_upvr.EventData_ById[LoadedEventInstanceState_3.EventId]
			if var75 then
				if var73 == module_12_upvr.RewardKind.challenge then
					if var75.Claimed_ByCollectibleRewardIndex[nil] then
						return var72, var73, module_6_upvr.RewardClaimability.Claimed
					end
					if var72.Requirement <= #var75.RawSaveData.FoundCollectibles then
						return var72, var73, module_6_upvr.RewardClaimability.Claimable
					end
					return var72, var73, module_6_upvr.RewardClaimability.Ineligible
				end
				error(string.format("REWARD KIND '%i' NOT IMPLEMENTED.", var73))
			end
		end
		-- KONSTANTERROR: [95] 65. Error Block 29 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [150] 102. Error Block 21 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		do
			return var72, var73, module_6_upvr.RewardClaimability.Ineligible
		end
		-- KONSTANTERROR: [150] 102. Error Block 21 end (CF ANALYSIS FAILED)
	end
	local Products = module_14_upvr.GameData.Products
	local tbl_3_upvr = {
		[Products.UnlockAutoLocator] = function(arg1) -- Line 604
			return nil
		end;
		[Products.UnlockDailyLogin1] = function(arg1) -- Line 612
			--[[ Upvalues[1]:
				[1]: module_12_upvr (readonly)
			]]
			return arg1.DailyLoginRewards[1], module_12_upvr.RewardKind.daily_login
		end;
		[Products.UnlockDailyLogin2] = function(arg1) -- Line 617
			--[[ Upvalues[1]:
				[1]: module_12_upvr (readonly)
			]]
			return arg1.DailyLoginRewards[2], module_12_upvr.RewardKind.daily_login
		end;
		[Products.UnlockDailyLogin3] = function(arg1) -- Line 622
			--[[ Upvalues[1]:
				[1]: module_12_upvr (readonly)
			]]
			return arg1.DailyLoginRewards[3], module_12_upvr.RewardKind.daily_login
		end;
		[Products.UnlockDailyLogin4] = function(arg1) -- Line 627
			--[[ Upvalues[1]:
				[1]: module_12_upvr (readonly)
			]]
			return arg1.DailyLoginRewards[4], module_12_upvr.RewardKind.daily_login
		end;
		[Products.UnlockDailyLogin5] = function(arg1) -- Line 632
			--[[ Upvalues[1]:
				[1]: module_12_upvr (readonly)
			]]
			return arg1.DailyLoginRewards[5], module_12_upvr.RewardKind.daily_login
		end;
		[Products.UnlockPlaytime1] = function(arg1) -- Line 637
			--[[ Upvalues[1]:
				[1]: module_12_upvr (readonly)
			]]
			return arg1.PlaytimeRewards[1], module_12_upvr.RewardKind.playtime
		end;
		[Products.UnlockPlaytime2] = function(arg1) -- Line 642
			--[[ Upvalues[1]:
				[1]: module_12_upvr (readonly)
			]]
			return arg1.PlaytimeRewards[2], module_12_upvr.RewardKind.playtime
		end;
		[Products.UnlockPlaytime3] = function(arg1) -- Line 647
			--[[ Upvalues[1]:
				[1]: module_12_upvr (readonly)
			]]
			return arg1.PlaytimeRewards[3], module_12_upvr.RewardKind.playtime
		end;
		[Products.UnlockPlaytime4] = function(arg1) -- Line 652
			--[[ Upvalues[1]:
				[1]: module_12_upvr (readonly)
			]]
			return arg1.PlaytimeRewards[4], module_12_upvr.RewardKind.playtime
		end;
		[Products.UnlockPlaytime5] = function(arg1) -- Line 657
			--[[ Upvalues[1]:
				[1]: module_12_upvr (readonly)
			]]
			return arg1.PlaytimeRewards[5], module_12_upvr.RewardKind.playtime
		end;
	}
	if Products.UnlockMultiverse then
		tbl_3_upvr[Products.UnlockMultiverse] = function(arg1) -- Line 666
			--[[ Upvalues[1]:
				[1]: module_12_upvr (readonly)
			]]
			return arg1.MultiverseReward, module_12_upvr.RewardKind.multiverse
		end
	end
	if Products.UnlockSpecial then
		tbl_3_upvr[Products.UnlockSpecial] = function(arg1) -- Line 675
			--[[ Upvalues[1]:
				[1]: module_12_upvr (readonly)
			]]
			return arg1.SpecialReward, module_12_upvr.RewardKind.special
		end
	end
	function module_6_upvr.GetRewardForProduct(arg1) -- Line 682
		--[[ Upvalues[2]:
			[1]: module_9_upvr (readonly)
			[2]: tbl_3_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local LoadedEvent = module_9_upvr.LoadedEvent
		local var92 = tbl_3_upvr[arg1]
		local var93
		if LoadedEvent and var92 then
			local var92_result1, var92_result2 = var92(LoadedEvent)
			var93 = var92_result1
		end
		return var93, var92_result2
	end
	function module_6_upvr.IsCollectibleOwned(arg1, arg2) -- Line 703
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var96
		if not var96 and module_9_upvr.LoadedEventInstanceState then
			var96 = module_9_upvr.LoadedEventInstanceState.EventId
		end
		if var96 then
			local var97 = module_9_upvr.EventData_ById[var96]
			if var97 then
				if var97.Owned_ByCollectibleIndex[arg1] ~= true then
				else
				end
			end
		end
		return true
	end
	function module_6_upvr.IsLevelHostingEvent(arg1) -- Line 725
		--[[ Upvalues[2]:
			[1]: module_6_upvr (readonly)
			[2]: module_17_upvr (readonly)
		]]
		local var98 = false
		if module_6_upvr.LoadedEventInstanceState then
			var98 = module_17_upvr.LevelHostsEvent(arg1, module_6_upvr.LoadedEventInstanceState.EventId)
		end
		return var98
	end
	function module_6_upvr.IsWorldHostingEvent(arg1) -- Line 743
		--[[ Upvalues[2]:
			[1]: module_6_upvr (readonly)
			[2]: module_17_upvr (readonly)
		]]
		local var99 = false
		if module_6_upvr.LoadedEventInstanceState then
			var99 = module_17_upvr.WorldHostsEvent(arg1, module_6_upvr.LoadedEventInstanceState.EventId)
		end
		return var99
	end
	function module_6_upvr.RegisterPurchaseValidator(arg1) -- Line 761
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		if not table.find(tbl_upvr.PurchaseValidators, arg1) then
			tbl_upvr.PurchaseValidators[#tbl_upvr.PurchaseValidators + 1] = arg1
		end
	end
	tbl_3_upvr = module_12_upvr.Remotes.CollectiblesGiven
	tbl_3_upvr.OnClientEvent:Connect(function(arg1) -- Line 772
		--[[ Upvalues[2]:
			[1]: module_10_upvr (readonly)
			[2]: module_6_upvr (readonly)
		]]
		for _, v_4 in arg1 do
			local EventId = v_4.EventId
			local CollectibleIndex = v_4.CollectibleIndex
			module_10_upvr.Signals.EventCollectibleClaimed:Fire(EventId, CollectibleIndex, module_6_upvr.GetLevelDataForCollectibleIndex(CollectibleIndex, EventId))
		end
	end)
	module_6_upvr.RewardKind = module_12_upvr.RewardKind
	module_6_upvr.RewardType = module_14_upvr.RewardType
	module_6_upvr.PendingCollectiblePopups = module_9_upvr.PendingCollectiblePopups
	module_6_upvr.EventData_ById = module_9_upvr.EventData_ById
	module_6_upvr.OpenButtonDestroy = module_9_upvr.OpenButtonDestroy
	module_6_upvr.OpenButtonCreate = module_9_upvr.OpenButtonCreate
	module_6_upvr.OpenButtonUpdate = module_9_upvr.OpenButtonUpdate
	module_6_upvr.CompleteCollectiblePopup = module_9_upvr.CompleteCollectiblePopup
	module_6_upvr.ShouldCloseAutoLocator = module_9_upvr.ShouldCloseAutoLocator
	module_6_upvr.AutoLocatorBillboardDestroy = module_9_upvr.AutoLocatorBillboardDestroy
	module_6_upvr.AutoLocatorBillboardCreate = module_9_upvr.AutoLocatorBillboardCreate
	module_6_upvr.AutoLocatorBillboardUpdate = module_9_upvr.AutoLocatorBillboardUpdate
	module_6_upvr.AutoLocatorBillboardGetMetrics = module_9_upvr.AutoLocatorBillboardGetMetrics
	module_6_upvr.AutoLocatorButtonDestroy = module_9_upvr.AutoLocatorButtonDestroy
	module_6_upvr.AutoLocatorButtonCreate = module_9_upvr.AutoLocatorButtonCreate
	module_6_upvr.AutoLocatorButtonUpdate = module_9_upvr.AutoLocatorButtonUpdate
	module_6_upvr.LoadedEventInstanceState = module_9_upvr.LoadedEventInstanceState
	local UILegacySupportProxy_2_upvr = require(UILegacySupportProxy)
	local module_2_upvr = require(Modules:WaitForChild("LevelLoader"):WaitForChild("DimensionManager"))
	function module_6_upvr.RenderStepped(arg1) -- Line 827
		--[[ Upvalues[13]:
			[1]: module_9_upvr (readonly)
			[2]: tbl_upvr (readonly)
			[3]: module_17_upvr (readonly)
			[4]: module_6_upvr (readonly)
			[5]: module_13_upvr (readonly)
			[6]: module_7_upvr (readonly)
			[7]: module_10_upvr (readonly)
			[8]: OpenUICreate_upvr (readonly)
			[9]: UILegacySupportProxy_2_upvr (readonly)
			[10]: AutoLocatorUICreate_upvr (readonly)
			[11]: AutoLocatorCreate_upvr (readonly)
			[12]: AutoLocatorUIDestroy_upvr (readonly)
			[13]: module_2_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var248
		if module_9_upvr.LoadedEventInstanceStateDirty then
			var248 = module_9_upvr
			local LoadedEventInstanceState = var248.LoadedEventInstanceState
			if LoadedEventInstanceState then
				var248 = LoadedEventInstanceState.EventId
				local Collectibles = LoadedEventInstanceState.DataSentThroughRemote.Collectibles
				if Collectibles then
					for _, v_5 in Collectibles do
						({})[v_5[1]] = v_5[2]
						local var252
					end
					tbl_upvr.EventCollectibleModels[var248] = var252
					for i_7, v_6 in tbl_upvr.EventCollectibleStates_ByAssetSubscription do
						if module_17_upvr.LevelHostsEvent(i_7.Level.Data, var248) then
							for _, v_7 in v_6 do
								local var253 = var252[v_7.CollectibleIndex]
								if var253 then
									module_9_upvr.CS_SetCosmeticModel(v_7, var253, true)
								end
							end
						else
							module_6_upvr.CollectiblesDestroy(i_7)
						end
					end
				end
			end
			var248 = module_9_upvr
			var248.LoadedEventInstanceStateDirty = false
		end
		var248 = module_9_upvr
		var248 = module_9_upvr
		var248.IsOpen = module_13_upvr.UIExclusivityGroup.HasExclusivity(module_7_upvr.EventUIGroup)
		if var248.IsOpen == module_9_upvr.IsOpen then
			var248 = false
		else
			var248 = true
		end
		if var248 then
			module_10_upvr.Signals.EventMenuOpenChanged:Fire(module_9_upvr.IsOpen)
		end
		if module_9_upvr.LoadedEvent then
			if not tbl_upvr.OpenUI then
				tbl_upvr.OpenUI = OpenUICreate_upvr()
			end
			if tbl_upvr.OpenUI then
				local OpenUI = tbl_upvr.OpenUI
				if var248 then
					OpenUI.Active = not module_9_upvr.IsOpen
				end
				if OpenUI.Active then
					module_9_upvr.OpenButtonUpdate(OpenUI.OpenButton, module_9_upvr.LoadedEvent)
				end
			end
		end
		local var255 = not module_13_upvr.ExclusiveMode
		if var255 then
			var255 = not UILegacySupportProxy_2_upvr.AnyShopsOpen()
		end
		module_9_upvr.IsCollectiblePopupOpen = var255
		if module_9_upvr.ShouldCloseAutoLocator() then
			module_9_upvr.RequestCloseAutoLocator()
		end
		if module_9_upvr.IsAutoLocatorOpen then
			if not tbl_upvr.AutoLocatorUI then
				tbl_upvr.AutoLocatorUI = AutoLocatorUICreate_upvr()
			end
			if tbl_upvr.AutoLocatorUI then
				local AutoLocatorUI = tbl_upvr.AutoLocatorUI
				if module_9_upvr.AutoLocatorTargetsDirty or AutoLocatorUI.Dirty then
					local tbl_2 = {}
					for _, v_8 in module_9_upvr.AutoLocatorTargets do
						tbl_2[v_8] = true
						if not AutoLocatorUI.AutoLocators_ByTarget[v_8] then
							AutoLocatorUI.AutoLocators_ByTarget[v_8] = AutoLocatorCreate_upvr(v_8)
						end
					end
					for i_10, v_9 in AutoLocatorUI.AutoLocators_ByTarget do
						if not tbl_2[i_10] then
							AutoLocatorUI.AutoLocators_ByTarget[i_10] = nil
							module_9_upvr.AutoLocatorBillboardDestroy(v_9.Billboard)
						end
					end
					module_9_upvr.AutoLocatorTargetsDirty = false
					AutoLocatorUI.Dirty = false
				end
				for _, v_10 in AutoLocatorUI.AutoLocators_ByTarget do
					module_9_upvr.AutoLocatorBillboardUpdate(v_10.Billboard, module_9_upvr.AutoLocatorBillboardGetMetrics())
					local var258
				end
				-- KONSTANTWARNING: GOTO [280] #208
			end
		else
			var258 = tbl_upvr
			if var258.AutoLocatorUI then
				var258 = tbl_upvr.AutoLocatorUI
				AutoLocatorUIDestroy_upvr(var258)
				var258 = nil
				tbl_upvr.AutoLocatorUI = var258
			end
		end
		if module_9_upvr.LoadedEventInstanceStateDirty then
			module_6_upvr.LoadedEventInstanceState = module_9_upvr.LoadedEventInstanceState
			module_10_upvr.Signals.LoadedEventInstanceStateChanged:Fire()
			module_9_upvr.LoadedEventInstanceStateDirty = false
		end
		module_9_upvr.RenderStepped(arg1)
		if module_2_upvr.CFramesRequireTransformation() then
			for i_12, v_11 in tbl_upvr.EventCollectibleStates_ByAssetSubscription do
				for _, v_12 in v_11 do
					local VisibleState = v_12.VisibleState
					if VisibleState and VisibleState.LastUpdatedAt == arg1 then
						VisibleState.Model:PivotTo(module_2_upvr.CFrameToDimensionSpace(i_12.AssetState, VisibleState.Model:GetPivot()))
					end
				end
			end
		end
	end
	function module_6_upvr.RenderStepped_Late(arg1, arg2) -- Line 1056
		--[[ Upvalues[3]:
			[1]: tbl_upvr (readonly)
			[2]: module_13_upvr (readonly)
			[3]: module_9_upvr (readonly)
		]]
		if tbl_upvr.AutoLocatorUI then
			local AutoLocatorUI_2 = tbl_upvr.AutoLocatorUI
			local ButtonFancyY = module_13_upvr.SteppedSize.ButtonFancyY
			local var262 = ButtonFancyY * AutoLocatorUI_2.Button.SizeYToX
			AutoLocatorUI_2.Button.Button.Position = UDim2.fromOffset((module_13_upvr.ScreenSize.X * 0.5 - var262 * 0.5) // 1, math.min(module_13_upvr.ScreenSize.Y - module_13_upvr.SecondOrderProperties.DropInset - module_13_upvr.EmSize * 0.75 // 1, module_13_upvr.ScreenSize.Y * 0.8 // 1) - ButtonFancyY)
			AutoLocatorUI_2.Button.Button.Size = UDim2.fromOffset(var262, ButtonFancyY)
			module_9_upvr.AutoLocatorButtonUpdate(AutoLocatorUI_2.Button, arg2, ButtonFancyY)
		end
	end
	function module_6_upvr.GetIsOpen() -- Line 1085
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		return module_9_upvr.IsOpen
	end
	function module_6_upvr.SetIsOpen(arg1) -- Line 1088
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		module_9_upvr.IsOpen = arg1
	end
	function module_6_upvr.GetInitialSelectedObject() -- Line 1093
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		return module_9_upvr.InitialSelectedObject
	end
	function module_6_upvr.GetInitialSelectedObjectPending() -- Line 1097
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		return module_9_upvr.InitialSelectedObjectPending
	end
	function module_6_upvr.SetInitialSelectedObjectPending(arg1) -- Line 1100
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		module_9_upvr.InitialSelectedObjectPending = arg1
	end
	function module_6_upvr.GetMainEvent() -- Line 1105
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		return module_9_upvr.MainEvent
	end
	function module_6_upvr.GetLoadedEvent() -- Line 1113
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		return module_9_upvr.LoadedEvent
	end
	function module_6_upvr.GetLoadedEventInstanceState() -- Line 1120
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		return module_9_upvr.LoadedEventInstanceState
	end
	function module_6_upvr.GetLoadedEventInstanceStateDirty() -- Line 1124
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		return module_9_upvr.LoadedEventInstanceStateDirty
	end
	function module_6_upvr.SetLoadedEventInstanceStateDirty(arg1) -- Line 1127
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		module_9_upvr.LoadedEventInstanceStateDirty = arg1
	end
	function module_6_upvr.GetIsCollectiblePopupOpen() -- Line 1131
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		return module_9_upvr.IsCollectiblePopupOpen
	end
	function module_6_upvr.SetIsCollectiblePopupOpen(arg1) -- Line 1134
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		module_9_upvr.IsCollectiblePopupOpen = arg1
	end
	function module_6_upvr.GetIsAutoLocatorOpen() -- Line 1138
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		return module_9_upvr.IsAutoLocatorOpen
	end
	function module_6_upvr.SetIsAutoLocatorOpen(arg1) -- Line 1141
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		module_9_upvr.IsAutoLocatorOpen = arg1
	end
	if not module_19_upvr.IsSpeedRun4 then
		module_9_upvr.NewEventIndicatorEnabled = false
	end
	local var277_upvw = false
	function tbl_3_upvr(arg1, arg2, arg3) -- Line 1160, Named "ClosePopup"
		--[[ Upvalues[1]:
			[1]: module_9_upvr (readonly)
		]]
		local var279
		if arg2 == Enum.UserInputState.Begin and arg3.UserInputType == Enum.UserInputType.Gamepad1 then
			if module_9_upvr.IsCollectiblePopupOpen then
				if module_9_upvr.CompleteCollectiblePopup() then
					var279 = Enum.ContextActionResult.Sink
					return var279
				end
			end
			if module_9_upvr.IsOpen then
				module_9_upvr.RequestCloseMenu()
				var279 = Enum.ContextActionResult.Sink
			end
		end
		return var279
	end
	local var278_upvr = tbl_3_upvr
	if module_8_upvr.Mode == module_8_upvr.Gamepad and not var277_upvw then
		var277_upvw = true
		ContextActionService_upvr:BindAction("BUEGameClient_CLOSE_POPUP", var278_upvr, false, Enum.KeyCode.ButtonB)
	elseif var277_upvw then
		var277_upvw = false
		ContextActionService_upvr:UnbindAction("BUEGameClient_CLOSE_POPUP")
	end
	module_8_upvr.ModeChanged:Connect(function(arg1) -- Line 1183, Named "ManageGamepadBinds"
		--[[ Upvalues[4]:
			[1]: module_8_upvr (readonly)
			[2]: var277_upvw (read and write)
			[3]: ContextActionService_upvr (readonly)
			[4]: var278_upvr (readonly)
		]]
		if arg1 == module_8_upvr.Gamepad and not var277_upvw then
			var277_upvw = true
			ContextActionService_upvr:BindAction("BUEGameClient_CLOSE_POPUP", var278_upvr, false, Enum.KeyCode.ButtonB)
		elseif var277_upvw then
			var277_upvw = false
			ContextActionService_upvr:UnbindAction("BUEGameClient_CLOSE_POPUP")
		end
	end)
	module_9_upvr.CS_CollectibilityUpdated = module_9_upvr.CS_CollectibilityUpdated
	function module_9_upvr.CustomizeOpenButton(arg1) -- Line 96, Named "OpenButtonCustomize"
		--[[ Upvalues[2]:
			[1]: module_4_upvr (readonly)
			[2]: module_16_upvr (readonly)
		]]
		arg1.Button.BackgroundTransparency = 1
		arg1.Layout:Destroy()
		arg1.Corner:Destroy()
		module_4_upvr.I("ImageLabel", {
			BackgroundTransparency = 1;
			Image = "rbxassetid://1285673399";
			ImageColor3 = module_16_upvr.ButtonColor1;
			ImageTransparency = module_16_upvr.ButtonTransparency1;
			ScaleType = Enum.ScaleType.Slice;
			Size = UDim2.fromScale(1, 1);
			SliceCenter = Rect.new(8, 8, 247, 247);
			ZIndex = -1;
			Parent = arg1.Button;
		})
		module_4_upvr.PropsApply(arg1.Label, {
			AnchorPoint = Vector2.yAxis * 0.5;
			FontFace = module_16_upvr.FontFaceNormal;
			Position = UDim2.fromScale(0.4166666666666667, 0.5);
			Size = UDim2.fromScale(0.5, 0.8);
			SizeConstraint = Enum.SizeConstraint.RelativeXY;
			TextColor3 = module_16_upvr.TextColor1;
		})
		module_4_upvr.PropsApply(arg1.Icon, {
			AnchorPoint = Vector2.yAxis * 0.5;
			Position = UDim2.fromScale(0.08333333333333333, 0.5);
			Size = UDim2.fromScale(0.25, 0.8);
			SizeConstraint = Enum.SizeConstraint.RelativeXY;
			ScaleType = Enum.ScaleType.Fit;
		})
	end
	function module_9_upvr.RequestCloseMenu() -- Line 1206
		--[[ Upvalues[3]:
			[1]: module_13_upvr (readonly)
			[2]: any_MemberCreate_result1_upvr (readonly)
			[3]: tbl_upvr (readonly)
		]]
		module_13_upvr.UIExclusivityMember.SetActive(any_MemberCreate_result1_upvr, false)
		table.clear(tbl_upvr.PurchaseThreadValid)
	end
	function module_9_upvr.RequestMakePurchase(...) -- Line 1211
		--[[ Upvalues[1]:
			[1]: tbl_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		tbl_upvr.PurchaseThreadValid[coroutine.running()] = true
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [22] 20. Error Block 4 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [22] 20. Error Block 4 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [16] 14. Error Block 2 start (CF ANALYSIS FAILED)
		-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [22.7]
		-- KONSTANTERROR: [16] 14. Error Block 2 end (CF ANALYSIS FAILED)
	end
	module_9_upvr.RequestPlaySoundEffect = require(Modules:WaitForChild("Audio")).SFX.CreateAndPlay
	module_9_upvr.Init(module_14_upvr.GameData)
	return module_6_upvr
end
module_9_upvr = module_19_upvr.EventsEnabled
if module_9_upvr then
	module_9_upvr = warn
	module_14_upvr = module_11_upvr.FormatOutput
	module_12_upvr = "Events disabled this session"
	any_MemberCreate_result1_upvr = "BUEGameClient"
	module_14_upvr = module_14_upvr(module_12_upvr, any_MemberCreate_result1_upvr)
	module_9_upvr(module_14_upvr)
end
module_9_upvr = {}
module_6_upvr.RewardKind = module_9_upvr
function module_9_upvr() -- Line 1246
end
local var283_upvr = module_9_upvr
any_MemberCreate_result1_upvr = {}
local var284 = any_MemberCreate_result1_upvr
function tbl_upvr() -- Line 1248, Named "__index"
	--[[ Upvalues[1]:
		[1]: var283_upvr (readonly)
	]]
	return var283_upvr
end
var284.__index = tbl_upvr
var284.__newindex = var283_upvr
module_12_upvr = module_6_upvr
module_14_upvr = setmetatable
module_14_upvr(module_12_upvr, var284)
return module_6_upvr