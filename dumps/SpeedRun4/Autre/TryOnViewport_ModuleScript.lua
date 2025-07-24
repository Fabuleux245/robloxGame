-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:58
-- Luau version 6, Types version 3
-- Time taken: 0.008782 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local Roact_upvr = require(CorePackages.Packages.Roact)
local Constants_upvr = require(Parent.Constants)
local any_extend_result1 = Roact_upvr.PureComponent:extend("TryOnViewport")
local function _(arg1) -- Line 14, Named "isPartOfBundleAndOffsale"
	if not arg1 or arg1.parentBundleId == nil or not not arg1.isForSale then
	end
	return false
end
local function _(arg1, arg2) -- Line 18, Named "createDefaultHumanoidDescriptionAccessoryInfo"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local module = {
		AssetId = tonumber(arg2);
		Order = Constants_upvr.LayeredClothingOrder[arg1];
	}
	local var7 = Constants_upvr.AssetTypeIdToAccessoryTypeEnum[arg1]
	module.AccessoryType = var7
	if Constants_upvr.LayeredAssetTypes[arg1] == nil then
		var7 = false
	else
		var7 = true
	end
	module.IsLayered = var7
	return module
end
function any_extend_result1.init(arg1) -- Line 27
	arg1.model = arg1.props.localPlayerModel
	arg1.model.HumanoidRootPart.Anchored = true
	arg1.humanoidDescriptions = {}
	arg1.humanoidDescriptionForLocalPlayer = arg1.model.Humanoid.HumanoidDescription
	arg1.state = {
		obtainedHumanoidDescriptions = {};
	}
end
function any_extend_result1.didMount(arg1) -- Line 37
	arg1.isMounted = true
end
local Cryo_upvr = require(CorePackages.Packages.Cryo)
function any_extend_result1.didUpdate(arg1, arg2) -- Line 41
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local assetInfo_3 = arg1.props.assetInfo
	if arg1.props.tryingOnInfo ~= arg2.tryingOnInfo then
		local var19
		if var19 then
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var19 = not assetInfo_3.isForSale
				return var19
			end
			if not assetInfo_3 or assetInfo_3.parentBundleId == nil or not INLINED_2() then
				var19 = false
			end
			if var19 then
				var19 = assetInfo_3.parentBundleId
				local costumeId_2_upvr = arg1.props.bundles[var19].costumeId
				if costumeId_2_upvr then
					arg1.props.getHumanoidDescriptionFromCostumeId(costumeId_2_upvr, function(arg1_3) -- Line 53
						--[[ Upvalues[3]:
							[1]: arg1 (readonly)
							[2]: costumeId_2_upvr (readonly)
							[3]: Cryo_upvr (copied, readonly)
						]]
						if arg1 and arg1.isMounted then
							arg1.humanoidDescriptions[costumeId_2_upvr] = arg1_3
							arg1:setState({
								obtainedHumanoidDescriptions = Cryo_upvr.Dictionary.join(arg1.state.obtainedHumanoidDescriptions, {
									[costumeId_2_upvr] = true;
								});
							})
						end
					end)
				end
			end
		end
	end
end
function any_extend_result1.tryOnBundleWithoutCostumeId(arg1, arg2, arg3) -- Line 72
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local var39
	for i, v in pairs(arg1.props.bundles[arg2].assetIds) do
		local var40 = arg1.props.assets[v]
		local var41 = Constants_upvr.AssetTypeIdToAccessoryTypeEnum[var40.assetTypeId]
		if var41 then
			({})[var41] = true
			local var42 = Constants_upvr.AssetTypeToAssetCategory[var40.assetTypeId]
			if var42 then
				({})[var42] = true
			end
			var39 = true
		end
	end
	if var39 then
		i = arg3:GetAccessories(true)
		for _, v_2 in pairs(i) do
			local var47
			if not var47 then
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var47 = not ({})[Constants_upvr.AssetTypeToAssetCategory[Constants_upvr.AccessoryTypeEnumToAssetTypeId[v_2.AccessoryType]]]
			end
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if not ({})[v_2.AccessoryType] and var47 then
				table.insert({}, v_2)
			end
		end
	end
	for i_3, v_3 in pairs(arg1.props.bundles[arg2].assetIds) do
		local var51 = arg1.props.assets[v_3]
		if Constants_upvr.AssetTypeIdToAccessoryTypeEnum[var51.assetTypeId] then
			local assetTypeId_2 = var51.assetTypeId
			local tbl_3 = {
				AssetId = tonumber(v_3);
				Order = Constants_upvr.LayeredClothingOrder[assetTypeId_2];
			}
			local var54 = Constants_upvr.AssetTypeIdToAccessoryTypeEnum[assetTypeId_2]
			tbl_3.AccessoryType = var54
			if Constants_upvr.LayeredAssetTypes[assetTypeId_2] == nil then
				var54 = false
			else
				var54 = true
			end
			tbl_3.IsLayered = var54
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			table.insert({}, tbl_3)
		else
			arg3[Constants_upvr.AssetTypeIdStringToHumanoidDescriptionProp[var51.assetTypeId]] = v_3
		end
	end
	if var39 then
		i_3 = true
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		arg3:SetAccessories({}, i_3)
	end
	return arg3
end
local GetFFlagDisplayCollectiblesIcon_upvr = require(Parent.Flags.GetFFlagDisplayCollectiblesIcon)
local AvatarViewport_upvr = require(Parent.Components.AvatarViewport)
function any_extend_result1.render(arg1) -- Line 126
	--[[ Upvalues[4]:
		[1]: Constants_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: GetFFlagDisplayCollectiblesIcon_upvr (readonly)
		[4]: AvatarViewport_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local assetInfo_2 = arg1.props.assetInfo
	local tryingOnInfo = arg1.props.tryingOnInfo
	local clone = arg1.humanoidDescriptionForLocalPlayer:Clone()
	local var76
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 14. Error Block 2 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [24] 14. Error Block 2 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [32] 19. Error Block 75 start (CF ANALYSIS FAILED)
	local var77 = not assetInfo_2.isForSale
	if not var77 then
		-- KONSTANTERROR: [36] 22. Error Block 6 start (CF ANALYSIS FAILED)
		var77 = false
		-- KONSTANTERROR: [36] 22. Error Block 6 end (CF ANALYSIS FAILED)
	end
	if var77 then
		local parentBundleId = assetInfo_2.parentBundleId
		local costumeId = arg1.props.bundles[parentBundleId].costumeId
		if costumeId then
			local var80 = arg1.humanoidDescriptions[costumeId]
			if arg1.state.obtainedHumanoidDescriptions[costumeId] ~= true then
			else
			end
			if var80 then
				for i_4, v_4 in pairs(Constants_upvr.AssetTypeIdStringToHumanoidDescriptionProp) do
					if Constants_upvr.AssetTypeIdToAccessoryTypeEnum[i_4] == nil and tonumber(var80[v_4]) and tostring(var80[v_4]) ~= '0' then
						clone[v_4] = var80[v_4]
					end
				end
				clone:SetAccessories(var80:GetAccessories(true), true)
				-- KONSTANTWARNING: GOTO [220] #154
			end
		else
		end
	elseif Constants_upvr.AssetTypeIdToAccessoryTypeEnum[tryingOnInfo.assetTypeId] then
		local tbl_4 = {}
		for _, v_5 in pairs(arg1:tryOnBundleWithoutCostumeId(parentBundleId, clone):GetAccessories(true)) do
			local var88 = Constants_upvr.AssetTypeToAssetCategory[tryingOnInfo.assetTypeId]
			local var89 = not var88
			if not var89 then
				if Constants_upvr.AssetTypeToAssetCategory[Constants_upvr.AccessoryTypeEnumToAssetTypeId[v_5.AccessoryType]] == var88 then
					var89 = false
				else
					var89 = true
				end
			end
			if v_5.AccessoryType ~= Constants_upvr.AssetTypeIdToAccessoryTypeEnum[tryingOnInfo.assetTypeId] and var89 then
				table.insert(tbl_4, v_5)
			end
		end
		local assetTypeId = tryingOnInfo.assetTypeId
		local tbl = {
			AssetId = tonumber(tryingOnInfo.assetId);
			Order = Constants_upvr.LayeredClothingOrder[assetTypeId];
		}
		local var92 = Constants_upvr.AssetTypeIdToAccessoryTypeEnum[assetTypeId]
		tbl.AccessoryType = var92
		if Constants_upvr.LayeredAssetTypes[assetTypeId] == nil then
			var92 = false
		else
			var92 = true
		end
		tbl.IsLayered = var92
		table.insert(tbl_4, tbl)
		arg1:tryOnBundleWithoutCostumeId(parentBundleId, clone):SetAccessories(tbl_4, true)
	else
		arg1:tryOnBundleWithoutCostumeId(parentBundleId, clone)[Constants_upvr.AssetTypeIdStringToHumanoidDescriptionProp[tryingOnInfo.assetTypeId]] = tryingOnInfo.assetId
	end
	-- KONSTANTERROR: [32] 19. Error Block 75 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [220] 154. Error Block 51 start (CF ANALYSIS FAILED)
	local module_3 = {
		BackgroundTransparency = 1;
	}
	if not GetFFlagDisplayCollectiblesIcon_upvr() or not Constants_upvr.DetailsThumbnailFrameHeight then
	end
	module_3.Size = UDim2.new(1, 0, 0, 300)
	module_3.LayoutOrder = 2
	module_3.Visible = true
	local module_2 = {}
	local tbl_2 = {
		size = UDim2.new(0.75, 0, 1, 0);
		position = UDim2.new(0.5, 0, 0.5, 0);
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl_2.humanoidDescription = arg1:tryOnBundleWithoutCostumeId(parentBundleId, clone)
	tbl_2.model = arg1.model
	tbl_2.visible = true
	tbl_2.backgroundTransparency = 1
	tbl_2.setScrollingEnabled = arg1.props.setScrollingEnabled
	module_2.AvatarViewport = Roact_upvr.createElement(AvatarViewport_upvr, tbl_2)
	do
		return Roact_upvr.createElement("Frame", module_3, module_2)
	end
	-- KONSTANTERROR: [220] 154. Error Block 51 end (CF ANALYSIS FAILED)
end
function any_extend_result1.willUnmount(arg1) -- Line 214
	arg1.isMounted = false
end
local GetHumanoidDescriptionFromCostumeId_upvr = require(Parent.Thunks.GetHumanoidDescriptionFromCostumeId)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 218
	return {
		assets = arg1.assets;
		assetInfo = arg1.assets[arg1.detailsInformation.assetId];
		bundles = arg1.bundles;
		tryingOnInfo = arg1.tryingOnInfo;
	}
end, function(arg1) -- Line 227
	--[[ Upvalues[1]:
		[1]: GetHumanoidDescriptionFromCostumeId_upvr (readonly)
	]]
	return {
		getHumanoidDescriptionFromCostumeId = function(arg1_4, arg2) -- Line 229, Named "getHumanoidDescriptionFromCostumeId"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: GetHumanoidDescriptionFromCostumeId_upvr (copied, readonly)
			]]
			return arg1(GetHumanoidDescriptionFromCostumeId_upvr(arg1_4, arg2))
		end;
	}
end)(any_extend_result1)