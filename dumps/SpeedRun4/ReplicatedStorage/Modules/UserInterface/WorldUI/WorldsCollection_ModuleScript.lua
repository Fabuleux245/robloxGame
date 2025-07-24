-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:06
-- Luau version 6, Types version 3
-- Time taken: 0.017197 seconds

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_4_upvr = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_7_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_9_upvr = require(Modules:WaitForChild("ClientData"))
local module_11_upvr = require(Modules:WaitForChild("UIButton"))
local module_6_upvr = require(Modules:WaitForChild("UISelection"))
local module_5_upvr = require(Modules:WaitForChild("UIShared"))
local module_2_upvr = require(Modules:WaitForChild("Utility"))
local module_13_upvr = require(Modules:WaitForChild("Worlds"))
local UserInterface = Modules:WaitForChild("UserInterface")
local module_14_upvr = require(UserInterface:WaitForChild("CollectionUISystem"))
local module_8_upvr = require(UserInterface:WaitForChild("WorldUI"):WaitForChild("WorldUICommon"))
local tbl_8_upvr = {
	LastPage = module_8_upvr.CollectionType.Worlds_Main;
}
local tbl_9 = {}
local tbl_2_upvr = {}
local tbl_3_upvr = {}
local tbl_upvr = {{
	Text = "Main Worlds";
	CollectionType = module_8_upvr.CollectionType.Worlds_Main;
}, {
	Text = "Bonus Worlds";
	CollectionType = module_8_upvr.CollectionType.Worlds_Bonus;
}}
tbl_3_upvr.TransparencyGradient = NumberSequence.new({NumberSequenceKeypoint.new(0, 1), NumberSequenceKeypoint.new(0.05, 0.625), NumberSequenceKeypoint.new(0.1, 0), NumberSequenceKeypoint.new(0.9, 0), NumberSequenceKeypoint.new(0.95, 0.625), NumberSequenceKeypoint.new(1, 1)})
tbl_3_upvr.Formats = {
	Stars = "%i / %i";
}
tbl_3_upvr.PlayabilityType = {
	CanPlay = 1;
	Playing = 2;
	Ineligible = 3;
}
tbl_3_upvr.PlayabilitySpecs_ByPlayability = {
	[tbl_3_upvr.PlayabilityType.CanPlay] = {
		Text = "Play";
		Theme = module_11_upvr.Button.Themes.ChoiceAvailable;
	};
	[tbl_3_upvr.PlayabilityType.Ineligible] = {
		Text = "Locked";
		Theme = module_11_upvr.Button.Themes.ChoiceUnavailable;
	};
}
tbl_3_upvr.PlayabilitySpecs_ByPlayability[tbl_3_upvr.PlayabilityType.Playing] = tbl_3_upvr.PlayabilitySpecs_ByPlayability[tbl_3_upvr.PlayabilityType.CanPlay]
tbl_3_upvr.SizeYFactor = 4.5
local module_12_upvr = require(UserInterface:WaitForChild("LevelSelectUI"))
local function Create(arg1, arg2) -- Line 97
	--[[ Upvalues[9]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: module_7_upvr (readonly)
		[4]: module_5_upvr (readonly)
		[5]: module_11_upvr (readonly)
		[6]: module_13_upvr (readonly)
		[7]: module_9_upvr (readonly)
		[8]: module_12_upvr (readonly)
		[9]: module_4_upvr (readonly)
	]]
	local module_10_upvr = {
		DrawDirty = true;
		StarsDirty = true;
		AnimationRemaining = 0;
		Playability = tbl_3_upvr.PlayabilityType.CanPlay;
		StarsText = "";
	}
	module_10_upvr.Data = arg1
	local var29 = tbl_3_upvr.PlayabilitySpecs_ByPlayability[module_10_upvr.Playability]
	local tbl_11 = {
		Name = "WorldTile"..arg1.Id;
		BackgroundColor3 = module_7_upvr.BackgroundColor1;
		BackgroundTransparency = module_7_upvr.BackgroundTransparency1;
	}
	tbl_11.Parent = arg2
	module_10_upvr.Frame = module_2_upvr.I("Frame", tbl_11)
	module_10_upvr.FrameCorner = module_2_upvr.I("UICorner", {
		Parent = module_10_upvr.Frame;
	})
	local tbl_12 = {
		BackgroundTransparency = 1;
	}
	local ShopImageId = arg1.ShopImageId
	if not ShopImageId then
		ShopImageId = module_7_upvr.FALLBACK_WORLD_IMAGE
	end
	tbl_12.Image = ShopImageId
	tbl_12.ScaleType = Enum.ScaleType.Crop
	tbl_12.Size = UDim2.fromScale(1, 1)
	tbl_12.ZIndex = -1000
	tbl_12.Parent = module_10_upvr.Frame
	module_10_upvr.WorldImage = module_2_upvr.I("ImageLabel", tbl_12)
	module_2_upvr.I("UIGradient", {
		Transparency = tbl_3_upvr.TransparencyGradient;
		Parent = module_10_upvr.WorldImage;
	})
	module_10_upvr.WorldImageCorner = module_2_upvr.I("UICorner", {
		Parent = module_10_upvr.WorldImage;
	})
	module_10_upvr.NameLabel = module_2_upvr.I("TextLabel", module_5_upvr.Properties.Text, {
		FontFace = module_7_upvr.FontFaceItalic;
		Text = arg1.Name;
		TextColor3 = module_7_upvr.TextColor1;
		TextXAlignment = Enum.TextXAlignment.Left;
		ZIndex = 10;
		Parent = module_10_upvr.Frame;
	})
	module_10_upvr.NameBounds = module_5_upvr.CachedTextBounds_FromLabel(module_10_upvr.NameLabel)
	module_10_upvr.NameStroke = module_2_upvr.I("UIStroke", module_5_upvr.Properties.StrokeText, {
		Color = module_7_upvr.TextStrokeColor1;
		Parent = module_10_upvr.NameLabel;
	})
	module_10_upvr.NameGlow = module_2_upvr.I("ImageLabel", {
		BackgroundTransparency = 1;
		Image = module_7_upvr.GlowCircle_512x512;
		ImageColor3 = module_7_upvr.BackgroundColor1;
		ImageTransparency = 0.25;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(Vector2.one * 256, Vector2.one * 256);
		Parent = module_10_upvr.Frame;
	})
	module_10_upvr.ActionFrame = module_2_upvr.I("Frame", {
		BackgroundColor3 = module_7_upvr.ButtonColor1;
		BackgroundTransparency = module_7_upvr.BackgroundTransparency1;
		ZIndex = 1000;
		Parent = module_10_upvr.Frame;
	})
	module_10_upvr.ActionFrameCorner = module_2_upvr.I("UICorner", {
		Parent = module_10_upvr.ActionFrame;
	})
	module_10_upvr.ActionButton = module_11_upvr.Button.AddLabel(module_11_upvr.Button.Create(module_10_upvr.ActionFrame, var29.Theme), {
		FontFace = module_7_upvr.FontFaceItalic;
		Text = var29.Text;
	})
	module_10_upvr.ActionButton.Button.Activated:Connect(function() -- Line 199
		--[[ Upvalues[6]:
			[1]: module_10_upvr (readonly)
			[2]: tbl_3_upvr (copied, readonly)
			[3]: module_13_upvr (copied, readonly)
			[4]: module_9_upvr (copied, readonly)
			[5]: module_12_upvr (copied, readonly)
			[6]: module_4_upvr (copied, readonly)
		]]
		if module_10_upvr.Playability ~= tbl_3_upvr.PlayabilityType.Ineligible then
			local _1 = module_10_upvr.Data.Levels[1]
			if _1 then
				if module_13_upvr.LevelCanUse(_1, module_9_upvr.LocalSaveData) then
					module_12_upvr.OpenLevelSelect(module_10_upvr.Data)
					return
				end
				module_9_upvr.Signals.UnlockExplanationRequested:Fire(module_4_upvr.ItemType.Level, _1, {
					LoadIfUnlocked = true;
				})
			end
		end
	end)
	module_10_upvr.ActionStroke = module_2_upvr.I("UIStroke", module_5_upvr.Properties.StrokeText, {
		Color = module_7_upvr.TextStrokeColor1;
		Parent = module_10_upvr.ActionButton.Label;
	})
	module_10_upvr.StarsLabel = module_2_upvr.I("TextLabel", module_5_upvr.Properties.Text, {
		FontFace = module_7_upvr.FontFaceItalic;
		Text = module_10_upvr.StarsText;
		TextColor3 = module_7_upvr.TextColor1;
		Parent = module_10_upvr.ActionFrame;
	})
	module_10_upvr.StarsBounds = module_5_upvr.CachedTextBounds_FromLabel(module_10_upvr.StarsLabel)
	module_10_upvr.StarsIcon = module_2_upvr.I("ImageLabel", {
		BackgroundTransparency = 1;
		Image = module_7_upvr.StarsIconImage;
		Parent = module_10_upvr.ActionFrame;
	})
	module_10_upvr.TextBoundsFlag = module_5_upvr.TextBoundsFlagCreate(module_10_upvr.NameBounds, module_10_upvr.StarsBounds)
	return module_10_upvr
end
tbl_3_upvr.Create = Create
local function Destroy(arg1) -- Line 268
	--[[ Upvalues[1]:
		[1]: module_11_upvr (readonly)
	]]
	module_11_upvr.Button.Destroy(arg1.ActionButton)
	arg1.Frame:Destroy()
end
tbl_3_upvr.Destroy = Destroy
tbl_2_upvr.AnimationTimes = {
	AnimationDuration = 0.25;
	InitialDelay = 0.125;
	PerTileDelay = 0.125;
}
tbl_2_upvr.PadYFactor = 1
function tbl_2_upvr.Create(arg1, arg2) -- Line 294
	--[[ Upvalues[4]:
		[1]: module_2_upvr (readonly)
		[2]: module_5_upvr (readonly)
		[3]: module_7_upvr (readonly)
		[4]: module_6_upvr (readonly)
	]]
	local module = {
		PlayabilityDirty = true;
		SortDirty = false;
		TileSizeX = 0;
		TileSizeY = 0;
		NoWorldsLabel = nil;
	}
	module.WorldFilter = arg2
	module.WorldTileArray = {}
	module.WorldTile_ByData = {}
	module.ScrollingFrame = module_2_upvr.I("ScrollingFrame", module_5_upvr.Properties.ScrollingFrame_Vertical, module_7_upvr.ScrollBarStyles.RoundThreeQuarterFull, {
		Parent = arg1.Wrapper;
	})
	module_6_upvr.RegisterScrollingFrame(module.ScrollingFrame)
	return module_2_upvr.TableMerge(module, arg1)
end
function tbl_2_upvr.AddWorld(arg1, arg2) -- Line 326
	--[[ Upvalues[3]:
		[1]: module_4_upvr (readonly)
		[2]: module_9_upvr (readonly)
		[3]: tbl_3_upvr (readonly)
	]]
	local var56
	if not arg1.WorldTile_ByData[arg2] then
		local WorldFilter_2 = arg1.WorldFilter
		var56 = false
		if not WorldFilter_2.ShowMainWorlds == not arg2.IsMain then
			var56 = WorldFilter_2.ShowUnowned
			if not var56 then
				var56 = module_4_upvr.CanUse(arg2, module_9_upvr.LocalSaveData.Inventory.Worlds)
			end
		end
		if var56 and not arg2.IsTechnical then
			local any_Create_result1_4 = tbl_3_upvr.Create(arg2, arg1.ScrollingFrame)
			arg1.WorldTileArray[#arg1.WorldTileArray + 1] = any_Create_result1_4
			arg1.WorldTile_ByData[arg2] = any_Create_result1_4
			if arg1.NoWorldsLabel then
				arg1.NoWorldsLabel:Destroy()
				arg1.NoWorldsLabel = nil
			end
			arg1.SortDirty = true
		end
	end
end
function tbl_2_upvr.UpdateWorldStars(arg1, arg2) -- Line 362
	local var59 = arg1.WorldTile_ByData[arg2]
	if var59 then
		var59.StarsDirty = true
	end
end
local function Initialize(arg1) -- Line 373
	--[[ Upvalues[5]:
		[1]: module_13_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: module_2_upvr (readonly)
		[4]: module_5_upvr (readonly)
		[5]: module_7_upvr (readonly)
	]]
	for i, v in module_13_upvr.DataArray do
		tbl_2_upvr.AddWorld(arg1, v)
	end
	if #arg1.WorldTileArray == 0 then
		v = module_5_upvr
		i = v.Properties
		i = {}
		v = Vector2.one * 0.5
		i.AnchorPoint = v
		v = module_7_upvr.FontFaceItalic
		i.FontFace = v
		v = UDim2.fromScale(0.5, 0.6)
		i.Position = v
		v = UDim2.fromScale(0.8, 0.25)
		i.Size = v
		v = "Nothing here yet...\n🌏 Play more to unlock Worlds! 🌍"
		i.Text = v
		v = module_7_upvr.TextColor1
		i.TextColor3 = v
		v = module_7_upvr.TextDeemphasizedTransparency1
		i.TextTransparency = v
		v = 1000
		i.ZIndex = v
		v = arg1.Wrapper
		i.Parent = v
		arg1.NoWorldsLabel = module_2_upvr.I("TextLabel", i.Text_Scaled, i)
	end
end
tbl_2_upvr.Initialize = Initialize
local function Destroy(arg1) -- Line 396
	--[[ Upvalues[2]:
		[1]: module_6_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
	]]
	module_6_upvr.UnregisterScrollingFrame(arg1.ScrollingFrame)
	for _, v_2 in arg1.WorldTileArray do
		tbl_3_upvr.Destroy(v_2)
	end
	table.clear(arg1.WorldTileArray)
	table.clear(arg1.WorldTile_ByData)
end
tbl_2_upvr.Destroy = Destroy
function tbl_2_upvr.Open(arg1) -- Line 410
	--[[ Upvalues[1]:
		[1]: tbl_2_upvr (readonly)
	]]
	local var68 = tbl_2_upvr.AnimationTimes.AnimationDuration + tbl_2_upvr.AnimationTimes.InitialDelay
	if arg1.SortDirty then
		table.sort(arg1.WorldTileArray, tbl_2_upvr.SortWorldTiles)
	end
	for i_3, v_3 in arg1.WorldTileArray do
		v_3.AnimationRemaining = var68 + tbl_2_upvr.AnimationTimes.PerTileDelay * (i_3 - 1)
	end
end
local module_3_upvr = require(Modules:WaitForChild("BUEGameClient"))
function tbl_2_upvr.SortWorldTiles(arg1, arg2) -- Line 433
	--[[ Upvalues[2]:
		[1]: module_3_upvr (readonly)
		[2]: module_4_upvr (readonly)
	]]
	local Data = arg1.Data
	local Data_2 = arg2.Data
	local any_IsWorldHostingEvent_result1 = module_3_upvr.IsWorldHostingEvent(Data)
	if any_IsWorldHostingEvent_result1 ~= module_3_upvr.IsWorldHostingEvent(Data_2) then
		return any_IsWorldHostingEvent_result1
	end
	return module_4_upvr.SortItemData(Data, Data_2)
end
local function Update(arg1, arg2, arg3) -- Line 451
	--[[ Upvalues[8]:
		[1]: module_8_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: module_5_upvr (readonly)
		[4]: tbl_3_upvr (readonly)
		[5]: module_9_upvr (readonly)
		[6]: module_4_upvr (readonly)
		[7]: module_11_upvr (readonly)
		[8]: module_13_upvr (readonly)
	]]
	local DrawDirty = arg1.DrawDirty
	if not DrawDirty then
		DrawDirty = arg1.SortDirty
	end
	local PadX = module_8_upvr.Properties.PadX
	local var83 = module_8_upvr.Properties.PadY * tbl_2_upvr.PadYFactor
	if arg1.DrawDirty or arg1.DisplayDirty then
		local ListRect = arg1.Parent.ListRect
		arg1.TileSizeX = ListRect.Width
		arg1.TileSizeY = module_5_upvr.EmSize * tbl_3_upvr.SizeYFactor
		arg1.ScrollingFrame.Position = UDim2.fromOffset(ListRect.Min.X, ListRect.Min.Y)
		arg1.ScrollingFrame.Size = UDim2.fromOffset(ListRect.Width + 2 * module_5_upvr.SteppedSize.ScrollBar, ListRect.Height)
		arg1.ScrollingFrame.ScrollBarThickness = module_5_upvr.SteppedSize.ScrollBar
	end
	if arg1.PlayabilityDirty then
		local Worlds = module_9_upvr.LocalSaveData.Inventory.Worlds
		for _, v_4 in arg1.WorldTileArray do
			local var86
			if module_4_upvr.CanUse(v_4.Data, Worlds) then
				if table.find(Worlds.Equipped, v_4.Data.Id) ~= nil then
					var86 = tbl_3_upvr.PlayabilityType.Playing
				else
					var86 = tbl_3_upvr.PlayabilityType.CanPlay
				end
			else
				var86 = tbl_3_upvr.PlayabilityType.Ineligible
			end
			if v_4.Playability ~= var86 then
				v_4.Playability = var86
				local var87 = tbl_3_upvr.PlayabilitySpecs_ByPlayability[var86]
				v_4.ActionButton.Label.Text = var87.Text
				v_4.ActionButton.Theme = var87.Theme
				module_11_upvr.Button.Refresh(v_4.ActionButton, arg3)
			end
		end
		arg1.PlayabilityDirty = false
	end
	if arg1.SortDirty then
		table.sort(arg1.WorldTileArray, tbl_2_upvr.SortWorldTiles)
		arg1.SortDirty = false
	end
	if DrawDirty then
		local len = #arg1.WorldTileArray
		arg1.ScrollingFrame.CanvasSize = UDim2.fromOffset(0, arg1.TileSizeY * len + var83 * (len - 1))
	end
	for i_5, v_5 in arg1.WorldTileArray do
		local var89
		if 0 >= v_5.AnimationRemaining then
			var89 = false
		else
			var89 = true
		end
		if var89 then
			v_5.AnimationRemaining = math.max(v_5.AnimationRemaining - arg2, 0)
		end
		if var89 or DrawDirty then
			local var90
			if var89 then
				var90 = -arg1.TileSizeX * (v_5.AnimationRemaining / tbl_2_upvr.AnimationTimes.AnimationDuration) ^ 3
			else
				var90 = 0
			end
			v_5.Frame.Position = UDim2.fromOffset(var90, (arg1.TileSizeY + var83) * (i_5 - 1))
		end
		if v_5.StarsDirty then
			local any_StarGetWorldStarCount_result1, any_StarGetWorldStarCount_result2 = module_13_upvr.StarGetWorldStarCount(v_5.Data, module_9_upvr.LocalSaveData)
			v_5.StarsText = string.format(tbl_3_upvr.Formats.Stars, any_StarGetWorldStarCount_result2 or 0, any_StarGetWorldStarCount_result1)
			v_5.StarsLabel.Text = v_5.StarsText
			v_5.StarsDirty = false
			v_5.DrawDirty = true
		end
		if module_5_upvr.TextBoundsFlagCheck(v_5.TextBoundsFlag) or arg1.DrawDirty or v_5.DrawDirty then
			local var93 = 1.875 * module_5_upvr.EmSize // 1
			local var94 = 1.25 * module_5_upvr.EmSize // 1
			local var95 = PadX * 0.25 // 1
			local var96 = var83 * 0.5 // 1
			local var97 = var94 + 2 * var96
			local var98 = var83 * 0.5 // 1
			local var99 = arg1.TileSizeX * 0.25 // 1
			local var100 = var97 - 2 * var98
			local Background = module_5_upvr.CornerDims.Background
			v_5.Frame.Size = UDim2.fromOffset(arg1.TileSizeX, arg1.TileSizeY)
			if module_5_upvr.CachedTextBoundsUpdate(v_5.NameBounds, v_5.Data.Name, var93) then
				v_5.NameLabel.TextSize = var93
				v_5.NameLabel.Size = UDim2.fromOffset(v_5.NameBounds.X, v_5.NameBounds.Y)
				v_5.NameGlow.Size = UDim2.fromOffset(v_5.NameBounds.X + PadX, v_5.NameBounds.Y + var83)
			end
			v_5.NameLabel.Position = UDim2.fromOffset(PadX, var83)
			v_5.NameGlow.Position = UDim2.fromOffset(PadX * 0.5 // 1, var83 * 0.625 // 1)
			if module_5_upvr.CachedTextBoundsUpdate(v_5.StarsBounds, v_5.StarsText, var94) then
				v_5.StarsLabel.TextSize = var94
			end
			local any_DimTrackerCreate_result1 = module_5_upvr.DimTrackerCreate()
			module_5_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, var96)
			module_5_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, v_5.StarsIcon, 0, var94)
			module_5_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, var95)
			module_5_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, v_5.StarsLabel, 0, v_5.StarsBounds.X)
			module_5_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, 2 * var95)
			module_5_upvr.DimTrackerAdd(any_DimTrackerCreate_result1, v_5.ActionButton.Button, 0, var99)
			module_5_upvr.DimTrackerPad(any_DimTrackerCreate_result1, 0, var98)
			local tbl_10 = {
				Position = UDim.new(0, var96);
				Size = UDim.new(0, var94);
			}
			module_5_upvr.DimTrackerApply(any_DimTrackerCreate_result1, {
				[v_5.StarsIcon] = tbl_10;
				[v_5.StarsLabel] = tbl_10;
				[v_5.ActionButton.Button] = {
					Position = UDim.new(0, var98);
					Size = UDim.new(0, var100);
				};
			})
			local Label = v_5.ActionButton.Label
			Label.Position = UDim2.fromOffset(var99 * 0.5 // 1, (var100 * 0.5 - var94 * 0.03125) // 1)
			Label.Size = UDim2.fromOffset(var99 - 2 * var95, var94)
			v_5.ActionFrame.Position = UDim2.fromOffset(arg1.TileSizeX - any_DimTrackerCreate_result1.Offset - PadX, arg1.TileSizeY - var97 - var83)
			v_5.ActionFrame.Size = UDim2.fromOffset(any_DimTrackerCreate_result1.Offset, var97)
			v_5.ActionStroke.Thickness = module_5_upvr.ScaledSize.StrokeUltraThin
			v_5.NameStroke.Thickness = module_5_upvr.ScaledSize.StrokeThin
			v_5.ActionFrameCorner.CornerRadius = UDim.new(0, module_5_upvr.CornerDims.Button.Radius + var98)
			v_5.FrameCorner.CornerRadius = Background.RadiusUDim
			v_5.WorldImageCorner.CornerRadius = Background.RadiusUDim
			v_5.DrawDirty = false
		end
		module_11_upvr.Button.Update(v_5.ActionButton, arg3)
	end
end
tbl_2_upvr.Update = Update
local function Initialize(arg1) -- Line 671
	--[[ Upvalues[11]:
		[1]: tbl_8_upvr (readonly)
		[2]: module_14_upvr (readonly)
		[3]: tbl_upvr (readonly)
		[4]: module_11_upvr (readonly)
		[5]: module_7_upvr (readonly)
		[6]: module_8_upvr (readonly)
		[7]: module_2_upvr (readonly)
		[8]: module_9_upvr (readonly)
		[9]: module_4_upvr (readonly)
		[10]: module_13_upvr (readonly)
		[11]: tbl_2_upvr (readonly)
	]]
	arg1.ActiveCollectionType = tbl_8_upvr.LastPage
	local tbl_7 = {
		Connections = {};
		PageButtons = {};
		SubCollection_ByType = nil;
		SubCollectionArray = nil;
		ListRect = Rect.new();
		PlayabilityChanged = false;
		PendingStarChanges = {};
		MenuHeader = module_14_upvr.MenuHeaderCreate("WORLDS", arg1.Wrapper);
	}
	for i_6, v_6_upvr in tbl_upvr do
		local any_AddLabel_result1 = module_11_upvr.Button.AddLabel(module_11_upvr.Button.Create(arg1.Wrapper, module_11_upvr.Button.Themes.Deemphasized), {
			FontFace = module_7_upvr.FontFaceItalic;
			Text = v_6_upvr.Text;
		})
		any_AddLabel_result1.Button.Modal = true
		any_AddLabel_result1.Button.Activated:Connect(function() -- Line 710
			--[[ Upvalues[2]:
				[1]: module_8_upvr (copied, readonly)
				[2]: v_6_upvr (readonly)
			]]
			module_8_upvr.RequestCollection(v_6_upvr.CollectionType)
		end)
		tbl_7.PageButtons[i_6] = any_AddLabel_result1
		if arg1.ActiveCollectionType == v_6_upvr.CollectionType then
			module_8_upvr.State.PendingSelection = any_AddLabel_result1.Button
		end
	end
	local any_TableMerge_result1_upvr = module_2_upvr.TableMerge(tbl_7, arg1)
	any_TableMerge_result1_upvr.Connections[#any_TableMerge_result1_upvr.Connections + 1] = module_9_upvr.Signals.InventoryEquippedChanged:Connect(function(arg1_2) -- Line 726
		--[[ Upvalues[2]:
			[1]: module_4_upvr (copied, readonly)
			[2]: any_TableMerge_result1_upvr (readonly)
		]]
		if arg1_2 == module_4_upvr.ItemType.World then
			any_TableMerge_result1_upvr.PlayabilityChanged = true
		end
	end)
	any_TableMerge_result1_upvr.Connections[#any_TableMerge_result1_upvr.Connections + 1] = module_9_upvr.Signals.InventoryOwnedAdded:Connect(function(arg1_3, arg2) -- Line 732
		--[[ Upvalues[4]:
			[1]: module_4_upvr (copied, readonly)
			[2]: any_TableMerge_result1_upvr (readonly)
			[3]: module_13_upvr (copied, readonly)
			[4]: tbl_2_upvr (copied, readonly)
		]]
		if arg1_3 == module_4_upvr.ItemType.World then
			any_TableMerge_result1_upvr.PlayabilityChanged = true
			for _, v_7 in arg2 do
				local var124 = module_13_upvr.Data_ById[v_7]
				for _, v_8 in any_TableMerge_result1_upvr.SubCollectionArray do
					tbl_2_upvr.AddWorld(v_8, var124)
				end
			end
		end
	end)
	any_TableMerge_result1_upvr.Connections[#any_TableMerge_result1_upvr.Connections + 1] = module_9_upvr.Signals.StarsChanged:Connect(function(arg1_4) -- Line 748
		--[[ Upvalues[1]:
			[1]: any_TableMerge_result1_upvr (readonly)
		]]
		any_TableMerge_result1_upvr.PendingStarChanges[#any_TableMerge_result1_upvr.PendingStarChanges + 1] = arg1_4
	end)
	return any_TableMerge_result1_upvr
end
tbl_9.Initialize = Initialize
function tbl_9.Destroy(arg1) -- Line 757
	--[[ Upvalues[1]:
		[1]: module_11_upvr (readonly)
	]]
	for _, v_9 in arg1.Connections do
		v_9:Disconnect()
	end
	for _, v_10 in arg1.PageButtons do
		module_11_upvr.Button.Destroy(v_10)
	end
end
function tbl_9.Update(arg1, arg2, arg3) -- Line 768
	--[[ Upvalues[9]:
		[1]: tbl_8_upvr (readonly)
		[2]: module_13_upvr (readonly)
		[3]: tbl_2_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: module_11_upvr (readonly)
		[6]: module_8_upvr (readonly)
		[7]: module_5_upvr (readonly)
		[8]: module_14_upvr (readonly)
		[9]: tbl_3_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	if arg1.ActiveCollectionType then
		tbl_8_upvr.LastPage = arg1.ActiveCollectionType
	end
	if arg1.PlayabilityChanged then
		for _, v_11 in arg1.SubCollectionArray do
			v_11.PlayabilityDirty = true
		end
		arg1.PlayabilityChanged = false
	end
	if 0 < #arg1.PendingStarChanges then
		local tbl_5 = {}
		for _, v_12 in arg1.PendingStarChanges do
			local var171 = module_13_upvr.Data_ByLevel[v_12]
			if not tbl_5[var171] then
				tbl_5[var171] = true
				for _, v_13 in arg1.SubCollectionArray do
					tbl_2_upvr.UpdateWorldStars(v_13, var171)
				end
			end
		end
		table.clear(arg1.PendingStarChanges)
	end
	for i_14, _ in arg1.PageButtons do
		if arg1.ActiveCollectionType == tbl_upvr[i_14].CollectionType then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			v_11.StateOverride = module_11_upvr.ButtonState.Selected
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			v_11.StateOverride = nil
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module_11_upvr.Button.Update(v_11, arg3)
	end
	if arg1.DrawDirty then
		local PadX_2 = module_8_upvr.Properties.PadX
		i_14 = module_8_upvr
		local PadY = i_14.Properties.PadY
		i_14 = module_5_upvr.EmSize
		local var174 = i_14 * 30
		i_14 = PadY * 0.5 // 1
		local var175 = 1.25 * module_5_upvr.EmSize // 1 + 2 * i_14
		local any_MenuHeaderReposition_result1 = module_14_upvr.MenuHeaderReposition(arg1.MenuHeader, var174, PadX_2, PadY)
		local var177 = 3 * PadX_2
		local any_ComputeEvenlySpacedSize_result1, any_ComputeEvenlySpacedSize_result2 = module_5_upvr.ComputeEvenlySpacedSize(var174 - 2 * var177, #arg1.PageButtons, PadX_2)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		for _, v_15 in arg1.PageButtons do
			v_15.Button.Position = UDim2.fromOffset(var177, any_MenuHeaderReposition_result1.Offset + PadY)
			v_15.Button.Size = UDim2.fromOffset(any_ComputeEvenlySpacedSize_result1, var175)
			v_15.Label.Size = UDim2.fromOffset(any_ComputeEvenlySpacedSize_result1 - 2 * i_14, 1.25 * module_5_upvr.EmSize // 1)
			var177 += any_ComputeEvenlySpacedSize_result2
			local var180
		end
		module_5_upvr.DimTrackerPad(any_MenuHeaderReposition_result1, 0, var175 + 2 * PadY)
		local var181 = 3 * module_5_upvr.EmSize * tbl_3_upvr.SizeYFactor + 2 * PadY * tbl_2_upvr.PadYFactor
		local vector2 = Vector2.new(PadX_2, any_MenuHeaderReposition_result1.Offset + PadY)
		arg1.ListRect = Rect.new(vector2, vector2 + Vector2.new(var174 - 2 * PadX_2, var181))
		arg1.TargetSize = UDim2.fromOffset(var174, any_MenuHeaderReposition_result1.Offset + 3 * PadY + var181)
	end
	module_8_upvr.CollectionUpdate_Display(arg1, arg2, arg3)
end
module_8_upvr.CollectionMethods_ByType[module_8_upvr.CollectionType.Worlds_Landing] = tbl_9
local tbl_6_upvr = {
	ShowMainWorlds = true;
	ShowUnowned = true;
}
local tbl_4 = {}
local function Initialize(arg1) -- Line 886
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: tbl_6_upvr (readonly)
	]]
	local any_Create_result1 = tbl_2_upvr.Create(arg1, tbl_6_upvr)
	tbl_2_upvr.Initialize(any_Create_result1)
	return any_Create_result1
end
tbl_4.Initialize = Initialize
tbl_4.Destroy = tbl_2_upvr.Destroy
tbl_4.Open = tbl_2_upvr.Open
tbl_4.Update = tbl_2_upvr.Update
module_8_upvr.CollectionMethods_ByType[module_8_upvr.CollectionType.Worlds_Main] = tbl_4
tbl_6_upvr = {}
local var186_upvr = tbl_6_upvr
var186_upvr.ShowMainWorlds = false
var186_upvr.ShowUnowned = false
module_8_upvr.CollectionMethods_ByType[module_8_upvr.CollectionType.Worlds_Bonus] = {
	Initialize = function(arg1) -- Line 909, Named "Initialize"
		--[[ Upvalues[2]:
			[1]: tbl_2_upvr (readonly)
			[2]: var186_upvr (readonly)
		]]
		local any_Create_result1_3 = tbl_2_upvr.Create(arg1, var186_upvr)
		tbl_2_upvr.Initialize(any_Create_result1_3)
		return any_Create_result1_3
	end;
	Destroy = tbl_2_upvr.Destroy;
	Open = tbl_2_upvr.Open;
	Update = tbl_2_upvr.Update;
}
return {}