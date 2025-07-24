-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:40
-- Luau version 6, Types version 3
-- Time taken: 0.097301 seconds

local module_15_upvr = require(game.ReplicatedStorage:WaitForChild("BUUI"))
local module_6_upvr = require(game.ReplicatedStorage:WaitForChild("BUEShared"))
local MarketplaceService_upvr = game:GetService("MarketplaceService")
local Players_upvr = game:GetService("Players")
local LocalPlayer_upvr = Players_upvr.LocalPlayer
local PlayerGui_upvr = LocalPlayer_upvr:WaitForChild("PlayerGui")
local module_7_upvr = {
	IsOpen = false;
}
function module_7_upvr.RequestCloseMenu() -- Line 36
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	module_7_upvr.IsOpen = false
end
module_7_upvr.InitialSelectedObject = nil
module_7_upvr.InitialSelectedObjectPending = false
module_7_upvr.MainEvent = nil
module_7_upvr.LoadedEvent = nil
module_7_upvr.LoadedEventInstanceState = nil
module_7_upvr.LoadedEventInstanceStateDirty = false
module_7_upvr.IsCollectiblePopupOpen = false
module_7_upvr.PendingCollectiblePopups = {}
function module_7_upvr.RequestCloseCollectiblePopup() -- Line 91
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	module_7_upvr.IsCollectiblePopupOpen = false
end
module_7_upvr.CS_VisibilityUpdated = nil
module_7_upvr.CS_CollectibilityUpdated = nil
module_7_upvr.CustomizeOpenButton = nil
module_7_upvr.NewEventIndicatorEnabled = true
module_7_upvr.IsAutoLocatorOpen = false
function module_7_upvr.RequestCloseAutoLocator() -- Line 147
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	module_7_upvr.IsAutoLocatorOpen = false
end
function module_7_upvr.RequestOpenAutoLocator() -- Line 156
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	module_7_upvr.IsAutoLocatorOpen = true
	return true
end
module_7_upvr.AutoLocatorTargets = {}
module_7_upvr.AutoLocatorTargetsDirty = false
module_7_upvr.EventData_ById = {}
module_7_upvr.VIPStatusChangedCallback = nil
function module_7_upvr.RequestPlaySoundEffect(arg1) -- Line 181
	local Sound_upvr = Instance.new("Sound")
	for i, v in arg1 do
		Sound_upvr[i] = v
	end
	Sound_upvr.Parent = game:GetService("SoundService")
	Sound_upvr.Ended:Once(function() -- Line 187
		--[[ Upvalues[1]:
			[1]: Sound_upvr (readonly)
		]]
		Sound_upvr:Destroy()
	end)
	Sound_upvr:Play()
end
function module_7_upvr.RequestMakePurchase(arg1, arg2) -- Line 196
	return true
end
local function _(arg1, ...) -- Line 247, Named "PropsMerge"
	local clone_7 = table.clone(arg1)
	for _, v_2 in {...} do
		for i_3, v_3 in v_2 do
			clone_7[i_3] = v_3
		end
	end
	return clone_7
end
local function PropsApply_upvr(arg1, arg2, ...) -- Line 257, Named "PropsApply"
	local var36 = arg2
	local args_list = {...}
	if args_list[1] then
		var36 = table.clone(var36)
		for _, v_4 in args_list do
			for i_5, v_5 in v_4 do
				var36[i_5] = v_5
			end
		end
	end
	for i_6, v_6 in var36 do
		if i_6 ~= "Parent" then
			arg1[i_6] = v_6
		end
	end
	if var36.Parent then
		arg1.Parent = var36.Parent
	end
end
local function I_upvr(arg1, arg2, ...) -- Line 281, Named "I"
	--[[ Upvalues[1]:
		[1]: PropsApply_upvr (readonly)
	]]
	local any = Instance.new(arg1)
	PropsApply_upvr(any, arg2, ...)
	return any
end
local function C_upvr(arg1, arg2, ...) -- Line 286, Named "C"
	--[[ Upvalues[1]:
		[1]: PropsApply_upvr (readonly)
	]]
	local clone_6 = arg1:Clone()
	PropsApply_upvr(clone_6, arg2, ...)
	return clone_6
end
local function _(arg1, arg2, arg3, arg4) -- Line 331, Named "RecFromMinMax"
	local module_21 = {}
	module_21.XMin = arg1
	module_21.YMin = arg2
	module_21.XMax = arg3
	module_21.YMax = arg4
	module_21.XSize = arg3 - arg1
	module_21.YSize = arg4 - arg2
	return module_21
end
local function _(arg1, arg2, arg3, arg4) -- Line 345, Named "RecFromSizePos"
	local module_12 = {}
	module_12.XMin = arg3
	module_12.YMin = arg4
	module_12.XMax = arg3 + arg1
	module_12.YMax = arg4 + arg2
	module_12.XSize = arg1
	module_12.YSize = arg2
	return module_12
end
local function _(arg1, arg2, arg3) -- Line 364, Named "RecSplitX"
	local var42 = arg1.XMin + arg2
	local XMin_2 = arg1.XMin
	local YMin = arg1.YMin
	local YMax_4 = arg1.YMax
	local var47 = var42 + (arg3 or 0)
	local YMin_6 = arg1.YMin
	local XMax_5 = arg1.XMax
	local YMax_17 = arg1.YMax
	return {
		XMin = XMin_2;
		YMin = YMin;
		XMax = var42;
		YMax = YMax_4;
		XSize = var42 - XMin_2;
		YSize = YMax_4 - YMin;
	}, {
		XMin = var47;
		YMin = YMin_6;
		XMax = XMax_5;
		YMax = YMax_17;
		XSize = XMax_5 - var47;
		YSize = YMax_17 - YMin_6;
	}
end
local function _(arg1, arg2, arg3) -- Line 370, Named "RecSplitY"
	local var52 = arg1.YMin + arg2
	local XMin_7 = arg1.XMin
	local YMin_13 = arg1.YMin
	local XMax_13 = arg1.XMax
	local XMin_6 = arg1.XMin
	local var58 = var52 + (arg3 or 0)
	local XMax = arg1.XMax
	local YMax_13 = arg1.YMax
	return {
		XMin = XMin_7;
		YMin = YMin_13;
		XMax = XMax_13;
		YMax = var52;
		XSize = XMax_13 - XMin_7;
		YSize = var52 - YMin_13;
	}, {
		XMin = XMin_6;
		YMin = var58;
		XMax = XMax;
		YMax = YMax_13;
		XSize = XMax - XMin_6;
		YSize = YMax_13 - var58;
	}
end
local function _(arg1, arg2, arg3) -- Line 379, Named "RecSliceX"
	local var62 = arg1.XMin + arg2
	local YMin_3 = arg1.YMin
	local var64
	if arg3 then
		var64 = arg1.XMin + arg3
	else
		var64 = arg1.XMax
	end
	local YMax_16 = arg1.YMax
	return {
		XMin = var62;
		YMin = YMin_3;
		XMax = var64;
		YMax = YMax_16;
		XSize = var64 - var62;
		YSize = YMax_16 - YMin_3;
	}
end
local function _(arg1, arg2, arg3) -- Line 386, Named "RecSliceY"
	local XMin_3 = arg1.XMin
	local var68 = arg1.YMin + arg2
	local XMax_3 = arg1.XMax
	local var70
	if arg3 then
		var70 = arg1.YMin + arg3
	else
		var70 = arg1.YMax
	end
	return {
		XMin = XMin_3;
		YMin = var68;
		XMax = XMax_3;
		YMax = var70;
		XSize = XMax_3 - XMin_3;
		YSize = var70 - var68;
	}
end
local function _(arg1, arg2, arg3, arg4, arg5) -- Line 398, Named "RecSlice"
	local var72 = arg1.XMin + arg2
	local YMin_5 = arg1.YMin
	local var74 = YMin_5 + arg3
	local var75
	if arg4 then
		var75 = arg1.XMin
		YMin_5 = var75 + arg4
	else
		YMin_5 = arg1.XMax
	end
	if arg5 then
		var75 = arg1.YMin + arg5
	else
		var75 = arg1.YMax
	end
	return {
		XMin = var72;
		YMin = var74;
		XMax = YMin_5;
		YMax = var75;
		XSize = YMin_5 - var72;
		YSize = var75 - var74;
	}
end
local function _(arg1, arg2) -- Line 414, Named "RecExtend"
	local var77 = arg1.XMin - arg2
	local var78 = arg1.YMin - arg2
	local var79 = arg1.XMax + arg2
	local var80 = arg1.YMax + arg2
	return {
		XMin = var77;
		YMin = var78;
		XMax = var79;
		YMax = var80;
		XSize = var79 - var77;
		YSize = var80 - var78;
	}
end
local function _(arg1, arg2, arg3) -- Line 423, Named "RecMoveOriginTo"
	local clone = table.clone(arg1)
	clone.XMin -= arg2
	clone.YMin -= arg3
	clone.XMax -= arg2
	clone.YMax -= arg3
	return clone
end
local function _(arg1, arg2, arg3) -- Line 432, Named "RecMoveOriginFrom"
	local clone_2 = table.clone(arg1)
	clone_2.XMin += arg2
	clone_2.YMin += arg3
	clone_2.XMax += arg2
	clone_2.YMax += arg3
	return clone_2
end
local function _(arg1) -- Line 442, Named "RecToOwnSpace"
	local XMin_8 = arg1.XMin
	local YMin_11 = arg1.YMin
	local clone_9 = table.clone(arg1)
	clone_9.XMin -= XMin_8
	clone_9.YMin -= YMin_11
	clone_9.XMax -= XMin_8
	clone_9.YMax -= YMin_11
	return clone_9
end
local function _(arg1, arg2) -- Line 446, Named "RecToObjectSpace"
	local XMin_4 = arg1.XMin
	local YMin_4 = arg1.YMin
	local clone_5 = table.clone(arg2)
	clone_5.XMin -= XMin_4
	clone_5.YMin -= YMin_4
	clone_5.XMax -= XMin_4
	clone_5.YMax -= YMin_4
	return clone_5
end
local function _(arg1, arg2) -- Line 449, Named "RecToWorldSpace"
	local XMin_5 = arg1.XMin
	local YMin_9 = arg1.YMin
	local clone_10 = table.clone(arg2)
	clone_10.XMin += XMin_5
	clone_10.YMin += YMin_9
	clone_10.XMax += XMin_5
	clone_10.YMax += YMin_9
	return clone_10
end
local function _(arg1) -- Line 453, Named "RecPixelPos"
	return UDim2.fromOffset(arg1.XMin, arg1.YMin)
end
local function _(arg1) -- Line 456, Named "RecPixelSize"
	return UDim2.fromOffset(arg1.XSize, arg1.YSize)
end
local function _(arg1, arg2) -- Line 459, Named "RecApply"
	arg2.Position = UDim2.fromOffset(arg1.XMin, arg1.YMin)
	arg2.Size = UDim2.fromOffset(arg1.XSize, arg1.YSize)
end
local function _(arg1, arg2) -- Line 464, Named "RecEqual"
	local var95 = false
	if arg1.XMin == arg2.XMin then
		var95 = false
		if arg1.YMin == arg2.YMin then
			var95 = false
			if arg1.XMax == arg2.XMax then
				if arg1.YMax ~= arg2.YMax then
					var95 = false
				else
					var95 = true
				end
			end
		end
	end
	return var95
end
local var97_upvr = {
	XMin = 0;
	YMin = 0;
	XMax = 0;
	YMax = 0;
	XSize = 0;
	YSize = 0;
}
table.freeze(var97_upvr)
local tbl_29_upvr = {
	BackgroundImage = "rbxassetid://15948847695";
	BackgroundImageTransparency = 0.8;
	EmSizeMax = 28;
	SizeYMax = 900;
	ButtonBorderEm = 0.12222222222222222;
	ButtonStrokeEm = 0.08333333333333333;
	TextStrokeEm = 0.1111111111111111;
	TopButtonStrokeEm = 0.06;
	TabButtonGreyed = {
		Base = Color3.fromRGB(96, 96, 96);
		Midtone = Color3.fromRGB(133, 133, 133);
		Highlight = Color3.fromRGB(180, 180, 180);
		Gradient = Color3.fromRGB(195, 195, 195);
	};
	CloseButton = {
		Base = Color3.fromRGB(88, 0, 0);
		Midtone = Color3.fromRGB(141, 0, 0);
		Highlight = Color3.fromRGB(177, 0, 0);
		Gradient = Color3.fromRGB(255, 67, 67);
	};
	NeutralBackground = Color3.fromRGB(52, 52, 52);
	ButtonStrokeTransparency = 0.1;
	TextStrokeTransparency = 0.7;
	TileBackerTransparency = 0.55;
	TileOverlayTransparency = 0.35;
}
local utf8_char_result1_upvr = utf8.char(57346)
local tbl_5_upvr = {
	Text = "";
	BackgroundTransparency = 0;
	BorderSizePixel = 0;
	AutoButtonColor = false;
}
local tbl_34_upvr = {
	BackgroundTransparency = 1;
}
local tbl_40_upvr = {
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	LineJoinMode = Enum.LineJoinMode.Round;
}
local tbl_35_upvr = {
	ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual;
	LineJoinMode = Enum.LineJoinMode.Round;
}
local function _(arg1) -- Line 563, Named "FontClone"
	local Font_new_result1 = Font.new(arg1.Family, arg1.Weight, arg1.Style)
	Font_new_result1.Bold = arg1.Bold
	return Font_new_result1
end
local Font_new_result1_3_upvr = Font.new("rbxasset://fonts/families/FredokaOne.json", Enum.FontWeight.Regular)
local Font_new_result1_2 = Font.new(Font_new_result1_3_upvr.Family, Font_new_result1_3_upvr.Weight, Font_new_result1_3_upvr.Style)
Font_new_result1_2.Bold = Font_new_result1_3_upvr.Bold
local var109_upvr = Font_new_result1_2
var109_upvr.Style = Enum.FontStyle.Italic
local function _(arg1, arg2, arg3) -- Line 575, Named "Lerp"
	return (1 - arg3) * arg1 + arg3 * arg2
end
local function _(arg1, arg2, arg3) -- Line 578, Named "InvLerp"
	return (arg3 - arg1) / (arg2 - arg1)
end
local function _(arg1) -- Line 585, Named "GetAssetString"
	if type(arg1) == "number" then
		return "rbxassetid://"..arg1
	end
	return arg1
end
local function _(arg1) -- Line 589, Named "GetCreditText"
	return "FREE (%d left)":format(arg1)
end
local function _(arg1) -- Line 592, Named "GetPriceText"
	--[[ Upvalues[1]:
		[1]: utf8_char_result1_upvr (readonly)
	]]
	local UpdatedPrice_3 = arg1.UpdatedPrice
	if not UpdatedPrice_3 then
		UpdatedPrice_3 = arg1.Price
	end
	return "%d%s":format(UpdatedPrice_3, utf8_char_result1_upvr)
end
local tbl_44_upvr = {
	RawData = {
		UnspentPlaytime = 0;
		VIPStatus = module_6_upvr.VIPStatus.none;
		HasFullAccess = false;
	};
	PlaytimeUpdatedAt = os.clock();
	Credit_ByProductId = {};
}
local tbl_13_upvr = {
	RawTempData = {
		MultiverseBadgeCounts = {
			SpeedRun4 = {0, 0};
			RealisticHandRP = {0, 0};
			RealisticSprayPaint = {0, 0};
		};
	};
	RawSaveData = {
		HighestClaimedDailyLoginIndex = 0;
		SpentPlaytime = 0;
		HighestClaimedPlaytimeIndex = 0;
	};
	Claimed_ByCollectibleRewardIndex = {};
	Owned_ByCollectibleIndex = {};
}
local tbl_33_upvr = {
	EventSpec_ById = {};
	EventModuleInstance_ById = {};
	SeenCurrentEvent = false;
	LoadStatus = module_6_upvr.LoadStatus.head_loading;
	PlayerData = nil;
	EventData_ById = module_7_upvr.EventData_ById;
	CanCheckVIPPaymentAt = (-math.huge);
	CollectibilityDirty = false;
	CollectibleStates = {};
	CollectibleStates_Dirty = {};
	CollectibleStates_Visible = {};
	ReplicatedCollectibles_ById = {};
	SG_F = nil;
	SG_C = nil;
}
local var121_upvw
local tbl_31_upvr = {}
local tbl_12_upvr = {}
local function _() -- Line 720, Named "ShouldReportEventSeen"
	--[[ Upvalues[2]:
		[1]: tbl_33_upvr (readonly)
		[2]: module_6_upvr (readonly)
	]]
	local MainEventId = tbl_33_upvr.MainEventId
	if MainEventId then
		MainEventId = false
		if tbl_33_upvr.LoadedEventId == tbl_33_upvr.MainEventId then
			MainEventId = false
			if module_6_upvr.LoadStatus.everything_loaded <= tbl_33_upvr.LoadStatus then
				if tbl_33_upvr.PlayerData.RawData.SeenEvent == tbl_33_upvr.MainEventId then
					MainEventId = false
				else
					MainEventId = true
				end
			end
		end
	end
	return MainEventId
end
local function HasNewEvent_upvr() -- Line 728, Named "HasNewEvent"
	--[[ Upvalues[3]:
		[1]: tbl_33_upvr (readonly)
		[2]: module_7_upvr (readonly)
		[3]: module_6_upvr (readonly)
	]]
	local var127 = false
	if not tbl_33_upvr.SeenCurrentEvent then
		if tbl_33_upvr.MainEventId and tbl_33_upvr.LoadedEventId == tbl_33_upvr.MainEventId and module_7_upvr.LoadedEvent and module_6_upvr.LoadStatus.everything_loaded <= tbl_33_upvr.LoadStatus then
			if tbl_33_upvr.PlayerData.RawData.SeenEvent ~= tbl_33_upvr.MainEventId then
				var127 = true
				return var127
			end
			local function INLINED() -- Internal function, doesn't exist in bytecode
				local var128 = tbl_33_upvr.EventData_ById[tbl_33_upvr.MainEventId]
				return var128
			end
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				local var129 = var128.RawTempData.MultiverseBadgeCounts[module_6_upvr.CurrentLocation.Id]
				return var129 == nil
			end
			if module_7_upvr.LoadedEvent.MultiverseReward and INLINED() and module_6_upvr.CurrentLocation and (INLINED_2() or var129[1] < module_7_upvr.LoadedEvent.MultiverseReward.Requirement) then
				var127 = true
			end
		end
	end
	return var127
end
local function ProductPurchaseWithCredit_upvr(arg1, arg2) -- Line 758, Named "ProductPurchaseWithCredit"
	--[[ Upvalues[5]:
		[1]: tbl_33_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: module_7_upvr (readonly)
		[4]: MarketplaceService_upvr (readonly)
		[5]: LocalPlayer_upvr (readonly)
	]]
	local LoadStatus = tbl_33_upvr.LoadStatus
	if LoadStatus == module_6_upvr.LoadStatus.everything_loaded then
		if arg2[arg1.Id] == nil then
			LoadStatus = false
		else
			LoadStatus = true
		end
		if module_7_upvr.RequestMakePurchase(arg1, LoadStatus) then
			if LoadStatus then
				module_6_upvr.Remotes.UseProductCredit:FireServer(arg1.Id)
				return
			end
			MarketplaceService_upvr:PromptProductPurchase(LocalPlayer_upvr, arg1.Id)
		end
	end
end
task.spawn(function() -- Line 779
	game:GetService("ContentProvider"):PreloadAsync({"rbxassetid://9059910130", "rbxassetid://17060225431", "rbxassetid://16945092579"})
end)
function module_7_upvr.PlayUIClickSound() -- Line 794
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	module_7_upvr.RequestPlaySoundEffect({
		SoundId = "rbxassetid://9059910130";
		Volume = 0.2;
	})
end
tbl_31_upvr[module_6_upvr.Remotes.RewardClaimed] = function() -- Line 801
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	module_7_upvr.RequestPlaySoundEffect({
		SoundId = "rbxassetid://17060225431";
		Volume = 0.5;
	})
end
tbl_31_upvr[module_6_upvr.Remotes.LoadStatusChanged] = function(arg1) -- Line 808
	--[[ Upvalues[1]:
		[1]: tbl_33_upvr (readonly)
	]]
	tbl_33_upvr.LoadStatus = arg1
end
tbl_31_upvr[module_6_upvr.Remotes.PlayerDataReplicate] = function(arg1) -- Line 812
	--[[ Upvalues[3]:
		[1]: module_6_upvr (readonly)
		[2]: tbl_33_upvr (readonly)
		[3]: module_7_upvr (readonly)
	]]
	for _, v_7 in arg1 do
		local var146
		if v_7.Kind == var146 then
			var146 = v_7.Data.ProductCredit
			if var146 then
				for _, v_8 in var146 do
					({})[v_8[1]] = v_8[2]
					local var147
				end
			end
			if tbl_33_upvr.PlayerData.RawData.VIPStatus == v_7.Data.VIPStatus then
				var146 = false
			else
				var146 = true
			end
			tbl_33_upvr.PlayerData = {
				RawData = v_7.Data;
				PlaytimeUpdatedAt = os.clock();
				Credit_ByProductId = var147;
			}
			if var146 and module_7_upvr.VIPStatusChangedCallback then
				task.spawn(module_7_upvr.VIPStatusChangedCallback, v_7.Data.VIPStatus)
			end
		end
	end
end
tbl_31_upvr[module_6_upvr.Remotes.EventDataReplicate] = function(arg1) -- Line 845
	--[[ Upvalues[4]:
		[1]: module_6_upvr (readonly)
		[2]: tbl_33_upvr (readonly)
		[3]: tbl_13_upvr (readonly)
		[4]: var121_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	for _, v_9 in arg1 do
		if v_9.Kind == module_6_upvr.EDMKind.clear then
			tbl_33_upvr.EventData_ById[v_9.EventId] = nil
		else
			local var272
			if v_9.Kind == module_6_upvr.EDMKind.full then
				local tbl_41 = {
					RawTempData = v_9.TempData;
				}
				if not v_9.SaveData then
				end
				tbl_41.RawSaveData = tbl_13_upvr.RawSaveData
				tbl_41.Claimed_ByCollectibleRewardIndex = {}
				tbl_41.Owned_ByCollectibleIndex = {}
				if v_9.SaveData and var121_upvw.ChallengeKind == module_6_upvr.ChallengeKind.scavenger_hunt then
					local SaveData_4 = v_9.SaveData
					for _, v_10 in SaveData_4.ClaimedCollectibleIndices do
						tbl_41.Claimed_ByCollectibleRewardIndex[v_10] = true
						local var275
					end
					for _, v_11 in SaveData_4.FoundCollectibles do
						var275.Owned_ByCollectibleIndex[v_11] = true
						local var276
					end
				end
				for i_12, v_12 in tbl_33_upvr.CollectibleStates do
					if v_12.EventId == v_9.EventId then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						v_12.ModeDirty = true
					end
				end
				tbl_33_upvr.EventData_ById[v_9.EventId] = var276
			elseif v_9.Kind == module_6_upvr.EDMKind.temp_data then
				tbl_33_upvr.EventData_ById[v_9.EventId].RawTempData = v_9.TempData
			elseif v_9.Kind == module_6_upvr.EDMKind.save_data then
				local var277 = tbl_33_upvr.EventData_ById[v_9.EventId]
				local SaveData_2 = v_9.SaveData
				if not SaveData_2 then
					SaveData_2 = tbl_13_upvr.RawSaveData
				end
				var277.RawSaveData = SaveData_2
				var277.Claimed_ByCollectibleRewardIndex = {}
				var277.Owned_ByCollectibleIndex = {}
				if v_9.SaveData then
					i_12 = module_6_upvr
					if var121_upvw.ChallengeKind == i_12.ChallengeKind.scavenger_hunt then
						local SaveData_3 = v_9.SaveData
						i_12 = nil
						for _, v_25 in SaveData_3.ClaimedCollectibleIndices, nil, i_12 do
							var277.Claimed_ByCollectibleRewardIndex[v_25] = true
							local var280
						end
						i_12 = nil
						for _, v_26 in SaveData_3.FoundCollectibles, nil, i_12 do
							var280.Owned_ByCollectibleIndex[v_26] = true
							local _
						end
					end
				end
				i_12 = tbl_33_upvr
				for _, v_27 in i_12.CollectibleStates do
					if v_27.EventId == v_9.EventId then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						v_27.ModeDirty = true
					end
				end
			end
		end
	end
end
tbl_31_upvr[module_6_upvr.Remotes.EventInstanceReplicate] = function(arg1, arg2) -- Line 919
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	local tbl_24 = {}
	tbl_24.EventId = arg1
	tbl_24.DataSentThroughRemote = arg2
	module_7_upvr.LoadedEventInstanceState = tbl_24
	module_7_upvr.LoadedEventInstanceStateDirty = true
end
tbl_31_upvr[module_6_upvr.Remotes.CollectiblesGiven] = function(arg1) -- Line 930
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	table.move(arg1, 1, #arg1, #module_7_upvr.PendingCollectiblePopups + 1, module_7_upvr.PendingCollectiblePopups)
end
local function SafeAreaCacheCreate_upvr() -- Line 939, Named "EventModulesUpdated"
	--[[ Upvalues[2]:
		[1]: tbl_33_upvr (readonly)
		[2]: module_7_upvr (readonly)
	]]
	local var296
	if tbl_33_upvr.MainEventId then
		var296 = tbl_33_upvr.EventSpec_ById[tbl_33_upvr.MainEventId]
	end
	if not var296 then
		var296 = tbl_33_upvr.PreviousMainEvent
	end
	if module_7_upvr.MainEvent then
		if module_7_upvr.MainEvent ~= var296 then
			tbl_33_upvr.PreviousMainEvent = module_7_upvr.MainEvent
		end
	end
	module_7_upvr.MainEvent = var296
	if tbl_33_upvr.LoadedEventId then
		local var297
	end
	if not var297 and tbl_33_upvr.PreviousLoadedEvent then
		var297 = tbl_33_upvr.PreviousLoadedEvent
	end
	if not var297 then
		var297 = var296
	end
	if module_7_upvr.LoadedEvent and module_7_upvr.LoadedEvent ~= var297 then
		tbl_33_upvr.PreviousLoadedEvent = module_7_upvr.LoadedEvent
	end
	local var298
	if var298 ~= var297 then
		var298 = tbl_33_upvr.PreviousLoadedEvent
		if var298 then
			var298 = tbl_33_upvr.PreviousLoadedEvent.EventId
		end
		for _, v_13 in tbl_33_upvr.CollectibleStates do
			if v_13.EventId == tbl_33_upvr.LoadedEventId or var298 and v_13.EventId == var298 then
				v_13.ModeDirty = true
			end
		end
		tbl_33_upvr.SeenCurrentEvent = false
	end
	module_7_upvr.LoadedEvent = var297
end
tbl_31_upvr[module_6_upvr.Remotes.EventsChanged] = function(arg1, arg2) -- Line 990
	--[[ Upvalues[2]:
		[1]: tbl_33_upvr (readonly)
		[2]: SafeAreaCacheCreate_upvr (readonly)
	]]
	tbl_33_upvr.MainEventId = arg1
	tbl_33_upvr.LoadedEventId = arg2
	SafeAreaCacheCreate_upvr()
end
local function SafeAreaCacheUpdate_upvr(arg1) -- Line 996, Named "EventModuleRemoved"
	--[[ Upvalues[2]:
		[1]: tbl_33_upvr (readonly)
		[2]: SafeAreaCacheCreate_upvr (readonly)
	]]
	if arg1:IsA("ModuleScript") then
		local Name_2 = arg1.Name
		if tbl_33_upvr.EventModuleInstance_ById[Name_2] == arg1 then
			tbl_33_upvr.EventModuleInstance_ById[Name_2] = nil
			tbl_33_upvr.EventSpec_ById[Name_2] = nil
			SafeAreaCacheCreate_upvr()
		end
	end
end
local function PlayCollectiblePickupSound_upvr(arg1, arg2) -- Line 1006, Named "EventModuleAdded"
	--[[ Upvalues[2]:
		[1]: tbl_33_upvr (readonly)
		[2]: SafeAreaCacheCreate_upvr (readonly)
	]]
	if arg1:IsA("ModuleScript") then
		local Name = arg1.Name
		local var302_upvw
		local pcall_result1, pcall_result2 = pcall(function() -- Line 1010
			--[[ Upvalues[2]:
				[1]: var302_upvw (read and write)
				[2]: arg1 (readonly)
			]]
			var302_upvw = require(arg1)
		end)
		if not pcall_result1 then
			warn("Failed to require event module '%s' with error: %s":format(Name, pcall_result2))
		elseif type(var302_upvw) ~= "table" then
			warn("Event module '%s' did not have a Spec table.":format(Name))
		else
			var302_upvw.EventId = Name
			tbl_33_upvr.EventModuleInstance_ById[Name] = arg1
			tbl_33_upvr.EventSpec_ById[Name] = var302_upvw
			if not arg2 then
				SafeAreaCacheCreate_upvr()
			end
		end
	end
end
tbl_12_upvr[#tbl_12_upvr + 1] = function() -- Line 1031
	--[[ Upvalues[3]:
		[1]: SafeAreaCacheUpdate_upvr (readonly)
		[2]: PlayCollectiblePickupSound_upvr (readonly)
		[3]: SafeAreaCacheCreate_upvr (readonly)
	]]
	local BUEShared = game.ReplicatedStorage:WaitForChild("BUEShared")
	BUEShared.ChildRemoved:Connect(SafeAreaCacheUpdate_upvr)
	BUEShared.ChildAdded:Connect(PlayCollectiblePickupSound_upvr)
	for _, v_14 in BUEShared:GetChildren() do
		PlayCollectiblePickupSound_upvr(v_14, true)
	end
	SafeAreaCacheCreate_upvr()
end
SafeAreaCacheUpdate_upvr = #tbl_12_upvr
SafeAreaCacheCreate_upvr = SafeAreaCacheUpdate_upvr + 1
function SafeAreaCacheUpdate_upvr() -- Line 1056
	--[[ Upvalues[3]:
		[1]: tbl_33_upvr (readonly)
		[2]: I_upvr (readonly)
		[3]: PlayerGui_upvr (readonly)
	]]
	tbl_33_upvr.SG_F = I_upvr("ScreenGui", {
		Name = "BUE_SAC_Fullscreen";
		Parent = PlayerGui_upvr;
		ScreenInsets = Enum.ScreenInsets.None;
	})
	tbl_33_upvr.SG_C = I_upvr("ScreenGui", {
		Name = "BUE_SAC_CoreUISafeArea";
		Parent = PlayerGui_upvr;
		ScreenInsets = Enum.ScreenInsets.CoreUISafeInsets;
	})
end
tbl_12_upvr[SafeAreaCacheCreate_upvr] = SafeAreaCacheUpdate_upvr
function SafeAreaCacheCreate_upvr() -- Line 1069, Named "SafeAreaCacheCreate"
	return {
		FSize = Vector2.zero;
		FPos = Vector2.zero;
		CSize = Vector2.zero;
		CPos = Vector2.zero;
	}
end
function SafeAreaCacheUpdate_upvr(arg1) -- Line 1077, Named "SafeAreaCacheUpdate"
	--[[ Upvalues[1]:
		[1]: tbl_33_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local SG_F = tbl_33_upvr.SG_F
	local SG_C = tbl_33_upvr.SG_C
	local AbsoluteSize = SG_F.AbsoluteSize
	local AbsolutePosition = SG_F.AbsolutePosition
	local AbsoluteSize_2 = SG_C.AbsoluteSize
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 12. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 12. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 14. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [23] 14. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [31] 18. Error Block 8 start (CF ANALYSIS FAILED)
	arg1.FSize = AbsoluteSize
	arg1.FPos = AbsolutePosition
	arg1.CSize = AbsoluteSize_2
	arg1.CPos = SG_C.AbsolutePosition
	-- KONSTANTERROR: [31] 18. Error Block 8 end (CF ANALYSIS FAILED)
end
function PlayCollectiblePickupSound_upvr(arg1) -- Line 1135, Named "OpenButtonDestroy"
	arg1.Button:Destroy()
end
module_7_upvr.OpenButtonDestroy = PlayCollectiblePickupSound_upvr
function PlayCollectiblePickupSound_upvr(arg1) -- Line 1138, Named "OpenButtonCreate"
	--[[ Upvalues[5]:
		[1]: I_upvr (readonly)
		[2]: tbl_5_upvr (readonly)
		[3]: tbl_34_upvr (readonly)
		[4]: Font_new_result1_3_upvr (readonly)
		[5]: module_7_upvr (readonly)
	]]
	local module_2 = {
		SizeYToX = 3;
	}
	module_2.Props = arg1
	module_2.Button = I_upvr("TextButton", tbl_5_upvr, {
		BackgroundColor3 = Color3.new(0, 0, 0);
		BackgroundTransparency = 0.5;
	}, arg1)
	module_2.Corner = I_upvr("UICorner", {
		Parent = module_2.Button;
		CornerRadius = UDim.new(0.2, 0);
	})
	local I_upvr_result1 = I_upvr("Frame", {
		Parent = module_2.Button;
		Size = UDim2.fromScale(1, 1);
		BackgroundTransparency = 1;
	})
	module_2.Icon = I_upvr("ImageLabel", {
		Parent = I_upvr_result1;
		BackgroundTransparency = 1;
		ImageColor3 = Color3.new(1, 1, 1);
		Size = UDim2.fromScale(0.8, 0.8);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		LayoutOrder = 1;
	})
	module_2.Label = I_upvr("TextLabel", tbl_34_upvr, {
		Parent = I_upvr_result1;
		FontFace = Font_new_result1_3_upvr;
		Text = "Event";
		TextColor3 = Color3.new(1, 1, 1);
		TextScaled = true;
		Size = UDim2.fromScale(1.7600000000000002, 0.8);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
		LayoutOrder = 2;
	})
	module_2.Layout = I_upvr("UIListLayout", {
		Parent = I_upvr_result1;
		SortOrder = Enum.SortOrder.LayoutOrder;
		FillDirection = Enum.FillDirection.Horizontal;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	})
	if module_7_upvr.CustomizeOpenButton then
		module_7_upvr.CustomizeOpenButton(module_2)
	end
	return module_2
end
module_7_upvr.OpenButtonCreate = PlayCollectiblePickupSound_upvr
function PlayCollectiblePickupSound_upvr(arg1, arg2) -- Line 1192, Named "OpenButtonUpdate"
	--[[ Upvalues[6]:
		[1]: module_7_upvr (readonly)
		[2]: HasNewEvent_upvr (readonly)
		[3]: module_15_upvr (readonly)
		[4]: I_upvr (readonly)
		[5]: tbl_34_upvr (readonly)
		[6]: Font_new_result1_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 32 start (CF ANALYSIS FAILED)
	local Icon = arg2.Icon
	local var331
	if type(Icon) == "number" then
		var331 = "rbxassetid://"..Icon
	else
		var331 = Icon
	end
	-- KONSTANTERROR: [0] 1. Error Block 32 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 14. Error Block 6 start (CF ANALYSIS FAILED)
	arg1.Cached_Icon = var331
	arg1.Icon.Image = var331
	-- KONSTANTERROR: [18] 14. Error Block 6 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 17. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 17. Error Block 7 end (CF ANALYSIS FAILED)
end
module_7_upvr.OpenButtonUpdate = PlayCollectiblePickupSound_upvr
function PlayCollectiblePickupSound_upvr() -- Line 1271, Named "CompleteCollectiblePopup"
	--[[ Upvalues[1]:
		[1]: tbl_33_upvr (readonly)
	]]
	local var332 = false
	local UI_CollectiblePopup = tbl_33_upvr.UI_CollectiblePopup
	if UI_CollectiblePopup then
		local ActiveCollectiblePopup = UI_CollectiblePopup.ActiveCollectiblePopup
		if ActiveCollectiblePopup then
			var332 = true
			ActiveCollectiblePopup.Completed = true
		end
	end
	return var332
end
module_7_upvr.CompleteCollectiblePopup = PlayCollectiblePickupSound_upvr
function PlayCollectiblePickupSound_upvr() -- Line 1287, Named "ShouldCloseAutoLocator"
	--[[ Upvalues[3]:
		[1]: tbl_33_upvr (readonly)
		[2]: var121_upvw (read and write)
		[3]: module_6_upvr (readonly)
	]]
	local var338 = true
	local LoadedEventId_2 = tbl_33_upvr.LoadedEventId
	if LoadedEventId_2 then
		if var121_upvw.ChallengeKind == module_6_upvr.ChallengeKind.scavenger_hunt then
			local var340 = tbl_33_upvr.EventData_ById[LoadedEventId_2]
			if var340 and var340.RawSaveData.UnlockAutoLocator then
				var338 = false
			end
		end
	end
	return var338
end
module_7_upvr.ShouldCloseAutoLocator = PlayCollectiblePickupSound_upvr
function PlayCollectiblePickupSound_upvr(arg1) -- Line 1311, Named "AutoLocatorBillboardDestroy"
	arg1.BillboardGui:Destroy()
end
module_7_upvr.AutoLocatorBillboardDestroy = PlayCollectiblePickupSound_upvr
function PlayCollectiblePickupSound_upvr(arg1) -- Line 1314, Named "AutoLocatorBillboardCreate"
	--[[ Upvalues[1]:
		[1]: I_upvr (readonly)
	]]
	local module_4 = {
		BillboardGui = I_upvr("BillboardGui", {
			AlwaysOnTop = true;
			ClipsDescendants = false;
			LightInfluence = 0;
			ResetOnSpawn = false;
		}, arg1);
		Circle = I_upvr("ImageLabel", {
			Parent = module_4.BillboardGui;
			BackgroundTransparency = 1;
			Size = UDim2.fromScale(1, 1);
			ImageColor3 = Color3.new(1, 0.454902, 0.454902);
			Image = "rbxassetid://17062333031";
		});
		Visited = true;
	}
	return module_4
end
module_7_upvr.AutoLocatorBillboardCreate = PlayCollectiblePickupSound_upvr
function PlayCollectiblePickupSound_upvr(arg1, arg2) -- Line 1343, Named "AutoLocatorBillboardUpdate"
	local clamped = math.clamp(((arg2.CameraPosition - arg1.BillboardGui.Adornee:GetPivot().Position).Magnitude - 10) / 990, 0, 1)
	local var345 = arg2.ViewportSize.Y * ((1 - clamped) * arg2.MinDistanceScaleY + clamped * arg2.MaxDistanceScaleY)
	if arg1.Cached_SizeY ~= var345 then
		arg1.Cached_SizeY = var345
		arg1.BillboardGui.Size = UDim2.fromOffset(var345, var345)
	end
end
module_7_upvr.AutoLocatorBillboardUpdate = PlayCollectiblePickupSound_upvr
function PlayCollectiblePickupSound_upvr() -- Line 1368, Named "AutoLocatorBillboardGetMetrics"
	local CurrentCamera = workspace.CurrentCamera
	local module_11 = {
		ViewportSize = CurrentCamera.ViewportSize;
		CameraPosition = CurrentCamera.CFrame.Position;
		MinDistanceScaleY = math.max(0.15, 64 / module_11.ViewportSize.Y);
		MaxDistanceScaleY = math.max(0.02, 16 / module_11.ViewportSize.Y);
	}
	return module_11
end
module_7_upvr.AutoLocatorBillboardGetMetrics = PlayCollectiblePickupSound_upvr
function PlayCollectiblePickupSound_upvr(arg1) -- Line 1387, Named "AutoLocatorButtonDestroy"
	--[[ Upvalues[1]:
		[1]: module_15_upvr (readonly)
	]]
	arg1.Button:Destroy()
	module_15_upvr.GI_Destroy(arg1.Input)
end
module_7_upvr.AutoLocatorButtonDestroy = PlayCollectiblePickupSound_upvr
function PlayCollectiblePickupSound_upvr(arg1) -- Line 1391, Named "AutoLocatorButtonCreate"
	--[[ Upvalues[7]:
		[1]: module_15_upvr (readonly)
		[2]: PropsApply_upvr (readonly)
		[3]: I_upvr (readonly)
		[4]: tbl_34_upvr (readonly)
		[5]: Font_new_result1_3_upvr (readonly)
		[6]: tbl_35_upvr (readonly)
		[7]: tbl_29_upvr (readonly)
	]]
	local any_FancyButtonCreate_result1 = module_15_upvr.FancyButtonCreate()
	PropsApply_upvr(any_FancyButtonCreate_result1.Button, arg1)
	any_FancyButtonCreate_result1.TextSizeScale = 0.6
	any_FancyButtonCreate_result1.SizeYToX = 5
	any_FancyButtonCreate_result1.Label = I_upvr("TextLabel", tbl_34_upvr, {
		Parent = any_FancyButtonCreate_result1.Button;
		ZIndex = 10;
		TextXAlignment = Enum.TextXAlignment.Center;
		TextYAlignment = Enum.TextYAlignment.Center;
		FontFace = Font_new_result1_3_upvr;
		Text = "Exit Auto-Locator 📡";
		TextColor3 = Color3.new(1, 1, 1);
		TextScaled = true;
		Size = UDim2.fromScale(1, any_FancyButtonCreate_result1.TextSizeScale);
		Position = UDim2.fromScale(0.5, 0.5);
		AnchorPoint = Vector2.new(0.5, 0.5);
	})
	any_FancyButtonCreate_result1.LabelStroke = I_upvr("UIStroke", tbl_35_upvr, {
		Parent = any_FancyButtonCreate_result1.Label;
		Color = module_15_upvr.SharedTheme.Stroke;
		Transparency = tbl_29_upvr.ButtonStrokeTransparency;
	})
	return any_FancyButtonCreate_result1
end
module_7_upvr.AutoLocatorButtonCreate = PlayCollectiblePickupSound_upvr
function PlayCollectiblePickupSound_upvr(arg1, arg2, arg3) -- Line 1420, Named "AutoLocatorButtonUpdate"
	--[[ Upvalues[3]:
		[1]: module_7_upvr (readonly)
		[2]: tbl_29_upvr (readonly)
		[3]: module_15_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var351
	if module_7_upvr.LoadedEvent then
		var351 = module_7_upvr.LoadedEvent.Theme.NormalButton
	else
		var351 = tbl_29_upvr.TabButtonGreyed
	end
	if arg1.Cached_Theme ~= var351 then
		if module_7_upvr.LoadedEvent then
		else
		end
		arg1.Label.TextColor3 = module_15_upvr.SharedTheme.Text
	end
	module_15_upvr.FancyButtonUpdateTweens(arg1, arg2, var351)
	if arg1.Cached_SizeY ~= arg3 then
		arg1.Cached_SizeY = arg3
		local var352 = arg3 * arg1.TextSizeScale
		arg1.LabelStroke.Thickness = var352 * tbl_29_upvr.ButtonStrokeEm
		module_15_upvr.FancyButtonUpdateSize(arg1, UDim.new(0, var352 * 0.3), var352 * tbl_29_upvr.ButtonBorderEm)
	end
end
module_7_upvr.AutoLocatorButtonUpdate = PlayCollectiblePickupSound_upvr
function PlayCollectiblePickupSound_upvr() -- Line 1450, Named "PlayCollectiblePickupSound"
	--[[ Upvalues[1]:
		[1]: module_7_upvr (readonly)
	]]
	module_7_upvr.RequestPlaySoundEffect({
		SoundId = "rbxassetid://16945092579";
		Volume = 0.51;
	})
end
module_7_upvr.PlayCollectiblePickupSound = PlayCollectiblePickupSound_upvr
PlayCollectiblePickupSound_upvr = {}
local var354_upvr = PlayCollectiblePickupSound_upvr
var354_upvr.visible = 1
var354_upvr.collected = 2
var354_upvr.hidden = 3
local tbl_27_upvr = {
	TweenDuration = 3.3333333333333335;
	TweenOffset = CFrame.new(0, 20, 0);
	RefreshPeriod = (-math.huge);
	SpinSpeedIdle = 2.0943951023931953;
	SpinSpeedClaim = 20.943951023931955;
}
local tbl_upvr = {
	[module_6_upvr.CollectibleDecoration.None] = function(arg1, arg2) -- Line 1527
	end;
	[module_6_upvr.CollectibleDecoration.GlowSparks] = function(arg1, arg2) -- Line 1532
		--[[ Upvalues[1]:
			[1]: I_upvr (readonly)
		]]
		local tbl_14 = {}
		arg2.Decorations = tbl_14
		tbl_14[#tbl_14 + 1] = I_upvr("ParticleEmitter", {
			Acceleration = Vector3.new(0, 0, 0);
			Brightness = 1;
			Color = ColorSequence.new(Color3.fromRGB(255, 255, 255));
			Drag = 0;
			EmissionDirection = Enum.NormalId.Top;
			Lifetime = NumberRange.new(5, 10);
			LightEmission = 0;
			LightInfluence = 1;
			LockedToPart = true;
			Orientation = Enum.ParticleOrientation.FacingCamera;
			Rate = 4.4;
			Rotation = NumberRange.new(0);
			RotSpeed = NumberRange.new(0);
			Shape = Enum.ParticleEmitterShape.Box;
			ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
			ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume;
			Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 2.5, 0), NumberSequenceKeypoint.new(0.5, 5.5625, 0), NumberSequenceKeypoint.new(1, 3, 0)});
			Speed = NumberRange.new(0);
			SpreadAngle = Vector2.zero;
			Squash = NumberSequence.new(0);
			Texture = "rbxassetid://75202463";
			TimeScale = 1;
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.232095, 0.9125, 0), NumberSequenceKeypoint.new(0.748011, 0.93125, 0), NumberSequenceKeypoint.new(1, 1, 0)});
			VelocityInheritance = 0;
			WindAffectsDrag = false;
			ZOffset = -2;
			Parent = arg2.Part;
		})
		tbl_14[#tbl_14 + 1] = I_upvr("ParticleEmitter", {
			Acceleration = Vector3.new(0, 0, 0);
			Brightness = 1;
			Color = ColorSequence.new(Color3.fromRGB(255, 255, 255));
			Drag = 0;
			EmissionDirection = Enum.NormalId.Top;
			Lifetime = NumberRange.new(0.9);
			LightEmission = 0;
			LightInfluence = 0;
			LockedToPart = false;
			Orientation = Enum.ParticleOrientation.FacingCamera;
			Rate = 13;
			Rotation = NumberRange.new(0);
			RotSpeed = NumberRange.new(0);
			Shape = Enum.ParticleEmitterShape.Box;
			ShapeInOut = Enum.ParticleEmitterShapeInOut.Outward;
			ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume;
			Size = NumberSequence.new({NumberSequenceKeypoint.new(0, 0.675, 0), NumberSequenceKeypoint.new(0.103325, 1.375, 0.45), NumberSequenceKeypoint.new(1, 0, 0)});
			Speed = NumberRange.new(3.5);
			SpreadAngle = Vector2.new(360, -360);
			Squash = NumberSequence.new(0);
			Texture = "http://www.roblox.com/asset/?id=271370648";
			TimeScale = 1;
			Transparency = NumberSequence.new({NumberSequenceKeypoint.new(0, 1, 0), NumberSequenceKeypoint.new(0.1, 0.25, 0), NumberSequenceKeypoint.new(0.199695, 0, 0), NumberSequenceKeypoint.new(0.5, 0, 0), NumberSequenceKeypoint.new(0.75, 0.35, 0), NumberSequenceKeypoint.new(1, 1, 0)});
			VelocityInheritance = 0;
			WindAffectsDrag = false;
			ZOffset = -1.1;
			Parent = arg2.Part;
		})
	end;
}
function module_7_upvr.CS_Create(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 1624
	--[[ Upvalues[2]:
		[1]: var354_upvr (readonly)
		[2]: tbl_33_upvr (readonly)
	]]
	local module_14 = {}
	module_14.EventId = arg1
	module_14.CollectibleIndex = arg2
	module_14.OriginalPivot = CFrame.new(arg4)
	module_14.Radius = arg5
	module_14.ModelParent = arg3
	module_14.AutoDestroy = arg6
	module_14.Mode = var354_upvr.hidden
	module_14.ModeDirty = true
	tbl_33_upvr.CollectibleStates[#tbl_33_upvr.CollectibleStates + 1] = module_14
	return module_14
end
function module_7_upvr.CS_Destroy(arg1) -- Line 1647
	arg1.Destroyed = true
	arg1.ModeDirty = true
end
function module_7_upvr.CS_SetCosmeticModel(arg1, arg2, arg3) -- Line 1663
	arg1.CosmeticModel = arg2
	arg1.ShouldCloneCosmeticModel = arg3
	arg1.ModeDirty = true
end
function module_7_upvr.CS_Touch_CollectibilityUpdated(arg1, arg2, arg3) -- Line 1678
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: LocalPlayer_upvr (readonly)
		[3]: module_6_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [4] 4. Error Block 3 start (CF ANALYSIS FAILED)
	arg1.TouchedConnection = arg2.Part.Touched:Connect(function(arg1_2) -- Line 1685
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: Players_upvr (copied, readonly)
			[3]: LocalPlayer_upvr (copied, readonly)
			[4]: module_6_upvr (copied, readonly)
		]]
		if arg1.TouchedConnection then
			local Parent = arg1_2.Parent
			if Parent then
				local class_Humanoid_2 = Parent:FindFirstChildOfClass("Humanoid")
				if class_Humanoid_2 then
					if class_Humanoid_2:GetState() ~= Enum.HumanoidStateType.Dead and 0 < class_Humanoid_2.Health and Players_upvr:GetPlayerFromCharacter(Parent) == LocalPlayer_upvr then
						module_6_upvr.Remotes.RequestClaimCollectible:FireServer(arg1.EventId, arg1.CollectibleIndex)
					end
				end
			end
		end
	end)
	do
		return
	end
	-- KONSTANTERROR: [4] 4. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [19] 15. Error Block 7 start (CF ANALYSIS FAILED)
	if arg1.TouchedConnection then
		arg1.TouchedConnection:Disconnect()
		arg1.TouchedConnection = nil
	end
	-- KONSTANTERROR: [19] 15. Error Block 7 end (CF ANALYSIS FAILED)
end
tbl_31_upvr[module_6_upvr.Remotes.EventCollectiblesReplicate] = function(arg1, arg2) -- Line 1713
	--[[ Upvalues[2]:
		[1]: tbl_33_upvr (readonly)
		[2]: module_7_upvr (readonly)
	]]
	tbl_33_upvr.ReplicatedCollectibles_ById[arg1] = arg2
	for _, v_15 in tbl_33_upvr.CollectibleStates do
		if v_15.EventId == arg1 then
			local var375 = arg2[v_15.CollectibleIndex]
			if var375 then
				module_7_upvr.CS_SetCosmeticModel(v_15, var375, true)
			end
		end
	end
end
local function BUE_FancyButtonCreate_upvr(arg1) -- Line 1743, Named "BUE_FancyButtonCreate"
	--[[ Upvalues[4]:
		[1]: module_15_upvr (readonly)
		[2]: Font_new_result1_3_upvr (readonly)
		[3]: tbl_29_upvr (readonly)
		[4]: C_upvr (readonly)
	]]
	local any_FancyButton_TextCreate_result1 = module_15_upvr.FancyButton_TextCreate({
		ZIndex = 11;
		FontFace = Font_new_result1_3_upvr;
		Size = UDim2.fromScale(0.96, 1);
	}, {
		Transparency = tbl_29_upvr.ButtonStrokeTransparency;
	})
	any_FancyButton_TextCreate_result1.ButtonTheme = tbl_29_upvr.TabButtonGreyed
	any_FancyButton_TextCreate_result1.LabelShadow = C_upvr(any_FancyButton_TextCreate_result1.Label, {
		Parent = any_FancyButton_TextCreate_result1.Label.Parent;
		ZIndex = 10;
		TextColor3 = module_15_upvr.SharedTheme.Stroke;
	})
	any_FancyButton_TextCreate_result1.LabelShadowStroke = any_FancyButton_TextCreate_result1.LabelShadow.UIStroke
	any_FancyButton_TextCreate_result1.Button.Parent = arg1
	return any_FancyButton_TextCreate_result1
end
local function _(arg1, arg2) -- Line 1767, Named "BUE_FancyButtonUpdateTheme"
	local var380 = false
	if arg1.Theme ~= arg2 then
		arg1.Theme = arg2
		var380 = true
		arg1.ButtonTheme = arg2.FancyButton
		arg1.Label.TextColor3 = arg2.Text
	end
	return var380
end
local function BUE_FancyButtonUpdateText_upvr(arg1, arg2, arg3) -- Line 1781, Named "BUE_FancyButtonUpdateText"
	local var381 = false
	if arg1.Cached_Text ~= arg2 then
		arg1.Cached_Text = arg2
		arg1.Label.Text = arg2
		if arg1.LabelShadow then
			arg1.LabelShadow.Text = arg2
		end
		var381 = true
		local var382
	end
	local function INLINED_3() -- Internal function, doesn't exist in bytecode
		var382 = arg1.Cached_MaxLength
		return var382 ~= arg3
	end
	if arg3 and var381 or INLINED_3() then
		arg1.Cached_MaxLength = arg3
		if arg3 then
			if arg3 > string.len(arg2) then
				var382 = false
			else
				var382 = true
			end
		else
			var382 = false
		end
		arg1.Label.TextScaled = var382
		if arg1.LabelShadow then
			arg1.LabelShadow.TextScaled = var382
		end
	end
	return var381
end
local function _(arg1, arg2, arg3) -- Line 1809, Named "BUE_FancyButtonUpdateProduct"
	--[[ Upvalues[3]:
		[1]: tbl_33_upvr (readonly)
		[2]: utf8_char_result1_upvr (readonly)
		[3]: BUE_FancyButtonUpdateText_upvr (readonly)
	]]
	local var383
	local var384 = tbl_33_upvr.PlayerData.Credit_ByProductId[arg2.Id]
	if var384 then
		var383 = "FREE (%d left)":format(var384)
	else
		local UpdatedPrice_4 = arg2.UpdatedPrice
		if not UpdatedPrice_4 then
			UpdatedPrice_4 = arg2.Price
		end
		var383 = "%d%s":format(UpdatedPrice_4, utf8_char_result1_upvr)
	end
	BUE_FancyButtonUpdateText_upvr(arg1, var383, arg3)
end
local function BUE_FancyButtonUpdateSize_upvr(arg1, arg2, arg3, arg4) -- Line 1823, Named "BUE_FancyButtonUpdateSize"
	--[[ Upvalues[2]:
		[1]: tbl_29_upvr (readonly)
		[2]: module_15_upvr (readonly)
	]]
	local ceiled_6 = math.ceil(arg3 * arg4)
	module_15_upvr.FancyButtonUpdateSize(arg1, arg2, arg3 * tbl_29_upvr.ButtonBorderEm)
	local var387 = arg3 * tbl_29_upvr.ButtonStrokeEm
	arg1.Label.Size = UDim2.new(0.96, 0, 0, ceiled_6)
	arg1.Label.TextSize = ceiled_6
	arg1.LabelStroke.Thickness = var387
	if arg1.LabelShadow then
		arg1.LabelShadow.Position = arg1.Label.Position + UDim2.fromOffset(0, ceiled_6 * 0.07)
		arg1.LabelShadow.Size = UDim2.new(0.96, 0, 0, ceiled_6)
		arg1.LabelShadow.TextSize = ceiled_6
		arg1.LabelShadowStroke.Thickness = var387
	end
end
local tbl_43_upvr = {true, true, -- : First try: K:0: attempt to index nil with 't'

local tbl_17_upvr = {nil, {
	Enabled = true;
	Icon = "rbxassetid://16792612726";
	Text = "Daily Login";
	Screen = 10;
}, {
	Enabled = true;
	Icon = "rbxassetid://16792612790";
	Text = "Playtime\nChallenge";
	Screen = 11;
}, {
	Enabled = true;
	Icon = "rbxassetid://16792612917";
	Text = "Vurse's\nMultiverse";
	Screen = 12;
}, {
	Enabled = true;
	Icon = "rbxassetid://16792613004";
	Text = "Special";
	Screen = 13;
}}
local function BackgroundSectionCreate_upvr(arg1) -- Line 2071, Named "BackgroundSectionCreate"
	--[[ Upvalues[1]:
		[1]: I_upvr (readonly)
	]]
	local module_20 = {
		Frame = I_upvr("Frame", {
			Parent = arg1.Container;
			ZIndex = arg1.ContainerZIndexBelowTexture;
		});
		Corner = I_upvr("UICorner", {
			Parent = module_20.Frame;
		});
	}
	return module_20
end
local function _(arg1, arg2) -- Line 2082, Named "BackgroundSectionUpdateTheme"
	arg1.Frame.BackgroundColor3 = arg2.BackgroundSection
end
local function _(arg1) -- Line 2086, Named "CreateForegroundSection"
	--[[ Upvalues[1]:
		[1]: I_upvr (readonly)
	]]
	return I_upvr("Frame", {
		Parent = arg1.Container;
		ZIndex = arg1.ContainerZIndexAboveTexture;
		BackgroundTransparency = 1;
	})
end
local function PutObjectIntoArray_upvr(arg1) -- Line 2102, Named "PutObjectIntoArray"
	local PutObjectIntoArray_Array = arg1.PutObjectIntoArray_Array
	local PutObjectIntoArray_Object = arg1.PutObjectIntoArray_Object
	if not table.find(PutObjectIntoArray_Array, PutObjectIntoArray_Object) then
		PutObjectIntoArray_Array[#PutObjectIntoArray_Array + 1] = PutObjectIntoArray_Object
	end
end
local function _(arg1) -- Line 2116, Named "RewardClaimedDestroy"
	arg1.Overlay:Destroy()
end
local function RewardClaimedCreate_upvr(arg1, arg2) -- Line 2119, Named "RewardClaimedCreate"
	--[[ Upvalues[4]:
		[1]: I_upvr (readonly)
		[2]: tbl_29_upvr (readonly)
		[3]: tbl_34_upvr (readonly)
		[4]: var109_upvr (readonly)
	]]
	local module = {}
	local tbl_21 = {}
	tbl_21.Parent = arg1
	tbl_21.ZIndex = arg2
	tbl_21.BackgroundTransparency = tbl_29_upvr.TileOverlayTransparency
	tbl_21.BackgroundColor3 = Color3.new(0, 0, 0)
	tbl_21.BorderSizePixel = 0
	tbl_21.Size = UDim2.fromScale(1, 1)
	module.Overlay = I_upvr("Frame", tbl_21)
	module.Corner = I_upvr("UICorner", {
		Parent = module.Overlay;
	})
	local Color3_new_result1 = Color3.new(0, 1, 0)
	module.Icon = I_upvr("ImageLabel", {
		Parent = module.Overlay;
		BackgroundTransparency = 1;
		Image = "rbxassetid://16001408145";
		ImageColor3 = Color3_new_result1;
		AnchorPoint = Vector2.new(0.5, 0);
		Size = UDim2.fromScale(0.35, 0.35);
		Position = UDim2.fromScale(0.5, 0.13999999999999999);
		SizeConstraint = Enum.SizeConstraint.RelativeYY;
	})
	module.Label = I_upvr("TextLabel", tbl_34_upvr, {
		Parent = module.Overlay;
		Text = "Claimed";
		TextColor3 = Color3_new_result1;
		TextScaled = true;
		FontFace = var109_upvr;
		AnchorPoint = Vector2.new(0.5, 0);
		Size = UDim2.fromScale(1, 0.17);
		Position = UDim2.fromScale(0.5, 0.49);
	})
	return module
end
local function _(arg1, arg2) -- Line 2165, Named "RewardClaimedUpdateSize"
	arg1.Corner.CornerRadius = arg2
end
local function RewardCreate_upvr(arg1) -- Line 2186, Named "RewardCreate"
	--[[ Upvalues[7]:
		[1]: I_upvr (readonly)
		[2]: tbl_29_upvr (readonly)
		[3]: module_15_upvr (readonly)
		[4]: tbl_34_upvr (readonly)
		[5]: Font_new_result1_3_upvr (readonly)
		[6]: tbl_35_upvr (readonly)
		[7]: BUE_FancyButtonCreate_upvr (readonly)
	]]
	local module_19 = {}
	local tbl_18 = {}
	tbl_18.Parent = arg1
	tbl_18.BackgroundTransparency = tbl_29_upvr.TileBackerTransparency
	tbl_18.BorderSizePixel = 0
	tbl_18.BackgroundColor3 = module_15_upvr.SharedTheme.Stroke
	module_19.Container = I_upvr("Frame", tbl_18)
	module_19.Corner = I_upvr("UICorner", {
		Parent = module_19.Container;
	})
	module_19.NameLabel = I_upvr("TextLabel", tbl_34_upvr, {
		Parent = module_19.Container;
		ZIndex = 2;
		FontFace = Font_new_result1_3_upvr;
		TextWrapped = true;
		TextYAlignment = Enum.TextYAlignment.Top;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
		Size = UDim2.fromScale(0.96, 0.96);
	})
	module_19.NameStroke = I_upvr("UIStroke", tbl_35_upvr, {
		Parent = module_19.NameLabel;
		Color = module_15_upvr.SharedTheme.Stroke;
		Transparency = tbl_29_upvr.TextStrokeTransparency;
	})
	module_19.Icon = I_upvr("ImageLabel", {
		Parent = module_19.Container;
		ZIndex = 1;
		BackgroundTransparency = 1;
	})
	module_19.Claim = BUE_FancyButtonCreate_upvr(module_19.Container)
	module_19.Claim.Button.ZIndex = 3
	return module_19
end
local function _(arg1) -- Line 2232, Named "RewardWarningDestroy"
	arg1.Overlay:Destroy()
end
local function RewardWarningCreate_upvr(arg1, arg2) -- Line 2235, Named "RewardWarningCreate"
	--[[ Upvalues[4]:
		[1]: module_15_upvr (readonly)
		[2]: I_upvr (readonly)
		[3]: tbl_34_upvr (readonly)
		[4]: Font_new_result1_3_upvr (readonly)
	]]
	local module_16 = {
		Tween = module_15_upvr.NumericTweenCreate(1, 0.2, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out);
	}
	local tbl_36 = {}
	tbl_36.Parent = arg1
	tbl_36.ZIndex = arg2
	tbl_36.BackgroundColor3 = Color3.new(0, 0, 0)
	tbl_36.BorderSizePixel = 0
	tbl_36.Size = UDim2.fromScale(1, 1)
	module_16.Overlay = I_upvr("Frame", tbl_36)
	module_16.Corner = I_upvr("UICorner", {
		Parent = module_16.Overlay;
	})
	module_16.Label = I_upvr("TextLabel", tbl_34_upvr, {
		Parent = module_16.Overlay;
		Text = "Follow Steps Above!";
		TextColor3 = module_15_upvr.SharedTheme.Text;
		FontFace = Font_new_result1_3_upvr;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Size = UDim2.fromScale(0.9, 0.4);
		Position = UDim2.fromScale(0.5, 0.5);
		TextScaled = true;
	})
	return module_16
end
local function _(arg1, arg2) -- Line 2266, Named "RewardWarningUpdateSize"
	arg1.Corner.CornerRadius = arg2
end
local function _(arg1) -- Line 2269, Named "RewardWarningUpdateAppearance"
	if arg1.Tween.Dirty then
		local ValueCurrent = arg1.Tween.ValueCurrent
		arg1.Overlay.BackgroundTransparency = (1 - ValueCurrent) * 0.35 + ValueCurrent * 1
		local ValueCurrent_2 = arg1.Tween.ValueCurrent
		arg1.Label.TextTransparency = (1 - ValueCurrent_2) * 0 + ValueCurrent_2 * 1
	end
end
local tbl_38_upvr = {}
local tbl_42 = {}
tbl_38_upvr[1] = tbl_42
local function Destroy(arg1) -- Line 2357
	--[[ Upvalues[1]:
		[1]: module_15_upvr (readonly)
	]]
	arg1.RewardSection.Frame:Destroy()
	arg1.AutoLocatorSection.Frame:Destroy()
	arg1.RewardContainer:Destroy()
	arg1.AutoLocatorContainer:Destroy()
	module_15_upvr.FancyButtonDestroy(arg1.AutoLocatorPurchase)
	for _, v_16 in arg1.Rewards do
		module_15_upvr.FancyButtonDestroy(v_16.Claim)
	end
end
tbl_42.Destroy = Destroy
local function Create(arg1) -- Line 2370
	--[[ Upvalues[13]:
		[1]: BackgroundSectionCreate_upvr (readonly)
		[2]: I_upvr (readonly)
		[3]: tbl_34_upvr (readonly)
		[4]: Font_new_result1_3_upvr (readonly)
		[5]: tbl_35_upvr (readonly)
		[6]: module_15_upvr (readonly)
		[7]: tbl_29_upvr (readonly)
		[8]: BUE_FancyButtonCreate_upvr (readonly)
		[9]: module_7_upvr (readonly)
		[10]: var121_upvw (read and write)
		[11]: ProductPurchaseWithCredit_upvr (readonly)
		[12]: tbl_33_upvr (readonly)
		[13]: Font_new_result1_3_upvr (readonly)
	]]
	local module_17_upvr = {
		RewardSection = BackgroundSectionCreate_upvr(arg1);
		AutoLocatorSection = BackgroundSectionCreate_upvr(arg1);
		RewardContainer = I_upvr("Frame", {
			Parent = arg1.Container;
			ZIndex = arg1.ContainerZIndexAboveTexture;
			BackgroundTransparency = 1;
		});
		AutoLocatorContainer = I_upvr("Frame", {
			Parent = arg1.Container;
			ZIndex = arg1.ContainerZIndexAboveTexture;
			BackgroundTransparency = 1;
		});
		TitleText = "Scavenger Hunt:";
		TitleLabel = I_upvr("TextLabel", tbl_34_upvr, {
			Parent = module_17_upvr.RewardContainer;
			Text = module_17_upvr.TitleText;
			TextXAlignment = Enum.TextXAlignment.Left;
			FontFace = Font_new_result1_3_upvr;
		});
		TitleStroke = I_upvr("UIStroke", tbl_35_upvr, {
			Parent = module_17_upvr.TitleLabel;
			Color = module_15_upvr.SharedTheme.Stroke;
			Transparency = tbl_29_upvr.TextStrokeTransparency;
		});
		TitleBounds = module_15_upvr.TextBoundsCreate(module_17_upvr.TitleLabel.FontFace);
		ProgressLabel = I_upvr("TextLabel", tbl_34_upvr, {
			Parent = module_17_upvr.RewardContainer;
			TextXAlignment = Enum.TextXAlignment.Left;
			FontFace = Font_new_result1_3_upvr;
		});
		ProgressStroke = I_upvr("UIStroke", tbl_35_upvr, {
			Parent = module_17_upvr.ProgressLabel;
			Color = module_15_upvr.SharedTheme.Stroke;
			Transparency = tbl_29_upvr.TextStrokeTransparency;
		});
		DescriptionLabel = I_upvr("TextLabel", tbl_34_upvr, {
			Parent = module_17_upvr.RewardContainer;
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Top;
			FontFace = Font_new_result1_3_upvr;
		});
	}
	local FontFace = module_17_upvr.DescriptionLabel.FontFace
	module_17_upvr.DescriptionBounds_NewLine = module_15_upvr.TextBoundsCreate(FontFace)
	module_17_upvr.DescriptionBounds_Space = module_15_upvr.TextBoundsCreate(FontFace)
	module_17_upvr.DescriptionBounds_SpaceUnwrapped = module_15_upvr.TextBoundsCreate(FontFace)
	module_17_upvr.DescriptionStroke = I_upvr("UIStroke", tbl_35_upvr, {
		Parent = module_17_upvr.DescriptionLabel;
		Color = module_15_upvr.SharedTheme.Stroke;
		Transparency = tbl_29_upvr.TextStrokeTransparency;
	})
	module_17_upvr.CollectiblesScrollingFrame = I_upvr("ScrollingFrame", {
		Parent = module_17_upvr.RewardContainer;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		TopImage = "rbxassetid://14918355602";
		MidImage = "rbxassetid://14918328161";
		BottomImage = "rbxassetid://14918355727";
		ScrollBarImageColor3 = module_15_upvr.SharedTheme.Stroke;
		ScrollBarImageTransparency = tbl_29_upvr.TileBackerTransparency;
		ScrollingDirection = Enum.ScrollingDirection.X;
	})
	module_17_upvr.Collectibles = {}
	module_17_upvr.RewardDivider = I_upvr("Frame", {
		Parent = module_17_upvr.RewardContainer;
		BackgroundTransparency = tbl_29_upvr.TileBackerTransparency;
		BackgroundColor3 = module_15_upvr.SharedTheme.Stroke;
		BorderSizePixel = 0;
	})
	I_upvr("UICorner", {
		Parent = module_17_upvr.RewardDivider;
		CornerRadius = UDim.new(1, 0);
	})
	module_17_upvr.RewardScrollingFrame = I_upvr("ScrollingFrame", {
		Parent = module_17_upvr.RewardContainer;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		TopImage = "rbxassetid://14918355602";
		MidImage = "rbxassetid://14918328161";
		BottomImage = "rbxassetid://14918355727";
		ScrollBarImageColor3 = module_15_upvr.SharedTheme.Stroke;
		ScrollBarImageTransparency = tbl_29_upvr.TileBackerTransparency;
		ScrollingDirection = Enum.ScrollingDirection.X;
	})
	module_17_upvr.Rewards = {}
	module_17_upvr.Tweening_RewardClaims = {}
	module_17_upvr.AutoLocatorTitleText = "Scavenger Auto-Locator 📡"
	module_17_upvr.AutoLocatorTitleLabel = I_upvr("TextLabel", tbl_34_upvr, {
		Parent = module_17_upvr.AutoLocatorContainer;
		Text = module_17_upvr.AutoLocatorTitleText;
		FontFace = Font_new_result1_3_upvr;
	})
	module_17_upvr.AutoLocatorTitleBounds = module_15_upvr.TextBoundsCreate(module_17_upvr.AutoLocatorTitleLabel.FontFace)
	module_17_upvr.AutoLocatorTitleStroke = I_upvr("UIStroke", tbl_35_upvr, {
		Parent = module_17_upvr.AutoLocatorTitleLabel;
		Color = module_15_upvr.SharedTheme.Stroke;
		Transparency = tbl_29_upvr.TextStrokeTransparency;
	})
	module_17_upvr.AutoLocatorPurchase = BUE_FancyButtonCreate_upvr(module_17_upvr.AutoLocatorContainer)
	module_17_upvr.AutoLocatorPurchase.Button.Activated:Connect(function() -- Line 2477
		--[[ Upvalues[5]:
			[1]: module_17_upvr (readonly)
			[2]: module_7_upvr (copied, readonly)
			[3]: var121_upvw (copied, read and write)
			[4]: ProductPurchaseWithCredit_upvr (copied, readonly)
			[5]: tbl_33_upvr (copied, readonly)
		]]
		if not module_17_upvr.Cached_HasUnlockedAutoLocator then
			module_7_upvr.PlayUIClickSound()
			ProductPurchaseWithCredit_upvr(var121_upvw.Products.UnlockAutoLocator, tbl_33_upvr.PlayerData.Credit_ByProductId)
		else
			if module_7_upvr.IsAutoLocatorOpen then
				module_7_upvr.PlayUIClickSound()
				module_7_upvr.RequestCloseAutoLocator()
				return
			end
			if module_7_upvr.RequestOpenAutoLocator() then
				module_7_upvr.PlayUIClickSound()
				module_7_upvr.RequestCloseMenu()
			end
		end
	end)
	module_17_upvr.AutoLocatorDescriptionLabel = I_upvr("TextLabel", tbl_34_upvr, {
		Parent = module_17_upvr.AutoLocatorContainer;
		Text = "Scavenger Auto-Locator lets you see all the locations of every hidden item. Keep it secret...";
		TextXAlignment = Enum.TextXAlignment.Left;
		TextWrapped = true;
		FontFace = Font_new_result1_3_upvr;
	})
	module_17_upvr.AutoLocatorDescriptionStroke = I_upvr("UIStroke", tbl_35_upvr, {
		Parent = module_17_upvr.AutoLocatorDescriptionLabel;
		Color = module_15_upvr.SharedTheme.Stroke;
		Transparency = tbl_29_upvr.TextStrokeTransparency;
	})
	return module_17_upvr
end
tbl_42.Create = Create
local function Update(arg1, arg2, arg3, arg4) -- Line 2511
	--[[ Upvalues[14]:
		[1]: module_15_upvr (readonly)
		[2]: var121_upvw (read and write)
		[3]: tbl_33_upvr (readonly)
		[4]: utf8_char_result1_upvr (readonly)
		[5]: BUE_FancyButtonUpdateText_upvr (readonly)
		[6]: module_7_upvr (readonly)
		[7]: BUE_FancyButtonUpdateSize_upvr (readonly)
		[8]: I_upvr (readonly)
		[9]: tbl_34_upvr (readonly)
		[10]: RewardCreate_upvr (readonly)
		[11]: module_6_upvr (readonly)
		[12]: PutObjectIntoArray_upvr (readonly)
		[13]: RewardClaimedCreate_upvr (readonly)
		[14]: RewardWarningCreate_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 308 start (CF ANALYSIS FAILED)
	local var574
	if arg4.Dirty_LoadedEvent then
		var574 = arg4.LoadedTheme.BackgroundSection
		arg2.RewardSection.Frame.BackgroundColor3 = var574
		var574 = arg4.LoadedTheme.BackgroundSection
		arg2.AutoLocatorSection.Frame.BackgroundColor3 = var574
		arg2.Cached_OwnedCollectibleCount = nil
		local Text_3 = arg4.LoadedTheme.Text
		arg2.TitleLabel.TextColor3 = Text_3
		arg2.ProgressLabel.TextColor3 = Text_3
		arg2.DescriptionLabel.TextColor3 = Text_3
		arg2.AutoLocatorTitleLabel.TextColor3 = Text_3
		arg2.AutoLocatorDescriptionLabel.TextColor3 = Text_3
	end
	local RawSaveData_2 = arg4.LoadedEventData.RawSaveData
	var574 = RawSaveData_2.FoundCollectibles
	if RawSaveData_2.UnlockAutoLocator == nil then
		var574 = false
	else
		var574 = true
	end
	local AutoLocatorPurchase_2 = arg2.AutoLocatorPurchase
	-- KONSTANTERROR: [0] 1. Error Block 308 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [73] 41. Error Block 344 start (CF ANALYSIS FAILED)
	local LoadedTheme = arg4.LoadedTheme
	if AutoLocatorPurchase_2.Theme ~= LoadedTheme then
		AutoLocatorPurchase_2.Theme = LoadedTheme
		AutoLocatorPurchase_2.ButtonTheme = LoadedTheme.FancyButton
		AutoLocatorPurchase_2.Label.TextColor3 = LoadedTheme.Text
	end
	-- KONSTANTERROR: [73] 41. Error Block 344 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [93] 52. Error Block 345 start (CF ANALYSIS FAILED)
	module_15_upvr.FancyButtonUpdateTweens(AutoLocatorPurchase_2, arg3, AutoLocatorPurchase_2.ButtonTheme)
	if arg2.Cached_HasUnlockedAutoLocator ~= var574 then
		arg2.Cached_HasUnlockedAutoLocator = var574
	end
	if not var574 then
		local UnlockAutoLocator = var121_upvw.Products.UnlockAutoLocator
		local var580
		local var581 = tbl_33_upvr.PlayerData.Credit_ByProductId[UnlockAutoLocator.Id]
		if var581 then
			var580 = "FREE (%d left)":format(var581)
		else
			local UpdatedPrice = UnlockAutoLocator.UpdatedPrice
			if not UpdatedPrice then
				UpdatedPrice = UnlockAutoLocator.Price
			end
			var580 = "%d%s":format(UpdatedPrice, utf8_char_result1_upvr)
		end
		BUE_FancyButtonUpdateText_upvr(AutoLocatorPurchase_2, var580, 9)
	else
		local var583
		if module_7_upvr.IsAutoLocatorOpen then
			var583 = "Stop Auto-Locator"
		else
			var583 = "Use Auto-Locator"
		end
		BUE_FancyButtonUpdateText_upvr(AutoLocatorPurchase_2, var583, 15)
	end
	-- KONSTANTERROR: [93] 52. Error Block 345 end (CF ANALYSIS FAILED)
end
tbl_42.Update = Update
local function TimeBasedScreenDestroy_upvr(arg1) -- Line 3114, Named "TimeBasedScreenDestroy"
	--[[ Upvalues[1]:
		[1]: module_15_upvr (readonly)
	]]
	arg1.MainSection.Frame:Destroy()
	arg1.MainContainer:Destroy()
	module_15_upvr.FancyButtonDestroy(arg1.Purchase)
	for _, v_17 in arg1.Rewards do
		module_15_upvr.FancyButtonDestroy(v_17.Claim)
	end
end
local function TimeBasedScreenCreate_upvr(arg1, arg2) -- Line 3123, Named "TimeBasedScreenCreate"
	--[[ Upvalues[11]:
		[1]: BackgroundSectionCreate_upvr (readonly)
		[2]: I_upvr (readonly)
		[3]: tbl_34_upvr (readonly)
		[4]: Font_new_result1_3_upvr (readonly)
		[5]: tbl_35_upvr (readonly)
		[6]: module_15_upvr (readonly)
		[7]: tbl_29_upvr (readonly)
		[8]: BUE_FancyButtonCreate_upvr (readonly)
		[9]: module_7_upvr (readonly)
		[10]: ProductPurchaseWithCredit_upvr (readonly)
		[11]: tbl_33_upvr (readonly)
	]]
	local module_13_upvr = {
		MainSection = BackgroundSectionCreate_upvr(arg1);
		MainContainer = I_upvr("Frame", {
			Parent = arg1.Container;
			ZIndex = arg1.ContainerZIndexAboveTexture;
			BackgroundTransparency = 1;
		});
	}
	module_13_upvr.TitleText = arg2
	module_13_upvr.TitleLabel = I_upvr("TextLabel", tbl_34_upvr, {
		Parent = module_13_upvr.MainContainer;
		Text = module_13_upvr.TitleText;
		TextXAlignment = Enum.TextXAlignment.Left;
		FontFace = Font_new_result1_3_upvr;
	})
	module_13_upvr.TitleStroke = I_upvr("UIStroke", tbl_35_upvr, {
		Parent = module_13_upvr.TitleLabel;
		Color = module_15_upvr.SharedTheme.Stroke;
		Transparency = tbl_29_upvr.TextStrokeTransparency;
	})
	module_13_upvr.TitleBounds = module_15_upvr.TextBoundsCreate(module_13_upvr.TitleLabel.FontFace)
	module_13_upvr.ProgressLabel = I_upvr("TextLabel", tbl_34_upvr, {
		Parent = module_13_upvr.MainContainer;
		TextXAlignment = Enum.TextXAlignment.Left;
		FontFace = Font_new_result1_3_upvr;
	})
	module_13_upvr.ProgressStroke = I_upvr("UIStroke", tbl_35_upvr, {
		Parent = module_13_upvr.ProgressLabel;
		Color = module_15_upvr.SharedTheme.Stroke;
		Transparency = tbl_29_upvr.TextStrokeTransparency;
	})
	module_13_upvr.DescriptionLabel = I_upvr("TextLabel", tbl_34_upvr, {
		Parent = module_13_upvr.MainContainer;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		FontFace = Font_new_result1_3_upvr;
	})
	module_13_upvr.DescriptionStroke = I_upvr("UIStroke", tbl_35_upvr, {
		Parent = module_13_upvr.DescriptionLabel;
		Color = module_15_upvr.SharedTheme.Stroke;
		Transparency = tbl_29_upvr.TextStrokeTransparency;
	})
	module_13_upvr.RewardScrollingFrame = I_upvr("ScrollingFrame", {
		Parent = module_13_upvr.MainContainer;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		TopImage = "rbxassetid://14918355602";
		MidImage = "rbxassetid://14918328161";
		BottomImage = "rbxassetid://14918355727";
		ScrollBarImageColor3 = module_15_upvr.SharedTheme.Stroke;
		ScrollBarImageTransparency = tbl_29_upvr.TileBackerTransparency;
		ScrollingDirection = Enum.ScrollingDirection.X;
	})
	module_13_upvr.Rewards = {}
	module_13_upvr.Tweening_RewardClaims = {}
	module_13_upvr.PurchaseTitleText = "OR claim next item immediately"
	module_13_upvr.PurchaseTitleLabel = I_upvr("TextLabel", tbl_34_upvr, {
		Parent = module_13_upvr.MainContainer;
		Text = module_13_upvr.PurchaseTitleText;
		FontFace = Font_new_result1_3_upvr;
	})
	module_13_upvr.PurchaseTitleBounds = module_15_upvr.TextBoundsCreate(module_13_upvr.PurchaseTitleLabel.FontFace)
	module_13_upvr.PurchaseTitleStroke = I_upvr("UIStroke", tbl_35_upvr, {
		Parent = module_13_upvr.PurchaseTitleLabel;
		Color = module_15_upvr.SharedTheme.Stroke;
		Transparency = tbl_29_upvr.TextStrokeTransparency;
	})
	module_13_upvr.Purchase = BUE_FancyButtonCreate_upvr(module_13_upvr.MainContainer)
	module_13_upvr.Purchase.Button.Activated:Connect(function() -- Line 3198
		--[[ Upvalues[4]:
			[1]: module_13_upvr (readonly)
			[2]: module_7_upvr (copied, readonly)
			[3]: ProductPurchaseWithCredit_upvr (copied, readonly)
			[4]: tbl_33_upvr (copied, readonly)
		]]
		local NextProduct = module_13_upvr.NextProduct
		if NextProduct then
			module_7_upvr.PlayUIClickSound()
			ProductPurchaseWithCredit_upvr(NextProduct, tbl_33_upvr.PlayerData.Credit_ByProductId)
		end
	end)
	return module_13_upvr
end
local function TimeBasedScreenUpdate_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 3227, Named "TimeBasedScreenUpdate"
	--[[ Upvalues[16]:
		[1]: module_15_upvr (readonly)
		[2]: BUE_FancyButtonUpdateSize_upvr (readonly)
		[3]: tbl_33_upvr (readonly)
		[4]: utf8_char_result1_upvr (readonly)
		[5]: BUE_FancyButtonUpdateText_upvr (readonly)
		[6]: I_upvr (readonly)
		[7]: tbl_34_upvr (readonly)
		[8]: Font_new_result1_3_upvr (readonly)
		[9]: tbl_35_upvr (readonly)
		[10]: tbl_29_upvr (readonly)
		[11]: BUE_FancyButtonCreate_upvr (readonly)
		[12]: module_7_upvr (readonly)
		[13]: module_6_upvr (readonly)
		[14]: PutObjectIntoArray_upvr (readonly)
		[15]: RewardClaimedCreate_upvr (readonly)
		[16]: RewardWarningCreate_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 226 start (CF ANALYSIS FAILED)
	if arg4.Dirty_LoadedEvent then
		arg2.MainSection.Frame.BackgroundColor3 = arg4.LoadedTheme.BackgroundSection
		local Text_4 = arg4.LoadedTheme.Text
		arg2.TitleLabel.TextColor3 = Text_4
		arg2.ProgressLabel.TextColor3 = Text_4
		arg2.DescriptionLabel.TextColor3 = Text_4
		arg2.PurchaseTitleLabel.TextColor3 = Text_4
	end
	local Cached_EmSize = arg1.Cached_EmSize
	local Cached_Padding = arg1.Cached_Padding
	local Cached_TextStroke_2 = arg1.Cached_TextStroke
	local Cached_ContainerRec_I_2 = arg1.Cached_ContainerRec_I
	local var604 = -Cached_Padding
	local var605 = Cached_ContainerRec_I_2.XMin - var604
	local var606 = Cached_ContainerRec_I_2.YMin - var604
	local var607 = Cached_ContainerRec_I_2.XMax + var604
	local var608 = Cached_ContainerRec_I_2.YMax + var604
	local tbl_39 = {
		XMin = var605;
		YMin = var606;
		XMax = var607;
		YMax = var608;
		XSize = var607 - var605;
	}
	local var610 = var608 - var606
	tbl_39.YSize = var610
	local var611 = tbl_39
	local XMin_10 = var611.XMin
	local YMin_12 = var611.YMin
	local clone_8 = table.clone(var611)
	clone_8.XMin -= XMin_10
	clone_8.YMin -= YMin_12
	clone_8.XMax -= XMin_10
	clone_8.YMax -= YMin_12
	local var615 = clone_8
	local ceiled_5 = math.ceil(Cached_EmSize * 1.3)
	local var617 = var615.XMin + Cached_Padding
	local var618 = var615.YMin + 0
	local XMax_7 = var615.XMax
	if ceiled_5 then
		var610 = var615.YMin + ceiled_5
	else
		var610 = var615.YMax
	end
	local var621 = {
		XMin = var617;
		YMin = var618;
		XMax = XMax_7;
		YMax = var610;
		XSize = XMax_7 - var617;
		YSize = var610 - var618;
	}
	-- KONSTANTERROR: [0] 1. Error Block 226 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [175] 110. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [175] 110. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [176] 111. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [176] 111. Error Block 9 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [177] 112. Error Block 201 start (CF ANALYSIS FAILED)
	local Frame_2 = arg2.MainSection.Frame
	Frame_2.Position = UDim2.fromOffset(var611.XMin, var611.YMin)
	Frame_2.Size = UDim2.fromOffset(var611.XSize, var611.YSize)
	local MainContainer = arg2.MainContainer
	MainContainer.Position = UDim2.fromOffset(var611.XMin, var611.YMin)
	MainContainer.Size = UDim2.fromOffset(var611.XSize, var611.YSize)
	arg2.MainSection.Corner.CornerRadius = arg1.Cached_CornerSize_UDim
	local ceiled_2 = math.ceil(Cached_EmSize)
	local var625 = var621.XMin + arg2.TitleBounds.X
	local XMin_9 = var621.XMin
	local YMin_18 = var621.YMin
	local YMax_14 = var621.YMax
	local var630 = var625 + (Cached_Padding or 0)
	local YMin_8 = var621.YMin
	local XMax_8 = var621.XMax
	local YMax_8 = var621.YMax
	local var635 = {
		XMin = XMin_9;
		YMin = YMin_18;
		XMax = var625;
		YMax = YMax_14;
		XSize = var625 - XMin_9;
		YSize = YMax_14 - YMin_18;
	}
	local var636 = {
		XMin = var630;
		YMin = YMin_8;
		XMax = XMax_8;
		YMax = YMax_8;
		XSize = XMax_8 - var630;
		YSize = YMax_8 - YMin_8;
	}
	local XMin_11 = var636.XMin
	local var638 = var636.YMin + (ceiled_5 - ceiled_2) * 0.5
	local XMax_14 = var636.XMax
	local YMax_7 = var636.YMax
	arg2.TitleStroke.Thickness = Cached_TextStroke_2
	arg2.TitleLabel.TextSize = ceiled_5
	local TitleLabel = arg2.TitleLabel
	TitleLabel.Position = UDim2.fromOffset(var635.XMin, var635.YMin)
	TitleLabel.Size = UDim2.fromOffset(var635.XSize, var635.YSize)
	arg2.ProgressStroke.Thickness = Cached_TextStroke_2
	arg2.ProgressLabel.TextSize = ceiled_2
	local var643 = {
		XMin = XMin_11;
		YMin = var638;
		XMax = XMax_14;
		YMax = YMax_7;
		XSize = XMax_14 - XMin_11;
		YSize = YMax_7 - var638;
	}
	local ProgressLabel = arg2.ProgressLabel
	ProgressLabel.Position = UDim2.fromOffset(var643.XMin, var643.YMin)
	ProgressLabel.Size = UDim2.fromOffset(var643.XSize, var643.YSize)
	arg2.DescriptionStroke.Thickness = Cached_TextStroke_2
	arg2.DescriptionLabel.TextSize = ceiled_2
	if 0 + math.max(ceiled_5, ceiled_2) + ceiled_2 then
		-- KONSTANTWARNING: GOTO [404] #248
	end
	-- KONSTANTERROR: [177] 112. Error Block 201 end (CF ANALYSIS FAILED)
end
local function FormatPlural_upvr(arg1, arg2, arg3) -- Line 3684, Named "FormatPlural"
	if arg1 == 1 then
	elseif arg3 then
	else
	end
	return "%d %s":format(arg1, arg2..'s')
end
local tbl_6 = {}
tbl_38_upvr[2] = tbl_6
local function Destroy(arg1) -- Line 3704
	--[[ Upvalues[1]:
		[1]: TimeBasedScreenDestroy_upvr (readonly)
	]]
	TimeBasedScreenDestroy_upvr(arg1.TimeBasedScreen)
end
tbl_6.Destroy = Destroy
local function Create(arg1) -- Line 3708
	--[[ Upvalues[2]:
		[1]: TimeBasedScreenCreate_upvr (readonly)
		[2]: var121_upvw (read and write)
	]]
	local module_10 = {
		TimeBasedScreen = TimeBasedScreenCreate_upvr(arg1, "Likes Challenge:");
	}
	local Products = var121_upvw.Products
	module_10.LikesProducts = {Products.UnlockLikes1, Products.UnlockLikes2, Products.UnlockLikes3}
	return module_10
end
tbl_6.Create = Create
local function Init_upvr(arg1) -- Line 3720, Named "GetRewardTitle"
	local var651
	if arg1.Requirement == 1 then
		var651 = "like"
	else
		var651 = "likes"
	end
	return "%d %s":format(arg1.Requirement, var651)
end
local function Update_upvr(arg1, arg2, arg3) -- Line 3726, Named "GetRewardButtonText"
	return math.max(arg1.Requirement - arg3, 0).." more"
end
local function Update(arg1, arg2, arg3, arg4) -- Line 3735
	--[[ Upvalues[6]:
		[1]: tbl_33_upvr (readonly)
		[2]: FormatPlural_upvr (readonly)
		[3]: Init_upvr (readonly)
		[4]: Update_upvr (readonly)
		[5]: module_6_upvr (readonly)
		[6]: TimeBasedScreenUpdate_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
	local RawSaveData_3 = arg4.LoadedEventData.RawSaveData
	local var653 = arg4.LoadedEvent.ChallengeLikes.Rewards[RawSaveData_3.HighestClaimedLikesIndex + 1]
	if not var653 then
		-- KONSTANTWARNING: GOTO [59] #45
	end
	-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [25] 18. Error Block 16 start (CF ANALYSIS FAILED)
	if math.max((var653.Requirement) - (RawSaveData_3.SpentLikes + tbl_33_upvr.PlayerData.RawData.UnspentLikes), 0) <= 0 then
		-- KONSTANTWARNING: GOTO [59] #45
	end
	-- KONSTANTERROR: [25] 18. Error Block 16 end (CF ANALYSIS FAILED)
end
tbl_6.Update = Update
local tbl_4 = {}
tbl_38_upvr[10] = tbl_4
function Init_upvr(arg1) -- Line 3803, Named "Destroy"
	--[[ Upvalues[1]:
		[1]: TimeBasedScreenDestroy_upvr (readonly)
	]]
	TimeBasedScreenDestroy_upvr(arg1.TimeBasedScreen)
end
tbl_4.Destroy = Init_upvr
function Init_upvr(arg1) -- Line 3807, Named "Create"
	--[[ Upvalues[2]:
		[1]: TimeBasedScreenCreate_upvr (readonly)
		[2]: var121_upvw (read and write)
	]]
	return {
		TimeBasedScreen = TimeBasedScreenCreate_upvr(arg1, "Daily Login Challenge:");
		DailyLoginProducts = {var121_upvw.Products.UnlockDailyLogin1, var121_upvw.Products.UnlockDailyLogin2, var121_upvw.Products.UnlockDailyLogin3, var121_upvw.Products.UnlockDailyLogin4, var121_upvw.Products.UnlockDailyLogin5};
	}
end
tbl_4.Create = Init_upvr
function Init_upvr(arg1, arg2) -- Line 3822, Named "GetRewardTitle"
	return "Day %d":format(arg2)
end
function Update_upvr(arg1, arg2, arg3, arg4) -- Line 3826, Named "Update"
	--[[ Upvalues[4]:
		[1]: tbl_33_upvr (readonly)
		[2]: Init_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: TimeBasedScreenUpdate_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var657
	local var658 = false
	local var659 = ""
	local DailyLoginRewards = arg4.LoadedEvent.DailyLoginRewards
	local HighestClaimedDailyLoginIndex = arg4.LoadedEventData.RawSaveData.HighestClaimedDailyLoginIndex
	if not DailyLoginRewards[HighestClaimedDailyLoginIndex + 1] then
		var657 = "You have unlocked all daily login rewards!"
	else
		local LastDailyLoginAt = tbl_33_upvr.PlayerData.RawData.LastDailyLoginAt
		if not LastDailyLoginAt then
			var657 = "Your next reward is ready to claim now!"
			var658 = true
		else
			local var663
			local maximum_2 = math.max(LastDailyLoginAt + 86400 - math.floor(workspace:GetServerTimeNow()), 0)
			if maximum_2 <= 0 then
				var657 = "Your next reward is ready to claim now!"
				var658 = true
			else
				local var665 = maximum_2
				local var666
				local floored_6 = math.floor(var665 / 60)
				var663 = floored_6 / 60
				local floored_3 = math.floor(var663)
				local var669 = floored_6 % 60
				var663 = nil
				if 0 < floored_3 then
					if floored_3 == 1 then
						var666 = "hour"
					else
						var666 = "hour"..'s'
					end
					var666 = var669
					if var666 == 1 then
					else
					end
					var666 = var665 % 60
					if var666 == 1 then
					else
					end
					var663 = "%d %s":format(floored_3, var666)..", ".."%d %s":format(var666, "minute"..'s')..", ".."%d %s":format(var666, "second"..'s')
				else
					local var670
					if 0 < var669 then
						local var671 = var669
						if var671 == 1 then
						else
							var666 = "minute"
						end
						var666 = "%d %s":format(var671, var666..'s')
						var670 = ", "
						local var672 = var665 % 60
						if var672 == 1 then
						else
							var666 = "second"
						end
						var666 = "%d %s":format(var672, var666..'s')
						var663 = var666..var670..var666
					else
						local var673 = var665 % 60
						if var673 == 1 then
							var670 = "second"
						else
							var670 = "second"..'s'
						end
						var666 = var670
						var663 = "%d %s":format(var673, var666)
					end
				end
				var657 = "Come back later in %s to unlock rewards":format(var663)
				if 0 < floored_3 then
					var659 = "%02d:%02d:%02d":format(floored_3, var669, var665 % 60)
				else
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					var659 = "%02d:%02d":format(var669, var665 % 60)
				end
			end
		end
	end
	local module_3 = {
		DescriptionText = var657;
		RewardsList = DailyLoginRewards;
		GetRewardTitle = Init_upvr;
		RewardTitleTextScale = 1.6;
	}
	local daily_login = module_6_upvr.RewardKind.daily_login
	module_3.RewardKind = daily_login
	module_3.CanClaimNextReward = var658
	module_3.NextRewardText = var659
	if DailyLoginRewards[HighestClaimedDailyLoginIndex + 1] then
		daily_login = arg2.DailyLoginProducts[HighestClaimedDailyLoginIndex + 1]
	else
		daily_login = nil
	end
	module_3.NextProduct = daily_login
	module_3.HighestClaimedRewardIndex = HighestClaimedDailyLoginIndex
	return TimeBasedScreenUpdate_upvr(arg1, arg2.TimeBasedScreen, arg3, arg4, module_3)
end
tbl_4.Update = Update_upvr
local tbl_10 = {}
tbl_38_upvr[11] = tbl_10
function Init_upvr(arg1) -- Line 3924, Named "Destroy"
	--[[ Upvalues[1]:
		[1]: TimeBasedScreenDestroy_upvr (readonly)
	]]
	TimeBasedScreenDestroy_upvr(arg1.TimeBasedScreen)
end
tbl_10.Destroy = Init_upvr
function Init_upvr(arg1) -- Line 3928, Named "Create"
	--[[ Upvalues[2]:
		[1]: TimeBasedScreenCreate_upvr (readonly)
		[2]: var121_upvw (read and write)
	]]
	return {
		TimeBasedScreen = TimeBasedScreenCreate_upvr(arg1, "Playtime Challenge:");
		PlaytimeProducts = {var121_upvw.Products.UnlockPlaytime1, var121_upvw.Products.UnlockPlaytime2, var121_upvw.Products.UnlockPlaytime3, var121_upvw.Products.UnlockPlaytime4, var121_upvw.Products.UnlockPlaytime5};
	}
end
tbl_10.Create = Init_upvr
function Init_upvr(arg1) -- Line 3941, Named "GetRewardTitle"
	local Requirement = arg1.Requirement
	local floored_2 = math.floor(Requirement / 60)
	local floored = math.floor(floored_2 / 60)
	local var682 = floored_2 % 60
	local var683 = 0
	if var683 < floored then
		if floored == 1 then
			var683 = "hour"
		else
			var683 = "hour"..'s'
		end
		return "%d %s":format(floored, var683)
	end
	local var684
	if 0 < var682 then
		local var685 = var682 % 60
		if var685 == 1 then
			var684 = "minute"
		else
			var684 = "minute"..'s'
		end
		return "%d %s":format(var685, var684)
	end
	local var686 = Requirement % 60 % 60
	if var686 == 1 then
		var684 = "second"
	else
		var684 = "second"..'s'
	end
	return "%d %s":format(var686, var684)
end
function Update_upvr(arg1, arg2, arg3, arg4) -- Line 3959, Named "Update"
	--[[ Upvalues[4]:
		[1]: tbl_33_upvr (readonly)
		[2]: Init_upvr (readonly)
		[3]: module_6_upvr (readonly)
		[4]: TimeBasedScreenUpdate_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 76 start (CF ANALYSIS FAILED)
	local PlayerData = tbl_33_upvr.PlayerData
	local LoadedEventData_2 = arg4.LoadedEventData
	local PlaytimeRewards = arg4.LoadedEvent.PlaytimeRewards
	local HighestClaimedPlaytimeIndex = LoadedEventData_2.RawSaveData.HighestClaimedPlaytimeIndex
	local var691 = PlaytimeRewards[HighestClaimedPlaytimeIndex + 1]
	local var692
	if not var691 then
		-- KONSTANTWARNING: GOTO [201] #165
	end
	-- KONSTANTERROR: [0] 1. Error Block 76 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 16. Error Block 77 start (CF ANALYSIS FAILED)
	local var693
	local maximum = math.max((var691.Requirement) - (PlayerData.RawData.UnspentPlaytime + math.floor(os.clock() - PlayerData.PlaytimeUpdatedAt) + LoadedEventData_2.RawSaveData.SpentPlaytime), 0)
	if maximum <= 0 then
		var692 = true
	else
		local var696 = maximum
		local var697
		local floored_5 = math.floor(var696 / 60)
		local floored_4 = math.floor(floored_5 / 60)
		local var700 = floored_5 % 60
		if 0 < floored_4 then
			if floored_4 == 1 then
				var697 = "hour"
			else
				var697 = "hour"..'s'
			end
			var697 = var700
			if var697 == 1 then
			else
			end
			var697 = var696 % 60
			if var697 == 1 then
			else
			end
		else
			local var701
			if 0 < var700 then
				local var702 = var700
				if var702 == 1 then
				else
					var697 = "minute"
				end
				var697 = "%d %s":format(var702, var697..'s')
				var701 = ", "
				local var703 = var696 % 60
				if var703 == 1 then
				else
					var697 = "second"
				end
				var697 = "%d %s":format(var703, var697..'s')
			else
				local var704 = var696 % 60
				if var704 == 1 then
					var701 = "second"
				else
					var701 = "second"..'s'
				end
				var697 = var701
			end
		end
		var701 = ".\nYou need to play %s more for the next item.":format("%d %s":format(var704, var697))
		if 0 < floored_4 then
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
	end
	local module_9 = {
		DescriptionText = "Spend more time in the game to unlock rewards"..".\nYour next reward is ready to claim now!"..var701;
		RewardsList = PlaytimeRewards;
		GetRewardTitle = Init_upvr;
		RewardTitleTextScale = 1.4;
	}
	local playtime = module_6_upvr.RewardKind.playtime
	module_9.RewardKind = playtime
	module_9.CanClaimNextReward = var692
	module_9.NextRewardText = "%02d:%02d":format(var700, var696 % 60)
	if PlaytimeRewards[HighestClaimedPlaytimeIndex + 1] then
		playtime = arg2.PlaytimeProducts[HighestClaimedPlaytimeIndex + 1]
	else
		playtime = nil
	end
	module_9.NextProduct = playtime
	module_9.HighestClaimedRewardIndex = HighestClaimedPlaytimeIndex
	do
		return TimeBasedScreenUpdate_upvr(arg1, arg2.TimeBasedScreen, arg3, arg4, module_9)
	end
	-- KONSTANTERROR: [21] 16. Error Block 77 end (CF ANALYSIS FAILED)
end
tbl_10.Update = Update_upvr
local tbl_15 = {}
tbl_38_upvr[12] = tbl_15
function Init_upvr(arg1, arg2) -- Line 4103, Named "SortLocations"
	local var708
	if arg1.LayoutOrder >= arg2.LayoutOrder then
		var708 = false
	else
		var708 = true
	end
	return var708
end
function Update_upvr(arg1) -- Line 4111, Named "UI_M_Location_Destroy"
	--[[ Upvalues[1]:
		[1]: module_15_upvr (readonly)
	]]
	module_15_upvr.FancyButtonDestroy(arg1.Visit)
	arg1.Container:Destroy()
end
local function Destroy(arg1) -- Line 4120
	--[[ Upvalues[1]:
		[1]: module_15_upvr (readonly)
	]]
	arg1.MainSection.Frame:Destroy()
	arg1.MainContainer:Destroy()
	module_15_upvr.FancyButtonDestroy(arg1.Reward.Claim)
	for _, v_18 in arg1.Locations do
		module_15_upvr.FancyButtonDestroy(v_18.Visit)
		v_18.Container:Destroy()
	end
	if arg1.PurchaseOption then
		module_15_upvr.FancyButtonDestroy(arg1.PurchaseOption.Purchase)
	end
end
tbl_15.Destroy = Destroy
local function Create(arg1) -- Line 4135
	--[[ Upvalues[14]:
		[1]: BackgroundSectionCreate_upvr (readonly)
		[2]: I_upvr (readonly)
		[3]: tbl_34_upvr (readonly)
		[4]: Font_new_result1_3_upvr (readonly)
		[5]: tbl_35_upvr (readonly)
		[6]: module_15_upvr (readonly)
		[7]: tbl_29_upvr (readonly)
		[8]: RewardCreate_upvr (readonly)
		[9]: module_7_upvr (readonly)
		[10]: module_6_upvr (readonly)
		[11]: var121_upvw (read and write)
		[12]: BUE_FancyButtonCreate_upvr (readonly)
		[13]: ProductPurchaseWithCredit_upvr (readonly)
		[14]: tbl_33_upvr (readonly)
	]]
	local module_8_upvr = {
		MainSection = BackgroundSectionCreate_upvr(arg1);
		MainContainer = I_upvr("Frame", {
			Parent = arg1.Container;
			ZIndex = arg1.ContainerZIndexAboveTexture;
			BackgroundTransparency = 1;
		});
		TitleText = "Vurse's Multiverse Challenge:";
		TitleLabel = I_upvr("TextLabel", tbl_34_upvr, {
			Parent = module_8_upvr.MainContainer;
			Text = module_8_upvr.TitleText;
			TextXAlignment = Enum.TextXAlignment.Left;
			FontFace = Font_new_result1_3_upvr;
		});
		TitleStroke = I_upvr("UIStroke", tbl_35_upvr, {
			Parent = module_8_upvr.TitleLabel;
			Color = module_15_upvr.SharedTheme.Stroke;
			Transparency = tbl_29_upvr.TextStrokeTransparency;
		});
		TitleBounds = module_15_upvr.TextBoundsCreate(module_8_upvr.TitleLabel.FontFace);
		ProgressLabel = I_upvr("TextLabel", tbl_34_upvr, {
			Parent = module_8_upvr.MainContainer;
			TextXAlignment = Enum.TextXAlignment.Left;
			FontFace = Font_new_result1_3_upvr;
		});
		ProgressStroke = I_upvr("UIStroke", tbl_35_upvr, {
			Parent = module_8_upvr.ProgressLabel;
			Color = module_15_upvr.SharedTheme.Stroke;
			Transparency = tbl_29_upvr.TextStrokeTransparency;
		});
		DescriptionLabel = I_upvr("TextLabel", tbl_34_upvr, {
			Parent = module_8_upvr.MainContainer;
			TextXAlignment = Enum.TextXAlignment.Left;
			Text = "Unlock enough rewards in all other games from Vurse's multiverse to unlock this reward.";
			FontFace = Font_new_result1_3_upvr;
		});
		DescriptionStroke = I_upvr("UIStroke", tbl_35_upvr, {
			Parent = module_8_upvr.DescriptionLabel;
			Color = module_15_upvr.SharedTheme.Stroke;
			Transparency = tbl_29_upvr.TextStrokeTransparency;
		});
		Locations = {};
		VurseImage = I_upvr("ImageLabel", {
			Parent = module_8_upvr.MainContainer;
			ZIndex = 10;
			BackgroundTransparency = 1;
			Image = "rbxassetid://15948953405";
		});
		RewardDivider = I_upvr("Frame", {
			Parent = module_8_upvr.MainContainer;
			BackgroundTransparency = tbl_29_upvr.TileBackerTransparency;
			BackgroundColor3 = module_15_upvr.SharedTheme.Stroke;
			BorderSizePixel = 0;
		});
	}
	I_upvr("UICorner", {
		Parent = module_8_upvr.RewardDivider;
		CornerRadius = UDim.new(1, 0);
	})
	local RewardCreate_result1_upvr = RewardCreate_upvr(module_8_upvr.MainContainer)
	module_8_upvr.Reward = RewardCreate_result1_upvr
	RewardCreate_result1_upvr.Claim.Button.Activated:Connect(function() -- Line 4202
		--[[ Upvalues[4]:
			[1]: RewardCreate_result1_upvr (readonly)
			[2]: module_7_upvr (copied, readonly)
			[3]: module_6_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		if RewardCreate_result1_upvr.Cached_ClaimState == 1 then
			module_7_upvr.PlayUIClickSound()
			RewardCreate_result1_upvr.FailedClaimAttempt = true
		elseif RewardCreate_result1_upvr.Cached_ClaimState == 2 then
			module_7_upvr.PlayUIClickSound()
			module_6_upvr.Remotes.RequestClaimReward:FireServer(arg1.Cached_LoadedEventId, module_6_upvr.RewardKind.multiverse, 1)
		end
	end)
	RewardCreate_result1_upvr = var121_upvw.Products.UnlockMultiverse
	if RewardCreate_result1_upvr then
		RewardCreate_result1_upvr = {}
		local var724 = RewardCreate_result1_upvr
		var724.PurchaseTitleText = "OR skip the challenge to claim now for"
		var724.PurchaseTitleLabel = I_upvr("TextLabel", tbl_34_upvr, {
			Parent = module_8_upvr.MainContainer;
			Text = var724.PurchaseTitleText;
			FontFace = Font_new_result1_3_upvr;
		})
		var724.PurchaseTitleBounds = module_15_upvr.TextBoundsCreate(var724.PurchaseTitleLabel.FontFace)
		var724.PurchaseTitleStroke = I_upvr("UIStroke", tbl_35_upvr, {
			Parent = var724.PurchaseTitleLabel;
			Color = module_15_upvr.SharedTheme.Stroke;
			Transparency = tbl_29_upvr.TextStrokeTransparency;
		})
		var724.Purchase = BUE_FancyButtonCreate_upvr(module_8_upvr.MainContainer)
		var724.Purchase.Button.Activated:Connect(function() -- Line 4233
			--[[ Upvalues[5]:
				[1]: module_8_upvr (readonly)
				[2]: module_7_upvr (copied, readonly)
				[3]: ProductPurchaseWithCredit_upvr (copied, readonly)
				[4]: var121_upvw (copied, read and write)
				[5]: tbl_33_upvr (copied, readonly)
			]]
			if module_8_upvr.Cached_CanPurchase then
				module_7_upvr.PlayUIClickSound()
				ProductPurchaseWithCredit_upvr(var121_upvw.Products.UnlockMultiverse, tbl_33_upvr.PlayerData.Credit_ByProductId)
			end
		end)
		module_8_upvr.PurchaseOption = var724
	end
	return module_8_upvr
end
tbl_15.Create = Create
local function Update(arg1, arg2, arg3, arg4) -- Line 4248
	--[[ Upvalues[18]:
		[1]: tbl_33_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: Init_upvr (readonly)
		[4]: I_upvr (readonly)
		[5]: tbl_29_upvr (readonly)
		[6]: module_15_upvr (readonly)
		[7]: BUE_FancyButtonCreate_upvr (readonly)
		[8]: PropsApply_upvr (readonly)
		[9]: BUE_FancyButtonUpdateText_upvr (readonly)
		[10]: module_7_upvr (readonly)
		[11]: tbl_34_upvr (readonly)
		[12]: Font_new_result1_3_upvr (readonly)
		[13]: tbl_35_upvr (readonly)
		[14]: var121_upvw (read and write)
		[15]: utf8_char_result1_upvr (readonly)
		[16]: RewardClaimedCreate_upvr (readonly)
		[17]: RewardWarningCreate_upvr (readonly)
		[18]: BUE_FancyButtonUpdateSize_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	assert(arg4.LoadedEvent.MultiverseReward, "Missing MultiverseReward")
	local PurchaseOption = arg2.PurchaseOption
	local RawData = tbl_33_upvr.PlayerData.RawData
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [259] 180. Error Block 207 start (CF ANALYSIS FAILED)
	for i_19, v_19 in RawData do
		module_15_upvr.FancyButtonDestroy(v_19.Visit)
		v_19.Container:Destroy()
	end
	-- KONSTANTERROR: [259] 180. Error Block 207 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [276] 192. Error Block 270 start (CF ANALYSIS FAILED)
	if arg4.Dirty_LoadedEvent then
		arg2.MainSection.Frame.BackgroundColor3 = arg4.LoadedTheme.BackgroundSection
		local Text_2 = arg4.LoadedTheme.Text
		arg2.TitleLabel.TextColor3 = Text_2
		arg2.ProgressLabel.TextColor3 = Text_2
		arg2.DescriptionLabel.TextColor3 = Text_2
		if PurchaseOption then
			PurchaseOption.PurchaseTitleLabel.TextColor3 = Text_2
		end
		for _, v_20 in arg2.Locations do
			i_19 = v_20.ProgressLabel
			i_19.TextColor3 = Text_2
			i_19 = v_20.Visit
			v_19 = i_19.Label
			v_19.TextColor3 = Text_2
			v_19 = arg4.LoadedTheme.NormalButton
			i_19.ButtonTheme = v_19
			local _
		end
	end
	if arg4.LoadedEventData.RawSaveData.ClaimedMultiverse == nil then
		-- KONSTANTWARNING: GOTO [343] #229
	end
	-- KONSTANTERROR: [276] 192. Error Block 270 end (CF ANALYSIS FAILED)
end
tbl_15.Update = Update
local tbl_11 = {}
tbl_38_upvr[13] = tbl_11
function Init_upvr(arg1, arg2) -- Line 4834, Named "BoundedLabelCreate"
	--[[ Upvalues[6]:
		[1]: I_upvr (readonly)
		[2]: tbl_34_upvr (readonly)
		[3]: Font_new_result1_3_upvr (readonly)
		[4]: tbl_35_upvr (readonly)
		[5]: module_15_upvr (readonly)
		[6]: tbl_29_upvr (readonly)
	]]
	local module_5 = {}
	module_5.Text = arg2
	local tbl_16 = {}
	tbl_16.Parent = arg1
	tbl_16.Text = module_5.Text
	tbl_16.FontFace = Font_new_result1_3_upvr
	tbl_16.TextWrapped = true
	module_5.Label = I_upvr("TextLabel", tbl_34_upvr, tbl_16)
	module_5.Stroke = I_upvr("UIStroke", tbl_35_upvr, {
		Parent = module_5.Label;
		Color = module_15_upvr.SharedTheme.Stroke;
		Transparency = tbl_29_upvr.TextStrokeTransparency;
	})
	module_5.Bounds = module_15_upvr.TextBoundsCreate(module_5.Label.FontFace)
	return module_5
end
function Update_upvr(arg1) -- Line 4852, Named "Destroy"
	--[[ Upvalues[1]:
		[1]: module_15_upvr (readonly)
	]]
	arg1.MainSection.Frame:Destroy()
	arg1.MainContainer:Destroy()
	module_15_upvr.FancyButtonDestroy(arg1.Subscribe)
	module_15_upvr.FancyButtonDestroy(arg1.Reward.Claim)
	if arg1.PurchaseOption then
		module_15_upvr.FancyButtonDestroy(arg1.PurchaseOption.Purchase)
	end
end
tbl_11.Destroy = Update_upvr
function Update_upvr(arg1) -- Line 4866, Named "Create"
	--[[ Upvalues[17]:
		[1]: BackgroundSectionCreate_upvr (readonly)
		[2]: I_upvr (readonly)
		[3]: tbl_34_upvr (readonly)
		[4]: Font_new_result1_3_upvr (readonly)
		[5]: tbl_35_upvr (readonly)
		[6]: module_15_upvr (readonly)
		[7]: tbl_29_upvr (readonly)
		[8]: RewardCreate_upvr (readonly)
		[9]: module_7_upvr (readonly)
		[10]: module_6_upvr (readonly)
		[11]: Init_upvr (readonly)
		[12]: BUE_FancyButtonCreate_upvr (readonly)
		[13]: var121_upvw (read and write)
		[14]: MarketplaceService_upvr (readonly)
		[15]: LocalPlayer_upvr (readonly)
		[16]: tbl_33_upvr (readonly)
		[17]: ProductPurchaseWithCredit_upvr (readonly)
	]]
	local module_18_upvr = {
		Cached_ButtonsRec_M = {
			XMin = 0;
			YMin = 0;
			XMax = 0;
			YMax = 0;
			XSize = 0;
			YSize = 0;
		};
		Cached_SubButtonSizeX = 0;
		MainSection = BackgroundSectionCreate_upvr(arg1);
		MainContainer = I_upvr("Frame", {
			Parent = arg1.Container;
			ZIndex = arg1.ContainerZIndexAboveTexture;
			BackgroundTransparency = 1;
		});
	}
	module_18_upvr.MainContainer.ClipsDescendants = true
	module_18_upvr.TitleText = "Special VIP Reward:"
	module_18_upvr.TitleLabel = I_upvr("TextLabel", tbl_34_upvr, {
		Parent = module_18_upvr.MainContainer;
		Text = module_18_upvr.TitleText;
		TextXAlignment = Enum.TextXAlignment.Left;
		FontFace = Font_new_result1_3_upvr;
	})
	module_18_upvr.TitleStroke = I_upvr("UIStroke", tbl_35_upvr, {
		Parent = module_18_upvr.TitleLabel;
		Color = module_15_upvr.SharedTheme.Stroke;
		Transparency = tbl_29_upvr.TextStrokeTransparency;
	})
	module_18_upvr.TitleBounds = module_15_upvr.TextBoundsCreate(module_18_upvr.TitleLabel.FontFace)
	module_18_upvr.ProgressLabel = I_upvr("TextLabel", tbl_34_upvr, {
		Parent = module_18_upvr.MainContainer;
		TextXAlignment = Enum.TextXAlignment.Left;
		FontFace = Font_new_result1_3_upvr;
	})
	module_18_upvr.ProgressStroke = I_upvr("UIStroke", tbl_35_upvr, {
		Parent = module_18_upvr.ProgressLabel;
		Color = module_15_upvr.SharedTheme.Stroke;
		Transparency = tbl_29_upvr.TextStrokeTransparency;
	})
	module_18_upvr.DescriptionLabel = I_upvr("TextLabel", tbl_34_upvr, {
		Parent = module_18_upvr.MainContainer;
		TextXAlignment = Enum.TextXAlignment.Left;
		Text = "All VIP players receive this reward for free.";
		FontFace = Font_new_result1_3_upvr;
	})
	module_18_upvr.DescriptionStroke = I_upvr("UIStroke", tbl_35_upvr, {
		Parent = module_18_upvr.DescriptionLabel;
		Color = module_15_upvr.SharedTheme.Stroke;
		Transparency = tbl_29_upvr.TextStrokeTransparency;
	})
	module_18_upvr.SpecialImage = I_upvr("ImageLabel", {
		Parent = module_18_upvr.MainContainer;
		ZIndex = 10;
		AnchorPoint = Vector2.new(0, 1);
		BackgroundTransparency = 1;
		Image = "rbxassetid://16822913328";
		ImageTransparency = 0.5;
		Position = UDim2.fromScale(-0.027, 1);
		Size = UDim2.fromScale(1.13, 0.186);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
	})
	module_18_upvr.SpecialImageCorner = I_upvr("UICorner", {
		Parent = module_18_upvr.SpecialImage;
	})
	local RewardCreate_result1_upvr_2 = RewardCreate_upvr(module_18_upvr.MainContainer)
	module_18_upvr.Reward = RewardCreate_result1_upvr_2
	RewardCreate_result1_upvr_2.Claim.Button.Activated:Connect(function() -- Line 4933
		--[[ Upvalues[4]:
			[1]: RewardCreate_result1_upvr_2 (readonly)
			[2]: module_7_upvr (copied, readonly)
			[3]: module_6_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		if RewardCreate_result1_upvr_2.Cached_ClaimState == 1 then
			module_7_upvr.PlayUIClickSound()
			RewardCreate_result1_upvr_2.FailedClaimAttempt = true
		elseif RewardCreate_result1_upvr_2.Cached_ClaimState == 2 then
			module_7_upvr.PlayUIClickSound()
			module_6_upvr.Remotes.RequestClaimReward:FireServer(arg1.Cached_LoadedEventId, module_6_upvr.RewardKind.special, 1)
		end
	end)
	RewardCreate_result1_upvr_2 = Init_upvr(module_18_upvr.MainContainer, "")
	module_18_upvr.SubscribeTitle = RewardCreate_result1_upvr_2
	RewardCreate_result1_upvr_2 = BUE_FancyButtonCreate_upvr(module_18_upvr.MainContainer)
	module_18_upvr.Subscribe = RewardCreate_result1_upvr_2
	RewardCreate_result1_upvr_2 = module_18_upvr.Subscribe.Button.Activated
	RewardCreate_result1_upvr_2 = RewardCreate_result1_upvr_2:Connect
	RewardCreate_result1_upvr_2(function() -- Line 4948
		--[[ Upvalues[7]:
			[1]: module_18_upvr (readonly)
			[2]: module_7_upvr (copied, readonly)
			[3]: var121_upvw (copied, read and write)
			[4]: MarketplaceService_upvr (copied, readonly)
			[5]: LocalPlayer_upvr (copied, readonly)
			[6]: tbl_33_upvr (copied, readonly)
			[7]: module_6_upvr (copied, readonly)
		]]
		if module_18_upvr.Cached_UIStatus then
			if module_18_upvr.Cached_UIStatus == 1 then
				module_7_upvr.PlayUIClickSound()
				if type(var121_upvw.VIP) == "string" then
					MarketplaceService_upvr:PromptSubscriptionPurchase(LocalPlayer_upvr, var121_upvw.VIP)
				else
					MarketplaceService_upvr:PromptGamePassPurchase(LocalPlayer_upvr, var121_upvw.VIP)
				end
			end
			if module_18_upvr.Cached_UIStatus == 2 then
				module_7_upvr.PlayUIClickSound()
				if tbl_33_upvr.CanCheckVIPPaymentAt <= os.clock() then
					tbl_33_upvr.CanCheckVIPPaymentAt = os.clock() + 20
					module_6_upvr.Remotes.CheckVIPSubscriptionPayment:FireServer()
				end
			end
		end
	end)
	RewardCreate_result1_upvr_2 = var121_upvw.Products.UnlockSpecial
	if RewardCreate_result1_upvr_2 then
		RewardCreate_result1_upvr_2 = {}
		local var766 = RewardCreate_result1_upvr_2
		var766.OrLabel = I_upvr("TextLabel", tbl_34_upvr, {
			Parent = module_18_upvr.MainContainer;
			Text = "OR";
			FontFace = Font_new_result1_3_upvr;
		})
		var766.OrStroke = I_upvr("UIStroke", tbl_35_upvr, {
			Parent = var766.OrLabel;
			Color = module_15_upvr.SharedTheme.Stroke;
			Transparency = tbl_29_upvr.TextStrokeTransparency;
		})
		var766.PurchaseTitle = Init_upvr(module_18_upvr.MainContainer, "Buy this reward without VIP")
		var766.Purchase = BUE_FancyButtonCreate_upvr(module_18_upvr.MainContainer)
		var766.Purchase.Button.Activated:Connect(function() -- Line 4989
			--[[ Upvalues[5]:
				[1]: module_18_upvr (readonly)
				[2]: module_7_upvr (copied, readonly)
				[3]: ProductPurchaseWithCredit_upvr (copied, readonly)
				[4]: var121_upvw (copied, read and write)
				[5]: tbl_33_upvr (copied, readonly)
			]]
			if module_18_upvr.Cached_UIStatus then
				if module_18_upvr.Cached_UIStatus < 3 then
					module_7_upvr.PlayUIClickSound()
					ProductPurchaseWithCredit_upvr(var121_upvw.Products.UnlockSpecial, tbl_33_upvr.PlayerData.Credit_ByProductId)
				end
			end
		end)
		module_18_upvr.PurchaseOption = var766
	end
	return module_18_upvr
end
tbl_11.Create = Update_upvr
function Update_upvr(arg1, arg2, arg3, arg4) -- Line 5006, Named "Update"
	--[[ Upvalues[9]:
		[1]: tbl_33_upvr (readonly)
		[2]: module_6_upvr (readonly)
		[3]: module_15_upvr (readonly)
		[4]: BUE_FancyButtonUpdateText_upvr (readonly)
		[5]: var121_upvw (read and write)
		[6]: utf8_char_result1_upvr (readonly)
		[7]: RewardClaimedCreate_upvr (readonly)
		[8]: RewardWarningCreate_upvr (readonly)
		[9]: BUE_FancyButtonUpdateSize_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 284 start (CF ANALYSIS FAILED)
	assert(arg4.LoadedEvent.SpecialReward, "Missing SpecialReward")
	local PurchaseOption_2 = arg2.PurchaseOption
	local var771
	if arg4.Dirty_LoadedEvent then
		arg2.MainSection.Frame.BackgroundColor3 = arg4.LoadedTheme.BackgroundSection
		local Text_5 = arg4.LoadedTheme.Text
		arg2.TitleLabel.TextColor3 = Text_5
		arg2.ProgressLabel.TextColor3 = Text_5
		arg2.DescriptionLabel.TextColor3 = Text_5
		arg2.SubscribeTitle.Label.TextColor3 = Text_5
		if PurchaseOption_2 then
			PurchaseOption_2.OrLabel.TextColor3 = Text_5
			PurchaseOption_2.PurchaseTitle.Label.TextColor3 = Text_5
		end
	end
	local LoadedEventData = arg4.LoadedEventData
	local var774 = tbl_33_upvr
	if LoadedEventData.RawSaveData.ClaimedSpecial == nil then
		var774 = false
	else
		var774 = true
	end
	if var774 then
		var771 = 1
	else
		var771 = 0
	end
	local formatted = "%d / %d exclusive rewards claimed":format(var771, 1)
	if arg2.Cached_ProgressText ~= formatted then
		arg2.Cached_ProgressText = formatted
		arg2.ProgressLabel.Text = formatted
	end
	var771 = arg1.Cached_Padding
	if LoadedEventData.RawSaveData.ClaimedSpecial then
		-- KONSTANTWARNING: GOTO [134] #81
	end
	-- KONSTANTERROR: [0] 1. Error Block 284 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [115] 68. Error Block 272 start (CF ANALYSIS FAILED)
	if var774.PlayerData.RawData.VIPStatus == module_6_upvr.VIPStatus.subbed then
		-- KONSTANTWARNING: GOTO [134] #81
	end
	-- KONSTANTERROR: [115] 68. Error Block 272 end (CF ANALYSIS FAILED)
end
tbl_11.Update = Update_upvr
local function _(arg1) -- Line 5527, Named "LoadStatusPopupDestroy"
	arg1.ShadowContainer:Destroy()
	arg1.TextLabelsContainer:Destroy()
end
local GuiService_upvr = game:GetService("GuiService")
local UserInputService_upvr = game:GetService("UserInputService")
function Init_upvr(arg1) -- Line 5532, Named "RenderStepped"
	--[[ Upvalues[26]:
		[1]: module_7_upvr (readonly)
		[2]: tbl_33_upvr (readonly)
		[3]: var97_upvr (readonly)
		[4]: I_upvr (readonly)
		[5]: PlayerGui_upvr (readonly)
		[6]: tbl_29_upvr (readonly)
		[7]: tbl_34_upvr (readonly)
		[8]: Font_new_result1_3_upvr (readonly)
		[9]: tbl_35_upvr (readonly)
		[10]: module_15_upvr (readonly)
		[11]: GuiService_upvr (readonly)
		[12]: UserInputService_upvr (readonly)
		[13]: tbl_17_upvr (readonly)
		[14]: PropsApply_upvr (readonly)
		[15]: tbl_40_upvr (readonly)
		[16]: tbl_38_upvr (readonly)
		[17]: HasNewEvent_upvr (readonly)
		[18]: module_6_upvr (readonly)
		[19]: tbl_13_upvr (readonly)
		[20]: var121_upvw (read and write)
		[21]: Font_new_result1_3_upvr (readonly)
		[22]: tbl_43_upvr (readonly)
		[23]: Font_new_result1_3_upvr (readonly)
		[24]: var354_upvr (readonly)
		[25]: tbl_27_upvr (readonly)
		[26]: tbl_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	debug.profilebegin("BUEC_RenderStepped")
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [8] 7. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 3 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 11. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [17] 14. Error Block 4 start (CF ANALYSIS FAILED)
	module_7_upvr.IsCollectiblePopupOpen = false
	-- KONSTANTERROR: [17] 14. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 17. Error Block 5 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [21] 17. Error Block 5 end (CF ANALYSIS FAILED)
end
module_7_upvr.RenderStepped = Init_upvr
local tbl_9_upvr = {}
function Init_upvr(arg1) -- Line 7495, Named "Init"
	--[[ Upvalues[10]:
		[1]: var121_upvw (read and write)
		[2]: module_6_upvr (readonly)
		[3]: tbl_17_upvr (readonly)
		[4]: tbl_13_upvr (readonly)
		[5]: tbl_44_upvr (readonly)
		[6]: tbl_33_upvr (readonly)
		[7]: MarketplaceService_upvr (readonly)
		[8]: tbl_31_upvr (readonly)
		[9]: tbl_9_upvr (readonly)
		[10]: tbl_12_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	var121_upvw = arg1
	if var121_upvw.ChallengeKind == module_6_upvr.ChallengeKind.scavenger_hunt then
		tbl_17_upvr[1] = {
			Enabled = true;
			Icon = "rbxassetid://16792612851";
			Text = "Scavenger\nHunt";
			Screen = 1;
		}
		local RawSaveData_5 = tbl_13_upvr.RawSaveData
		RawSaveData_5.FoundCollectibles = {}
		RawSaveData_5.ClaimedCollectibleIndices = {}
	elseif var121_upvw.ChallengeKind == module_6_upvr.ChallengeKind.likes then
		tbl_17_upvr[1] = {
			Enabled = true;
			Icon = "rbxassetid://16792612851";
			Text = "Likes\nChallenge";
			Screen = 2;
		}
		local RawSaveData = tbl_13_upvr.RawSaveData
		tbl_44_upvr.RawData.UnspentLikes = 0
		RawSaveData.SpentLikes = 0
		RawSaveData.HighestClaimedLikesIndex = 0
	end
	tbl_33_upvr.PlayerData = module_6_upvr.TableDeepCopy(tbl_44_upvr)
	for _, v_21_upvr in var121_upvw.Products do
		local tbl_8_upvr = {}
		task.spawn(function() -- Line 7532
			--[[ Upvalues[3]:
				[1]: MarketplaceService_upvr (copied, readonly)
				[2]: v_21_upvr (readonly)
				[3]: tbl_8_upvr (readonly)
			]]
			-- KONSTANTERROR: [40] 34. Error Block 6 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [40] 34. Error Block 6 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 18 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [40.1]
			if not nil then
				-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [40.4]
				if not nil then
				end
				-- KONSTANTWARNING: GOTO [1] #2
			end
			-- KONSTANTERROR: [0] 1. Error Block 18 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [42] 36. Error Block 16 start (CF ANALYSIS FAILED)
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [42.0]
			if nil then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				if type(nil.PriceInRobux) == "number" then
					-- KONSTANTERROR: Expression was reused, decompilation is incorrect
					v_21_upvr.UpdatedPrice = nil.PriceInRobux
				end
			end
			-- KONSTANTERROR: [42] 36. Error Block 16 end (CF ANALYSIS FAILED)
		end)
		local _
	end
	for _, v_22 in tbl_31_upvr do
		v_21_upvr = _.OnClientEvent:Connect
		v_21_upvr(v_22)
	end
	for _, v_23 in tbl_9_upvr do
		v_21_upvr = v_23[1]:Connect
		v_21_upvr(v_23[2])
	end
	for _, v_24 in tbl_12_upvr do
		v_21_upvr = v_24
		v_21_upvr()
	end
	module_6_upvr.Remotes.EventsChanged:FireServer()
end
module_7_upvr.Init = Init_upvr
return module_7_upvr