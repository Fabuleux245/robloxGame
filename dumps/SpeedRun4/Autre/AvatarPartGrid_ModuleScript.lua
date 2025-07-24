-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:18
-- Luau version 6, Types version 3
-- Time taken: 0.012206 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local FFlagAppendBodyPartToTitle_upvr = require(script.Parent.Parent.Parent.Parent.FFlagAppendBodyPartToTitle)
local function _(arg1) -- Line 35, Named "createObjectsFolder"
	local Folder_2 = Instance.new("Folder")
	Folder_2.Name = "R15ArtistIntent"
	for _, v in arg1 do
		v.Parent = Folder_2
	end
	return {Folder_2}
end
local function _(arg1, arg2) -- Line 45, Named "getPart"
	return arg1:FindFirstChild(arg2)
end
local function getItems_upvr(arg1, arg2) -- Line 49, Named "getItems"
	--[[ Upvalues[1]:
		[1]: FFlagAppendBodyPartToTitle_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local ipairs_result1, ipairs_result2, _ = ipairs(arg1:GetChildren())
	local var61
	for _, v_2 in ipairs_result1, ipairs_result2, var61 do
		if v_2:IsA("Accessory") then
			if v_2.AccessoryType == Enum.AccessoryType.Eyebrow then
				local var62 = v_2
			elseif v_2.AccessoryType == Enum.AccessoryType.Eyelash then
				local var63 = v_2
			elseif v_2.AccessoryType == Enum.AccessoryType.Hair then
				local var64 = v_2
			end
		end
	end
	local module = {}
	local tbl_9 = {}
	var61 = arg1:FindFirstChild("Head")
	tbl_9.asset = var61
	if FFlagAppendBodyPartToTitle_upvr then
		var61 = nil
	else
		var61 = arg2.."'s Head"
	end
	tbl_9.titleText = var61
	if FFlagAppendBodyPartToTitle_upvr then
	else
	end
	tbl_9.partName = nil
	local Folder_6 = Instance.new("Folder")
	Folder_6.Name = "R15ArtistIntent"
	for _, v_3 in {arg1:FindFirstChild("UpperTorso"), arg1:FindFirstChild("LowerTorso")} do
		v_3.Parent = Folder_6
		local var69
	end
	;({}).asset = {var69}
	if FFlagAppendBodyPartToTitle_upvr then
		-- KONSTANTWARNING: GOTO [105] #78
	end
	local var71
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).titleText = var71.."'s Torso"
	var71 = FFlagAppendBodyPartToTitle_upvr
	if var71 then
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({}).partName = nil
	local tbl_8 = {}
	local Folder_5 = Instance.new("Folder")
	Folder_5.Name = "R15ArtistIntent"
	for _, v_4 in {arg1:FindFirstChild("LeftUpperArm"), arg1:FindFirstChild("LeftLowerArm"), arg1:FindFirstChild("LeftHand")} do
		v_4.Parent = Folder_5
		local var75
	end
	var71 = {}
	local var76 = var71
	var76[1] = var75
	tbl_8.asset = var76
	if FFlagAppendBodyPartToTitle_upvr then
		var76 = nil
		-- KONSTANTWARNING: GOTO [158] #118
	end
	var76 = arg2.."'s Left Arm"
	tbl_8.titleText = var76
	if FFlagAppendBodyPartToTitle_upvr then
		var76 = "Left Arm"
	else
		var76 = nil
	end
	tbl_8.partName = var76
	var76 = {}
	local var77 = var76
	local Folder_4 = Instance.new("Folder")
	Folder_4.Name = "R15ArtistIntent"
	for _, v_5 in {arg1:FindFirstChild("LeftUpperLeg"), arg1:FindFirstChild("LeftLowerLeg"), arg1:FindFirstChild("LeftFoot")} do
		v_5.Parent = Folder_4
		local var80
	end
	var77.asset = {var80}
	if FFlagAppendBodyPartToTitle_upvr then
		-- KONSTANTWARNING: GOTO [211] #158
	end
	var77.titleText = arg2.."'s Left Leg"
	if FFlagAppendBodyPartToTitle_upvr then
	else
	end
	var77.partName = nil
	local tbl_4 = {}
	local Folder = Instance.new("Folder")
	Folder.Name = "R15ArtistIntent"
	for _, v_6 in {arg1:FindFirstChild("RightUpperArm"), arg1:FindFirstChild("RightLowerArm"), arg1:FindFirstChild("RightHand")} do
		v_6.Parent = Folder
		local var85
	end
	tbl_4.asset = {var85}
	if FFlagAppendBodyPartToTitle_upvr then
		-- KONSTANTWARNING: GOTO [264] #198
	end
	tbl_4.titleText = arg2.."'s Right Arm"
	if FFlagAppendBodyPartToTitle_upvr then
	else
	end
	tbl_4.partName = nil
	local tbl_6 = {}
	local Folder_3 = Instance.new("Folder")
	Folder_3.Name = "R15ArtistIntent"
	for _, v_7 in {arg1:FindFirstChild("RightUpperLeg"), arg1:FindFirstChild("RightLowerLeg"), arg1:FindFirstChild("RightFoot")} do
		v_7.Parent = Folder_3
		local var90
	end
	tbl_6.asset = {var90}
	if FFlagAppendBodyPartToTitle_upvr then
		-- KONSTANTWARNING: GOTO [317] #238
	end
	tbl_6.titleText = arg2.."'s Right Leg"
	if FFlagAppendBodyPartToTitle_upvr then
	else
	end
	tbl_6.partName = nil
	module[1] = tbl_9
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module[2] = {}
	module[3] = tbl_8
	module[4] = var77
	module[5] = tbl_4
	module[6] = tbl_6
	if var62 then
		local tbl_5 = {
			asset = var62;
		}
		if FFlagAppendBodyPartToTitle_upvr then
			var77 = nil
		else
			var77 = arg2.."'s Eyebrows"
		end
		tbl_5.titleText = var77
		if FFlagAppendBodyPartToTitle_upvr then
			var77 = "Eyebrows"
		else
			var77 = nil
		end
		tbl_5.partName = var77
		table.insert(module, tbl_5)
		local var93
	end
	if var63 then
		local tbl = {
			asset = var63;
		}
		if FFlagAppendBodyPartToTitle_upvr then
			var93 = nil
		else
			var93 = arg2.."'s Eyelashes"
		end
		tbl.titleText = var93
		if FFlagAppendBodyPartToTitle_upvr then
			var93 = "Eyelashes"
		else
			var93 = nil
		end
		tbl.partName = var93
		table.insert(module, tbl)
	end
	if var64 then
		local tbl_2 = {
			asset = var64;
		}
		if FFlagAppendBodyPartToTitle_upvr then
			var93 = nil
		else
			var93 = arg2.."'s Hair"
		end
		tbl_2.titleText = var93
		if FFlagAppendBodyPartToTitle_upvr then
			var93 = "Hair"
		else
			var93 = nil
		end
		tbl_2.partName = var93
		table.insert(module, tbl_2)
	end
	return module
end
local React_upvr = require(CorePackages.Packages.React)
local Constants_upvr = require(script.Parent.Parent.Parent.Parent.Constants)
local AvatarItemCard_upvr = require(script.Parent.AvatarItemCard)
local ItemTile_upvr = UIBlox.Tile.ItemTile
local DefaultMetricsGridView_upvr = UIBlox.App.Grid.DefaultMetricsGridView
local GridMetrics_upvr = UIBlox.App.Grid.GridMetrics
local vector2_upvr = Vector2.new(20, 20)
return function(arg1) -- Line 143, Named "AvatarPartGrid"
	--[[ Upvalues[9]:
		[1]: React_upvr (readonly)
		[2]: getItems_upvr (readonly)
		[3]: FFlagAppendBodyPartToTitle_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: AvatarItemCard_upvr (readonly)
		[6]: ItemTile_upvr (readonly)
		[7]: DefaultMetricsGridView_upvr (readonly)
		[8]: GridMetrics_upvr (readonly)
		[9]: vector2_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState({})
	React_upvr.useEffect(function() -- Line 145
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: any_useState_result2_upvr (readonly)
			[3]: getItems_upvr (copied, readonly)
		]]
		if arg1.humanoidModel then
			any_useState_result2_upvr(getItems_upvr(arg1.humanoidModel:Clone(), arg1.name))
		else
			for i_9 = 1, 6 do
				({})[i_9] = {}
				local var109
			end
			any_useState_result2_upvr(var109)
		end
	end, {arg1.humanoidModel})
	local useEffect = React_upvr.useEffect
	useEffect(function() -- Line 161
		--[[ Upvalues[4]:
			[1]: any_useState_result1_upvr (readonly)
			[2]: FFlagAppendBodyPartToTitle_upvr (copied, readonly)
			[3]: arg1 (readonly)
			[4]: any_useState_result2_upvr (readonly)
		]]
		if any_useState_result1_upvr[1] and any_useState_result1_upvr[1].asset then
			local tbl_11 = {}
			for i_8, v_8 in any_useState_result1_upvr do
				local tbl_10 = {}
				local asset_2 = v_8.asset
				tbl_10.asset = asset_2
				if FFlagAppendBodyPartToTitle_upvr then
					asset_2 = nil
				else
					asset_2 = arg1.name
				end
				tbl_10.titleText = asset_2
				if FFlagAppendBodyPartToTitle_upvr then
					asset_2 = v_8.partName
				else
					asset_2 = nil
				end
				tbl_10.partName = asset_2
				tbl_11[i_8] = tbl_10
			end
			any_useState_result2_upvr(tbl_11)
		end
	end, {arg1.name})
	local var121_upvr
	if arg1.screenSize.X >= var121_upvr then
		useEffect = false
	else
		useEffect = true
	end
	if useEffect then
		var121_upvr = Constants_upvr.ItemCardWidthPortrait
	else
		var121_upvr = Constants_upvr.ItemCardWidthLandscape
	end
	local tbl_7 = {}
	if FFlagAppendBodyPartToTitle_upvr then
	else
	end
	tbl_7[1] = var121_upvr
	tbl_7[2] = nil
	return React_upvr.createElement("Frame", {
		Size = UDim2.fromScale(1, 0);
		AutomaticSize = Enum.AutomaticSize.Y;
		LayoutOrder = arg1.LayoutOrder;
		BackgroundTransparency = 1;
	}, {
		Grid = React_upvr.createElement(DefaultMetricsGridView_upvr, {
			getItemHeight = function(arg1_3) -- Line 203, Named "getItemHeight"
				return arg1_3 * 1.3333333333333333
			end;
			getItemMetrics = GridMetrics_upvr.makeCustomMetricsGetter({
				minimumItemsPerRow = 2;
				minimumItemWidth = var121_upvr;
			});
			renderItem = React_upvr.useCallback(function(arg1_2) -- Line 180
				--[[ Upvalues[6]:
					[1]: React_upvr (copied, readonly)
					[2]: AvatarItemCard_upvr (copied, readonly)
					[3]: FFlagAppendBodyPartToTitle_upvr (copied, readonly)
					[4]: arg1 (readonly)
					[5]: var121_upvr (readonly)
					[6]: ItemTile_upvr (copied, readonly)
				]]
				-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [3] 3. Error Block 22 start (CF ANALYSIS FAILED)
				local tbl_3 = {}
				local asset = arg1_2.asset
				tbl_3.asset = asset
				if FFlagAppendBodyPartToTitle_upvr then
					asset = nil
				else
					asset = arg1_2.titleText
				end
				tbl_3.titleText = asset
				if FFlagAppendBodyPartToTitle_upvr then
					-- KONSTANTWARNING: GOTO [27] #21
				end
				-- KONSTANTERROR: [3] 3. Error Block 22 end (CF ANALYSIS FAILED)
			end, tbl_7);
			itemPadding = vector2_upvr;
			items = any_useState_result1_upvr;
		});
	})
end