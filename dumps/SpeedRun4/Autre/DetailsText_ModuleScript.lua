-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:49
-- Luau version 6, Types version 3
-- Time taken: 0.006129 seconds

local CorePackages = game:GetService("CorePackages")
local Parent = script.Parent.Parent
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local UtilityFunctions_upvr = require(Parent.UtilityFunctions)
local any_extend_result1 = Roact_upvr.PureComponent:extend("DetailsText")
local getSelectionImageObjectRegular_upvr = require(Parent.getSelectionImageObjectRegular)
function any_extend_result1.init(arg1) -- Line 29
	--[[ Upvalues[1]:
		[1]: getSelectionImageObjectRegular_upvr (readonly)
	]]
	arg1.name = ""
	arg1.creator = ""
	arg1.selectedImage = getSelectionImageObjectRegular_upvr()
end
function any_extend_result1.setText(arg1) -- Line 39
	--[[ Upvalues[1]:
		[1]: UtilityFunctions_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 19 start (CF ANALYSIS FAILED)
	local assetInfo = arg1.props.assetInfo
	if not assetInfo then
		assetInfo = {}
	end
	if assetInfo.parentBundleId == nil then
	else
	end
	-- KONSTANTERROR: [0] 1. Error Block 19 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 12. Error Block 8 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [18] 12. Error Block 8 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 13. Error Block 9 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [20] 13. Error Block 9 end (CF ANALYSIS FAILED)
end
local IconSize_upvr = UIBlox.App.Constant.IconSize
local Constants_upvr = require(Parent.Constants)
local InspectAndBuyContext_upvr = require(Parent.Components.InspectAndBuyContext)
local Notification_upvr = require(Parent.Components.Notification)
local Cryo_upvr = require(CorePackages.Packages.Cryo)
local icons_status_premium_upvr = UIBlox.App.ImageSet.Images["icons/status/premium"]
local AppFonts_upvr = require(CorePackages.Workspace.Packages.Style).AppFonts
local Colors_upvr = require(Parent.Colors)
local Favorites_upvr = require(Parent.Components.Favorites)
local function render(arg1) -- Line 58
	--[[ Upvalues[11]:
		[1]: IconSize_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: UtilityFunctions_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: InspectAndBuyContext_upvr (readonly)
		[6]: Notification_upvr (readonly)
		[7]: Cryo_upvr (readonly)
		[8]: icons_status_premium_upvr (readonly)
		[9]: AppFonts_upvr (readonly)
		[10]: Colors_upvr (readonly)
		[11]: Favorites_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	arg1:setText()
	local assetInfo_2 = arg1.props.assetInfo
	if not assetInfo_2 then
		assetInfo_2 = {}
	end
	if assetInfo_2.parentBundleId == nil then
		local _ = false
		-- KONSTANTWARNING: Skipped task `defvar` above
	else
	end
	if true then
		if 1 >= #arg1.props.assetBundles[assetInfo_2.assetId] then
		else
		end
	end
	local var20_upvr
	if assetInfo_2.premiumPricing == nil then
		var20_upvr = false
	else
		var20_upvr = true
	end
	if not var20_upvr or not (IconSize_upvr.Regular + 5) then
	end
	if Constants_upvr.LayeredAssetTypes[assetInfo_2.assetTypeId] ~= nil and arg1.props.localPlayerModel then
		if arg1.props.localPlayerModel.Humanoid.RigType ~= Enum.HumanoidRigType.R6 then
		else
		end
	end
	if true then
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if true then
		elseif UtilityFunctions_upvr.isLimited1Point0(assetInfo_2) then
		elseif true then
		end
	end
	local module_2 = {}
	local view_upvr = arg1.props.view
	local LayeredClothingOnR6Key_upvw = Constants_upvr.NotificationKeys.LayeredClothingOnR6Key
	local var24_upvr = 0
	local showFavoritesCount_upvr = arg1.props.showFavoritesCount
	function module_2.render(arg1_2) -- Line 87
		--[[ Upvalues[14]:
			[1]: view_upvr (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: LayeredClothingOnR6Key_upvw (read and write)
			[4]: Notification_upvr (copied, readonly)
			[5]: var20_upvr (readonly)
			[6]: Cryo_upvr (copied, readonly)
			[7]: icons_status_premium_upvr (copied, readonly)
			[8]: IconSize_upvr (copied, readonly)
			[9]: var24_upvr (readonly)
			[10]: arg1 (readonly)
			[11]: AppFonts_upvr (copied, readonly)
			[12]: Colors_upvr (copied, readonly)
			[13]: showFavoritesCount_upvr (readonly)
			[14]: Favorites_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local module = {
			Layout = Roact_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Top;
				FillDirection = Enum.FillDirection.Vertical;
			});
		}
		local var29 = LayeredClothingOnR6Key_upvw
		if var29 then
			var29 = Roact_upvr.createElement
			var29 = var29(Notification_upvr, {
				noticeKey = LayeredClothingOnR6Key_upvw;
			})
		end
		module.Notification = var29
		local tbl_2 = {}
		local function INLINED() -- Internal function, doesn't exist in bytecode
			tbl.ImageColor3 = Color3.new(1, 1, 1)
			tbl.Size = UDim2.new(0, IconSize_upvr.Regular, 0, IconSize_upvr.Regular)
			tbl.BackgroundTransparency = 1
			tbl.Position = UDim2.new(0, 0, 0.5, 0)
			tbl.AnchorPoint = Vector2.new(0, 0.5)
			local tbl = {}
			return Roact_upvr.createElement("ImageLabel", Cryo_upvr.Dictionary.join(icons_status_premium_upvr, tbl))
		end
		if not var20_upvr or not INLINED() then
		end
		tbl_2.PremiumIcon = nil
		tbl_2.PlayerName = Roact_upvr.createElement("TextLabel", {
			BackgroundTransparency = 1;
			Position = UDim2.new(0, var24_upvr, 0, 0);
			Size = UDim2.new(1, var24_upvr, 0, 50);
			LayoutOrder = 1;
			Text = arg1.name or "";
			TextXAlignment = Enum.TextXAlignment.Left;
			TextYAlignment = Enum.TextYAlignment.Center;
			TextScaled = true;
			TextSize = 20;
			Font = AppFonts_upvr.default:getBold();
			TextColor3 = Colors_upvr.White;
		}, {
			UITextSizeConstraint = Roact_upvr.createElement("UITextSizeConstraint", {
				MaxTextSize = 32;
			});
		})
		local any_createElement_result1 = Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			Size = UDim2.new(1, -10, 0, 50);
			LayoutOrder = 1;
		}, tbl_2)
		if not any_createElement_result1 then
			any_createElement_result1 = Roact_upvr.createElement
			any_createElement_result1 = any_createElement_result1("TextLabel", {
				BackgroundTransparency = 1;
				Size = UDim2.new(1, -10, 0, 50);
				LayoutOrder = 1;
				Text = arg1.name or "";
				TextXAlignment = Enum.TextXAlignment.Left;
				TextYAlignment = Enum.TextYAlignment.Center;
				TextScaled = true;
				TextSize = 20;
				Font = AppFonts_upvr.default:getBold();
				TextColor3 = Colors_upvr.White;
			}, {
				UITextSizeConstraint = Roact_upvr.createElement("UITextSizeConstraint", {
					MaxTextSize = 32;
				});
			})
		end
		module.AssetName = any_createElement_result1
		any_createElement_result1 = showFavoritesCount_upvr
		local var41 = any_createElement_result1
		if var41 then
			var41 = Roact_upvr.createElement(Favorites_upvr)
		end
		module.FavoriteContainer = var41
		return Roact_upvr.createElement("Frame", {
			Position = arg1_2[view_upvr].DetailsFramePosition;
			Size = UDim2.new(1, 0, 0, 131);
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		}, module)
	end
	return Roact_upvr.createElement(InspectAndBuyContext_upvr.Consumer, module_2)
end
any_extend_result1.render = render
return require(CorePackages.Packages.RoactRodux).connect(function(arg1, arg2) -- Line 158
	return {
		view = arg1.view;
		locale = arg1.locale;
		assetInfo = arg1.assets[arg1.detailsInformation.assetId];
		bundleInfo = arg1.bundles;
		assetBundles = arg1.assetBundles;
		showFavoritesCount = not arg1.isSubjectToChinaPolicies;
	}
end)(any_extend_result1)