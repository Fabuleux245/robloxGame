-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:06:09
-- Luau version 6, Types version 3
-- Time taken: 0.007796 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_8_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_upvr_2 = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_3 = require(Modules:WaitForChild("UIShared"))
local module_5_upvr = require(Modules:WaitForChild("Utility"))
local LevelLoader = script:FindFirstAncestor("LevelLoader")
local module_9_upvr = require(LevelLoader:WaitForChild("CustomLevelLogic"))
local UserInterface = Modules:WaitForChild("UserInterface")
local module_10_upvr = require(UserInterface:WaitForChild("IconTextPopupUI"))
local tbl_3_upvr = {}
module_9_upvr.LevelMethods_ById.Winners = tbl_3_upvr
local tbl_9_upvr = {
	LeaderboardData_ByType_ByWorldId = {};
	LeaderboardUpdateAt = 0;
}
local tbl_2_upvr = {
	[true] = 65;
	[false] = 1;
}
local tbl_6_upvr = {
	EmSize = 32;
	HeaderTextEm = 1.25;
	IconSizeEm = 1;
	LeaderboardTextEm = 0.9;
	PaddingEm = 0.25;
	TileSizeYEm = 1.1;
}
local tbl_7_upvr = {
	Icon = "rbxthumb://type=AvatarHeadShot&id=%i&w=48&h=48&filters=circular";
	Loading = "Leaderboard loading,\nplease wait.";
	NameError = "(User #%s)";
	NoData = "--:--.--";
	Time = "%02i:%02i.%02i";
	Place = "#%i";
	TitleBottomLine = "Full Completions";
	TitleTopLine = "Most %s";
}
local module_4_upvr = require(Modules:WaitForChild("NetworkRequestUtility"))
local function RequestLeaderboardState_upvr(arg1) -- Line 122, Named "RequestLeaderboardState"
	--[[ Upvalues[4]:
		[1]: module_4_upvr (readonly)
		[2]: module_8_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: tbl_9_upvr (readonly)
	]]
	assert(not arg1._DataPending, "Request in progress")
	arg1._DataPending = true
	local any_MakeRequest_result1 = module_4_upvr.MakeRequest({
		Request = module_8_upvr.StateRequestType.LeaderboardState;
		Args = {{arg1.Type}, arg1.Global, arg1.ItemId};
		Callback = coroutine.running();
	})
	if any_MakeRequest_result1.Response == module_8_upvr.ResponseType.Success then
		arg1.Data = any_MakeRequest_result1.Args[1][arg1.Type]
		arg1._Initialized = true
		arg1._ExpiresAt = os.clock() + tbl_2_upvr[arg1.Global]
		tbl_9_upvr.LeaderboardUpdateAt = 0
	end
	arg1._DataPending = false
end
local function LeaderboardData_FromDisplay_upvr(arg1, arg2) -- Line 152, Named "LeaderboardData_FromDisplay"
	--[[ Upvalues[2]:
		[1]: module_5_upvr (readonly)
		[2]: tbl_9_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 23. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [30] 23. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [22] 18. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [30.11]
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [22] 18. Error Block 2 end (CF ANALYSIS FAILED)
end
local function LeaderboardTileCreate_upvr(arg1, arg2) -- Line 201, Named "LeaderboardTileCreate"
	--[[ Upvalues[3]:
		[1]: module_5_upvr (readonly)
		[2]: module_upvr_3 (readonly)
		[3]: module_upvr_2 (readonly)
	]]
	local module = {}
	module.Flag = arg1
	module.ScoreText = ""
	local tbl = {
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}
	tbl.Parent = arg2
	module.Frame = module_5_upvr.I("Frame", tbl)
	module.PlayerIcon = module_5_upvr.I("ImageLabel", module_upvr_3.Properties.Image, {
		Parent = module.Frame;
	})
	module.PlaceLabel = module_5_upvr.I("TextLabel", module_upvr_3.Properties.Text_Scaled, {
		FontFace = module_upvr_2.FontFaceNormal;
		TextColor3 = module_upvr_2.TextLeaderboardColor1;
		TextXAlignment = Enum.TextXAlignment.Left;
		Parent = module.Frame;
	})
	module.NameLabel = module_5_upvr.C(module.PlaceLabel, {
		Parent = module.Frame;
	})
	module.ScoreLabel = module_5_upvr.C(module.PlaceLabel, {
		TextXAlignment = Enum.TextXAlignment.Right;
		Parent = module.Frame;
	})
	module.ScoreBounds = module_upvr_3.CachedTextBounds_FromLabel(module.ScoreLabel)
	module.ScoreBounds.Flag = arg1
	return module
end
local function _(arg1) -- Line 252, Named "LeaderboardTileDestroy"
	arg1._UsernameState = nil
	if arg1._ChangeConnection then
		arg1._ChangeConnection:Disconnect()
		arg1._ChangeConnection = nil
	end
	arg1.Frame:Destroy()
end
local tbl_5_upvr = {}
local function FormatTime(arg1) -- Line 270
	--[[ Upvalues[1]:
		[1]: tbl_7_upvr (readonly)
	]]
	return string.format(tbl_7_upvr.Time, arg1 // 60, arg1 % 60 // 1, arg1 * 100 // 1)
end
tbl_5_upvr[module_8_upvr.LeaderboardType.Donations] = tostring
tbl_5_upvr[module_8_upvr.LeaderboardType.LevelCompletions] = tostring
tbl_5_upvr[module_8_upvr.LeaderboardType.LevelTimeBest] = FormatTime
tbl_5_upvr[module_8_upvr.LeaderboardType.Playtime] = tostring
tbl_5_upvr[module_8_upvr.LeaderboardType.StarCount] = tostring
tbl_5_upvr[module_8_upvr.LeaderboardType.WorldCompletions] = tostring
tbl_5_upvr[module_8_upvr.LeaderboardType.WorldTimeBest] = FormatTime
local module_2_upvr = require(Modules:WaitForChild("UsernameStateHandler"))
local function LeaderboardTileUpdate_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 288, Named "LeaderboardTileUpdate"
	--[[ Upvalues[3]:
		[1]: module_2_upvr (readonly)
		[2]: tbl_7_upvr (readonly)
		[3]: tbl_5_upvr (readonly)
	]]
	if arg4 ~= arg1.UserId then
		arg1.UserId = arg4
		local any_Fetch_result1_upvr = module_2_upvr.Fetch(arg4)
		if any_Fetch_result1_upvr ~= arg1._UsernameState then
			if arg1._ChangeConnection then
				arg1._ChangeConnection:Disconnect()
			end
			arg1._UsernameState = any_Fetch_result1_upvr
			local any_Read_result1 = module_2_upvr.Read(any_Fetch_result1_upvr)
			if not any_Fetch_result1_upvr.IsAvailable then
				any_Read_result1 = string.format(tbl_7_upvr.NameError, any_Read_result1)
			end
			arg1.NameLabel.Text = any_Read_result1
			arg1.Flag.Dirty = true
			arg1._ChangeConnection = any_Fetch_result1_upvr.Changed:Connect(function() -- Line 309, Named "ReadUsernameState"
				--[[ Upvalues[4]:
					[1]: module_2_upvr (copied, readonly)
					[2]: any_Fetch_result1_upvr (readonly)
					[3]: tbl_7_upvr (copied, readonly)
					[4]: arg1 (readonly)
				]]
				local any_Read_result1_2 = module_2_upvr.Read(any_Fetch_result1_upvr)
				if not any_Fetch_result1_upvr.IsAvailable then
					any_Read_result1_2 = string.format(tbl_7_upvr.NameError, any_Read_result1_2)
				end
				arg1.NameLabel.Text = any_Read_result1_2
				arg1.Flag.Dirty = true
			end)
		end
		arg1.PlayerIcon.Image = string.format(tbl_7_upvr.Icon, arg4)
	end
	any_Fetch_result1_upvr = arg1.Place
	local var32
	if arg3 ~= any_Fetch_result1_upvr then
		arg1.Place = arg3
		any_Fetch_result1_upvr = arg1.PlaceLabel
		if arg3 == nil then
			var32 = false
		else
			var32 = true
		end
		any_Fetch_result1_upvr.Visible = var32
		if arg3 then
			any_Fetch_result1_upvr = arg1.PlaceLabel
			var32 = string.format(tbl_7_upvr.Place, arg3)
			any_Fetch_result1_upvr.Text = var32
		end
		any_Fetch_result1_upvr = arg1.Flag
		var32 = true
		any_Fetch_result1_upvr.Dirty = var32
	end
	any_Fetch_result1_upvr = arg1.Score
	local function INLINED() -- Internal function, doesn't exist in bytecode
		any_Fetch_result1_upvr = arg1.Type
		return arg2 ~= any_Fetch_result1_upvr
	end
	if arg5 ~= any_Fetch_result1_upvr or INLINED() then
		arg1.Score = arg5
		arg1.Type = arg2
		var32 = tbl_5_upvr
		any_Fetch_result1_upvr = var32[arg2]
		var32 = arg5
		any_Fetch_result1_upvr = any_Fetch_result1_upvr(var32)
		local var33 = any_Fetch_result1_upvr
		arg1.ScoreText = var33
		var32 = arg1.ScoreLabel
		var32.Text = var33
		var32 = arg1.Flag
		var32.Dirty = true
	end
end
local module_upvr = require(LevelLoader:WaitForChild("LevelAssetLogic"))
local module_7_upvr = require(Modules:WaitForChild("ClientData"))
local module_6_upvr = require(Modules:WaitForChild("Worlds"))
local module_3_upvr = require(UserInterface:WaitForChild("CollectionUISystem"))
function tbl_3_upvr.Load(arg1) -- Line 357
	--[[ Upvalues[18]:
		[1]: module_upvr (readonly)
		[2]: module_9_upvr (readonly)
		[3]: module_8_upvr (readonly)
		[4]: module_7_upvr (readonly)
		[5]: module_10_upvr (readonly)
		[6]: module_upvr_2 (readonly)
		[7]: module_6_upvr (readonly)
		[8]: module_upvr_3 (readonly)
		[9]: module_5_upvr (readonly)
		[10]: tbl_7_upvr (readonly)
		[11]: module_3_upvr (readonly)
		[12]: LeaderboardTileCreate_upvr (readonly)
		[13]: tbl_9_upvr (readonly)
		[14]: LeaderboardData_FromDisplay_upvr (readonly)
		[15]: RequestLeaderboardState_upvr (readonly)
		[16]: LeaderboardTileUpdate_upvr (readonly)
		[17]: tbl_6_upvr (readonly)
		[18]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local any_AssertLoaded_result1, any_AssertLoaded_result2 = module_upvr.AssertLoaded(arg1)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [12] 9. Error Block 58 start (CF ANALYSIS FAILED)
	local tbl_8 = {}
	local tbl_4 = {}
	local FinalDestinyPortal = any_AssertLoaded_result2.References.FinalDestinyPortal
	if FinalDestinyPortal and FinalDestinyPortal:IsA("PVInstance") then
		module_9_upvr.InitializeLevelPackPortal("FD", FinalDestinyPortal, tbl_8)
	else
		warn(module_8_upvr.FormatOutput("Winners does not have valid FinalDestinyPortal reference", "CCL_Winners"))
	end
	local ProgressScreen_upvr = any_AssertLoaded_result2.References.ProgressScreen
	if ProgressScreen_upvr and ProgressScreen_upvr:IsA("Model") and ProgressScreen_upvr.PrimaryPart then
		ProgressScreen_upvr.Parent = nil
		local any_WorldGetEquipped_result1_upvw = module_7_upvr.WorldGetEquipped()
		local var46_upvw = true
		local clone_upvr = table.clone(module_10_upvr.Popup.DefaultSpecs)
		clone_upvr.Image = module_upvr_2.Checkbox_Filled
		clone_upvr.ImageColor = module_upvr_2.CheckmarkColor2
		clone_upvr.StrokeEm = module_upvr_2.ScaledSizeStrokeMedium
		clone_upvr.StrokeColor = Color3.fromRGB(225, 199, 0)
		local Parent_upvr = ProgressScreen_upvr.Parent
		local PrimaryPart_upvr = ProgressScreen_upvr.PrimaryPart
		tbl_4[#tbl_4 + 1] = function(arg1_2, arg2) -- Line 406
			--[[ Upvalues[10]:
				[1]: var46_upvw (read and write)
				[2]: arg1 (readonly)
				[3]: module_6_upvr (copied, readonly)
				[4]: any_WorldGetEquipped_result1_upvw (read and write)
				[5]: ProgressScreen_upvr (readonly)
				[6]: Parent_upvr (readonly)
				[7]: module_7_upvr (copied, readonly)
				[8]: clone_upvr (readonly)
				[9]: module_10_upvr (copied, readonly)
				[10]: PrimaryPart_upvr (readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [2] 3. Error Block 15 start (CF ANALYSIS FAILED)
			if module_6_upvr.WorldAwardsRandomWorldOnCompletion(any_WorldGetEquipped_result1_upvw) then
				ProgressScreen_upvr.Parent = Parent_upvr
				local len = #any_WorldGetEquipped_result1_upvw.Levels
				clone_upvr.Text = string.format("Complete every level in \"%s\" again to unlock another new world! Currently, you have beaten %i / %i levels!", any_WorldGetEquipped_result1_upvw.Name, module_6_upvr.WorldGetCompletedLevelCount(any_WorldGetEquipped_result1_upvw, module_7_upvr.LocalSaveData) % len, len)
				if not arg1.Objects.PopupQueue then
					local any_Create_result1 = module_10_upvr.PopupQueue.SurfaceGui.Create()
					any_Create_result1.SurfaceGui.Adornee = PrimaryPart_upvr
					arg1.Objects.PopupQueue = any_Create_result1
					module_10_upvr.Popup.Add(any_Create_result1, clone_upvr, math.huge)
					-- KONSTANTWARNING: GOTO [92] #68
				end
			elseif any_Create_result1 then
				ProgressScreen_upvr.Parent = nil
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				module_10_upvr.PopupQueue.SurfaceGui.Destroy(any_Create_result1)
				arg1.Objects.PopupQueue = nil
			end
			-- KONSTANTERROR: [2] 3. Error Block 15 end (CF ANALYSIS FAILED)
		end
		tbl_8[#tbl_8 + 1] = module_7_upvr.Signals.LevelStatsChanged:Connect(function(arg1_3) -- Line 469, Named "MarkDirtyOnLevelStatChange"
			--[[ Upvalues[3]:
				[1]: module_6_upvr (copied, readonly)
				[2]: any_WorldGetEquipped_result1_upvw (read and write)
				[3]: var46_upvw (read and write)
			]]
			if module_6_upvr.Data_ByLevel[arg1_3] == any_WorldGetEquipped_result1_upvw then
				var46_upvw = true
			end
		end)
		tbl_8[#tbl_8 + 1] = module_7_upvr.Signals.InventoryEquippedChanged:Connect(function(arg1_4) -- Line 481, Named "MarkDirtyOnEquippedWorldChange"
			--[[ Upvalues[4]:
				[1]: module_8_upvr (copied, readonly)
				[2]: any_WorldGetEquipped_result1_upvw (read and write)
				[3]: module_7_upvr (copied, readonly)
				[4]: var46_upvw (read and write)
			]]
			if arg1_4 == module_8_upvr.ItemType.World then
				any_WorldGetEquipped_result1_upvw = module_7_upvr.WorldGetEquipped()
				var46_upvw = true
			end
		end)
		tbl_8[#tbl_8 + 1] = module_7_upvr.Signals.WorldProgressConsumed:Connect(function(arg1_5) -- Line 493, Named "MarkDirtyOnWorldProgressConsumption"
			--[[ Upvalues[2]:
				[1]: any_WorldGetEquipped_result1_upvw (read and write)
				[2]: var46_upvw (read and write)
			]]
			if arg1_5 == any_WorldGetEquipped_result1_upvw then
				var46_upvw = true
			end
		end)
	else
		Parent_upvr = warn
		PrimaryPart_upvr = module_8_upvr.FormatOutput("Winners does not have valid ProgressScreen reference", "CCL_Winners")
		Parent_upvr(PrimaryPart_upvr)
	end
	Parent_upvr = any_AssertLoaded_result2.References
	ProgressScreen_upvr = Parent_upvr.WorldCompletionLeaderboards
	local _ = ProgressScreen_upvr
	Parent_upvr = false
	PrimaryPart_upvr = _:FindFirstChild("Checkmark")
	-- KONSTANTERROR: [12] 9. Error Block 58 end (CF ANALYSIS FAILED)
end
function tbl_3_upvr.Unload(arg1) -- Line 1071
	--[[ Upvalues[3]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_10_upvr (readonly)
		[3]: module_9_upvr (readonly)
	]]
	tbl_3_upvr.RenderStepped = nil
	local PopupQueue = arg1.Objects.PopupQueue
	if PopupQueue then
		module_10_upvr.PopupQueue.SurfaceGui.Destroy(PopupQueue)
		arg1.Objects.PopupQueue = nil
	end
	local LeaderboardInstances = arg1.Objects.LeaderboardInstances
	if LeaderboardInstances then
		for _, v in LeaderboardInstances do
			v:Destroy()
		end
		arg1.Objects.LeaderboardInstances = nil
	end
	module_9_upvr.DisconnectCustomConnections(arg1, "WinnersLoad")
end
return {}