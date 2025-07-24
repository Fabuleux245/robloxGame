-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:50
-- Luau version 6, Types version 3
-- Time taken: 0.012327 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local Roact_upvr = require(CorePackages.Packages.Roact)
local UtilityFunctions_upvr = require(Parent.UtilityFunctions)
local any_extend_result1 = Roact_upvr.PureComponent:extend("DetailsThumbnail")
local function _(arg1) -- Line 24, Named "isPartOfBundleAndOffsale"
	if not arg1 or arg1.parentBundleId == nil then
	end
	return false
end
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixBundleThumbnailOnDetailPage", false)
function any_extend_result1.getUrl(arg1) -- Line 28
	--[[ Upvalues[2]:
		[1]: UtilityFunctions_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
	]]
	local assetInfo = arg1.props.assetInfo
	local bundles = arg1.props.bundles
	local any_getBundleId_result1 = UtilityFunctions_upvr.getBundleId(assetInfo)
	local var10
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var10 = true
		return assetInfo.parentBundleId == nil
	end
	if not assetInfo or INLINED() then
		var10 = false
	end
	if var10 and bundles[any_getBundleId_result1] and bundles[any_getBundleId_result1].costumeId then
		if game_DefineFastFlag_result1_upvr then
			return "rbxthumb://type=BundleThumbnail&id="..tostring(any_getBundleId_result1).."&w=420&h=420"
		end
		return "rbxthumb://type=Outfit&id="..bundles[any_getBundleId_result1].costumeId.."&w=420&h=420"
	end
	return "rbxthumb://type=Asset&id="..arg1.props.detailsInformation.assetId.."&w=420&h=420"
end
local Images_upvr = require(CorePackages.Packages.UIBlox).App.ImageSet.Images
local InspectAndBuyContext_upvr = require(Parent.Components.InspectAndBuyContext)
local GetFFlagDisplayCollectiblesIcon_upvr = require(Parent.Flags.GetFFlagDisplayCollectiblesIcon)
local GetFFlagIBEnableCollectiblesSystemSupport_upvr = require(Parent.Flags.GetFFlagIBEnableCollectiblesSystemSupport)
local Constants_upvr = require(Parent.Constants)
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local LimitedLabel_upvr = require(Parent.Components.LimitedLabel)
local function render(arg1) -- Line 53
	--[[ Upvalues[9]:
		[1]: Images_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: InspectAndBuyContext_upvr (readonly)
		[4]: GetFFlagDisplayCollectiblesIcon_upvr (readonly)
		[5]: UtilityFunctions_upvr (readonly)
		[6]: GetFFlagIBEnableCollectiblesSystemSupport_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: RobloxTranslator_upvr (readonly)
		[9]: LimitedLabel_upvr (readonly)
	]]
	local icons_status_item_limited = Images_upvr["icons/status/item/limited"]
	local var19_upvr
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		var19_upvr = icons_status_item_limited.ImageRectSize / Images_upvr.ImagesResolutionScale
		return var19_upvr
	end
	if not icons_status_item_limited or not INLINED_2() then
		var19_upvr = Vector2.new(0, 0)
	end
	local module_4 = {}
	local view_upvr = arg1.props.view
	local assetInfo_upvr = arg1.props.assetInfo
	local locale_upvr = arg1.props.locale
	local tryingOnInfo_upvr = arg1.props.tryingOnInfo
	local detailsInformation_upvr = arg1.props.detailsInformation
	function module_4.render(arg1_2) -- Line 63
		--[[ Upvalues[14]:
			[1]: view_upvr (readonly)
			[2]: GetFFlagDisplayCollectiblesIcon_upvr (copied, readonly)
			[3]: UtilityFunctions_upvr (copied, readonly)
			[4]: assetInfo_upvr (readonly)
			[5]: GetFFlagIBEnableCollectiblesSystemSupport_upvr (copied, readonly)
			[6]: Constants_upvr (copied, readonly)
			[7]: var19_upvr (readonly)
			[8]: RobloxTranslator_upvr (copied, readonly)
			[9]: locale_upvr (readonly)
			[10]: Roact_upvr (copied, readonly)
			[11]: tryingOnInfo_upvr (readonly)
			[12]: detailsInformation_upvr (readonly)
			[13]: arg1 (readonly)
			[14]: LimitedLabel_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var36 = arg1_2[view_upvr]
		local var37
		if GetFFlagDisplayCollectiblesIcon_upvr() then
		end
		local var38
		local var39
		if GetFFlagIBEnableCollectiblesSystemSupport_upvr() then
			local var40
			if var40 then
				var40 = UtilityFunctions_upvr.hasLimitedQuantity(assetInfo_upvr)
				var38 = var40
				var40 = UtilityFunctions_upvr.isLimited1Point0_LimitedUnique(assetInfo_upvr)
				if not var40 then
					var40 = UtilityFunctions_upvr.isLimited2Point0_Or_LimitedCollectible(assetInfo_upvr)
				end
				local var41 = var40
				if var41 then
				else
				end
				var37 = var19_upvr
				var37 = Constants_upvr.LimitedIconFrameSizeYOffset
				if var41 then
					var39 = '#'.."    "..RobloxTranslator_upvr:FormatByKeyForLocale("InGame.InspectMenu.Label.LimitedItems", locale_upvr)
				else
					var39 = "    "..RobloxTranslator_upvr:FormatByKeyForLocale("InGame.InspectMenu.Label.LimitedItems", locale_upvr)
				end
			end
		end
		local module = {
			Position = var36.DetailsThumbnailFramePosition;
		}
		local function INLINED_4() -- Internal function, doesn't exist in bytecode
			var37 = Constants_upvr.DetailsThumbnailFrameHeight
			return var37
		end
		if not GetFFlagDisplayCollectiblesIcon_upvr() or not INLINED_4() then
			var37 = 300
		end
		module.Size = UDim2.new(1, 0, 0, var37)
		module.BackgroundTransparency = 1
		module.LayoutOrder = 2
		module.Visible = not tryingOnInfo_upvr.tryingOn
		local module_2 = {}
		if detailsInformation_upvr.viewingDetails then
			local tbl_3 = {}
			var37 = var36.DetailsThumbnailPosition
			tbl_3.Position = var37
			var37 = var36.DetailsThumbnailAnchorPoint
			tbl_3.AnchorPoint = var37
			var37 = UDim2.new(1, 0, 1, 0)
			tbl_3.Size = var37
			var37 = 1
			tbl_3.BackgroundTransparency = var37
			var37 = arg1:getUrl()
			tbl_3.Image = var37
			var37 = {}
			var37.AspectRatioConstraint = Roact_upvr.createElement("UIAspectRatioConstraint", {
				AspectRatio = 1;
				AspectType = Enum.AspectType.FitWithinMaxSize;
				DominantAxis = var36.DetailsThumbnailARDominantAxis;
			})
		end
		module_2.Thumbnail = Roact_upvr.createElement("ImageLabel", tbl_3, var37)
		if GetFFlagIBEnableCollectiblesSystemSupport_upvr() then
		else
		end
		if UtilityFunctions_upvr.isCollectibles(assetInfo_upvr) then
			local tbl_5 = {}
			if GetFFlagIBEnableCollectiblesSystemSupport_upvr() then
				var37 = UDim2.new(0, var19_upvr.X + Constants_upvr.LimitedIconFrameSizeXOffset, 0, var37.Y + var37)
			else
				var37 = UDim2.new(0, var19_upvr.X + 18, 0, var19_upvr.Y + 6)
			end
			tbl_5.frameSize = var37
			var37 = UDim2.new(0, 0, 0, Constants_upvr.DetailsThumbnailFrameHeight - var19_upvr.Y - 8)
			tbl_5.framePosition = var37
			var37 = UDim2.new(0, var19_upvr.X, 0, var19_upvr.Y)
			tbl_5.imageSize = var37
			var37 = UDim2.new(0, 4, 0, 3)
			tbl_5.imagePosition = var37
			var37 = UDim2.new(0, 4 + var19_upvr.X, 0, var19_upvr.Y)
			tbl_5.textSize = var37
			var37 = UDim2.new(0, 5 + var19_upvr.X, 0, 3)
			tbl_5.textPosition = var37
			if GetFFlagIBEnableCollectiblesSystemSupport_upvr() then
				var37 = var39
			else
				var37 = '#'.."    "..RobloxTranslator_upvr:FormatByKeyForLocale("InGame.InspectMenu.Label.LimitedItems", locale_upvr)
			end
			tbl_5.text = var37
		end
		module_2.LimitedLabel = Roact_upvr.createElement(LimitedLabel_upvr, tbl_5)
		return Roact_upvr.createElement("Frame", module, module_2)
	end
	return Roact_upvr.createElement(InspectAndBuyContext_upvr.Consumer, module_4)
end
any_extend_result1.render = render
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 138
	return {
		view = arg1.view;
		tryingOnInfo = arg1.tryingOnInfo;
		detailsInformation = arg1.detailsInformation;
		assetInfo = arg1.assets[arg1.detailsInformation.assetId];
		locale = arg1.locale;
		bundles = arg1.bundles;
	}
end)(any_extend_result1)