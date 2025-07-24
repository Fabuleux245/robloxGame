-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:10:12
-- Luau version 6, Types version 3
-- Time taken: 0.010085 seconds

local Parent_3 = script.Parent
local Parent_2 = Parent_3.Parent
local Parent = Parent_2.Parent
local Roact_upvr = require(Parent.Roact)
local RoactGamepad_upvr = require(Parent.RoactGamepad)
local UIBlox = require(Parent.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local RoactFitComponents = require(Parent.RoactFitComponents)
local any_extend_result1_upvr = Roact_upvr.Component:extend(script.Name)
local tbl_upvr = {Images["icons/graphic/robuxcoin1_xxlarge"], Images["icons/graphic/robuxcoin2_xxlarge"], Images["icons/graphic/robuxcoin3_xxlarge"], Images["icons/graphic/robuxcoin4_xxlarge"], Images["icons/graphic/robuxcoin5_xxlarge"], Images["icons/graphic/robuxcoin6_xxlarge"]}
local GuiService_upvr = game:GetService("GuiService")
function any_extend_result1_upvr.init(arg1) -- Line 79
	--[[ Upvalues[3]:
		[1]: RoactGamepad_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: GuiService_upvr (readonly)
	]]
	arg1.state = {
		selectedPackage = nil;
		showMessageBanner = false;
	}
	arg1.buttonRefs = RoactGamepad_upvr.createRefCache()
	arg1.scrollingFrameRef = Roact_upvr.createRef()
	function arg1.getGamepadNextSelectionLeft(arg1_2) -- Line 88
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var14
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var14 = arg1.buttonRefs[arg1_2 - 1]
			return var14
		end
		if 1 >= arg1_2 or not INLINED() then
			var14 = nil
		end
		return var14
	end
	function arg1.getGamepadNextSelectionRight(arg1_3) -- Line 92
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local var16
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var16 = arg1.buttonRefs[arg1_3 + 1]
			return var16
		end
		if arg1_3 >= #arg1.buttonRefs or not INLINED_2() then
			var16 = nil
		end
		return var16
	end
	function arg1.initSelectionChangedListener() -- Line 96
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: GuiService_upvr (copied, readonly)
		]]
		if arg1.selectionListener ~= nil then
			arg1.selectionListener:Disconnect()
			arg1.selectionListener = nil
		end
		if arg1.selectionListener ~= nil then
			arg1.selectionListener:Disconnect()
			arg1.selectionListener = nil
		end
		arg1.selectionListener = GuiService_upvr:GetPropertyChangedSignal("SelectedCoreObject"):Connect(function() -- Line 107
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: GuiService_upvr (copied, readonly)
			]]
			if arg1.state.selectedPackage == nil or GuiService_upvr.SelectedCoreObject == nil or arg1.state.selectedPackage ~= GuiService_upvr.SelectedCoreObject then
				arg1:setState({
					selectedPackage = GuiService_upvr.SelectedCoreObject;
				})
			end
		end)
	end
end
function any_extend_result1_upvr.didMount(arg1) -- Line 119
	arg1.initSelectionChangedListener()
end
function any_extend_result1_upvr.didUpdate(arg1, arg2, arg3) -- Line 123
	local props_2 = arg1.props
	if arg2.hasNativePurchaseSucceeded ~= props_2.hasNativePurchaseSucceeded and props_2.hasNativePurchaseSucceeded then
		arg1:setState({
			showMessageBanner = true;
		})
		task.delay(3, function() -- Line 129
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1:setState({
				showMessageBanner = false;
			})
		end)
	end
end
function any_extend_result1_upvr.willUnmount(arg1) -- Line 136
	if arg1.selectionListener ~= nil then
		arg1.selectionListener:Disconnect()
		arg1.selectionListener = nil
	end
end
function any_extend_result1_upvr.getScale(arg1) -- Line 144
	if arg1.props.isConsoleSize then
		return 1
	end
	return 0.65
end
local MultiTextLocalizer_upvr = require(Parent_2.Locale.MultiTextLocalizer)
local withSelectionCursorProvider_upvr = UIBlox.App.SelectionImage.withSelectionCursorProvider
local function render(arg1) -- Line 154
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: MultiTextLocalizer_upvr (readonly)
		[3]: withSelectionCursorProvider_upvr (readonly)
	]]
	local module = {
		keys = {
			BannerText = {
				key = "IAPExperience.BuyRobux.Banner.Text";
			};
			BannerTitle = {
				key = "IAPExperience.BuyRobux.Banner.Title";
			};
			SuccessfulMessage = {
				key = "IAPExperience.BuyRobux.Alert.SuccessfulMessage";
			};
		};
	}
	function module.render(arg1_4) -- Line 167
		--[[ Upvalues[2]:
			[1]: withSelectionCursorProvider_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		return withSelectionCursorProvider_upvr(function(arg1_5) -- Line 168
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_4 (readonly)
			]]
			return arg1:renderWithLocale(arg1_4, arg1_5)
		end)
	end
	return Roact_upvr.createElement(MultiTextLocalizer_upvr, module)
end
any_extend_result1_upvr.render = render
local getEnableCompensatingScrollingFrame_upvr = require(Parent_2.Flags.getEnableCompensatingScrollingFrame)
function any_extend_result1_upvr.movePackageToAttentionArea(arg1, arg2) -- Line 176
	--[[ Upvalues[1]:
		[1]: getEnableCompensatingScrollingFrame_upvr (readonly)
	]]
	if not getEnableCompensatingScrollingFrame_upvr() then
	else
		local current = arg1.scrollingFrameRef.current
		if current == nil or arg2 == nil then return end
		local var34 = 48 * arg1:getScale()
		local var35 = arg2.AbsolutePosition.X - var34
		if var35 < 0 then
			current.CanvasPosition = Vector2.new(var35, 0)
			arg1:reportScrollingFrameCompensationHappened()
			return
		end
		if current.AbsoluteSize.X < arg2.AbsolutePosition.X + arg2.AbsoluteSize.X + var34 then
			current.CanvasPosition = Vector2.new(var35, 0)
			arg1:reportScrollingFrameCompensationHappened()
			return
		end
	end
end
local getUserInputEventData_upvr = require(Parent_2.Utility.getUserInputEventData)
function any_extend_result1_upvr.reportScrollingFrameCompensationHappened(arg1) -- Line 205
	--[[ Upvalues[1]:
		[1]: getUserInputEventData_upvr (readonly)
	]]
	local props = arg1.props
	if not props.onAnalyticEvent then
	else
		props.onAnalyticEvent("UserPurchaseFlow", getUserInputEventData_upvr(props.analyticId, "", "BuyRobux", "ScrollingFrame", "Compensated"))
	end
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local RobuxPackage_upvr = require(Parent_3.RobuxPackage)
local Constants_upvr = UIBlox.App.Style.Constants
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local icons_navigation_close_upvr = Images["icons/navigation/close"]
local CursorKind_upvr = UIBlox.App.SelectionImage.CursorKind
local Animator_upvr = require(Parent_2.Generic.Animator)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local icons_logo_block_upvr = Images["icons/logo/block"]
local FitTextLabel_upvr = RoactFitComponents.FitTextLabel
local FitFrameHorizontal_upvr = RoactFitComponents.FitFrameHorizontal
local icons_common_goldrobux_upvr = Images["icons/common/goldrobux"]
local formatNumber_upvr = require(Parent_2.Utility.formatNumber)
local LocalizationService_upvr = game:GetService("LocalizationService")
function any_extend_result1_upvr.renderWithLocale(arg1, arg2, arg3) -- Line 216
	--[[ Upvalues[17]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: RobuxPackage_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: RoactGamepad_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: ImageSetButton_upvr (readonly)
		[8]: icons_navigation_close_upvr (readonly)
		[9]: CursorKind_upvr (readonly)
		[10]: Animator_upvr (readonly)
		[11]: ImageSetLabel_upvr (readonly)
		[12]: icons_logo_block_upvr (readonly)
		[13]: FitTextLabel_upvr (readonly)
		[14]: FitFrameHorizontal_upvr (readonly)
		[15]: icons_common_goldrobux_upvr (readonly)
		[16]: formatNumber_upvr (readonly)
		[17]: LocalizationService_upvr (readonly)
	]]
	local props_upvr = arg1.props
	return withStyle_upvr(function(arg1_6) -- Line 219
		--[[ Upvalues[20]:
			[1]: props_upvr (readonly)
			[2]: arg1 (readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: RobuxPackage_upvr (copied, readonly)
			[5]: tbl_upvr (copied, readonly)
			[6]: RoactGamepad_upvr (copied, readonly)
			[7]: Constants_upvr (copied, readonly)
			[8]: ImageSetButton_upvr (copied, readonly)
			[9]: icons_navigation_close_upvr (copied, readonly)
			[10]: arg3 (readonly)
			[11]: CursorKind_upvr (copied, readonly)
			[12]: Animator_upvr (copied, readonly)
			[13]: ImageSetLabel_upvr (copied, readonly)
			[14]: icons_logo_block_upvr (copied, readonly)
			[15]: FitTextLabel_upvr (copied, readonly)
			[16]: arg2 (readonly)
			[17]: FitFrameHorizontal_upvr (copied, readonly)
			[18]: icons_common_goldrobux_upvr (copied, readonly)
			[19]: formatNumber_upvr (copied, readonly)
			[20]: LocalizationService_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 83 start (CF ANALYSIS FAILED)
		local var54
		if var54 == nil then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
		if props_upvr.robuxPackages ~= nil then
			var54 = #props_upvr.robuxPackages
		else
			var54 = 6
		end
		local tbl_2 = {
			LeadingPadding = Roact_upvr.createElement("Frame", {
				BorderSizePixel = 0;
				BackgroundTransparency = 1;
				LayoutOrder = 0;
				Size = UDim2.new(0, 80 * arg1:getScale(), 0, 1);
			});
			RobuxPackageChildren = Roact_upvr.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				VerticalAlignment = Enum.VerticalAlignment.Center;
				FillDirection = Enum.FillDirection.Horizontal;
				SortOrder = Enum.SortOrder.LayoutOrder;
				Padding = UDim.new(0, 16 * arg1:getScale());
			});
		}
		local tbl = {
			BorderSizePixel = 0;
			BackgroundTransparency = 1;
			LayoutOrder = var54 + 1;
		}
		local var60 = 0
		local var61 = 80 * arg1:getScale()
		local var62 = 0
		local udim2 = UDim2.new(var60, var61, var62, 1)
		tbl.Size = udim2
		tbl_2.TrailingPadding = Roact_upvr.createElement("Frame", tbl)
		local var64 = 1
		-- KONSTANTERROR: [0] 1. Error Block 83 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [179] 128. Error Block 66 start (CF ANALYSIS FAILED)
		var62.packageId = tostring(var64)
		if true then
		else
		end
		var62.robuxAmount = nil
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if true then
			-- KONSTANTWARNING: GOTO [206] #148
		end
		var62.currencyAmountStr = nil
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if true then
		else
		end
		var62.robuxMoreAmount = nil
		var62.robuxImage = tbl_upvr[var64]
		var62.forwardRef = arg1.buttonRefs[var64]
		var62.nextSelectionLeft = arg1.getGamepadNextSelectionLeft(var64)
		var62.nextSelectionRight = arg1.getGamepadNextSelectionRight(var64)
		function var62.onActivated(arg1_7) -- Line 269
			--[[ Upvalues[1]:
				[1]: props_upvr (copied, readonly)
			]]
			props_upvr.robuxPackageActivated(arg1_7)
		end
		function var62.onSelect(arg1_8) -- Line 272
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			arg1:movePackageToAttentionArea(arg1_8:getValue())
		end
		function var62.onHover(arg1_9, arg2_2) -- Line 275
			--[[ Upvalues[1]:
				[1]: arg1 (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [11] 8. Error Block 3 start (CF ANALYSIS FAILED)
			arg1:setState({
				selectedPackage = arg1_9:getValue();
			})
			do
				return
			end
			-- KONSTANTERROR: [11] 8. Error Block 3 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [22] 16. Error Block 4 start (CF ANALYSIS FAILED)
			arg1:setState({
				selectedPackage = "";
			})
			-- KONSTANTERROR: [22] 16. Error Block 4 end (CF ANALYSIS FAILED)
		end
		tbl_2[udim2] = var60(var61, var62)
		-- KONSTANTERROR: [179] 128. Error Block 66 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [131] 95. Error Block 92 start (CF ANALYSIS FAILED)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if var64 ~= nil then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [257.133371]
			if var64 ~= arg1 then
			else
			end
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if true then
			-- KONSTANTWARNING: GOTO [184] #132
		end
		-- KONSTANTERROR: [131] 95. Error Block 92 end (CF ANALYSIS FAILED)
	end)
end
local useStyleMetadata_upvr = UIBlox.Core.Style.useStyleMetadata
local Cryo_upvr = require(Parent.Cryo)
return function(arg1) -- Line 486
	--[[ Upvalues[4]:
		[1]: useStyleMetadata_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: any_extend_result1_upvr (readonly)
		[4]: Cryo_upvr (readonly)
	]]
	return Roact_upvr.createElement(any_extend_result1_upvr, Cryo_upvr.Dictionary.join(arg1, {
		themeName = useStyleMetadata_upvr().ThemeName;
	}))
end