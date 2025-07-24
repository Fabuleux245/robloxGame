-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:11:03
-- Luau version 6, Types version 3
-- Time taken: 0.025306 seconds

local Parent = script.Parent
local Parent_2 = Parent.Parent
local Parent_3 = Parent_2.Parent
local Roact_upvr = require(Parent_3.Roact)
local FitFrameVertical_upvr = require(Parent_3.RoactFitComponents).FitFrameVertical
local UIBlox = require(Parent_3.UIBlox)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local withStyle_upvr = UIBlox.Core.Style.withStyle
local withLocalization_upvr = require(Parent_3.Localization).withLocalization
local ProductDetails_upvr = require(Parent.ProductDetails)
local Constants_upvr = require(Parent_2.Generic.Constants)
local getEnableCondenseRobuxUpsell_upvr = require(Parent_2.Flags.getEnableCondenseRobuxUpsell)
local any_extend_result1 = Roact_upvr.Component:extend(script.Name)
any_extend_result1.defaultProps = {
	anchorPoint = Vector2.new(0.5, 0.5);
	position = UDim2.new(0.5, 0, 0.5, 0);
	isLoading = false;
	isDisabled = false;
	isDelayedInput = false;
	isQuest = false;
	enableInputDelayed = false;
	inputDelaySec = 3;
	isVng = false;
}
function any_extend_result1.init(arg1) -- Line 104
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: getEnableCondenseRobuxUpsell_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	arg1.contentRef = Roact_upvr.createRef()
	arg1.state = {
		contentSize = Vector2.new(0, 0);
		footerSize = Vector2.new(0, 0);
		isCondensed = false;
	}
	function arg1.validateCondensedCondition(arg1_2) -- Line 112
		--[[ Upvalues[3]:
			[1]: getEnableCondenseRobuxUpsell_upvr (copied, readonly)
			[2]: Constants_upvr (copied, readonly)
			[3]: arg1 (readonly)
		]]
		local var18
		if not getEnableCondenseRobuxUpsell_upvr() then
		else
			var18 = arg1_2.AbsoluteSize
			var18 = Constants_upvr.MODAL_HEIGHT_WITHOUT_CONTENT
			var18 = Constants_upvr.MODAL_NORMAL_SECTION_PADDING
			var18 = Constants_upvr
			local var19 = var18.Y + var18 + var18 * 2 + var18.MODAL_NORMAL_BUTTON_HEIGHT * 2
			if arg1.state.isCondensed then
				local tbl_8 = {}
				if arg1.props.screenSize.Y >= ((var19 + (Constants_upvr.MODAL_NORMAL_CONTENT_PADDING - Constants_upvr.MODAL_CONDENSED_CONTENT_PADDING) * 6) + (Constants_upvr.MODAL_NORMAL_BUTTON_MARGIN - Constants_upvr.MODAL_CONDENSED_BUTTON_MARGIN)) + (Constants_upvr.NORMAL_ICON_SIZE - Constants_upvr.CONDENSED_ICON_SIZE) then
					var18 = false
				else
					var18 = true
				end
				tbl_8.isCondensed = var18
				arg1:setState(tbl_8)
				return
			end
			local tbl_15 = {}
			if arg1.props.screenSize.Y >= var19 + Constants_upvr.MODAL_NORMAL_BUTTON_MARGIN then
				var18 = false
			else
				var18 = true
			end
			tbl_15.isCondensed = var18
			arg1:setState(tbl_15)
		end
	end
	function arg1.changeContentSize(arg1_3) -- Line 140
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.validateCondensedCondition(arg1_3)
		if arg1.state.contentSize ~= arg1_3.AbsoluteSize then
			arg1:setState({
				contentSize = arg1_3.AbsoluteSize;
			})
		end
	end
end
local SharedFlags_upvr = require(Parent_3.SharedFlags)
local LocalizationProvider_upvr = require(Parent_3.Localization).LocalizationProvider
local Localization_upvr = require(Parent_3.AppLocales).Localization
local LocalizationService_upvr = game:GetService("LocalizationService")
local FFlagMobilePopularItemBadgingExperimentEnabled_upvr = require(Parent_2.Flags.FFlagMobilePopularItemBadgingExperimentEnabled)
local MultiTextLocalizer_upvr = require(Parent_2.Locale.MultiTextLocalizer)
local function render(arg1) -- Line 150
	--[[ Upvalues[7]:
		[1]: SharedFlags_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: LocalizationProvider_upvr (readonly)
		[4]: Localization_upvr (readonly)
		[5]: LocalizationService_upvr (readonly)
		[6]: FFlagMobilePopularItemBadgingExperimentEnabled_upvr (readonly)
		[7]: MultiTextLocalizer_upvr (readonly)
	]]
	local var30
	if arg1.props.isVng then
		var30 = "IAPExperience.RobuxUpsell.Text.VNGDisclosureTermsURL"
	else
		var30 = "IAPExperience.RobuxUpsell.Text.DisclosureTermsURL"
	end
	if SharedFlags_upvr.FFlagLowCogsBannerExperiment then
		return Roact_upvr.createElement(LocalizationProvider_upvr, {
			localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
		}, {
			Alert = arg1:renderNewAlert();
		})
	end
	if FFlagMobilePopularItemBadgingExperimentEnabled_upvr then
		return Roact_upvr.createElement(LocalizationProvider_upvr, {
			localization = Localization_upvr.new(LocalizationService_upvr.RobloxLocaleId);
		}, {
			Alert = arg1:renderAlertNewProductDetails();
		})
	end
	local module_7 = {
		keys = {
			InsufficientRobuxTitle = {
				key = "IAPExperience.RobuxUpsell.Title.InsufficientRobux";
			};
			AdditionalRobux = {
				key = "IAPExperience.RobuxUpsell.Text.AdditionalRobux";
			};
			WouldYouBuy = {
				key = "IAPExperience.RobuxUpsell.Text.WouldYouBuy";
			};
			DisclosurePayment = {
				key = "IAPExperience.RobuxUpsell.Text.DisclosurePayment";
			};
			DisclosureTermsURL = {
				key = var30;
			};
			TermsOfUse = {
				key = "IAPExperience.RobuxUpsell.Text.TermsOfUse";
			};
			BuyRobuxButton = {
				key = "IAPExperience.RobuxUpsell.Action.BuyRobuxAndItem";
			};
			ButtonCancel = {
				key = "IAPExperience.RobuxUpsell.Action.Cancel";
			};
			LoadingText = {
				key = "IAPExperience.RobuxUpsell.Text.Loading";
			};
			PurchaseNotAvialableForQuest = {
				key = "IAPExperience.RobuxUpsell.Text.PurchaseNotAvailableOnHeadSet";
			};
		};
	}
	function module_7.render(arg1_4) -- Line 208
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1:renderAlert(arg1_4)
	end
	return Roact_upvr.createElement(MultiTextLocalizer_upvr, module_7)
end
any_extend_result1.render = render
function any_extend_result1.renderAlert(arg1, arg2) -- Line 214
	--[[ Upvalues[8]:
		[1]: withStyle_upvr (readonly)
		[2]: getEnableCondenseRobuxUpsell_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: InteractiveAlert_upvr (readonly)
		[5]: FitFrameVertical_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: ProductDetails_upvr (readonly)
		[8]: ButtonType_upvr (readonly)
	]]
	local state_upvr = arg1.state
	local props_upvr = arg1.props
	return withStyle_upvr(function(arg1_5) -- Line 218
		--[[ Upvalues[11]:
			[1]: getEnableCondenseRobuxUpsell_upvr (copied, readonly)
			[2]: state_upvr (readonly)
			[3]: props_upvr (readonly)
			[4]: arg2 (readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: InteractiveAlert_upvr (copied, readonly)
			[7]: FitFrameVertical_upvr (copied, readonly)
			[8]: Constants_upvr (copied, readonly)
			[9]: arg1 (readonly)
			[10]: ProductDetails_upvr (copied, readonly)
			[11]: ButtonType_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
		local Theme_3_upvr = arg1_5.Theme
		local Font_2_upvr = arg1_5.Font
		local var52_upvw = Font_2_upvr.BaseSize * Font_2_upvr.Body.RelativeSize
		local var53
		if var53 then
			local function INLINED() -- Internal function, doesn't exist in bytecode
				var53 = var52_upvw * 0.9
				return var53
			end
			if not state_upvr.isCondensed or not INLINED() then
				var53 = var52_upvw
			end
			var52_upvw = var53
		end
		if props_upvr.termsOfUseActivated then
		end
		local module = {
			screenSize = props_upvr.screenSize;
			position = props_upvr.position;
			anchorPoint = props_upvr.anchorPoint;
			title = arg2.InsufficientRobuxTitle;
		}
		local any_gsub_result1_upvr_3 = arg2.AdditionalRobux:gsub("{robux}", utf8.char(57346)..tostring(props_upvr.itemRobuxCost - props_upvr.balanceAmount))
		local any_gsub_result1_upvr = arg2.WouldYouBuy:gsub("{robux}", string.format("<font color=\"rgb(%s)\">%s%s</font>", tostring(Color3.new(math.round(Theme_3_upvr.TextEmphasis.Color.R * 255), math.round(Theme_3_upvr.TextEmphasis.Color.G * 255), math.round(Theme_3_upvr.TextEmphasis.Color.B * 255))), utf8.char(57346), tostring(props_upvr.robuxPurchaseAmount)))
		local string_split_result1_upvr_2 = string.split(arg2.DisclosureTermsURL, "{termsofuse}")
		local var58_upvw = "<u>"..arg2.TermsOfUse.."</u>"
		local function middleContent() -- Line 254
			--[[ Upvalues[16]:
				[1]: Roact_upvr (copied, readonly)
				[2]: FitFrameVertical_upvr (copied, readonly)
				[3]: getEnableCondenseRobuxUpsell_upvr (copied, readonly)
				[4]: state_upvr (copied, readonly)
				[5]: Constants_upvr (copied, readonly)
				[6]: arg1 (copied, readonly)
				[7]: ProductDetails_upvr (copied, readonly)
				[8]: props_upvr (copied, readonly)
				[9]: Theme_3_upvr (readonly)
				[10]: Font_2_upvr (readonly)
				[11]: any_gsub_result1_upvr_3 (readonly)
				[12]: any_gsub_result1_upvr (readonly)
				[13]: var52_upvw (read and write)
				[14]: arg2 (copied, readonly)
				[15]: string_split_result1_upvr_2 (readonly)
				[16]: var58_upvw (read and write)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 65 start (CF ANALYSIS FAILED)
			local module_3 = {
				BackgroundTransparency = 1;
				width = UDim.new(1, 0);
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			}
			local Center = Enum.VerticalAlignment.Center
			module_3.VerticalAlignment = Center
			local var61
			if getEnableCondenseRobuxUpsell_upvr() then
				Center = UDim.new
				local function INLINED_2() -- Internal function, doesn't exist in bytecode
					var61 = Constants_upvr.MODAL_CONDENSED_CONTENT_PADDING
					return var61
				end
				if not state_upvr.isCondensed or not INLINED_2() then
					var61 = Constants_upvr.MODAL_NORMAL_CONTENT_PADDING
				end
				Center = Center(0, var61)
			else
				Center = UDim.new
				var61 = Constants_upvr.MODAL_NORMAL_CONTENT_PADDING
				Center = Center(0, var61)
			end
			module_3.contentPadding = Center
			module_3[Roact_upvr.Ref] = arg1.contentRef
			module_3[Roact_upvr.Change.AbsoluteSize] = arg1.changeContentSize
			local module_2 = {}
			local tbl_11 = {
				layoutOrder = 1;
				model = props_upvr.model;
				itemIcon = props_upvr.itemIcon;
				itemName = props_upvr.itemName;
				itemRobuxCost = props_upvr.itemRobuxCost;
			}
			if getEnableCondenseRobuxUpsell_upvr() then
				if not state_upvr.isCondensed or not Constants_upvr.CONDENSED_ICON_SIZE then
					-- KONSTANTWARNING: GOTO [115] #81
				end
			else
			end
			tbl_11.itemIconWidth = nil
			if getEnableCondenseRobuxUpsell_upvr() then
				if not state_upvr.isCondensed or not Constants_upvr.CONDENSED_ICON_SIZE then
					-- KONSTANTWARNING: GOTO [131] #94
				end
			else
			end
			tbl_11.itemIconHeight = nil
			module_2.ProductDetails = Roact_upvr.createElement(ProductDetails_upvr, tbl_11)
			module_2.Underline = Roact_upvr.createElement("Frame", {
				LayoutOrder = 2;
				BorderSizePixel = 0;
				BackgroundColor3 = Theme_3_upvr.Divider.Color;
				BackgroundTransparency = Theme_3_upvr.Divider.Transparency;
				Size = UDim2.new(1, 0, 0, 1);
			})
			local tbl = {
				LayoutOrder = 3;
				BackgroundTransparency = 1;
				Size = UDim2.new(0, arg1.state.contentSize.X, 0, 0);
				RichText = true;
				AutomaticSize = Enum.AutomaticSize.Y;
				TextWrapped = true;
				Font = Font_2_upvr.Body.Font;
			}
			if arg1.props.isQuest then
				-- KONSTANTWARNING: GOTO [228] #160
			end
			tbl.Text = any_gsub_result1_upvr_3..' '..any_gsub_result1_upvr
			tbl.TextSize = var52_upvw
			tbl.TextColor3 = Theme_3_upvr.TextDefault.Color
			tbl.TextTransparency = Theme_3_upvr.TextDefault.Transparency
			module_2.AdditionalBuyText = Roact_upvr.createElement("TextLabel", tbl)
			module_2.Underline2 = Roact_upvr.createElement("Frame", {
				LayoutOrder = 4;
				BorderSizePixel = 0;
				BackgroundColor3 = Theme_3_upvr.Divider.Color;
				BackgroundTransparency = Theme_3_upvr.Divider.Transparency;
				Size = UDim2.new(1, 0, 0, 1);
			})
			local tbl_26 = {}
			local tbl_6 = {
				LayoutOrder = 1;
				BackgroundTransparency = 1;
				AutomaticSize = Enum.AutomaticSize.XY;
			}
			local Font_3 = Font_2_upvr.Body.Font
			tbl_6.Font = Font_3
			if arg1.props.isQuest then
				Font_3 = arg2.PurchaseNotAvailableOnHeadSet
			else
				Font_3 = arg2.DisclosurePayment
			end
			tbl_6.Text = Font_3
			tbl_6.TextSize = var52_upvw
			tbl_6.TextColor3 = Theme_3_upvr.TextDefault.Color
			tbl_6.TextTransparency = Theme_3_upvr.TextDefault.Transparency
			tbl_26.DisclosurePayment = Roact_upvr.createElement("TextLabel", tbl_6)
			if arg1.props.isQuest then
				-- KONSTANTWARNING: GOTO [588] #391
			end
			local tbl_18 = {
				BeforeDisclosureText = Roact_upvr.createElement("TextLabel", {
					LayoutOrder = 0;
					BackgroundTransparency = 1;
					AutomaticSize = Enum.AutomaticSize.XY;
					Font = Font_2_upvr.Body.Font;
					Text = string_split_result1_upvr_2[1];
					TextSize = var52_upvw;
					TextColor3 = Theme_3_upvr.TextDefault.Color;
					TextTransparency = Theme_3_upvr.TextDefault.Transparency;
				});
			}
			local tbl_22 = {
				LayoutOrder = 1;
				BackgroundTransparency = 1;
				RichText = true;
				AutomaticSize = Enum.AutomaticSize.XY;
				Font = Font_2_upvr.Body.Font;
				Text = var58_upvw;
				TextSize = var52_upvw;
				TextColor3 = Theme_3_upvr.TextDefault.Color;
				TextTransparency = Theme_3_upvr.TextDefault.Transparency;
			}
			if props_upvr.termsOfUseActivated == nil then
			else
			end
			tbl_22.Selectable = true
			tbl_22[Roact_upvr.Event.Activated] = props_upvr.termsOfUseActivated
			tbl_18.TermsOfUse = Roact_upvr.createElement("TextButton", tbl_22)
			tbl_18.AfterDisclosureText = Roact_upvr.createElement("TextLabel", {
				LayoutOrder = 2;
				BackgroundTransparency = 1;
				AutomaticSize = Enum.AutomaticSize.XY;
				Font = Font_2_upvr.Body.Font;
				Text = string_split_result1_upvr_2[2];
				TextSize = var52_upvw;
				TextColor3 = Theme_3_upvr.TextDefault.Color;
				TextTransparency = Theme_3_upvr.TextDefault.Transparency;
			})
			-- KONSTANTERROR: [0] 1. Error Block 65 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [588] 391. Error Block 39 start (CF ANALYSIS FAILED)
			tbl_26.DisclosureTermsFrame = Roact_upvr.createElement(FitFrameVertical_upvr, {
				LayoutOrder = 2;
				BackgroundTransparency = 1;
				width = UDim.new(1, 0);
				FillDirection = Enum.FillDirection.Horizontal;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				contentPadding = UDim.new(0, 1);
			}, tbl_18)
			module_2.DisclosureFrame = Roact_upvr.createElement(FitFrameVertical_upvr, {
				LayoutOrder = 5;
				BackgroundTransparency = 1;
				width = UDim.new(1, 0);
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				contentPadding = UDim.new(0, 1);
			}, tbl_26)
			do
				return Roact_upvr.createElement(FitFrameVertical_upvr, module_3, module_2)
			end
			-- KONSTANTERROR: [588] 391. Error Block 39 end (CF ANALYSIS FAILED)
		end
		module.middleContent = middleContent
		local tbl_25 = {}
		local Vertical_2 = Enum.FillDirection.Vertical
		tbl_25.forcedFillDirection = Vertical_2
		if getEnableCondenseRobuxUpsell_upvr() then
			local function INLINED_3() -- Internal function, doesn't exist in bytecode
				Vertical_2 = Constants_upvr.MODAL_CONDENSED_BUTTON_MARGIN
				return Vertical_2
			end
			if not state_upvr.isCondensed or not INLINED_3() then
				Vertical_2 = Constants_upvr.MODAL_NORMAL_BUTTON_MARGIN
				-- KONSTANTWARNING: GOTO [197] #146
			end
		else
			Vertical_2 = Constants_upvr.MODAL_NORMAL_BUTTON_MARGIN
		end
		tbl_25.marginBetween = Vertical_2
		if arg1.props.isQuest then
			({})[1] = {
				props = {
					isDisabled = props_upvr.isDisabled;
					onActivated = props_upvr.cancelPurchaseActivated;
					text = arg2.ButtonCancel;
					inputIcon = props_upvr.cancelControllerIcon;
				};
			}
			-- KONSTANTWARNING: GOTO [319] #222
		end
		local tbl_20 = {}
		local tbl_24 = {
			buttonType = ButtonType_upvr.PrimarySystem;
		}
		local tbl_5 = {
			isLoading = props_upvr.isLoading;
			isDisabled = props_upvr.isDisabled;
			isDelayedInput = props_upvr.isDelayedInput;
			enableInputDelayed = props_upvr.enableInputDelayed;
			delayInputSeconds = props_upvr.inputDelaySec;
			onActivated = props_upvr.buyItemActivated;
		}
		if props_upvr.enableInputDelayed then
		else
		end
		tbl_5.text = arg2.BuyRobuxButton
		tbl_5.inputIcon = props_upvr.buyItemControllerIcon
		tbl_24.props = tbl_5
		tbl_20[1] = {
			props = {
				isDisabled = props_upvr.isDisabled;
				onActivated = props_upvr.cancelPurchaseActivated;
				text = arg2.ButtonCancel;
				inputIcon = props_upvr.cancelControllerIcon;
			};
		}
		tbl_20[2] = tbl_24
		-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [319] 222. Error Block 25 start (CF ANALYSIS FAILED)
		tbl_25.buttons = tbl_20
		module.buttonStackInfo = tbl_25
		do
			return Roact_upvr.createElement(InteractiveAlert_upvr, module)
		end
		-- KONSTANTERROR: [319] 222. Error Block 25 end (CF ANALYSIS FAILED)
	end)
end
local Top1000UniversesRankedProductsData_upvr = require(Parent.TempOptimizationData.Top1000UniversesRankedProductsData)
local IXPServiceWrapper_upvr = require(Parent_3.IXPServiceWrapper).IXPServiceWrapper
local GetFStringMobilePopularItemBadgingLayer_upvr = require(Parent_2.Flags.GetFStringMobilePopularItemBadgingLayer)
local ProductDetailsNew_upvr = require(Parent.ProductDetailsNew)
function any_extend_result1.renderAlertNewProductDetails(arg1, arg2) -- Line 437
	--[[ Upvalues[13]:
		[1]: withLocalization_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: getEnableCondenseRobuxUpsell_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: Top1000UniversesRankedProductsData_upvr (readonly)
		[6]: IXPServiceWrapper_upvr (readonly)
		[7]: GetFStringMobilePopularItemBadgingLayer_upvr (readonly)
		[8]: Roact_upvr (readonly)
		[9]: ProductDetailsNew_upvr (readonly)
		[10]: ProductDetails_upvr (readonly)
		[11]: InteractiveAlert_upvr (readonly)
		[12]: FitFrameVertical_upvr (readonly)
		[13]: ButtonType_upvr (readonly)
	]]
	local module_9 = {
		InsufficientRobuxTitle = "IAPExperience.RobuxUpsell.Title.InsufficientRobux";
		AdditionalRobux = "IAPExperience.RobuxUpsell.Text.AdditionalRobux";
		WouldYouBuy = "IAPExperience.RobuxUpsell.Text.WouldYouBuy";
	}
	local var90 = "IAPExperience.RobuxUpsell.Text.DisclosurePayment"
	module_9.DisclosurePayment = var90
	if arg1.props.isVng then
		var90 = "IAPExperience.RobuxUpsell.Text.VNGDisclosureTermsURL"
	else
		var90 = "IAPExperience.RobuxUpsell.Text.DisclosureTermsURL"
	end
	module_9.DisclosureTermsURL = var90
	module_9.TermsOfUse = "IAPExperience.RobuxUpsell.Text.TermsOfUse"
	module_9.BuyRobuxButton = "IAPExperience.RobuxUpsell.Action.BuyRobuxAndItem"
	module_9.ButtonCancel = "IAPExperience.RobuxUpsell.Action.Cancel"
	module_9.LoadingText = "IAPExperience.RobuxUpsell.Text.Loading"
	module_9.PurchaseNotAvialableForQuest = "IAPExperience.RobuxUpsell.Text.PurchaseNotAvailableOnHeadSet"
	module_9.NeedMoreRobux = "IAPExperience.RobuxUpsell.Text.NeedMoreRobux"
	module_9.BadgeText = "IAPExperience.RobuxUpsell.Text.PopularItem"
	local state_upvr_2 = arg1.state
	local props_upvr_2 = arg1.props
	return withLocalization_upvr(module_9)(function(arg1_6) -- Line 455
		--[[ Upvalues[15]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: getEnableCondenseRobuxUpsell_upvr (copied, readonly)
			[3]: state_upvr_2 (readonly)
			[4]: props_upvr_2 (readonly)
			[5]: Constants_upvr (copied, readonly)
			[6]: Top1000UniversesRankedProductsData_upvr (copied, readonly)
			[7]: IXPServiceWrapper_upvr (copied, readonly)
			[8]: GetFStringMobilePopularItemBadgingLayer_upvr (copied, readonly)
			[9]: Roact_upvr (copied, readonly)
			[10]: ProductDetailsNew_upvr (copied, readonly)
			[11]: ProductDetails_upvr (copied, readonly)
			[12]: InteractiveAlert_upvr (copied, readonly)
			[13]: FitFrameVertical_upvr (copied, readonly)
			[14]: arg1 (readonly)
			[15]: ButtonType_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_7) -- Line 456
			--[[ Upvalues[15]:
				[1]: getEnableCondenseRobuxUpsell_upvr (copied, readonly)
				[2]: state_upvr_2 (copied, readonly)
				[3]: props_upvr_2 (copied, readonly)
				[4]: arg1_6 (readonly)
				[5]: Constants_upvr (copied, readonly)
				[6]: Top1000UniversesRankedProductsData_upvr (copied, readonly)
				[7]: IXPServiceWrapper_upvr (copied, readonly)
				[8]: GetFStringMobilePopularItemBadgingLayer_upvr (copied, readonly)
				[9]: Roact_upvr (copied, readonly)
				[10]: ProductDetailsNew_upvr (copied, readonly)
				[11]: ProductDetails_upvr (copied, readonly)
				[12]: InteractiveAlert_upvr (copied, readonly)
				[13]: FitFrameVertical_upvr (copied, readonly)
				[14]: arg1 (copied, readonly)
				[15]: ButtonType_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local Theme = arg1_7.Theme
			local Font_6 = arg1_7.Font
			local var97 = Font_6.BaseSize * Font_6.Body.RelativeSize
			local var98
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [14] 10. Error Block 68 start (CF ANALYSIS FAILED)
			local function INLINED_4() -- Internal function, doesn't exist in bytecode
				var98 = var97 * 0.9
				return var98
			end
			if not state_upvr_2.isCondensed or not INLINED_4() then
				var98 = var97
			end
			-- KONSTANTERROR: [14] 10. Error Block 68 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [23] 18. Error Block 81 start (CF ANALYSIS FAILED)
			var98 = props_upvr_2.itemRobuxCost - props_upvr_2.balanceAmount
			-- KONSTANTERROR: [23] 18. Error Block 81 end (CF ANALYSIS FAILED)
		end)
	end)
end
function any_extend_result1.renderNewAlert(arg1) -- Line 737
	--[[ Upvalues[9]:
		[1]: withLocalization_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: getEnableCondenseRobuxUpsell_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: InteractiveAlert_upvr (readonly)
		[6]: FitFrameVertical_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: ProductDetails_upvr (readonly)
		[9]: ButtonType_upvr (readonly)
	]]
	local module_8 = {
		InsufficientRobuxTitle = "IAPExperience.RobuxUpsell.Title.InsufficientRobux";
		AdditionalRobux = "IAPExperience.RobuxUpsell.Text.AdditionalRobux";
		WouldYouBuy = "IAPExperience.RobuxUpsell.Text.WouldYouBuy";
	}
	local var100 = "IAPExperience.RobuxUpsell.Text.DisclosurePayment"
	module_8.DisclosurePayment = var100
	if arg1.props.isVng then
		var100 = "IAPExperience.RobuxUpsell.Text.VNGDisclosureTermsURL"
	else
		var100 = "IAPExperience.RobuxUpsell.Text.DisclosureTermsURL"
	end
	module_8.DisclosureTermsURL = var100
	module_8.TermsOfUse = "IAPExperience.RobuxUpsell.Text.TermsOfUse"
	module_8.BuyRobuxButton = "IAPExperience.RobuxUpsell.Action.BuyRobuxAndItem"
	module_8.ButtonCancel = "IAPExperience.RobuxUpsell.Action.Cancel"
	module_8.LoadingText = "IAPExperience.RobuxUpsell.Text.Loading"
	module_8.PurchaseNotAvialableForQuest = "IAPExperience.RobuxUpsell.Text.PurchaseNotAvailableOnHeadSet"
	module_8.NeedMoreRobux = "IAPExperience.RobuxUpsell.Text.NeedMoreRobux"
	module_8.BonusBannerV1 = "IAPExperience.RobuxUpsell.Text.BonusBannerV1"
	module_8.BonusBannerInfo = "IAPExperience.RobuxUpsell.Text.BonusBannerInfo"
	local state_upvr_3 = arg1.state
	local props_upvr_3 = arg1.props
	return withLocalization_upvr(module_8)(function(arg1_8) -- Line 757
		--[[ Upvalues[11]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: getEnableCondenseRobuxUpsell_upvr (copied, readonly)
			[3]: state_upvr_3 (readonly)
			[4]: props_upvr_3 (readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: InteractiveAlert_upvr (copied, readonly)
			[7]: FitFrameVertical_upvr (copied, readonly)
			[8]: Constants_upvr (copied, readonly)
			[9]: arg1 (readonly)
			[10]: ProductDetails_upvr (copied, readonly)
			[11]: ButtonType_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_9) -- Line 758
			--[[ Upvalues[11]:
				[1]: getEnableCondenseRobuxUpsell_upvr (copied, readonly)
				[2]: state_upvr_3 (copied, readonly)
				[3]: props_upvr_3 (copied, readonly)
				[4]: arg1_8 (readonly)
				[5]: Roact_upvr (copied, readonly)
				[6]: InteractiveAlert_upvr (copied, readonly)
				[7]: FitFrameVertical_upvr (copied, readonly)
				[8]: Constants_upvr (copied, readonly)
				[9]: arg1 (copied, readonly)
				[10]: ProductDetails_upvr (copied, readonly)
				[11]: ButtonType_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
			local Theme_2_upvr = arg1_9.Theme
			local Font_5_upvr = arg1_9.Font
			local var107_upvw = Font_5_upvr.BaseSize * Font_5_upvr.Body.RelativeSize
			local var108
			if var108 then
				local function INLINED_5() -- Internal function, doesn't exist in bytecode
					var108 = var107_upvw * 0.9
					return var108
				end
				if not state_upvr_3.isCondensed or not INLINED_5() then
					var108 = var107_upvw
				end
				var107_upvw = var108
			end
			if props_upvr_3.termsOfUseActivated then
			end
			local var109_upvw = ""
			if props_upvr_3.robuxPurchaseAmountBeforeBonus ~= nil then
				var109_upvw = arg1_8.BonusBannerV1:gsub("{robux}", utf8.char(57346)..tostring(props_upvr_3.robuxPurchaseAmount - props_upvr_3.robuxPurchaseAmountBeforeBonus))
			end
			local module_5 = {
				screenSize = props_upvr_3.screenSize;
				position = props_upvr_3.position;
				anchorPoint = props_upvr_3.anchorPoint;
				title = arg1_8.NeedMoreRobux;
			}
			local any_gsub_result1_upvr_2 = arg1_8.AdditionalRobux:gsub("{robux}", utf8.char(57346)..tostring(props_upvr_3.itemRobuxCost - props_upvr_3.balanceAmount))
			local any_gsub_result1_upvw = arg1_8.WouldYouBuy:gsub("{robux}", utf8.char(57346).."<s>"..tostring(props_upvr_3.robuxPurchaseAmountBeforeBonus).."</s>"..utf8.char(57346)..tostring(props_upvr_3.robuxPurchaseAmount))
			local var113_upvr = Font_5_upvr.BaseSize * Font_5_upvr.Footer.RelativeSize
			local string_split_result1_upvr = string.split(arg1_8.DisclosureTermsURL, "{termsofuse}")
			local var115_upvw = "<u>"..arg1_8.TermsOfUse.."</u>"
			function module_5.middleContent() -- Line 815
				--[[ Upvalues[17]:
					[1]: Roact_upvr (copied, readonly)
					[2]: FitFrameVertical_upvr (copied, readonly)
					[3]: getEnableCondenseRobuxUpsell_upvr (copied, readonly)
					[4]: state_upvr_3 (copied, readonly)
					[5]: Constants_upvr (copied, readonly)
					[6]: arg1 (copied, readonly)
					[7]: ProductDetails_upvr (copied, readonly)
					[8]: props_upvr_3 (copied, readonly)
					[9]: Theme_2_upvr (readonly)
					[10]: Font_5_upvr (readonly)
					[11]: any_gsub_result1_upvr_2 (readonly)
					[12]: any_gsub_result1_upvw (read and write)
					[13]: var107_upvw (read and write)
					[14]: arg1_8 (copied, readonly)
					[15]: var113_upvr (readonly)
					[16]: string_split_result1_upvr (readonly)
					[17]: var115_upvw (read and write)
				]]
				-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
				-- KONSTANTERROR: [0] 1. Error Block 65 start (CF ANALYSIS FAILED)
				local module_4 = {
					BackgroundTransparency = 1;
					BackgroundColor3 = Color3.fromRGB(0, 255, 0);
					width = UDim.new(1, 0);
					FillDirection = Enum.FillDirection.Vertical;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
				}
				local Center_2 = Enum.VerticalAlignment.Center
				module_4.VerticalAlignment = Center_2
				local var118
				if getEnableCondenseRobuxUpsell_upvr() then
					Center_2 = UDim.new
					local function INLINED_6() -- Internal function, doesn't exist in bytecode
						var118 = Constants_upvr.MODAL_CONDENSED_CONTENT_PADDING
						return var118
					end
					if not state_upvr_3.isCondensed or not INLINED_6() then
						var118 = Constants_upvr.MODAL_NORMAL_CONTENT_PADDING
					end
					Center_2 = Center_2(0, var118)
				else
					Center_2 = UDim.new
					var118 = Constants_upvr.MODAL_NORMAL_CONTENT_PADDING
					Center_2 = Center_2(0, var118)
				end
				module_4.contentPadding = Center_2
				module_4[Roact_upvr.Ref] = arg1.contentRef
				module_4[Roact_upvr.Change.AbsoluteSize] = arg1.changeContentSize
				local module_10 = {}
				local tbl_23 = {
					layoutOrder = 1;
					model = props_upvr_3.model;
					itemIcon = props_upvr_3.itemIcon;
					itemName = props_upvr_3.itemName;
					itemRobuxCost = props_upvr_3.itemRobuxCost;
				}
				if getEnableCondenseRobuxUpsell_upvr() then
					if not state_upvr_3.isCondensed or not Constants_upvr.CONDENSED_ICON_SIZE then
						-- KONSTANTWARNING: GOTO [123] #87
					end
				else
				end
				tbl_23.itemIconWidth = nil
				if getEnableCondenseRobuxUpsell_upvr() then
					if not state_upvr_3.isCondensed or not Constants_upvr.CONDENSED_ICON_SIZE then
						-- KONSTANTWARNING: GOTO [139] #100
					end
				else
				end
				tbl_23.itemIconHeight = nil
				module_10.ProductDetails = Roact_upvr.createElement(ProductDetails_upvr, tbl_23)
				module_10.Underline = Roact_upvr.createElement("Frame", {
					LayoutOrder = 2;
					BorderSizePixel = 0;
					BackgroundColor3 = Theme_2_upvr.Divider.Color;
					BackgroundTransparency = Theme_2_upvr.Divider.Transparency;
					Size = UDim2.new(1, 0, 0, 1);
				})
				local tbl_21 = {
					LayoutOrder = 3;
					BackgroundTransparency = 1;
					Size = UDim2.new(0, arg1.state.contentSize.X, 0, 0);
					RichText = true;
					AutomaticSize = Enum.AutomaticSize.Y;
					TextWrapped = true;
					Font = Font_5_upvr.Body.Font;
				}
				if arg1.props.isQuest then
					-- KONSTANTWARNING: GOTO [236] #166
				end
				tbl_21.Text = any_gsub_result1_upvr_2..' '..any_gsub_result1_upvw
				tbl_21.TextSize = var107_upvw
				tbl_21.TextColor3 = Theme_2_upvr.TextDefault.Color
				tbl_21.TextTransparency = Theme_2_upvr.TextDefault.Transparency
				module_10.AdditionalBuyText = Roact_upvr.createElement("TextLabel", tbl_21)
				module_10.Underline2 = Roact_upvr.createElement("Frame", {
					LayoutOrder = 4;
					BorderSizePixel = 0;
					BackgroundColor3 = Theme_2_upvr.Divider.Color;
					BackgroundTransparency = Theme_2_upvr.Divider.Transparency;
					Size = UDim2.new(1, 0, 0, 1);
				})
				local tbl_7 = {}
				local tbl_10 = {
					LayoutOrder = 1;
					BackgroundTransparency = 1;
					AutomaticSize = Enum.AutomaticSize.XY;
				}
				local Font = Font_5_upvr.Body.Font
				tbl_10.Font = Font
				if arg1.props.isQuest then
					Font = arg1_8.PurchaseNotAvailableOnHeadSet
				else
					Font = arg1_8.DisclosurePayment
				end
				tbl_10.Text = Font
				tbl_10.TextSize = var113_upvr
				tbl_10.TextColor3 = Theme_2_upvr.TextDefault.Color
				tbl_10.TextTransparency = Theme_2_upvr.TextDefault.Transparency
				tbl_7.DisclosurePayment = Roact_upvr.createElement("TextLabel", tbl_10)
				if arg1.props.isQuest then
					-- KONSTANTWARNING: GOTO [596] #397
				end
				local tbl_2 = {
					BeforeDisclosureText = Roact_upvr.createElement("TextLabel", {
						LayoutOrder = 0;
						BackgroundTransparency = 1;
						AutomaticSize = Enum.AutomaticSize.XY;
						Font = Font_5_upvr.Body.Font;
						Text = string_split_result1_upvr[1];
						TextSize = var113_upvr;
						TextColor3 = Theme_2_upvr.TextDefault.Color;
						TextTransparency = Theme_2_upvr.TextDefault.Transparency;
					});
				}
				local tbl_19 = {
					LayoutOrder = 1;
					BackgroundTransparency = 1;
					RichText = true;
					AutomaticSize = Enum.AutomaticSize.XY;
					Font = Font_5_upvr.Body.Font;
					Text = var115_upvw;
					TextSize = var113_upvr;
					TextColor3 = Theme_2_upvr.TextDefault.Color;
					TextTransparency = Theme_2_upvr.TextDefault.Transparency;
				}
				if props_upvr_3.termsOfUseActivated == nil then
				else
				end
				tbl_19.Selectable = true
				tbl_19[Roact_upvr.Event.Activated] = props_upvr_3.termsOfUseActivated
				tbl_2.TermsOfUse = Roact_upvr.createElement("TextButton", tbl_19)
				tbl_2.AfterDisclosureText = Roact_upvr.createElement("TextLabel", {
					LayoutOrder = 2;
					BackgroundTransparency = 1;
					AutomaticSize = Enum.AutomaticSize.XY;
					Font = Font_5_upvr.Body.Font;
					Text = string_split_result1_upvr[2];
					TextSize = var113_upvr;
					TextColor3 = Theme_2_upvr.TextDefault.Color;
					TextTransparency = Theme_2_upvr.TextDefault.Transparency;
				})
				-- KONSTANTERROR: [0] 1. Error Block 65 end (CF ANALYSIS FAILED)
				-- KONSTANTERROR: [596] 397. Error Block 39 start (CF ANALYSIS FAILED)
				tbl_7.DisclosureTermsFrame = Roact_upvr.createElement(FitFrameVertical_upvr, {
					LayoutOrder = 2;
					BackgroundTransparency = 1;
					width = UDim.new(1, 0);
					FillDirection = Enum.FillDirection.Horizontal;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					VerticalAlignment = Enum.VerticalAlignment.Center;
					contentPadding = UDim.new(0, 1);
				}, tbl_2)
				module_10.DisclosureFrame = Roact_upvr.createElement(FitFrameVertical_upvr, {
					LayoutOrder = 5;
					BackgroundTransparency = 1;
					width = UDim.new(1, 0);
					FillDirection = Enum.FillDirection.Vertical;
					HorizontalAlignment = Enum.HorizontalAlignment.Center;
					VerticalAlignment = Enum.VerticalAlignment.Center;
					contentPadding = UDim.new(0, 1);
				}, tbl_7)
				do
					return Roact_upvr.createElement(FitFrameVertical_upvr, module_4, module_10)
				end
				-- KONSTANTERROR: [596] 397. Error Block 39 end (CF ANALYSIS FAILED)
			end
			local tbl_17 = {}
			local Vertical = Enum.FillDirection.Vertical
			tbl_17.forcedFillDirection = Vertical
			if getEnableCondenseRobuxUpsell_upvr() then
				local function INLINED_7() -- Internal function, doesn't exist in bytecode
					Vertical = Constants_upvr.MODAL_CONDENSED_BUTTON_MARGIN
					return Vertical
				end
				if not state_upvr_3.isCondensed or not INLINED_7() then
					Vertical = Constants_upvr.MODAL_NORMAL_BUTTON_MARGIN
					-- KONSTANTWARNING: GOTO [276] #206
				end
			else
				Vertical = Constants_upvr.MODAL_NORMAL_BUTTON_MARGIN
			end
			tbl_17.marginBetween = Vertical
			if arg1.props.isQuest then
				({})[1] = {
					props = {
						isDisabled = props_upvr_3.isDisabled;
						onActivated = props_upvr_3.cancelPurchaseActivated;
						text = arg1_8.ButtonCancel;
						inputIcon = props_upvr_3.cancelControllerIcon;
					};
				}
				-- KONSTANTWARNING: GOTO [398] #282
			end
			local tbl_16 = {}
			local tbl_3 = {
				buttonType = ButtonType_upvr.PrimarySystem;
			}
			local tbl_9 = {
				isLoading = props_upvr_3.isLoading;
				isDisabled = props_upvr_3.isDisabled;
				isDelayedInput = props_upvr_3.isDelayedInput;
				enableInputDelayed = props_upvr_3.enableInputDelayed;
				delayInputSeconds = props_upvr_3.inputDelaySec;
				onActivated = props_upvr_3.buyItemActivated;
			}
			if props_upvr_3.enableInputDelayed then
			else
			end
			tbl_9.text = arg1_8.BuyRobuxButton
			tbl_9.inputIcon = props_upvr_3.buyItemControllerIcon
			tbl_3.props = tbl_9
			tbl_16[1] = {
				props = {
					isDisabled = props_upvr_3.isDisabled;
					onActivated = props_upvr_3.cancelPurchaseActivated;
					text = arg1_8.ButtonCancel;
					inputIcon = props_upvr_3.cancelControllerIcon;
				};
			}
			tbl_16[2] = tbl_3
			-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [398] 282. Error Block 27 start (CF ANALYSIS FAILED)
			tbl_17.buttons = tbl_16
			module_5.buttonStackInfo = tbl_17
			function module_5.footerContent() -- Line 991
				--[[ Upvalues[4]:
					[1]: arg1 (copied, readonly)
					[2]: arg1_9 (readonly)
					[3]: var109_upvw (read and write)
					[4]: arg1_8 (copied, readonly)
				]]
				return arg1:renderFooterExperiment(arg1_9, var109_upvw, arg1_8.BonusBannerInfo)
			end
			do
				return Roact_upvr.createElement(InteractiveAlert_upvr, module_5)
			end
			-- KONSTANTERROR: [398] 282. Error Block 27 end (CF ANALYSIS FAILED)
		end)
	end)
end
local Colors_upvr = require(Parent_3.Style).Colors
local FFlagLowCogsBannerInfoIcon_upvr = require(Parent_2.Flags.FFlagLowCogsBannerInfoIcon)
local InfoIconWithTooltip_upvr = require(Parent_2.Generic.InfoIconWithTooltip)
function any_extend_result1.renderFooterExperiment(arg1, arg2, arg3, arg4) -- Line 999
	--[[ Upvalues[5]:
		[1]: Colors_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: FitFrameVertical_upvr (readonly)
		[4]: FFlagLowCogsBannerInfoIcon_upvr (readonly)
		[5]: InfoIconWithTooltip_upvr (readonly)
	]]
	local Font_4 = arg2.Font
	local Flint = Colors_upvr.Flint
	if arg3 == "" then
		return nil
	end
	local module_6 = {}
	local tbl_14 = {}
	local tbl_13 = {}
	local tbl_4 = {
		LayoutOrder = 1;
		BackgroundTransparency = 1;
		AutomaticSize = Enum.AutomaticSize.XY;
		RichText = true;
		Font = Font_4.Footer.Font;
	}
	tbl_4.Text = arg3
	tbl_4.TextSize = Font_4.BaseSize * Font_4.Footer.RelativeSize
	tbl_4.TextColor3 = Flint
	local any_createElement_result1 = Roact_upvr.createElement("TextLabel", tbl_4)
	tbl_13.BonusBefore = any_createElement_result1
	if FFlagLowCogsBannerInfoIcon_upvr then
		any_createElement_result1 = InfoIconWithTooltip_upvr
		local tbl_12 = {}
		tbl_12.text = arg4
		tbl_12.layoutOrder = 2
		tbl_12.color = Flint
		tbl_12.eventActivated = arg1.bonusBannerInfoIconStateChange
		any_createElement_result1 = any_createElement_result1(tbl_12)
	else
		any_createElement_result1 = nil
	end
	tbl_13.InfoIcon = any_createElement_result1
	tbl_14.BannerContent = Roact_upvr.createElement(FitFrameVertical_upvr, {
		LayoutOrder = 2;
		BackgroundTransparency = 1;
		width = UDim.new(1, 0);
		margin = {
			top = 12;
			bottom = 0;
			left = 0;
			right = 0;
		};
		FillDirection = Enum.FillDirection.Horizontal;
		HorizontalAlignment = Enum.HorizontalAlignment.Center;
		VerticalAlignment = Enum.VerticalAlignment.Center;
	}, tbl_13)
	module_6.Banner = Roact_upvr.createElement("ImageLabel", {
		BackgroundTransparency = 1;
		LayoutOrder = 2;
		Image = "rbxasset://textures/ui/BottomRoundedRect8px.png";
		ImageColor3 = Color3.fromRGB(239, 215, 140);
		Size = UDim2.new(1, 0, 0, 40);
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(8, 0, 24, 16);
	}, tbl_14)
	return Roact_upvr.createElement(FitFrameVertical_upvr, {
		BackgroundTransparency = 1;
		width = UDim.new(1, 0);
		margin = {
			top = 0;
			bottom = -24;
			left = -24;
			right = -24;
		};
		[Roact_upvr.Ref] = arg1.footerRef;
		[Roact_upvr.Change.AbsoluteSize] = arg1.changeFooterSize;
	}, module_6)
end
return any_extend_result1