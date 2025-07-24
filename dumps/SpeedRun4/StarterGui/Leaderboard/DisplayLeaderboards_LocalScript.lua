-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:37
-- Luau version 6, Types version 3
-- Time taken: 0.094009 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
local GuiService_upvr = game:GetService("GuiService")
local Players = game:GetService("Players")
local ReplicatedStorage_2 = game:GetService("ReplicatedStorage")
local module_8_upvr = require(ReplicatedStorage_2:WaitForChild("CommonData"))
local module_10_upvr = require(ReplicatedStorage_2:WaitForChild("Theme"))
local Modules_2 = ReplicatedStorage_2:WaitForChild("Modules")
local module_29_upvr = require(Modules_2:WaitForChild("ClientData"))
module_29_upvr.ClientDataYieldUntilInitialized()
local module_19_upvr = require(Modules_2:WaitForChild("NetworkRequestUtility"))
local module_4_upvr = require(Modules_2:WaitForChild("UIButton"))
local module_15 = require(Modules_2:WaitForChild("UILegacySupport"))
local module_3_upvr = require(Modules_2:WaitForChild("UISelection"))
local module_24_upvr = require(Modules_2:WaitForChild("UIShared"))
local module_30_upvr = require(Modules_2:WaitForChild("Utility"))
local module_11_upvr = require(Modules_2:WaitForChild("Worlds"))
local module_7 = require(Modules_2:WaitForChild("UserInterface"):WaitForChild("SidebarUI"))
local OpenShops_upvr_2 = ReplicatedStorage_2:WaitForChild("Bindables"):WaitForChild("OpenShops")
local Parent_2 = script.Parent
local LeaderboardMenu_upvr_2 = Parent_2:WaitForChild("LeaderboardMenu")
local Content_5_upvr = LeaderboardMenu_upvr_2:WaitForChild("Content")
local var552_upvw
local tbl_23_upvr = {
	LeaderboardDirty = true;
	LeaderboardData_ByLevelId = {};
	LeaderboardData_ByTab = {};
	LeaderboardDisplay_ByType = {};
	ExpiredLeaderboardData = {};
	OnWorldsList = true;
	CanvasUpdateHandlers = {};
	PendingScrollingFrameCanvasSizes = {};
	SelectedLevelIndex = nil;
	SelectedWorldId = nil;
	ActiveTab = nil;
	TopbarButtons = {};
	TopbarDirty = true;
	DonationsPanelDirty = true;
}
local tbl_61_upvr = {
	Donations = Content_5_upvr:WaitForChild("Donations");
	Levels = Content_5_upvr:WaitForChild("Levels");
	Playtime = Content_5_upvr:WaitForChild("Playtime");
	Stars = Content_5_upvr:WaitForChild("Stars");
}
local tbl_11 = {}
local tbl_28 = {
	Tab = tbl_61_upvr.Levels;
	Text = "Levels";
	Title = function() -- Line 93
		--[[ Upvalues[2]:
			[1]: module_11_upvr (readonly)
			[2]: tbl_23_upvr (readonly)
		]]
		local var558 = module_11_upvr.Data_ById[tbl_23_upvr.SelectedWorldId]
		if var558 then
			return var558.Name
		end
		return "Leaderboards"
	end;
}
tbl_11[1] = tbl_28
tbl_11[2] = {
	Tab = tbl_61_upvr.Stars;
	Text = "Stars";
	Title = "Stars";
}
tbl_11[3] = {
	Tab = tbl_61_upvr.Playtime;
	Text = "Total Playtime";
	Title = "Playtime";
}
tbl_11[4] = {
	Tab = tbl_61_upvr.Donations;
	Text = "Donations";
	Title = "Donations";
}
tbl_28 = {}
local var562_upvr = tbl_28
local var563
for _, v in tbl_11 do
	var562_upvr[v.Tab] = v
end
local tbl_59 = {
	Donations_Global = tbl_61_upvr.Donations:WaitForChild("3DonationsGlobal");
	Donations_Local = tbl_61_upvr.Donations:WaitForChild("2DonationsLocal");
	Levels_BestTime = tbl_61_upvr.Levels:WaitForChild("2BestTime");
	Levels_LevelSelect = tbl_61_upvr.Levels:WaitForChild("1LevelPanel");
	Levels_TimesCompleted = tbl_61_upvr.Levels:WaitForChild("3Beaten");
	Playtime_Global = tbl_61_upvr.Playtime:WaitForChild("2PlaytimeGlobal");
	Playtime_Local = tbl_61_upvr.Playtime:WaitForChild("1PlaytimeLocal");
	Stars = tbl_61_upvr.Stars:WaitForChild("Stars");
}
local tbl_58_upvr = {
	Donations_Global = tbl_59.Donations_Global:WaitForChild("List");
	Donations_Local = tbl_59.Donations_Local:WaitForChild("List");
	Levels_BestTime = tbl_59.Levels_BestTime:WaitForChild("List");
	Levels_LevelSelect = tbl_59.Levels_LevelSelect:WaitForChild("List");
	Levels_TimesCompleted = tbl_59.Levels_TimesCompleted:WaitForChild("List");
	Playtime_Global = tbl_59.Playtime_Global:WaitForChild("List");
	Playtime_Local = tbl_59.Playtime_Local:WaitForChild("List");
	Stars = tbl_59.Stars:WaitForChild("List");
}
local LeaderboardButton_2 = Parent_2:WaitForChild("LeaderboardButton")
local theactualbutton_upvw_2 = LeaderboardButton_2:WaitForChild("theactualbutton")
local tbl_39_upvr = {
	[tbl_61_upvr.Donations] = {{
		Global = false;
		List = tbl_58_upvr.Donations_Local;
		Panel = tbl_59.Donations_Local;
		Type = module_8_upvr.LeaderboardType.Donations;
	}, {
		Global = true;
		List = tbl_58_upvr.Donations_Global;
		Panel = tbl_59.Donations_Global;
		Type = module_8_upvr.LeaderboardType.Donations;
	}};
	[tbl_61_upvr.Levels] = {{
		Global = false;
		List = tbl_58_upvr.Levels_BestTime;
		Panel = tbl_59.Levels_BestTime;
		Type = module_8_upvr.LeaderboardType.LevelTimeBest;
	}, {
		Global = false;
		List = tbl_58_upvr.Levels_TimesCompleted;
		Panel = tbl_59.Levels_TimesCompleted;
		Type = module_8_upvr.LeaderboardType.LevelCompletions;
	}};
	[tbl_61_upvr.Playtime] = {{
		Global = false;
		List = tbl_58_upvr.Playtime_Local;
		Panel = tbl_59.Playtime_Local;
		Type = module_8_upvr.LeaderboardType.Playtime;
	}, {
		Global = true;
		List = tbl_58_upvr.Playtime_Global;
		Panel = tbl_59.Playtime_Global;
		Type = module_8_upvr.LeaderboardType.Playtime;
	}};
	[tbl_61_upvr.Stars] = {{
		Global = false;
		List = tbl_58_upvr.Stars;
		Panel = tbl_59.Stars;
		Type = module_8_upvr.LeaderboardType.StarCount;
	}};
}
local module_2_upvr = {
	Icon = "rbxthumb://type=AvatarHeadShot&id=%i&w=48&h=48&filters=circular";
	LevelName = "{ %s }";
	NameError = "(User #%s)";
	NoData = "--:--";
	Time = "%02i:%02i";
}
local tbl_35_upvr = {
	[true] = 65;
	[false] = 1;
}
local function _(arg1, arg2, arg3) -- Line 272, Named "LeaderboardDataCreate"
	local module_22 = {
		_Initialized = false;
		_DataPending = false;
		_ExpiresAt = 0;
	}
	module_22.Global = arg2
	module_22.Type = arg1
	module_22.LevelId = arg3
	module_22.Data = {}
	return module_22
end
module_15.LegacyBindableObjects[LeaderboardMenu_upvr_2] = true
local var583_upvw
local function _(arg1) -- Line 296, Named "SetLeaderboardVisibility"
	--[[ Upvalues[8]:
		[1]: LeaderboardMenu_upvr_2 (readonly)
		[2]: var552_upvw (read and write)
		[3]: tbl_23_upvr (readonly)
		[4]: OpenShops_upvr_2 (readonly)
		[5]: GuiService_upvr (readonly)
		[6]: var583_upvw (read and write)
		[7]: module_3_upvr (readonly)
		[8]: theactualbutton_upvw_2 (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 14 start (CF ANALYSIS FAILED)
	if arg1 ~= true then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	LeaderboardMenu_upvr_2.Visible = true
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	var552_upvw.Selected = true
	-- KONSTANTERROR: [0] 1. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [27] 21. Error Block 7 start (CF ANALYSIS FAILED)
	GuiService_upvr.SelectedObject = var583_upvw
	do
		return
	end
	-- KONSTANTERROR: [27] 21. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 25. Error Block 11 start (CF ANALYSIS FAILED)
	if module_3_upvr.IsInterfaceSelected(LeaderboardMenu_upvr_2) then
		GuiService_upvr.SelectedObject = theactualbutton_upvw_2
	end
	-- KONSTANTERROR: [32] 25. Error Block 11 end (CF ANALYSIS FAILED)
end
local tbl_73_upvr = {LeaderboardMenu_upvr_2:WaitForChild("Gamemode"), tbl_73_upvr[1]:WaitForChild("Shadow")}
local function _() -- Line 327, Named "SetTitleText"
	--[[ Upvalues[3]:
		[1]: var562_upvr (readonly)
		[2]: tbl_23_upvr (readonly)
		[3]: tbl_73_upvr (readonly)
	]]
	local var590 = var562_upvr[tbl_23_upvr.ActiveTab]
	local var591
	if type(var590.Title) == "string" then
		var591 = var590.Title
	else
		var591 = var590.Title()
	end
	for _, v_2 in tbl_73_upvr do
		v_2.Text = var591
	end
end
local function SetTab_upvr(arg1) -- Line 339, Named "SetTab"
	--[[ Upvalues[4]:
		[1]: tbl_23_upvr (readonly)
		[2]: var562_upvr (readonly)
		[3]: tbl_73_upvr (readonly)
		[4]: module_4_upvr (readonly)
	]]
	local var600
	if tbl_23_upvr.ActiveTab ~= arg1 then
		tbl_23_upvr.ActiveTab = arg1
		var600 = true
		tbl_23_upvr.LeaderboardDirty = var600
		var600 = var562_upvr
		local var601 = var600[tbl_23_upvr.ActiveTab]
		if type(var601.Title) == "string" then
			var600 = var601.Title
		else
			var600 = var601.Title()
		end
		for i_3, v_3 in tbl_73_upvr do
			v_3.Text = var600
		end
		var600 = nil
		for _, v_4 in tbl_23_upvr.TopbarButtons, var600 do
			v_3 = v_4.Tab
			local var602
			if v_3 ~= arg1 then
				i_3 = false
			else
				i_3 = true
			end
			v_3 = v_4.Tab
			v_3.Visible = i_3
			v_3 = v_4.Button
			if i_3 then
				var602 = module_4_upvr.Button.Themes.Default
			else
				var602 = module_4_upvr.Button.Themes.Deemphasized
			end
			v_3.Theme = var602
		end
	end
end
local Content_2_upvw = tbl_58_upvr.Levels_LevelSelect:WaitForChild("Content")
local any_I_result1_6_upvr = module_30_upvr.I("Frame", {
	BackgroundTransparency = 1;
	Position = Content_2_upvw.Position;
	Size = Content_2_upvw.Size;
	SizeConstraint = Content_2_upvw.SizeConstraint;
	ZIndex = Content_2_upvw.ZIndex;
	Parent = tbl_58_upvr.Levels_LevelSelect;
})
local tbl_53 = {
	FillDirection = Enum.FillDirection.Vertical;
	HorizontalAlignment = Enum.HorizontalAlignment.Center;
}
var563 = Content_2_upvw:WaitForChild("UIGridLayout")
tbl_53.Padding = var563.CellPadding.Y
tbl_53.SortOrder = Enum.SortOrder.LayoutOrder
tbl_53.VerticalAlignment = Enum.VerticalAlignment.Top
tbl_53.Parent = any_I_result1_6_upvr
module_30_upvr.I("UIListLayout", tbl_53)
local Title_upvr = tbl_59.Levels_LevelSelect:WaitForChild("Title")
local Shadow_upvr = Title_upvr:WaitForChild("Shadow")
local UIStroke_upvr_2 = Instance.new("UIStroke")
UIStroke_upvr_2.Color = module_10_upvr.TextSelectColor1
UIStroke_upvr_2.Thickness = module_10_upvr.SelectThickness
local tbl_63 = {}
local tbl_76 = {}
var563 = Content_2_upvw:GetChildren()
local children_3_upvw, NONE_5, NONE_7 = Content_2_upvw:GetChildren()
for _, v_5 in children_3_upvw, NONE_5, NONE_7 do
	if v_5:IsA("TextButton") then
		tbl_76[#tbl_76 + 1] = v_5
	end
end
children_3_upvw = 0
for _, v_6 in module_11_upvr.DataArray do
	if children_3_upvw < #v_6.Levels then
		children_3_upvw = #v_6.Levels
	end
end
for i_7 = #tbl_76 + 1, children_3_upvw do
	local clone_3 = tbl_76[i_7 - 1]:Clone()
	clone_3.Parent = Content_2_upvw
	tbl_76[i_7] = clone_3
	local var616
end
for i_8_upvr, v_7 in var616 do
	local LvlName_2 = v_7:WaitForChild("LvlName")
	v_7.LayoutOrder = i_8_upvr
	LvlName_2.Text = tostring(i_8_upvr)
	tbl_63[#tbl_63 + 1] = {
		Index = i_8_upvr;
		Background = v_7:WaitForChild("BG");
		Button = v_7;
		Stroke = LvlName_2:WaitForChild("UIStroke");
		TextLabel = LvlName_2;
	}
	local var622_upvw
	v_7.Activated:Connect(function() -- Line 447
		--[[ Upvalues[3]:
			[1]: tbl_23_upvr (readonly)
			[2]: i_8_upvr (readonly)
			[3]: var622_upvw (read and write)
		]]
		if tbl_23_upvr.SelectedLevelIndex ~= i_8_upvr then
			tbl_23_upvr.SelectedLevelIndex = i_8_upvr
			tbl_23_upvr.LeaderboardDirty = true
			var622_upvw()
		end
	end)
	local var621_upvr
end
local function _(arg1) -- Line 457, Named "SetLevelTitleText"
	--[[ Upvalues[2]:
		[1]: Title_upvr (readonly)
		[2]: Shadow_upvr (readonly)
	]]
	Title_upvr.Text = arg1
	Shadow_upvr.Text = arg1
end
function var622_upvw() -- Line 462
	--[[ Upvalues[8]:
		[1]: tbl_23_upvr (readonly)
		[2]: module_11_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: Title_upvr (readonly)
		[5]: Shadow_upvr (readonly)
		[6]: var621_upvr (readonly)
		[7]: UIStroke_upvr_2 (readonly)
		[8]: module_10_upvr (readonly)
	]]
	local var628
	if tbl_23_upvr.SelectedWorldId and tbl_23_upvr.SelectedLevelIndex then
		local var629 = module_11_upvr.Data_ById[tbl_23_upvr.SelectedWorldId].Levels[tbl_23_upvr.SelectedLevelIndex]
		local var630 = module_2_upvr
		if var629 then
			var630 = var629.Name
		else
			var630 = "Level ???"
		end
		var628 = string.format(var630.LevelName, var630)
	else
		var628 = "Select a level"
	end
	local var631 = var628
	Title_upvr.Text = var631
	Shadow_upvr.Text = var631
	for _, v_8 in var621_upvr do
		if v_8.Index == tbl_23_upvr.SelectedLevelIndex then
			UIStroke_upvr_2.Parent = v_8.Background
			v_8.TextLabel.TextColor3 = module_10_upvr.TextSelectColor1
		else
			v_8.TextLabel.TextColor3 = module_10_upvr.TextColor1
		end
	end
end
local var623_upvw = var622_upvw
var623_upvw()
local function UpdateWorldDisplay_upvr() -- Line 493, Named "UpdateWorldDisplay"
	--[[ Upvalues[7]:
		[1]: module_11_upvr (readonly)
		[2]: tbl_23_upvr (readonly)
		[3]: var621_upvr (readonly)
		[4]: module_10_upvr (readonly)
		[5]: tbl_61_upvr (readonly)
		[6]: var562_upvr (readonly)
		[7]: tbl_73_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var648 = module_11_upvr.Data_ById[tbl_23_upvr.SelectedWorldId]
	if var648 then
		for _, v_9 in var621_upvr do
			local var649 = var648.Levels[v_9.Index]
			local var650
			if var649 then
				var650 = var649.ShopImageId
				if not var650 then
					var650 = module_10_upvr.FALLBACK_LEVEL_IMAGE
				end
				v_9.Background.Image = var650
			end
			if var649 == nil then
			else
			end
			v_9.Button.Visible = true
		end
	end
	local var651
	var651 = tbl_61_upvr.Levels
	if var651.ActiveTab == var651 then
		var651 = var562_upvr
		local var652 = var651[tbl_23_upvr.ActiveTab]
		if type(var652.Title) == "string" then
			var651 = var652.Title
			local var653 = var651
		else
			var653 = var652.Title()
		end
		for _, v_10 in tbl_73_upvr do
			v_10.Text = var653
		end
	end
end
UpdateWorldDisplay_upvr()
local any_I_result1_2_upvr = module_30_upvr.I("TextButton", {
	AnchorPoint = Vector2.new(0.5, 1);
	BackgroundColor3 = module_10_upvr.ButtonColor2;
	BackgroundTransparency = module_10_upvr.ButtonTransparency1;
	Position = UDim2.fromScale(0.5, 1);
	Size = UDim2.fromScale(1, 0.09);
	Text = "";
	ZIndex = 12;
	Parent = tbl_59.Levels_LevelSelect;
})
module_30_upvr.I("UICorner", {
	Parent = any_I_result1_2_upvr;
})
module_30_upvr.I("TextLabel", module_24_upvr.Properties.Text_Scaled, module_24_upvr.Properties.Centered, {
	FontFace = module_10_upvr.FontFaceNormal;
	Size = UDim2.fromScale(1, 0.875);
	Text = "Back";
	TextColor3 = module_10_upvr.TextColor2;
	ZIndex = any_I_result1_2_upvr.ZIndex + 1;
	Parent = any_I_result1_2_upvr;
})
local tbl_70_upvr = {
	[true] = tbl_58_upvr.Levels_LevelSelect.Size;
	[false] = tbl_58_upvr.Levels_LevelSelect.Size - UDim2.fromScale(0, 0.125);
}
local function _() -- Line 549, Named "UpdateSelectionDisplay"
	--[[ Upvalues[8]:
		[1]: tbl_23_upvr (readonly)
		[2]: Content_2_upvw (readonly)
		[3]: any_I_result1_2_upvr (readonly)
		[4]: any_I_result1_6_upvr (readonly)
		[5]: tbl_58_upvr (readonly)
		[6]: tbl_70_upvr (readonly)
		[7]: Title_upvr (readonly)
		[8]: Shadow_upvr (readonly)
	]]
	local OnWorldsList_7 = tbl_23_upvr.OnWorldsList
	Content_2_upvw.Visible = not OnWorldsList_7
	any_I_result1_2_upvr.Visible = not OnWorldsList_7
	any_I_result1_6_upvr.Visible = OnWorldsList_7
	local Levels_LevelSelect_3 = tbl_58_upvr.Levels_LevelSelect
	Levels_LevelSelect_3.Size = tbl_70_upvr[OnWorldsList_7]
	if OnWorldsList_7 then
		if tbl_23_upvr.SelectedLevelIndex ~= nil then
			Levels_LevelSelect_3 = "World Select"
		else
			Levels_LevelSelect_3 = "Select a Level"
		end
		Title_upvr.Text = Levels_LevelSelect_3
		Shadow_upvr.Text = Levels_LevelSelect_3
	end
end
local OnWorldsList_2 = tbl_23_upvr.OnWorldsList
Content_2_upvw.Visible = not OnWorldsList_2
any_I_result1_2_upvr.Visible = not OnWorldsList_2
any_I_result1_6_upvr.Visible = OnWorldsList_2
tbl_58_upvr.Levels_LevelSelect.Size = tbl_70_upvr[OnWorldsList_2]
if OnWorldsList_2 then
	if tbl_23_upvr.SelectedLevelIndex ~= nil then
		local _ = "World Select"
	else
	end
	Title_upvr.Text = "Select a Level"
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	Shadow_upvr.Text = "Select a Level"
end
any_I_result1_2_upvr.Activated:Connect(function() -- Line 568
	--[[ Upvalues[8]:
		[1]: tbl_23_upvr (readonly)
		[2]: Content_2_upvw (readonly)
		[3]: any_I_result1_2_upvr (readonly)
		[4]: any_I_result1_6_upvr (readonly)
		[5]: tbl_58_upvr (readonly)
		[6]: tbl_70_upvr (readonly)
		[7]: Title_upvr (readonly)
		[8]: Shadow_upvr (readonly)
	]]
	tbl_23_upvr.OnWorldsList = not tbl_23_upvr.OnWorldsList
	local OnWorldsList_5 = tbl_23_upvr.OnWorldsList
	Content_2_upvw.Visible = not OnWorldsList_5
	any_I_result1_2_upvr.Visible = not OnWorldsList_5
	any_I_result1_6_upvr.Visible = OnWorldsList_5
	local Levels_LevelSelect_4 = tbl_58_upvr.Levels_LevelSelect
	Levels_LevelSelect_4.Size = tbl_70_upvr[OnWorldsList_5]
	if OnWorldsList_5 then
		if tbl_23_upvr.SelectedLevelIndex ~= nil then
			Levels_LevelSelect_4 = "World Select"
		else
			Levels_LevelSelect_4 = "Select a Level"
		end
		Title_upvr.Text = Levels_LevelSelect_4
		Shadow_upvr.Text = Levels_LevelSelect_4
	end
end)
local tbl_71 = {}
local tbl_60 = {
	[true] = {
		Header = "Main Worlds";
		Worlds = {};
	};
	[false] = {
		Header = "Bonus Worlds";
		Worlds = {};
	};
}
for _, v_11 in module_11_upvr.DataArray do
	local var670
	if not v_11.IsTechnical then
		if v_11.IsMain ~= true then
			var670 = false
		else
			var670 = true
		end
		local var671 = tbl_60[var670]
		var670 = var671.Worlds
		var670[#var671.Worlds + 1] = v_11
	end
end
local function WorldButtonCreate_upvr(arg1, arg2) -- Line 608, Named "WorldButtonCreate"
	--[[ Upvalues[13]:
		[1]: module_30_upvr (readonly)
		[2]: module_10_upvr (readonly)
		[3]: any_I_result1_6_upvr (readonly)
		[4]: module_24_upvr (readonly)
		[5]: tbl_23_upvr (readonly)
		[6]: UpdateWorldDisplay_upvr (readonly)
		[7]: var623_upvw (read and write)
		[8]: Content_2_upvw (readonly)
		[9]: any_I_result1_2_upvr (readonly)
		[10]: tbl_58_upvr (readonly)
		[11]: tbl_70_upvr (readonly)
		[12]: Title_upvr (readonly)
		[13]: Shadow_upvr (readonly)
	]]
	local tbl_16 = {
		BackgroundColor3 = module_10_upvr.ButtonColor1;
		BackgroundTransparency = module_10_upvr.ButtonTransparency1;
	}
	tbl_16.LayoutOrder = arg2
	local ShopImageId_2 = arg1.ShopImageId
	if not ShopImageId_2 then
		ShopImageId_2 = module_10_upvr.FALLBACK_WORLD_IMAGE
	end
	tbl_16.Image = ShopImageId_2
	tbl_16.ScaleType = Enum.ScaleType.Crop
	tbl_16.Size = UDim2.fromScale(1, 0.175)
	tbl_16.SizeConstraint = Enum.SizeConstraint.RelativeXX
	tbl_16.ZIndex = 11
	tbl_16.Parent = any_I_result1_6_upvr
	local any_I_result1 = module_30_upvr.I("ImageButton", tbl_16)
	module_30_upvr.I("UICorner", {
		Parent = any_I_result1;
	})
	module_30_upvr.I("UIStroke", module_24_upvr.Properties.StrokeText, {
		Color = module_10_upvr.TextStrokeColor1;
		Thickness = module_10_upvr.DeselectThickness;
		Parent = module_30_upvr.I("TextLabel", module_24_upvr.Properties.Text_Scaled, module_24_upvr.Properties.Centered, {
			FontFace = module_10_upvr.FontFaceNormal;
			Size = UDim2.fromScale(0.9, 0.75);
			Text = arg1.Name;
			TextColor3 = module_10_upvr.ButtonColor2;
			ZIndex = any_I_result1.ZIndex + 1;
			Parent = any_I_result1;
		});
	})
	any_I_result1.Activated:Connect(function() -- Line 646
		--[[ Upvalues[11]:
			[1]: tbl_23_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: UpdateWorldDisplay_upvr (copied, readonly)
			[4]: var623_upvw (copied, read and write)
			[5]: Content_2_upvw (copied, readonly)
			[6]: any_I_result1_2_upvr (copied, readonly)
			[7]: any_I_result1_6_upvr (copied, readonly)
			[8]: tbl_58_upvr (copied, readonly)
			[9]: tbl_70_upvr (copied, readonly)
			[10]: Title_upvr (copied, readonly)
			[11]: Shadow_upvr (copied, readonly)
		]]
		tbl_23_upvr.SelectedWorldId = arg1.Id
		tbl_23_upvr.SelectedLevelIndex = 1
		tbl_23_upvr.LeaderboardDirty = true
		tbl_23_upvr.OnWorldsList = false
		UpdateWorldDisplay_upvr()
		var623_upvw()
		local OnWorldsList_4 = tbl_23_upvr.OnWorldsList
		Content_2_upvw.Visible = not OnWorldsList_4
		any_I_result1_2_upvr.Visible = not OnWorldsList_4
		any_I_result1_6_upvr.Visible = OnWorldsList_4
		local Levels_LevelSelect = tbl_58_upvr.Levels_LevelSelect
		Levels_LevelSelect.Size = tbl_70_upvr[OnWorldsList_4]
		if OnWorldsList_4 then
			if tbl_23_upvr.SelectedLevelIndex ~= nil then
				Levels_LevelSelect = "World Select"
			else
				Levels_LevelSelect = "Select a Level"
			end
			Title_upvr.Text = Levels_LevelSelect
			Shadow_upvr.Text = Levels_LevelSelect
		end
	end)
	local module_5 = {
		Button = any_I_result1;
	}
	module_5.World = arg1
	return module_5
end
for i_13, v_12 in tbl_60 do
	local any_I_result1_7 = module_30_upvr.I("TextLabel", module_24_upvr.Properties.Text_Scaled, module_24_upvr.Properties.Centered, {
		FontFace = module_10_upvr.FontFaceNormal;
		Size = UDim2.fromScale(0.9, 0.3);
		SizeConstraint = Enum.SizeConstraint.RelativeXX;
		Text = v_12.Header;
		TextColor3 = module_10_upvr.TextColor1;
		ZIndex = any_I_result1_2_upvr.ZIndex + 1;
		Parent = any_I_result1_6_upvr;
	})
	module_30_upvr.C(any_I_result1_7, {
		AnchorPoint = Vector2.zero;
		Position = UDim2.fromOffset(0, 2);
		Size = UDim2.fromScale(1, 1);
		SizeConstraint = Enum.SizeConstraint.RelativeXY;
		TextColor3 = Color3.new(0, 0, 0);
		ZIndex = any_I_result1_7.ZIndex - 1;
		Parent = any_I_result1_7;
	})
	tbl_71[i_13] = any_I_result1_7
	local _
end
local var686 = 0
tbl_71[true].LayoutOrder = var686
for _, _ in tbl_60[true].Worlds do
	local _ = var686 + 1
	local var688
end
local var689_upvw = var688 + 1
local Worlds_upvr = tbl_60[false].Worlds
tbl_71[false].LayoutOrder = var689_upvw
local function SortWorldButtons_upvr(arg1, arg2) -- Line 719, Named "SortWorldButtons"
	--[[ Upvalues[1]:
		[1]: Worlds_upvr (readonly)
	]]
	local table_find_result1 = table.find(Worlds_upvr, arg2.World)
	if (table.find(Worlds_upvr, arg1.World) or math.huge) >= (table_find_result1 or math.huge) then
		table_find_result1 = false
	else
		table_find_result1 = true
	end
	return table_find_result1
end
local function ShouldDisplayWorld_upvr(arg1) -- Line 730, Named "ShouldDisplayWorld"
	--[[ Upvalues[2]:
		[1]: module_11_upvr (readonly)
		[2]: module_29_upvr (readonly)
	]]
	local var696
	for _, v_14 in arg1.Levels do
		if module_11_upvr.LevelHasBeaten(v_14, module_29_upvr.LocalSaveData) then
			var696 = true
			return var696
		end
	end
	return var696
end
local tbl_40_upvr = {}
local tbl_38_upvr = {}
local function WorldButtonsResolve_upvr(arg1) -- Line 748, Named "WorldButtonsResolve"
	--[[ Upvalues[7]:
		[1]: Worlds_upvr (readonly)
		[2]: tbl_40_upvr (readonly)
		[3]: ShouldDisplayWorld_upvr (readonly)
		[4]: WorldButtonCreate_upvr (readonly)
		[5]: tbl_38_upvr (readonly)
		[6]: SortWorldButtons_upvr (readonly)
		[7]: var689_upvw (read and write)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var715 = arg1
	if not var715 then
		var715 = Worlds_upvr
	end
	for _, v_15 in var715 do
		if not tbl_40_upvr[v_15] and ShouldDisplayWorld_upvr(v_15) then
			local WorldButtonCreate_upvr_result1 = WorldButtonCreate_upvr(v_15)
			tbl_40_upvr[v_15] = WorldButtonCreate_upvr_result1
			tbl_38_upvr[#tbl_38_upvr + 1] = WorldButtonCreate_upvr_result1
		end
	end
	if true then
		table.sort(tbl_38_upvr, SortWorldButtons_upvr)
		for i_17, v_16 in tbl_38_upvr do
			v_16.Button.LayoutOrder = var689_upvw + i_17
		end
	end
end
WorldButtonsResolve_upvr()
module_29_upvr.Signals.LevelStatsChanged:Connect(function(arg1, arg2) -- Line 784
	--[[ Upvalues[2]:
		[1]: module_11_upvr (readonly)
		[2]: WorldButtonsResolve_upvr (readonly)
	]]
	if arg2.CT and 0 < arg2.CT then
		local var718 = module_11_upvr.Data_ByLevel[arg1]
		if var718 and not var718.IsMain then
			WorldButtonsResolve_upvr({var718})
		end
	end
end)
if not module_29_upvr.Flags.LocalSaveDataLoaded then
	module_29_upvr.Signals.SaveDataLoaded:Once(function() -- Line 801
		--[[ Upvalues[1]:
			[1]: WorldButtonsResolve_upvr (readonly)
		]]
		WorldButtonsResolve_upvr()
	end)
end
Content_2_upvw = nil
any_I_result1_6_upvr = tbl_61_upvr.Donations
Shadow_upvr = "1PurchasePanel"
any_I_result1_6_upvr = any_I_result1_6_upvr:WaitForChild(Shadow_upvr)
UIStroke_upvr_2 = "Content"
Title_upvr = any_I_result1_6_upvr:WaitForChild(UIStroke_upvr_2)
local var721_upvr = Title_upvr
UIStroke_upvr_2 = "Donating helps support the creator and lets us bring more "
var621_upvr = "big updates to Speed Run 4. Thank you to everyone for being "
Shadow_upvr = UIStroke_upvr_2..var621_upvr.."fans and supporters of this game ❤️"
local CaculateBestTimeStrings_upvr = Shadow_upvr
UIStroke_upvr_2 = module_30_upvr.I
var621_upvr = "TextLabel"
children_3_upvw = module_24_upvr.Properties
children_3_upvw = {}
children_3_upvw.FontFace = module_10_upvr.FontFaceNormal
children_3_upvw.Text = CaculateBestTimeStrings_upvr
children_3_upvw.TextColor3 = module_10_upvr.TextColor1
children_3_upvw.TextXAlignment = Enum.TextXAlignment.Left
children_3_upvw.Parent = var721_upvr
UIStroke_upvr_2 = UIStroke_upvr_2(var621_upvr, children_3_upvw.Text_Scaled, children_3_upvw)
local var723_upvr = UIStroke_upvr_2
var621_upvr = module_24_upvr.CachedTextBounds_FromLabel(var723_upvr)
local var724_upvr = var621_upvr
children_3_upvw = "TextLabel"
UpdateWorldDisplay_upvr = module_24_upvr.Properties
UpdateWorldDisplay_upvr = {}
local var725 = UpdateWorldDisplay_upvr
var725.FontFace = module_10_upvr.FontFaceNormal
var725.Text = "Donate Options:"
var725.TextColor3 = module_10_upvr.TextColor1
var725.Visible = false
var725.Parent = var721_upvr
local any_I_result1_5_upvr = module_30_upvr.I(children_3_upvw, UpdateWorldDisplay_upvr.Text, var725)
children_3_upvw = module_24_upvr.CachedTextBounds_FromLabel(any_I_result1_5_upvr)
var725 = var724_upvr
var725 = {}
local var727_upvr = var725
local module_34_upvr = require(Modules_2:WaitForChild("Products"))
local module_31_upvr = require(Modules_2:WaitForChild("ItemDataUtility"))
function tbl_70_upvr() -- Line 849
	--[[ Upvalues[11]:
		[1]: module_34_upvr (readonly)
		[2]: module_4_upvr (readonly)
		[3]: var721_upvr (readonly)
		[4]: module_10_upvr (readonly)
		[5]: module_31_upvr (readonly)
		[6]: module_30_upvr (readonly)
		[7]: module_19_upvr (readonly)
		[8]: module_8_upvr (readonly)
		[9]: var727_upvr (readonly)
		[10]: any_I_result1_5_upvr (readonly)
		[11]: tbl_23_upvr (readonly)
	]]
	local any_ProductsGetSortedDonationsBlocking_result1_2 = module_34_upvr.ProductsGetSortedDonationsBlocking()
	for i_18 = #any_ProductsGetSortedDonationsBlocking_result1_2, 1, -1 do
		local var734_upvr = any_ProductsGetSortedDonationsBlocking_result1_2[i_18]
		local any_CreateFancy_result1 = module_4_upvr.Button.CreateFancy(var721_upvr, module_4_upvr.Button.Themes.Use, {
			FontFace = module_10_upvr.FontFaceNormal;
			Text = module_31_upvr.GeneratePriceString(module_31_upvr.TransactionType.Product, var734_upvr);
		})
		module_30_upvr.GuiObjectMakeZIndexGlobal(any_CreateFancy_result1.Button)
		local var738_upvw = false
		any_CreateFancy_result1.Button.Activated:Connect(function() -- Line 871
			--[[ Upvalues[4]:
				[1]: var738_upvw (read and write)
				[2]: module_19_upvr (copied, readonly)
				[3]: module_8_upvr (copied, readonly)
				[4]: var734_upvr (readonly)
			]]
			if var738_upvw then
			else
				var738_upvw = true
				module_19_upvr.MakeRequest({
					Request = module_8_upvr.StateRequestType.ProductBuy;
					Args = {var734_upvr.ProductId};
					Callback = coroutine.running();
				})
				var738_upvw = false
			end
		end)
		var727_upvr[#var727_upvr + 1] = any_CreateFancy_result1
	end
	any_I_result1_5_upvr.Visible = true
	tbl_23_upvr.DonationsPanelDirty = true
end
task.spawn(tbl_70_upvr)
tbl_70_upvr = module_29_upvr.Signals
tbl_70_upvr.CounterChanged:Connect(function(arg1) -- Line 896
	--[[ Upvalues[4]:
		[1]: module_8_upvr (readonly)
		[2]: tbl_23_upvr (readonly)
		[3]: tbl_61_upvr (readonly)
		[4]: LeaderboardMenu_upvr_2 (readonly)
	]]
	local var742 = true
	if arg1 ~= module_8_upvr.CounterType.DonationsGame then
		if arg1 ~= module_8_upvr.CounterType.DonationsPlayer then
			var742 = false
		else
			var742 = true
		end
	end
	if var742 and tbl_23_upvr.ActiveTab == tbl_61_upvr.Donations and LeaderboardMenu_upvr_2.Visible then
		tbl_23_upvr.LeaderboardDirty = true
	end
end)
local any_TextBoundsFlagCreate_result1_upvr = module_24_upvr.TextBoundsFlagCreate(var725, children_3_upvw)
function Content_2_upvw(arg1, arg2) -- Line 910
	--[[ Upvalues[12]:
		[1]: module_24_upvr (readonly)
		[2]: any_TextBoundsFlagCreate_result1_upvr (readonly)
		[3]: tbl_23_upvr (readonly)
		[4]: var721_upvr (readonly)
		[5]: var724_upvr (readonly)
		[6]: CaculateBestTimeStrings_upvr (readonly)
		[7]: children_3_upvw (readonly)
		[8]: any_I_result1_5_upvr (readonly)
		[9]: var727_upvr (readonly)
		[10]: module_10_upvr (readonly)
		[11]: module_4_upvr (readonly)
		[12]: var723_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [6] 6. Error Block 28 start (CF ANALYSIS FAILED)
	local var761
	if module_24_upvr.ViewportSizeDirty or module_24_upvr.ViewportSizeWasDirty or tbl_23_upvr.DonationsPanelDirty then
		-- KONSTANTERROR: [18] 15. Error Block 26 start (CF ANALYSIS FAILED)
		local AbsoluteSize = var721_upvr.AbsoluteSize
		local X_2 = AbsoluteSize.X
		var761 = module_24_upvr.EmSize
		local var764 = 0.375 * var761 // 1
		var761 = module_24_upvr.EmSize
		var761 = module_24_upvr
		local EmSize = var761.EmSize
		var761 = AbsoluteSize.Y - var764
		module_24_upvr.CachedTextBoundsUpdate(var724_upvr, CaculateBestTimeStrings_upvr, var761 * 1.125 // 1, X_2)
		if module_24_upvr.CachedTextBoundsUpdate(children_3_upvw, "Donate Options:", EmSize, X_2) then
			any_I_result1_5_upvr.TextSize = EmSize
			any_I_result1_5_upvr.Size = UDim2.fromOffset(children_3_upvw.X, children_3_upvw.Y)
		end
		if 0 < #var727_upvr then
			local var766 = module_24_upvr.EmSize * math.min(1, module_24_upvr.ComputeEvenlySpacedSize(var761 * 0.5 - children_3_upvw.Y, #var727_upvr, var764) / module_24_upvr.SteppedSize.ButtonFancyY)
			local ceiled_3 = math.ceil(var766 * module_10_upvr.SteppedSizeButtonFancyX)
			local ceiled_2 = math.ceil(var766 * module_10_upvr.SteppedSizeButtonFancyY)
			for _, v_17 in var727_upvr do
				module_4_upvr.Button.AdjustText(v_17, nil, nil, nil, math.ceil(var766 * module_10_upvr.SteppedSizeButtonFancyText))
				v_17.Button.Position = UDim2.fromOffset((X_2 * 0.5 - ceiled_3 * 0.5) // 1, var761 - ceiled_2)
				v_17.Button.Size = UDim2.fromOffset(ceiled_3, ceiled_2)
				var761 -= ceiled_2 + var764
				local var769
			end
			any_I_result1_5_upvr.Position = UDim2.fromOffset((X_2 * 0.5 - children_3_upvw.X * 0.5) // 1, var761 - children_3_upvw.Y)
			var761 -= children_3_upvw.Y
		end
		var723_upvr.Position = UDim2.fromOffset(var764, 0)
		var723_upvr.Size = UDim2.fromOffset(X_2, math.min(var724_upvr.Y, var761))
		tbl_23_upvr.DonationsPanelDirty = false
		-- KONSTANTERROR: [18] 15. Error Block 26 end (CF ANALYSIS FAILED)
	end
	for _, v_18 in var727_upvr do
		module_4_upvr.Button.Update(v_18, arg2)
	end
	-- KONSTANTERROR: [6] 6. Error Block 28 end (CF ANALYSIS FAILED)
end
function any_I_result1_6_upvr(arg1, arg2) -- Line 1007, Named "SortFrames"
	local tonumber_result1 = tonumber(arg2.Name)
	if (tonumber(arg1.Name) or math.huge) >= (tonumber_result1 or math.huge) then
		tonumber_result1 = false
	else
		tonumber_result1 = true
	end
	return tonumber_result1
end
var721_upvr = tbl_11
CaculateBestTimeStrings_upvr = nil
var723_upvr = nil
for i_21, v_19 in var721_upvr, CaculateBestTimeStrings_upvr, var723_upvr do
	children_3_upvw = v_19.Tab
	var727_upvr = children_3_upvw.Parent
	any_TextBoundsFlagCreate_result1_upvr = assert
	any_TextBoundsFlagCreate_result1_upvr(var727_upvr)
	var727_upvr = module_4_upvr.Button
	any_TextBoundsFlagCreate_result1_upvr = var727_upvr.AddLabel
	var727_upvr = module_4_upvr.Button.Create
	tbl_70_upvr = module_4_upvr.Button.Themes.Deemphasized
	var727_upvr = var727_upvr(LeaderboardMenu_upvr_2, tbl_70_upvr)
	local tbl_36 = {}
	tbl_70_upvr = module_10_upvr.FontFaceNormal
	tbl_36.FontFace = tbl_70_upvr
	tbl_70_upvr = UDim2.fromScale(0.95, 0.75)
	tbl_36.Size = tbl_70_upvr
	tbl_70_upvr = v_19.Text
	tbl_36.Text = tbl_70_upvr
	any_TextBoundsFlagCreate_result1_upvr = any_TextBoundsFlagCreate_result1_upvr(var727_upvr, tbl_36)
	local var772 = any_TextBoundsFlagCreate_result1_upvr
	var727_upvr = var772.Button.Activated
	function tbl_70_upvr() -- Line 1026
		--[[ Upvalues[2]:
			[1]: SetTab_upvr (readonly)
			[2]: children_3_upvw (readonly)
		]]
		SetTab_upvr(children_3_upvw)
	end
	var727_upvr = var727_upvr:Connect
	var727_upvr(tbl_70_upvr)
	var727_upvr = tbl_23_upvr.TopbarButtons
	tbl_70_upvr = #tbl_23_upvr.TopbarButtons
	tbl_70_upvr = {}
	local var774 = tbl_70_upvr
	var774.Button = var772
	var774.Tab = children_3_upvw
	var727_upvr[tbl_70_upvr + 1] = var774
	if i_21 == 1 then
		var583_upvw = var772.Button
		local var775_upvw = var583_upvw
	end
	var774 = "Missing LeaderboardTypes"
	var727_upvr = assert(tbl_39_upvr[children_3_upvw], var774)
	var774 = nil
	for i_22_upvr, UpdateCanvasSize in var727_upvr, var774 do
		WorldButtonCreate_upvr = UpdateCanvasSize.List
		local var776 = WorldButtonCreate_upvr
		local Panel_2 = UpdateCanvasSize.Panel
		local Content = var776:WaitForChild("Content")
		local MyScore = Panel_2:FindFirstChild("MyScore")
		local var780
		if MyScore then
			local Decimal = MyScore:FindFirstChild("Decimal")
			var780 = MyScore:FindFirstChild("PlrName")
			local Score = MyScore:FindFirstChild("Score")
			if var780 and var780:IsA("TextLabel") then
				var780.Text = Players.LocalPlayer.DisplayName
			end
			if Score then
				if Score:IsA("TextLabel") then
					local tbl_10 = {
						Corner = MyScore:WaitForChild("UICorner");
						Score = Score;
					}
					if Decimal and Decimal:IsA("TextLabel") then
						tbl_10.Decimals = Decimal
						Decimal.Text = ""
					end
				end
			end
		end
		local tbl_31 = {}
		var780 = 0
		for _, v_21 in Panel_2.Parent:GetChildren() do
			if v_21:IsA("GuiObject") then
				var780 += 1
			end
		end
		for _, v_22 in Content:GetChildren() do
			if v_22:IsA("Frame") then
				v_22.Size = UDim2.fromScale(1, var780 / 3 * 0.125)
				v_22.SizeConstraint = Enum.SizeConstraint.RelativeXX
				v_22.Visible = false
				tbl_31[#tbl_31 + 1] = v_22
			end
		end
		table.sort(tbl_31, any_I_result1_6_upvr)
		if UpdateCanvasSize.Global then
		else
		end
		for i_25 = #tbl_31 + 1, Players.MaxPlayers do
			local clone = tbl_31[i_25 - 1]:Clone()
			clone.Name = tostring(i_25)
			clone.LayoutOrder = i_25
			clone.Parent = Content
			tbl_31[i_25] = clone
			local var792
		end
		for i_26, v_23 in var792 do
			if 3 < i_26 then
				v_23.BackgroundColor3 = module_10_upvr.LeaderboardTileColor
			end
			local tbl_30 = {
				UserId = 0;
				Corner = v_23:WaitForChild("UICorner");
				Decimals = v_23:FindFirstChild("Decimal");
				Frame = v_23;
				Icon = v_23:WaitForChild("PlrIcon");
				Name = v_23:WaitForChild("PlrName");
				Position = v_23:WaitForChild("PlrPos");
				Score = v_23:WaitForChild("Score");
			}
			tbl_30.Position.Text = string.format("#%i", i_26)
			var792[i_26] = tbl_30
		end
		local tbl_20 = {
			Type = UpdateCanvasSize;
			List = var776;
			LoadingPrompt = Panel_2:WaitForChild("Loading");
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_20.LocalTile = tbl_10
		tbl_20.Tiles = var792
		tbl_23_upvr.LeaderboardDisplay_ByType[UpdateCanvasSize] = tbl_20
	end
end
any_I_result1_6_upvr = tbl_58_upvr
var721_upvr = nil
CaculateBestTimeStrings_upvr = nil
for _, v_24_upvr in any_I_result1_6_upvr, var721_upvr, CaculateBestTimeStrings_upvr do
	var772 = "UIPadding"
	v_19 = v_24_upvr:FindFirstChildWhichIsA(var772)
	children_3_upvw = nil
	if v_19 then
		var772 = UDim2.new
		var727_upvr = UDim.new
		var774 = 0
		var727_upvr = var727_upvr(0, var774)
		var774 = v_19.PaddingTop
		var772 = var772(var727_upvr, var774 + v_19.PaddingBottom)
		children_3_upvw = var772
	else
		var772 = UDim2.fromOffset
		var727_upvr = 0
		var772 = var772(var727_upvr, 0)
		children_3_upvw = var772
	end
	var772 = v_24_upvr:GetChildren()
	for _, v_25_upvr in v_24_upvr:GetChildren() do
		var776 = "GuiObject"
		i_22_upvr = v_25_upvr:IsA(var776)
		if i_22_upvr then
			var776 = "UIGridStyleLayout"
			i_22_upvr = v_25_upvr:FindFirstChildWhichIsA(var776)
			if i_22_upvr then
				function UpdateCanvasSize() -- Line 1177
					--[[ Upvalues[6]:
						[1]: v_25_upvr (readonly)
						[2]: LeaderboardMenu_upvr_2 (readonly)
						[3]: tbl_23_upvr (readonly)
						[4]: v_24_upvr (readonly)
						[5]: i_22_upvr (readonly)
						[6]: children_3_upvw (read and write)
					]]
					if v_25_upvr.Visible and LeaderboardMenu_upvr_2.Visible then
						tbl_23_upvr.PendingScrollingFrameCanvasSizes[v_24_upvr] = UDim2.fromOffset(0, i_22_upvr.AbsoluteContentSize.Y) + children_3_upvw
					end
				end
				var776 = tbl_23_upvr.CanvasUpdateHandlers
				var776[#tbl_23_upvr.CanvasUpdateHandlers + 1] = UpdateCanvasSize
				var776 = v_25_upvr.Visible
				if var776 then
					var776 = LeaderboardMenu_upvr_2.Visible
					if var776 then
						var776 = tbl_23_upvr.PendingScrollingFrameCanvasSizes
						var776[v_24_upvr] = UDim2.fromOffset(0, i_22_upvr.AbsoluteContentSize.Y) + children_3_upvw
					end
				end
				var776 = v_24_upvr:GetPropertyChangedSignal("AbsoluteCanvasSize"):Connect
				var776(UpdateCanvasSize)
				var776 = i_22_upvr:GetPropertyChangedSignal("AbsoluteContentSize"):Connect
				var776(UpdateCanvasSize)
			end
		end
	end
end
any_I_result1_6_upvr = module_15.RegisterShopFrame
var721_upvr = LeaderboardMenu_upvr_2
any_I_result1_6_upvr(var721_upvr)
any_I_result1_6_upvr = OpenShops_upvr_2.Event
function CaculateBestTimeStrings_upvr(arg1) -- Line 1203
	--[[ Upvalues[8]:
		[1]: LeaderboardMenu_upvr_2 (readonly)
		[2]: var552_upvw (read and write)
		[3]: tbl_23_upvr (readonly)
		[4]: OpenShops_upvr_2 (readonly)
		[5]: GuiService_upvr (readonly)
		[6]: var775_upvw (read and write)
		[7]: module_3_upvr (readonly)
		[8]: theactualbutton_upvw_2 (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [15] 12. Error Block 3 start (CF ANALYSIS FAILED)
	tbl_23_upvr.LeaderboardDirty = true
	OpenShops_upvr_2:Fire(LeaderboardMenu_upvr_2)
	-- KONSTANTERROR: [15] 12. Error Block 3 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [33] 26. Error Block 8 start (CF ANALYSIS FAILED)
	if module_3_upvr.IsInterfaceSelected(LeaderboardMenu_upvr_2) then
		GuiService_upvr.SelectedObject = theactualbutton_upvw_2
	end
	-- KONSTANTERROR: [33] 26. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 34. Error Block 7 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [43] 34. Error Block 7 end (CF ANALYSIS FAILED)
end
any_I_result1_6_upvr = any_I_result1_6_upvr:Connect
any_I_result1_6_upvr(CaculateBestTimeStrings_upvr)
any_I_result1_6_upvr = LeaderboardButton_2:Destroy
any_I_result1_6_upvr()
function any_I_result1_6_upvr() -- Line 1224, Named "ToggleShop"
	--[[ Upvalues[8]:
		[1]: LeaderboardMenu_upvr_2 (readonly)
		[2]: var552_upvw (read and write)
		[3]: tbl_23_upvr (readonly)
		[4]: OpenShops_upvr_2 (readonly)
		[5]: GuiService_upvr (readonly)
		[6]: var775_upvw (read and write)
		[7]: module_3_upvr (readonly)
		[8]: theactualbutton_upvw_2 (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 14 start (CF ANALYSIS FAILED)
	local Visible_2 = LeaderboardMenu_upvr_2.Visible
	if not Visible_2 ~= true then
		Visible_2 = false
	else
		Visible_2 = true
	end
	LeaderboardMenu_upvr_2.Visible = Visible_2
	var552_upvw.Selected = Visible_2
	-- KONSTANTERROR: [0] 1. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [31] 24. Error Block 7 start (CF ANALYSIS FAILED)
	GuiService_upvr.SelectedObject = var775_upvw
	do
		return
	end
	-- KONSTANTERROR: [31] 24. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [36] 28. Error Block 11 start (CF ANALYSIS FAILED)
	if module_3_upvr.IsInterfaceSelected(LeaderboardMenu_upvr_2) then
		GuiService_upvr.SelectedObject = theactualbutton_upvw_2
	end
	-- KONSTANTERROR: [36] 28. Error Block 11 end (CF ANALYSIS FAILED)
end
var721_upvr = {}
local RequestLeaderboardState_upvr = var721_upvr
CaculateBestTimeStrings_upvr = module_4_upvr.Button.Themes.Floating
RequestLeaderboardState_upvr.ButtonTheme = CaculateBestTimeStrings_upvr
CaculateBestTimeStrings_upvr = module_10_upvr.Leaderboard_Legacy
RequestLeaderboardState_upvr.Icon = CaculateBestTimeStrings_upvr
CaculateBestTimeStrings_upvr = Vector2.new(1, 0.8)
RequestLeaderboardState_upvr.IconScale = CaculateBestTimeStrings_upvr
CaculateBestTimeStrings_upvr = module_7.SidebarButtonOrder.Leaderboard
RequestLeaderboardState_upvr.Order = CaculateBestTimeStrings_upvr
CaculateBestTimeStrings_upvr = module_7.SidebarButtonStyle.IconOnly
RequestLeaderboardState_upvr.Style = CaculateBestTimeStrings_upvr
RequestLeaderboardState_upvr.PressFunction = any_I_result1_6_upvr
CaculateBestTimeStrings_upvr = module_7.ButtonProfileRegister(RequestLeaderboardState_upvr, module_7.SidebarButtonGroups.SettingsLeaderboard)
var552_upvw = CaculateBestTimeStrings_upvr
local var801_upvw = var552_upvw
CaculateBestTimeStrings_upvr = var801_upvw.Button.Button
theactualbutton_upvw_2 = CaculateBestTimeStrings_upvr
local var802_upvw = theactualbutton_upvw_2
RequestLeaderboardState_upvr = module_29_upvr.Signals
any_I_result1_6_upvr = RequestLeaderboardState_upvr.DonationsPageRequested
function CaculateBestTimeStrings_upvr() -- Line 1247
	--[[ Upvalues[10]:
		[1]: LeaderboardMenu_upvr_2 (readonly)
		[2]: var801_upvw (read and write)
		[3]: tbl_23_upvr (readonly)
		[4]: OpenShops_upvr_2 (readonly)
		[5]: GuiService_upvr (readonly)
		[6]: var775_upvw (read and write)
		[7]: module_3_upvr (readonly)
		[8]: var802_upvw (read and write)
		[9]: SetTab_upvr (readonly)
		[10]: tbl_61_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 11 start (CF ANALYSIS FAILED)
	LeaderboardMenu_upvr_2.Visible = true
	var801_upvw.Selected = true
	if LeaderboardMenu_upvr_2.Visible then
		tbl_23_upvr.LeaderboardDirty = true
		OpenShops_upvr_2:Fire(LeaderboardMenu_upvr_2)
		if GuiService_upvr.SelectedObject then
			GuiService_upvr.SelectedObject = var775_upvw
			-- KONSTANTWARNING: GOTO [40] #32
		end
	elseif module_3_upvr.IsInterfaceSelected(LeaderboardMenu_upvr_2) then
		GuiService_upvr.SelectedObject = var802_upvw
	end
	-- KONSTANTERROR: [0] 1. Error Block 11 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [40] 32. Error Block 7 start (CF ANALYSIS FAILED)
	SetTab_upvr(tbl_61_upvr.Donations)
	-- KONSTANTERROR: [40] 32. Error Block 7 end (CF ANALYSIS FAILED)
end
any_I_result1_6_upvr = any_I_result1_6_upvr:Connect
any_I_result1_6_upvr(CaculateBestTimeStrings_upvr)
CaculateBestTimeStrings_upvr = module_4_upvr.Button.Common
RequestLeaderboardState_upvr = CaculateBestTimeStrings_upvr.Create
any_I_result1_6_upvr = RequestLeaderboardState_upvr.Close
RequestLeaderboardState_upvr = LeaderboardMenu_upvr_2
function CaculateBestTimeStrings_upvr() -- Line 1252
	--[[ Upvalues[8]:
		[1]: LeaderboardMenu_upvr_2 (readonly)
		[2]: var801_upvw (read and write)
		[3]: tbl_23_upvr (readonly)
		[4]: OpenShops_upvr_2 (readonly)
		[5]: GuiService_upvr (readonly)
		[6]: var775_upvw (read and write)
		[7]: module_3_upvr (readonly)
		[8]: var802_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 14 start (CF ANALYSIS FAILED)
	local var805
	if LeaderboardMenu_upvr_2.Visible then
		var805 = Enum.ContextActionResult.Sink
	else
		var805 = Enum.ContextActionResult.Pass
	end
	LeaderboardMenu_upvr_2.Visible = false
	var801_upvw.Selected = false
	-- KONSTANTERROR: [0] 1. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [34] 26. Error Block 7 start (CF ANALYSIS FAILED)
	GuiService_upvr.SelectedObject = var775_upvw
	do
		return var805
	end
	-- KONSTANTERROR: [34] 26. Error Block 7 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [39] 30. Error Block 11 start (CF ANALYSIS FAILED)
	if module_3_upvr.IsInterfaceSelected(LeaderboardMenu_upvr_2) then
		GuiService_upvr.SelectedObject = var802_upvw
	end
	-- KONSTANTERROR: [39] 30. Error Block 11 end (CF ANALYSIS FAILED)
end
any_I_result1_6_upvr = any_I_result1_6_upvr(RequestLeaderboardState_upvr, CaculateBestTimeStrings_upvr)
local var806_upvr = any_I_result1_6_upvr
RequestLeaderboardState_upvr = module_30_upvr.GuiObjectMakeZIndexGlobal
CaculateBestTimeStrings_upvr = var806_upvr.Button
RequestLeaderboardState_upvr(CaculateBestTimeStrings_upvr, 12)
function RequestLeaderboardState_upvr(arg1) -- Line 1269, Named "RequestLeaderboardState"
	--[[ Upvalues[4]:
		[1]: module_19_upvr (readonly)
		[2]: module_8_upvr (readonly)
		[3]: tbl_35_upvr (readonly)
		[4]: tbl_23_upvr (readonly)
	]]
	assert(not arg1._DataPending, "Request in progress")
	arg1._DataPending = true
	local any_MakeRequest_result1_2 = module_19_upvr.MakeRequest({
		Request = module_8_upvr.StateRequestType.LeaderboardState;
		Args = {{arg1.Type}, arg1.Global, arg1.LevelId};
		Callback = coroutine.running();
	})
	if any_MakeRequest_result1_2.Response == module_8_upvr.ResponseType.Success then
		arg1.Data = any_MakeRequest_result1_2.Args[1][arg1.Type]
		arg1._Initialized = true
		arg1._ExpiresAt = os.clock() + tbl_35_upvr[arg1.Global]
		tbl_23_upvr.LeaderboardDirty = true
	end
	arg1._DataPending = false
end
function CaculateBestTimeStrings_upvr(arg1) -- Line 1299, Named "CaculateBestTimeStrings"
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	if 0 < arg1 then
		return string.format(module_2_upvr.Time, arg1 // 60, arg1 % 60), string.format("%02i", arg1 % 1 * 100)
	end
	return module_2_upvr.NoData, ""
end
local module_26_upvr = require(Modules_2:WaitForChild("UsernameStateHandler"))
local UICorner_upvr = LeaderboardMenu_upvr_2:WaitForChild("UICorner")
game:GetService("RunService"):BindToRenderStep("DisplayLeaderboards_UPDATE", Enum.RenderPriority.Last.Value + 1, function(arg1) -- Line 1322
	--[[ Upvalues[17]:
		[1]: tbl_23_upvr (readonly)
		[2]: module_11_upvr (readonly)
		[3]: tbl_61_upvr (readonly)
		[4]: tbl_39_upvr (readonly)
		[5]: RequestLeaderboardState_upvr (readonly)
		[6]: module_26_upvr (readonly)
		[7]: module_2_upvr (readonly)
		[8]: module_8_upvr (readonly)
		[9]: module_30_upvr (readonly)
		[10]: module_29_upvr (readonly)
		[11]: module_24_upvr (readonly)
		[12]: UICorner_upvr (readonly)
		[13]: LeaderboardMenu_upvr_2 (readonly)
		[14]: var806_upvr (readonly)
		[15]: Content_5_upvr (readonly)
		[16]: module_4_upvr (readonly)
		[17]: Content_2_upvw (read and write)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	debug.profilebegin("R_Leaderboards")
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [11] 9. Error Block 184 start (CF ANALYSIS FAILED)
	if tbl_23_upvr.SelectedWorldId and tbl_23_upvr.SelectedLevelIndex then
	end
	local ActiveTab = tbl_23_upvr.ActiveTab
	if ActiveTab ~= tbl_61_upvr.Levels then
		if not tbl_23_upvr.LeaderboardData_ByTab[ActiveTab] then
			for i_29, v_26 in tbl_39_upvr[ActiveTab] do
				({})[i_29] = {
					_Initialized = false;
					_DataPending = false;
					_ExpiresAt = 0;
					Global = v_26.Global;
					Type = v_26.Type;
					LevelId = nil;
					Data = {};
				}
				local var821
			end
			tbl_23_upvr.LeaderboardData_ByTab[ActiveTab] = var821
			-- KONSTANTWARNING: GOTO [183] #128
		end
		-- KONSTANTWARNING: GOTO [183] #128
	end
	-- KONSTANTERROR: [11] 9. Error Block 184 end (CF ANALYSIS FAILED)
end)
SetTab_upvr(tbl_61_upvr.Levels)