-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:43
-- Luau version 6, Types version 3
-- Time taken: 0.006708 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local Roact_upvr = require(CorePackages.Packages.Roact)
local any_extend_result1 = Roact_upvr.Component:extend("AssetCard")
local getSelectionImageObjectRegular_upvr = require(Parent.getSelectionImageObjectRegular)
function any_extend_result1.init(arg1) -- Line 24
	--[[ Upvalues[1]:
		[1]: getSelectionImageObjectRegular_upvr (readonly)
	]]
	arg1.selectedImage = getSelectionImageObjectRegular_upvr()
end
local Images_upvr = require(CorePackages.Packages.UIBlox).App.ImageSet.Images
local InspectAndBuyContext_upvr = require(Parent.Components.InspectAndBuyContext)
local GetFFlagDisplayCollectiblesIcon_upvr = require(Parent.Flags.GetFFlagDisplayCollectiblesIcon)
local UtilityFunctions_upvr = require(Parent.UtilityFunctions)
local GetFFlagIBEnableCollectiblesSystemSupport_upvr = require(Parent.Flags.GetFFlagIBEnableCollectiblesSystemSupport)
local Constants_upvr = require(Parent.Constants)
local Colors_upvr = require(Parent.Colors)
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
local LimitedLabel_upvr = require(Parent.Components.LimitedLabel)
local function render(arg1) -- Line 28
	--[[ Upvalues[10]:
		[1]: Images_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: InspectAndBuyContext_upvr (readonly)
		[4]: GetFFlagDisplayCollectiblesIcon_upvr (readonly)
		[5]: UtilityFunctions_upvr (readonly)
		[6]: GetFFlagIBEnableCollectiblesSystemSupport_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: Colors_upvr (readonly)
		[9]: AppFonts_upvr (readonly)
		[10]: LimitedLabel_upvr (readonly)
	]]
	local icons_status_item_limited = Images_upvr["icons/status/item/limited"]
	local var16_upvr
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var16_upvr = icons_status_item_limited.ImageRectSize / Images_upvr.ImagesResolutionScale
		return var16_upvr
	end
	if not icons_status_item_limited or not INLINED() then
		var16_upvr = Vector2.new(0, 0)
	end
	local module_2 = {}
	local view_2_upvr = arg1.props.view
	local assetInfo_upvr = arg1.props.assetInfo
	local openDetails_upvr = arg1.props.openDetails
	local assetCardSizeX_upvr = arg1.props.assetCardSizeX
	local equipped_upvr = arg1.props.equipped
	function module_2.render(arg1_2) -- Line 38
		--[[ Upvalues[15]:
			[1]: view_2_upvr (readonly)
			[2]: GetFFlagDisplayCollectiblesIcon_upvr (copied, readonly)
			[3]: UtilityFunctions_upvr (copied, readonly)
			[4]: assetInfo_upvr (readonly)
			[5]: GetFFlagIBEnableCollectiblesSystemSupport_upvr (copied, readonly)
			[6]: Constants_upvr (copied, readonly)
			[7]: var16_upvr (readonly)
			[8]: Roact_upvr (copied, readonly)
			[9]: Colors_upvr (copied, readonly)
			[10]: arg1 (readonly)
			[11]: openDetails_upvr (readonly)
			[12]: assetCardSizeX_upvr (readonly)
			[13]: AppFonts_upvr (copied, readonly)
			[14]: equipped_upvr (readonly)
			[15]: LimitedLabel_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var23
		if var23 then
			var23 = UtilityFunctions_upvr.isCollectibles(assetInfo_upvr)
		end
		local var24
		if var24 then
			var24 = UtilityFunctions_upvr.hasLimitedQuantity(assetInfo_upvr)
			var24 = UtilityFunctions_upvr.isLimited1Point0_LimitedUnique(assetInfo_upvr)
			if not var24 then
				var24 = UtilityFunctions_upvr.isLimited2Point0_Or_LimitedCollectible(assetInfo_upvr)
			end
			local var25 = var24
			if var25 then
			else
			end
		end
		local module_3 = {
			AssetThumbnail = Roact_upvr.createElement("ImageButton", {
				Size = UDim2.new(1, 0, 0, assetCardSizeX_upvr);
				BackgroundTransparency = 0;
				BorderSizePixel = 0;
				BackgroundColor3 = Colors_upvr.Graphite;
				Selectable = false;
				AutoButtonColor = false;
				Image = "rbxthumb://type=Asset&id="..assetInfo_upvr.assetId.."&w=150&h=150";
				[Roact_upvr.Event.Activated] = function() -- Line 78
					--[[ Upvalues[2]:
						[1]: openDetails_upvr (copied, readonly)
						[2]: assetInfo_upvr (copied, readonly)
					]]
					openDetails_upvr(assetInfo_upvr.assetId)
				end;
			});
			AssetNameBackground = Roact_upvr.createElement("Frame", {
				Size = UDim2.new(1, 0, 1, -assetCardSizeX_upvr);
				Position = UDim2.new(0, 0, 0, assetCardSizeX_upvr);
				BorderSizePixel = 0;
				BackgroundColor3 = Color3.fromRGB(44, 45, 47);
			}, {
				AssetName = Roact_upvr.createElement("TextLabel", {
					BackgroundTransparency = 1;
					Size = UDim2.new(1, -10, 1, -10);
					TextTruncate = Enum.TextTruncate.AtEnd;
					Position = UDim2.new(0, 5, 0, 5);
					TextWrapped = true;
					Text = assetInfo_upvr.name or "";
					TextXAlignment = Enum.TextXAlignment.Left;
					TextYAlignment = Enum.TextYAlignment.Center;
					TextSize = 12;
					TextScaled = true;
					Font = AppFonts_upvr.default:getDefault();
					TextColor3 = Color3.new(1, 1, 1);
				}, {
					UITextSizeConstraint = Roact_upvr.createElement("UITextSizeConstraint", {
						MaxTextSize = arg1_2[view_2_upvr].AssetTextMaxSize;
					});
				});
			});
			EquippedFrame = Roact_upvr.createElement("ImageLabel", {
				Size = UDim2.new(1, 0, 1, 0);
				BackgroundTransparency = 1;
				ZIndex = 2;
				Visible = equipped_upvr;
				Image = "rbxasset://textures/ui/InspectMenu/gr-item-selector.png";
				ImageColor3 = Colors_upvr.Green;
				ScaleType = Enum.ScaleType.Slice;
				SliceCenter = Rect.new(2.5, 2.5, 2.5, 2.5);
			});
		}
		local any_createElement_result1 = Roact_upvr.createElement("ImageLabel", {
			Position = UDim2.new(1, -25, 0, 0);
			Size = UDim2.new(0, 25, 0, 25);
			BackgroundTransparency = 1;
			ZIndex = 2;
			Visible = equipped_upvr;
			Image = "rbxasset://textures/ui/InspectMenu/gr-item-selector-triangle.png";
			ImageColor3 = Colors_upvr.Green;
		})
		module_3.Corner = any_createElement_result1
		local var39
		if GetFFlagIBEnableCollectiblesSystemSupport_upvr() then
			any_createElement_result1 = var24
		else
			any_createElement_result1 = var23
		end
		if any_createElement_result1 then
			local tbl = {}
			if GetFFlagIBEnableCollectiblesSystemSupport_upvr() then
				var39 = UDim2.new(0, var16_upvr.X + Constants_upvr.LimitedIconFrameSizeXOffset, 0, var16_upvr.Y + Constants_upvr.LimitedIconFrameSizeYOffset)
			else
				var39 = UDim2.new(0, var16_upvr.X + 18, 0, var16_upvr.Y + 4)
			end
			tbl.frameSize = var39
			var39 = UDim2.new(0, 16, 0, assetCardSizeX_upvr - var16_upvr.Y - 20)
			tbl.framePosition = var39
			var39 = UDim2.new(0, var16_upvr.X, 0, var16_upvr.Y)
			tbl.imageSize = var39
			var39 = UDim2.new(0, 5, 0, 2)
			tbl.imagePosition = var39
			var39 = UDim2.new(0, var16_upvr.X, 0, var16_upvr.Y)
			tbl.textSize = var39
			var39 = UDim2.new(0, 5 + var16_upvr.X, 0, 2)
			tbl.textPosition = var39
			if GetFFlagIBEnableCollectiblesSystemSupport_upvr() and not var25 then
				var39 = nil
			else
				var39 = '#'
			end
			tbl.text = var39
		end
		module_3.LimitedLabel = Roact_upvr.createElement(LimitedLabel_upvr, tbl)
		return Roact_upvr.createElement("ImageButton", {
			BackgroundTransparency = 0;
			BorderSizePixel = 0;
			BackgroundColor3 = Colors_upvr.Gray2;
			Selectable = true;
			SelectionImageObject = arg1.selectedImage;
			[Roact_upvr.Event.Activated] = function() -- Line 66
				--[[ Upvalues[2]:
					[1]: openDetails_upvr (copied, readonly)
					[2]: assetInfo_upvr (copied, readonly)
				]]
				openDetails_upvr(assetInfo_upvr.assetId)
			end;
		}, module_3)
	end
	return Roact_upvr.createElement(InspectAndBuyContext_upvr.Consumer, module_2)
end
any_extend_result1.render = render
local SetDetailsInformation_upvr = require(Parent.Actions.SetDetailsInformation)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 146
	local module = {}
	local view = arg1.view
	module.view = view
	if arg1.equippedAssets[arg2.assetInfo.assetId] ~= true then
		view = false
	else
		view = true
	end
	module.equipped = view
	module.locale = arg1.locale
	return module
end, function(arg1) -- Line 154
	--[[ Upvalues[1]:
		[1]: SetDetailsInformation_upvr (readonly)
	]]
	return {
		openDetails = function(arg1_3) -- Line 156, Named "openDetails"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetDetailsInformation_upvr (copied, readonly)
			]]
			arg1(SetDetailsInformation_upvr(true, arg1_3))
		end;
	}
end)(any_extend_result1)