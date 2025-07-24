-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:08
-- Luau version 6, Types version 3
-- Time taken: 0.024322 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local tbl_4_upvw = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_11 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_5_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_3_upvr = require(Modules:WaitForChild("ClientData"))
local module_upvr_2 = require(Modules:WaitForChild("BUEGameClient"))
local module_upvr_9 = require(Modules:WaitForChild("Tweens"))
local module_upvr_4 = require(Modules:WaitForChild("UIButton"))
local module_upvr_3 = require(Modules:WaitForChild("UIExclusivityGroups"))
local module_upvr_8 = require(Modules:WaitForChild("UILegacySupport"))
local module_4_upvr = require(Modules:WaitForChild("UIShared"))
local module_upvr_12 = require(Modules:WaitForChild("Utility"))
local module_6_upvr = require(Modules:WaitForChild("Worlds"))
local UserInterface = Modules:WaitForChild("UserInterface")
local module_upvr_10 = require(UserInterface:WaitForChild("CollectionUISystem"))
local any_MemberCreate_result1_upvr = module_upvr_3.MemberCreate(module_upvr_3.SpecialLevelUIGroup)
local tbl_8_upvr = {
	PendingJoin = nil;
	ResponseThreads = {};
	SkipPrompted = false;
}
local tbl_7_upvr = {}
local tbl_5_upvr = {}
local any_TableMerge_result1 = module_upvr_12.TableMerge(module_upvr_10.CollectionType, {
	Info_CompletedAll = 1000;
	Warning_Event_Secret = 2000;
	Warning_Event_Forbidden = 2010;
	Info_OwnAll_Secret = 3000;
	Info_OwnAll_Forbidden = 3010;
	Locked_Secret = 4000;
	Locked_Forbidden = 4010;
})
local tbl_11_upvr = {
	[module_upvr_11.CounterType.ForbiddenLevels] = {
		Info = any_TableMerge_result1.Info_OwnAll_Forbidden;
		Locked = any_TableMerge_result1.Locked_Forbidden;
		Warning = any_TableMerge_result1.Warning_Event_Forbidden;
	};
	[module_upvr_11.CounterType.SecretLevels] = {
		Info = any_TableMerge_result1.Info_OwnAll_Secret;
		Locked = any_TableMerge_result1.Locked_Secret;
		Warning = any_TableMerge_result1.Warning_Event_Secret;
	};
}
function tbl_4_upvw.External_LoadWorld(arg1, arg2, arg3) -- Line 90
	error(debug.traceback("External_LoadWorld stub called!"))
end
function tbl_4_upvw.IsOpen() -- Line 98
	--[[ Upvalues[1]:
		[1]: any_MemberCreate_result1_upvr (readonly)
	]]
	return any_MemberCreate_result1_upvr.Active
end
local any_CollectionUICreate_result1_upvr = module_upvr_10.CollectionUICreate(any_TableMerge_result1, module_upvr_12.HierarchyCreate({{any_TableMerge_result1._UIMain}, {any_TableMerge_result1.Info_CompletedAll, any_TableMerge_result1._UIMain}, {any_TableMerge_result1.Warning_Event_Secret, any_TableMerge_result1._UIMain}, {any_TableMerge_result1.Warning_Event_Forbidden, any_TableMerge_result1._UIMain}, {any_TableMerge_result1.Info_OwnAll_Secret, any_TableMerge_result1._UIMain}, {any_TableMerge_result1.Info_OwnAll_Forbidden, any_TableMerge_result1._UIMain}, {any_TableMerge_result1.Locked_Secret, any_TableMerge_result1._UIMain}, {any_TableMerge_result1.Locked_Forbidden, any_TableMerge_result1._UIMain}}), tbl_4_upvw.IsOpen)
local function RespondToThreads_upvr(...) -- Line 108, Named "RespondToThreads"
	--[[ Upvalues[1]:
		[1]: tbl_8_upvr (readonly)
	]]
	if 0 < #tbl_8_upvr.ResponseThreads then
		table.clear(tbl_8_upvr.ResponseThreads)
		for _, v in ipairs(table.clone(tbl_8_upvr.ResponseThreads)) do
			if coroutine.status(v) == "suspended" then
				task.spawn(v, ...)
			end
		end
	end
end
function any_CollectionUICreate_result1_upvr.CloseRequested() -- Line 123
	--[[ Upvalues[5]:
		[1]: module_4_upvr (readonly)
		[2]: any_MemberCreate_result1_upvr (readonly)
		[3]: RespondToThreads_upvr (readonly)
		[4]: tbl_8_upvr (readonly)
		[5]: tbl_4_upvw (read and write)
	]]
	module_4_upvr.UIExclusivityMember.SetActive(any_MemberCreate_result1_upvr, false)
	RespondToThreads_upvr()
	if tbl_8_upvr.PendingJoin then
		tbl_8_upvr.PendingJoin = nil
		task.defer(tbl_4_upvw.External_LoadWorld, tbl_8_upvr.PendingJoin, true)
	end
end
any_CollectionUICreate_result1_upvr.Name = "SpecialLevelUI"
any_CollectionUICreate_result1_upvr.DisplayOrder = module_5_upvr.DisplayOrder_SpecialLevelUI
local RequestClose_2_upvr = any_CollectionUICreate_result1_upvr.RequestClose
function any_CollectionUICreate_result1_upvr.RequestClose(...) -- Line 144
	--[[ Upvalues[2]:
		[1]: tbl_8_upvr (readonly)
		[2]: RequestClose_2_upvr (readonly)
	]]
	tbl_8_upvr.PendingJoin = nil
	RequestClose_2_upvr(...)
end
local module_upvr_13 = require(UserInterface:WaitForChild("NotificationsUI"))
local RequestCollection_2_upvr = any_CollectionUICreate_result1_upvr.RequestCollection
function tbl_4_upvw.RequestCollection(arg1, arg2) -- Line 151
	--[[ Upvalues[5]:
		[1]: module_4_upvr (readonly)
		[2]: any_MemberCreate_result1_upvr (readonly)
		[3]: module_upvr_13 (readonly)
		[4]: RequestCollection_2_upvr (readonly)
		[5]: tbl_8_upvr (readonly)
	]]
	module_4_upvr.UIExclusivityMember.SetActive(any_MemberCreate_result1_upvr, true)
	module_upvr_13.Popup.PurgeQueue(module_upvr_13.Popup.Type.FullScreenText, true)
	RequestCollection_2_upvr(arg1)
	local var64
	if arg2 then
		tbl_8_upvr.ResponseThreads[#tbl_8_upvr.ResponseThreads + 1] = arg2
		if arg2 == coroutine.running() then
			var64 = coroutine.yield()
		end
	end
	return var64
end
any_CollectionUICreate_result1_upvr.RequestCollection = tbl_4_upvw.RequestCollection
RequestClose_2_upvr = {}
local var65_upvr = RequestClose_2_upvr
RequestCollection_2_upvr = 3
var65_upvr.ButtonAspectRatio = RequestCollection_2_upvr
RequestCollection_2_upvr = 2
var65_upvr.ButtonSizeYEm = RequestCollection_2_upvr
RequestCollection_2_upvr = 1.2
var65_upvr.ButtonTextSizeEm = RequestCollection_2_upvr
RequestCollection_2_upvr = 3
var65_upvr.HeaderSizeEm = RequestCollection_2_upvr
RequestCollection_2_upvr = 1.1
var65_upvr.TextSizeEm = RequestCollection_2_upvr
RequestCollection_2_upvr = 1.3
var65_upvr.TextSizeLargeEm = RequestCollection_2_upvr
RequestCollection_2_upvr = 36
var65_upvr.WrapperSizeEm = RequestCollection_2_upvr
function RequestCollection_2_upvr(arg1, arg2) -- Line 188, Named "OpenFromContext"
	--[[ Upvalues[6]:
		[1]: module_6_upvr (readonly)
		[2]: tbl_11_upvr (readonly)
		[3]: any_CollectionUICreate_result1_upvr (readonly)
		[4]: tbl_8_upvr (readonly)
		[5]: module_4_upvr (readonly)
		[6]: module_upvr_3 (readonly)
	]]
	local var69 = false
	local var70 = module_6_upvr.Data_ByLevel[arg1]
	local var71 = tbl_11_upvr[var70.CounterType]
	if var71 then
		var69 = true
		any_CollectionUICreate_result1_upvr.RequestCollection(var71.Locked)
		if arg2 then
			if arg2.LoadIfUnlocked then
				tbl_8_upvr.PendingJoin = var70
			end
			if arg2.PromptedFromSkip then
				tbl_8_upvr.SkipPrompted = true
				module_4_upvr.UIExclusivityGroup.Deactivate(module_upvr_3.WorldUIGroup)
			end
		end
	end
	return var69
end
tbl_4_upvw.OpenFromContext = RequestCollection_2_upvr
function RequestCollection_2_upvr(arg1) -- Line 220, Named "PromptIfAllOwned"
	--[[ Upvalues[4]:
		[1]: tbl_11_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: module_3_upvr (readonly)
		[4]: tbl_4_upvw (read and write)
	]]
	local var72 = tbl_11_upvr[arg1]
	local var73
	if var72 and module_6_upvr.WorldsCounterMeetsAllLevelCounts(module_3_upvr.LocalSaveData, arg1) then
		var73 = true
		tbl_4_upvw.RequestCollection(var72.Info)
	end
	return var73
end
tbl_4_upvw.PromptIfAllOwned = RequestCollection_2_upvr
function RequestCollection_2_upvr() -- Line 240, Named "CloseAllOwned"
	--[[ Upvalues[2]:
		[1]: tbl_11_upvr (readonly)
		[2]: any_CollectionUICreate_result1_upvr (readonly)
	]]
	for _, _ in tbl_11_upvr do
		for _, v_3 in tbl_11_upvr do
			if any_CollectionUICreate_result1_upvr.CollectionTypeIsActive(v_3.Info) then
				any_CollectionUICreate_result1_upvr.RequestClose()
			end
		end
	end
end
tbl_4_upvw.CloseAllOwned = RequestCollection_2_upvr
RequestCollection_2_upvr = any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[any_TableMerge_result1._UIMain]
local Update = RequestCollection_2_upvr
local Initialize_8_upvr = Update.Initialize
function Update_upvr.Initialize(arg1) -- Line 268
	--[[ Upvalues[4]:
		[1]: Initialize_8_upvr (readonly)
		[2]: module_upvr_8 (readonly)
		[3]: module_upvr_9 (readonly)
		[4]: module_upvr_10 (readonly)
	]]
	Initialize_8_upvr(arg1)
	module_upvr_8.CloseShops()
	arg1.FadeTween = module_upvr_9.new(1, module_upvr_10.TweenDurations.Standard, Enum.EasingStyle.Sine)
	return arg1
end
local Update_3_upvr = Update.Update
function Update_upvr.Update_upvr(arg1, arg2, arg3) -- Line 283
	--[[ Upvalues[5]:
		[1]: Update_3_upvr (readonly)
		[2]: module_upvr_8 (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: module_upvr_9 (readonly)
		[5]: module_5_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	Update_3_upvr(arg1, arg2, arg3)
	local any_AnyShopsOpen_result1 = module_upvr_8.AnyShopsOpen()
	if not any_AnyShopsOpen_result1 then
		any_AnyShopsOpen_result1 = module_upvr_3.PrimaryGroup.Active
		if any_AnyShopsOpen_result1 then
			any_AnyShopsOpen_result1 = not module_upvr_3.EventUIGroup.Active
		end
	end
	if any_AnyShopsOpen_result1 then
	else
	end
	module_upvr_9.Tween(arg1.FadeTween, arg3, 1)
	if arg1.FadeTween.Dirty then
		arg1.Wrapper.BackgroundTransparency = module_5_upvr.BackgroundTransparency1 * arg1.FadeTween.Value
	end
end
function Update(arg1, arg2, arg3, arg4, arg5) -- Line 327, Named "Initialize"
	--[[ Upvalues[6]:
		[1]: module_4_upvr (readonly)
		[2]: module_upvr_12 (readonly)
		[3]: module_5_upvr (readonly)
		[4]: module_upvr_4 (readonly)
		[5]: RespondToThreads_upvr (readonly)
		[6]: any_CollectionUICreate_result1_upvr (readonly)
	]]
	local module_2 = {}
	module_2.InfoScale = arg5
	module_2.TextBoundsFlag = module_4_upvr.TextBoundsFlagCreate()
	module_2.Buttons = {}
	if arg3 then
		local tbl_14 = {
			FontFace = module_5_upvr.FontFaceBold;
		}
		tbl_14.Text = arg3
		tbl_14.TextColor3 = module_5_upvr.TextColor1
		tbl_14.Parent = arg1.Wrapper
		module_2.HeaderLabel = module_upvr_12.I("TextLabel", module_4_upvr.Properties.Text_Scaled, tbl_14)
	end
	module_2.InfoText = arg2
	local tbl_21 = {
		FontFace = module_5_upvr.FontFaceNormal;
	}
	tbl_21.Text = arg2
	tbl_21.TextColor3 = module_5_upvr.TextColor1
	tbl_21.TextXAlignment = Enum.TextXAlignment.Left
	tbl_21.Parent = arg1.Wrapper
	module_2.InfoLabel = module_upvr_12.I("TextLabel", module_4_upvr.Properties.Text, tbl_21)
	module_2.InfoBounds = module_4_upvr.CachedTextBounds_FromLabel(module_2.InfoLabel)
	module_2.InfoBounds.Flag = module_2.TextBoundsFlag
	for i_4, v_4_upvr in arg4 do
		local any_CreateFancy_result1_2 = module_upvr_4.Button.CreateFancy(arg1.Wrapper, v_4_upvr.Theme, {
			Text = v_4_upvr.Text;
		})
		any_CreateFancy_result1_2.Button.Activated:Connect(function() -- Line 378
			--[[ Upvalues[3]:
				[1]: v_4_upvr (readonly)
				[2]: RespondToThreads_upvr (copied, readonly)
				[3]: any_CollectionUICreate_result1_upvr (copied, readonly)
			]]
			if v_4_upvr.Response then
				RespondToThreads_upvr(table.unpack(v_4_upvr.Response))
			end
			any_CollectionUICreate_result1_upvr.RequestClose()
		end)
		module_2.Buttons[i_4] = any_CreateFancy_result1_2
		if i_4 == 1 then
			any_CollectionUICreate_result1_upvr.State.PendingSelection = any_CreateFancy_result1_2.Button
		end
	end
	return module_upvr_12.TableMerge(module_2, arg1)
end
tbl_7_upvr.Initialize = Update
function Update(arg1) -- Line 401, Named "Destroy"
	--[[ Upvalues[1]:
		[1]: module_upvr_4 (readonly)
	]]
	for _, v_5 in arg1.Buttons do
		module_upvr_4.Button.Destroy(v_5)
	end
end
tbl_7_upvr.Destroy = Update
function Update(arg1, arg2, arg3) -- Line 408
	--[[ Upvalues[4]:
		[1]: module_4_upvr (readonly)
		[2]: any_CollectionUICreate_result1_upvr (readonly)
		[3]: var65_upvr (readonly)
		[4]: module_upvr_4 (readonly)
	]]
	local var102
	if module_4_upvr.TextBoundsFlagCheck(arg1.TextBoundsFlag) or arg1.DrawDirty then
		local EdgePadX_2 = any_CollectionUICreate_result1_upvr.Properties.EdgePadX
		local EdgePadY_2 = any_CollectionUICreate_result1_upvr.Properties.EdgePadY
		var102 = module_4_upvr.EmSize
		local var105 = var102 * var65_upvr.WrapperSizeEm // 1
		var102 = 2 * EdgePadX_2
		local var106 = var105 - var102
		if arg1.InfoScale then
			var102 = arg1.InfoScale
		else
			var102 = 1
		end
		local var107 = module_4_upvr.EmSize * var65_upvr.TextSizeEm * var102 // 1
		if module_4_upvr.CachedTextBoundsUpdate(arg1.InfoBounds, arg1.InfoText, var107, var106) then
			arg1.InfoLabel.TextSize = var107
		end
		local any_DimTrackerCreate_result1 = module_4_upvr.DimTrackerCreate()
		local tbl_10 = {}
		local tbl_13 = {
			Position = UDim.new(0, EdgePadX_2);
			Size = UDim.new(0, var106);
		}
		module_4_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, EdgePadY_2)
		if arg1.HeaderLabel then
			module_4_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, arg1.HeaderLabel, 0, module_4_upvr.EmSize * var65_upvr.HeaderSizeEm // 1)
			module_4_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, EdgePadY_2)
			tbl_10[arg1.HeaderLabel] = tbl_13
		end
		module_4_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, arg1.InfoLabel, 0, arg1.InfoBounds.Y)
		module_4_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, EdgePadY_2)
		tbl_10[arg1.InfoLabel] = tbl_13
		if 0 < #arg1.Buttons then
			local var111 = module_4_upvr.EmSize * var65_upvr.ButtonSizeYEm // 1
			local var112 = var111 * var65_upvr.ButtonAspectRatio // 1
			local _, any_ComputeEvenlySpacedPosition_result2 = module_4_upvr.ComputeEvenlySpacedPosition(var106, #arg1.Buttons, var112, true)
			for i_6, v_6 in arg1.Buttons do
				module_upvr_4.Button.AdjustText(v_6, nil, nil, nil, module_4_upvr.EmSize * var65_upvr.ButtonTextSizeEm // 1)
				local var116 = arg1.Buttons[i_6 - 1]
				if var116 then
					module_4_upvr.DimTrackerAttach(any_DimTrackerCreate_result1, v_6.Button, var116.Button)
				else
					module_4_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, v_6.Button, 0, var111)
				end
				tbl_10[v_6.Button] = {
					Position = UDim.new(0, any_ComputeEvenlySpacedPosition_result2 + EdgePadX_2);
					Size = UDim.new(0, var112);
				}
			end
			module_4_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, any_CollectionUICreate_result1_upvr.Properties.PadY)
		end
		module_4_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, EdgePadY_2)
		module_4_upvr.DimTrackerApply(any_DimTrackerCreate_result1, tbl_10, true)
		arg1.TargetSize = UDim2.fromOffset(var105, any_DimTrackerCreate_result1.Offset)
	end
	for _, v_7 in arg1.Buttons do
		var102 = module_upvr_4.Button
		var102 = v_7
		var102.Update(var102, arg3)
	end
end
tbl_7_upvr.Update = Update
Initialize_8_upvr = "Thanks for playing all of the levels up to this point! The gods of "
Update_3_upvr = "this universe are crafting more levels to fulfill your speed running "
Update = Initialize_8_upvr..Update_3_upvr.."purpose. Check back again soon!"
Initialize_8_upvr = {}
local var118_upvr = Initialize_8_upvr
Update_3_upvr = {}
local var119 = Update_3_upvr
var119.Text = "Okay"
var119.Theme = module_upvr_4.Button.Themes.Dull
var118_upvr[1] = var119
var119 = any_CollectionUICreate_result1_upvr.CollectionMethods_ByType
local tbl_17 = {}
local function Initialize(arg1) -- Line 531
	--[[ Upvalues[3]:
		[1]: tbl_7_upvr (readonly)
		[2]: Update (readonly)
		[3]: var118_upvr (readonly)
	]]
	tbl_7_upvr.Initialize(arg1, Update, "Soon..", var118_upvr)
end
tbl_17.Initialize = Initialize
tbl_17.Destroy = tbl_7_upvr.Destroy
tbl_17.Update = tbl_7_upvr.Update
var119[any_TableMerge_result1.Info_CompletedAll] = tbl_17
Update = {}
local var121_upvr = Update
var118_upvr = {}
local var122 = var118_upvr
var119 = "Okay"
var122.Text = var119
var119 = module_upvr_4.Button.Themes.Dull
var122.Theme = var119
var121_upvr[1] = var122
var119 = "You already have all the %s. We will release more soon! Please "
var122 = var119.."check back again soon! Thank you."
local var123 = var122
var119 = tbl_11_upvr
for i_8, v_8 in var119 do
	local tbl = {}
	local formatted_upvr = string.format(var123, module_5_upvr.FrontEndNames.Counter_ByCounterType[i_8].Plural.Proper)
	local function Initialize(arg1) -- Line 568
		--[[ Upvalues[3]:
			[1]: tbl_7_upvr (readonly)
			[2]: formatted_upvr (readonly)
			[3]: var121_upvr (readonly)
		]]
		tbl_7_upvr.Initialize(arg1, formatted_upvr, nil, var121_upvr, 1.1)
	end
	tbl.Initialize = Initialize
	tbl.Destroy = tbl_7_upvr.Destroy
	tbl.Update = tbl_7_upvr.Update
	any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[v_8.Info] = tbl
end
local tbl_6_upvr = {}
local tbl_12 = {}
var119 = "Nevermind"
tbl_12.Text = var119
var119 = module_upvr_4.Button.Themes.Dull
tbl_12.Theme = var119
var119 = {}
local var128 = var119
var128[1] = false
tbl_12.Response = var128
var128 = {}
local ButtonComponentCreate_upvr = var128
ButtonComponentCreate_upvr.Text = "Buy"
ButtonComponentCreate_upvr.Theme = module_upvr_4.Button.Themes.BuyCash
ButtonComponentCreate_upvr.Response = {true}
tbl_6_upvr[1] = tbl_12
tbl_6_upvr[2] = ButtonComponentCreate_upvr
ButtonComponentCreate_upvr = "You own all the currently-released %s. We will most likely release "
ButtonComponentCreate_upvr = tbl_11_upvr
for i_9, v_9 in ButtonComponentCreate_upvr do
	formatted_upvr = module_5_upvr.FrontEndNames.Counter_ByCounterType[i_9].Plural
	local Proper = formatted_upvr.Proper
	formatted_upvr = string.format(ButtonComponentCreate_upvr.."more soon, at which point this %s will be playable 👍 Do you ".."still want to buy?", Proper, Proper)
	local tbl_9 = {}
	local function Initialize(arg1) -- Line 614
		--[[ Upvalues[3]:
			[1]: tbl_7_upvr (readonly)
			[2]: formatted_upvr (readonly)
			[3]: tbl_6_upvr (readonly)
		]]
		tbl_7_upvr.Initialize(arg1, formatted_upvr, nil, tbl_6_upvr)
	end
	tbl_9.Initialize = Initialize
	tbl_9.Destroy = tbl_7_upvr.Destroy
	tbl_9.Update = tbl_7_upvr.Update
	any_CollectionUICreate_result1_upvr.CollectionMethods_ByType[v_9.Warning] = tbl_9
	local _
end
ButtonComponentCreate_upvr = module_upvr_2.RegisterPurchaseValidator
ButtonComponentCreate_upvr(function(arg1) -- Line 627
	--[[ Upvalues[6]:
		[1]: module_upvr_11 (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_upvr_2 (readonly)
		[4]: tbl_11_upvr (readonly)
		[5]: module_6_upvr (readonly)
		[6]: tbl_4_upvw (read and write)
	]]
	local any_PlayerStateGetSaveData_result1 = module_upvr_11.PlayerStateGetSaveData(module_3_upvr.LocalPlayerState)
	if not any_PlayerStateGetSaveData_result1 then
		return false
	end
	local any_GetRewardForProduct_result1 = module_upvr_2.GetRewardForProduct(arg1)
	local var143
	if any_GetRewardForProduct_result1 and any_GetRewardForProduct_result1.RewardType == module_upvr_2.RewardType.Counter then
		local RewardData_2 = any_GetRewardForProduct_result1.RewardData
		local _1_2 = RewardData_2[1]
		local var146 = tbl_11_upvr[_1_2]
		local var147 = module_6_upvr.Data_ByCounterType[_1_2]
		if var146 and var147 and #var147.Levels < module_upvr_11.SaveDataGetCount(any_PlayerStateGetSaveData_result1, _1_2) + RewardData_2[2] then
			if tbl_4_upvw.RequestCollection(var146.Warning, coroutine.running()) ~= true then
				var143 = false
			else
				var143 = true
			end
		end
	end
	return var143
end)
ButtonComponentCreate_upvr = module_3_upvr.Signals.EventMenuOpenChanged
ButtonComponentCreate_upvr = ButtonComponentCreate_upvr:Connect
ButtonComponentCreate_upvr(function(arg1) -- Line 671
	--[[ Upvalues[2]:
		[1]: tbl_11_upvr (readonly)
		[2]: any_CollectionUICreate_result1_upvr (readonly)
	]]
	if not arg1 then
		for _, v_10 in tbl_11_upvr do
			if any_CollectionUICreate_result1_upvr.CollectionTypeIsActive(v_10.Warning) then
				any_CollectionUICreate_result1_upvr.RequestClose()
			end
		end
	end
end)
tbl_6_upvr = {}
local Update_upvr = tbl_6_upvr
ButtonComponentCreate_upvr = "Unlock one %s "
Update_upvr.ComponentPurchase = ButtonComponentCreate_upvr.."for"
ButtonComponentCreate_upvr = "Unlock one %s "
Update_upvr.ComponentStars = ButtonComponentCreate_upvr.."at"
Update_upvr.Info = "The next level is locked until you unlock it with %s."
tbl_5_upvr.Formats = Update_upvr
local module_upvr_7 = require(Modules:WaitForChild("NetworkRequestUtility"))
function Update_upvr(arg1, arg2, arg3) -- Line 730, Named "RequestUnlock"
	--[[ Upvalues[3]:
		[1]: module_upvr_11 (readonly)
		[2]: module_3_upvr (readonly)
		[3]: module_upvr_7 (readonly)
	]]
	if arg1.Request then
	else
		local tbl_3 = {
			Request = module_upvr_11.StateRequestType.CounterIncrement;
		}
		local tbl_19 = {}
		tbl_19[1] = arg2
		tbl_19[2] = arg3
		tbl_19[3] = 1
		tbl_19[4] = module_upvr_11.SaveDataGetCount(module_3_upvr.LocalSaveData, arg2) + 1
		tbl_3.Args = tbl_19
		tbl_3.Callback = coroutine.running()
		arg1.Request = tbl_3
		arg1.Request = nil
	end
end
local function TextComponentCreate_upvr(arg1, arg2, arg3) -- Line 755, Named "TextComponentCreate"
	--[[ Upvalues[3]:
		[1]: module_upvr_12 (readonly)
		[2]: module_4_upvr (readonly)
		[3]: module_5_upvr (readonly)
	]]
	local tbl_2 = {
		FontFace = module_5_upvr.FontFaceNormal;
	}
	tbl_2.Text = arg1
	tbl_2.TextColor3 = module_5_upvr.TextColor1
	tbl_2.Parent = arg3
	local any_I_result1_2 = module_upvr_12.I("TextLabel", module_4_upvr.Properties.Text_Scaled, tbl_2)
	local any_CachedTextBounds_FromLabel_result1_2 = module_4_upvr.CachedTextBounds_FromLabel(any_I_result1_2)
	any_CachedTextBounds_FromLabel_result1_2.Flag = arg2
	local module = {}
	module.Text = arg1
	module.Bounds = any_CachedTextBounds_FromLabel_result1_2
	module.Labels = {any_I_result1_2}
	return module
end
function ButtonComponentCreate_upvr(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 781, Named "ButtonComponentCreate"
	--[[ Upvalues[3]:
		[1]: module_upvr_4 (readonly)
		[2]: module_4_upvr (readonly)
		[3]: Update_upvr (readonly)
	]]
	local tbl_22 = {}
	tbl_22.Text = arg1
	local any_CreateFancy_result1 = module_upvr_4.Button.CreateFancy(arg6, arg4, tbl_22)
	local any_CachedTextBounds_FromLabel_result1 = module_4_upvr.CachedTextBounds_FromLabel(any_CreateFancy_result1.Label)
	any_CachedTextBounds_FromLabel_result1.Flag = arg5
	local module_7_upvr = {}
	module_7_upvr.Text = arg1
	module_7_upvr.Bounds = any_CachedTextBounds_FromLabel_result1
	module_7_upvr.Button = any_CreateFancy_result1
	module_7_upvr.Labels = {any_CreateFancy_result1.Label, any_CreateFancy_result1.LabelShadow}
	any_CreateFancy_result1.Button.Activated:Connect(function() -- Line 810
		--[[ Upvalues[4]:
			[1]: Update_upvr (copied, readonly)
			[2]: module_7_upvr (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
		]]
		Update_upvr(module_7_upvr, arg2, arg3)
	end)
	return module_7_upvr
end
local function _(arg1, arg2) -- Line 817, Named "ProductComponentUpdate"
	if arg2 ~= arg1.Text then
		assert(arg1.Bounds.Flag, "Missing Flag")
		arg1.Bounds.Flag.Dirty = true
		arg1.Text = arg2
		for _, v_11 in arg1.Labels do
			v_11.Text = arg2
		end
	end
end
local module_upvr_6 = require(Modules:WaitForChild("Products"))
local module_upvr_5 = require(ReplicatedStorage:WaitForChild("Settings"))
local module_upvr = require(Modules:WaitForChild("ItemDataUtility"))
local function Initialize(arg1, arg2, arg3) -- Line 836
	--[[ Upvalues[15]:
		[1]: tbl_8_upvr (readonly)
		[2]: module_4_upvr (readonly)
		[3]: module_upvr_12 (readonly)
		[4]: module_5_upvr (readonly)
		[5]: module_upvr_11 (readonly)
		[6]: tbl_5_upvr (readonly)
		[7]: TextComponentCreate_upvr (readonly)
		[8]: module_6_upvr (readonly)
		[9]: module_3_upvr (readonly)
		[10]: ButtonComponentCreate_upvr (readonly)
		[11]: module_upvr_4 (readonly)
		[12]: module_upvr_6 (readonly)
		[13]: module_upvr_5 (readonly)
		[14]: module_upvr (readonly)
		[15]: any_CollectionUICreate_result1_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 80 start (CF ANALYSIS FAILED)
	tbl_8_upvr.SkipPrompted = false
	local tbl_18 = {
		CounterTypeConnection = nil;
		TextBoundsFlag = module_4_upvr.TextBoundsFlagCreate();
		Components = {};
	}
	local tbl_20 = {}
	if tbl_8_upvr.SkipPrompted then
		local any_I_result1 = module_upvr_12.I("TextLabel", module_4_upvr.Properties.Text, {
			FontFace = module_5_upvr.FontFaceBold;
			Text = "So you want to skip..\nBut first..";
			TextColor3 = module_5_upvr.TextColor1;
			TextXAlignment = Enum.TextXAlignment.Left;
			Parent = arg1.Wrapper;
		})
		tbl_20.Object = any_I_result1
		tbl_20.Bounds = module_4_upvr.CachedTextBounds_FromLabel(any_I_result1)
		tbl_20.Bounds.Flag = tbl_18.TextBoundsFlag
	else
		tbl_20.Object = module_upvr_12.I("ImageLabel", {
			BackgroundTransparency = 1;
			Image = module_5_upvr.LockImage;
			ImageColor3 = module_5_upvr.TextColor1;
			Parent = arg1.Wrapper;
		})
	end
	tbl_18.Header = tbl_20
	local var176
	if arg3[1] == module_upvr_11.UnlockMethod.Stars then
		var176 = tbl_5_upvr.Formats.ComponentStars
	else
		var176 = tbl_5_upvr.Formats.ComponentPurchase
	end
	local TextBoundsFlag = tbl_18.TextBoundsFlag
	tbl_18.Components[#tbl_18.Components + 1] = TextComponentCreate_upvr(string.format(var176, module_5_upvr.FrontEndNames.Counter_ByCounterType[arg2].Singular.Proper), TextBoundsFlag, arg1.Wrapper)
	-- KONSTANTERROR: [0] 1. Error Block 80 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [484] 338. Error Block 43 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [484] 338. Error Block 43 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [157] 104. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [157] 104. Error Block 10 end (CF ANALYSIS FAILED)
end
tbl_5_upvr.Initialize = Initialize
function Update_upvr(arg1) -- Line 1099, Named "Destroy"
	--[[ Upvalues[1]:
		[1]: module_upvr_4 (readonly)
	]]
	if arg1.CounterTypeConnection then
		arg1.CounterTypeConnection:Disconnect()
		arg1.CounterTypeConnection = nil
	end
	for _, v_12 in arg1.Components do
		v_12.Request = nil
		if v_12.Button then
			module_upvr_4.Button.Destroy(v_12.Button)
		end
	end
end
tbl_5_upvr.Destroy = Update_upvr
function Update_upvr(arg1, arg2, arg3) -- Line 1116, Named "Update"
	--[[ Upvalues[4]:
		[1]: module_4_upvr (readonly)
		[2]: any_CollectionUICreate_result1_upvr (readonly)
		[3]: var65_upvr (readonly)
		[4]: module_upvr_4 (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var220
	if module_4_upvr.TextBoundsFlagCheck(arg1.TextBoundsFlag) or arg1.DrawDirty then
		local EdgePadX = any_CollectionUICreate_result1_upvr.Properties.EdgePadX
		local EdgePadY = any_CollectionUICreate_result1_upvr.Properties.EdgePadY
		local var223 = module_4_upvr.EmSize * var65_upvr.TextSizeLargeEm // 1
		local var224 = module_4_upvr.EmSize * var65_upvr.ButtonSizeYEm // 1
		local var225 = var224 * var65_upvr.ButtonAspectRatio // 1
		local var226 = module_4_upvr.EmSize * 0.5 // 1
		local var227 = var224 * 0.6 // 1
		local Object = arg1.Header.Object
		local Bounds = arg1.Header.Bounds
		if Bounds then
			var220 = module_4_upvr.EmSize * var65_upvr.HeaderSizeEm // 1
			module_4_upvr.CachedTextBoundsUpdate(Bounds, Object.Text, var220)
			Object.TextSize = var220
			local _ = Bounds.X
		else
			var220 = module_4_upvr.EmSize * 10
		end
		var220 = module_4_upvr.CachedTextBoundsUpdate(arg1.InfoBounds, arg1.InfoText, var223)
		if var220 then
			var220 = arg1.InfoLabel
			var220.TextSize = var223
			var220 = arg1.InfoLabel
			var220.Size = UDim2.fromOffset(arg1.InfoBounds.X, arg1.InfoBounds.Y)
		end
		var220 = var226 * #arg1.Components - 1
		for _, v_13 in arg1.Components do
			local var231
			if v_13.Button then
				var231 = module_4_upvr.EmSize * var65_upvr.ButtonTextSizeEm // 1
			else
				var231 = var223
			end
			module_4_upvr.CachedTextBoundsUpdate(v_13.Bounds, v_13.Text, var231)
			if v_13.Button then
				var220 += var225
				var231 = var225 * module_upvr_4.Button.Properties.FancySizeX.Scale
				if v_13.Icon then
					var231 = var227
				else
					var231 = 0
				end
				local minimum = math.min(v_13.Bounds.X, var231 // 1 - var231)
				if v_13.Icon then
					local var233 = minimum + var227 + var227 * 0.25 // 1
					module_upvr_4.Button.AdjustText(v_13.Button, (var225 * 0.525 - (var233 - minimum) * 0.5) // 1)
					v_13.Icon.Size = UDim2.fromOffset(var227, var227)
					v_13.Icon.Position = UDim2.new(0, (var225 * 0.525 + (var233 - var227) * 0.5) // 1, 0.45, 0)
					-- KONSTANTWARNING: GOTO [251] #180
				end
			else
				var220 += v_13.Bounds.X
			end
			for _, v_14 in v_13.Labels do
				v_14.Size = UDim2.fromOffset(minimum, v_13.Bounds.Y)
				v_14.TextSize = v_13.Bounds.TextSize
				local _
			end
		end
		local maximum = math.max(module_4_upvr.EmSize * var65_upvr.WrapperSizeEm, var220 + 2 * EdgePadX, arg1.InfoBounds.X + 2 * EdgePadX)
		local any_DimTrackerCreate_result1_2 = module_4_upvr.DimTrackerCreate()
		module_4_upvr.DimTrackerPad(any_DimTrackerCreate_result1_2, 0, EdgePadY)
		module_4_upvr.DimTrackerAdd(any_DimTrackerCreate_result1_2, Object, 0, var220 // 1)
		module_4_upvr.DimTrackerPad(any_DimTrackerCreate_result1_2, 0, any_CollectionUICreate_result1_upvr.Properties.PadY)
		module_4_upvr.DimTrackerAdd(any_DimTrackerCreate_result1_2, arg1.InfoLabel, 0, arg1.InfoBounds.Y)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module_4_upvr.DimTrackerPad(any_DimTrackerCreate_result1_2, 0, any_CollectionUICreate_result1_upvr.Properties.PadY)
		local Offset = any_DimTrackerCreate_result1_2.Offset
		module_4_upvr.DimTrackerPad(any_DimTrackerCreate_result1_2, 0, var224 + EdgePadY)
		local tbl_16 = {}
		local tbl_15 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_15.Position = UDim.new(0, (maximum * 0.5 - var220 // 1 * 0.5) // 1)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_15.Size = UDim.new(0, var220 // 1)
		tbl_16[Object] = tbl_15
		tbl_16[arg1.InfoLabel] = {
			Position = UDim.new(0, (maximum * 0.5 - arg1.InfoBounds.X * 0.5) // 1);
			Size = UDim.new(0, arg1.InfoBounds.X);
		}
		module_4_upvr.DimTrackerApply(any_DimTrackerCreate_result1_2, tbl_16, true)
		local var241 = (maximum * 0.5 - var220 * 0.5) // 1
		for _, v_15 in arg1.Components do
			if v_15.Button then
				v_15.Button.Button.Position = UDim2.fromOffset(var241, Offset)
				v_15.Button.Button.Size = UDim2.fromOffset(var225, var224)
			else
				for _, v_16 in v_15.Labels do
					v_16.Position = UDim2.fromOffset((var241) + (var225 + var226), Offset + (var224 * 0.5 - var223 * 0.5) // 1)
					local _
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			end
		end
		arg1.TargetSize = UDim2.fromOffset(maximum, any_DimTrackerCreate_result1_2.Offset)
	end
	for _, v_17 in arg1.Components do
		if v_17.Button then
			module_upvr_4.Button.Update(v_17.Button, arg3)
		end
	end
end
tbl_5_upvr.Update = Update_upvr
Update_upvr = any_CollectionUICreate_result1_upvr.CollectionMethods_ByType
TextComponentCreate_upvr = any_TableMerge_result1.Locked_Forbidden
ButtonComponentCreate_upvr = {}
local var243 = ButtonComponentCreate_upvr
local function Initialize(arg1) -- Line 1297
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: module_upvr_11 (readonly)
	]]
	tbl_5_upvr.Initialize(arg1, module_upvr_11.CounterType.ForbiddenLevels, {module_upvr_11.UnlockMethod.Stars, module_upvr_11.UnlockMethod.Product})
end
var243.Initialize = Initialize
var243.Destroy = tbl_5_upvr.Destroy
var243.Update = tbl_5_upvr.Update
Update_upvr[TextComponentCreate_upvr] = var243
Update_upvr = any_CollectionUICreate_result1_upvr.CollectionMethods_ByType
TextComponentCreate_upvr = any_TableMerge_result1.Locked_Secret
var243 = {}
local var245 = var243
function var245.Initialize(arg1) -- Line 1314
	--[[ Upvalues[2]:
		[1]: tbl_5_upvr (readonly)
		[2]: module_upvr_11 (readonly)
	]]
	tbl_5_upvr.Initialize(arg1, module_upvr_11.CounterType.SecretLevels, {module_upvr_11.UnlockMethod.Currency, module_upvr_11.UnlockMethod.Product})
end
var245.Destroy = tbl_5_upvr.Destroy
var245.Update = tbl_5_upvr.Update
Update_upvr[TextComponentCreate_upvr] = var245
Update_upvr = module_upvr_12.TableMerge
TextComponentCreate_upvr = tbl_4_upvw
var245 = any_CollectionUICreate_result1_upvr
Update_upvr = Update_upvr(TextComponentCreate_upvr, var245)
local var247 = Update_upvr
tbl_4_upvw = var247
return var247