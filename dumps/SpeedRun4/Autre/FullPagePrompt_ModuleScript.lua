-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:56:23
-- Luau version 6, Types version 3
-- Time taken: 0.005903 seconds

local BulkPurchaseApp = script:FindFirstAncestor("BulkPurchaseApp")
local Parent = BulkPurchaseApp.Parent
local React_upvr = require(Parent.React)
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local UIBlox = require(Parent.UIBlox)
local useCursor_upvr = UIBlox.App.SelectionCursor.useCursor
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local function CloseButton_upvr(arg1) -- Line 21, Named "CloseButton"
	--[[ Upvalues[5]:
		[1]: useDesignTokens_upvr (readonly)
		[2]: useCursor_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
		[5]: Images_upvr (readonly)
	]]
	local var4_result1_2 = useDesignTokens_upvr()
	return React_upvr.createElement("TextButton", {
		Size = UDim2.fromOffset(var4_result1_2.Global.Size_450, var4_result1_2.Global.Size_450);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		[React_upvr.Event.Activated] = arg1.onActivated;
		Text = "";
		[React_upvr.Tag] = "data-testid=BulkPurchaseApp_FullPagePromptCloseButton";
		SelectionImageObject = useCursor_upvr(UDim.new(0, var4_result1_2.Semantic.Radius.Medium), 0);
	}, React_upvr.createElement(ImageSetLabel_upvr, {
		Size = UDim2.fromOffset(var4_result1_2.Global.Size_350, var4_result1_2.Global.Size_350);
		BackgroundTransparency = 1;
		Image = Images_upvr["icons/navigation/close"];
		ImageColor3 = var4_result1_2.Semantic.Color.Text.Emphasis.Color3;
		ImageTransparency = var4_result1_2.Semantic.Color.Text.Emphasis.Transparency;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.fromScale(0.5, 0.5);
	}))
end
local function var12_upvr(arg1) -- Line 48
	return {
		background = arg1.Semantic.Color.Background.Default.Color3;
		padding = arg1.Global.Space_300;
		cornerRadius = arg1.Semantic.Radius.Medium;
		headerFontStyle = arg1.Semantic.Typography.Header;
		headerColorStyle = arg1.Semantic.Color.Text.Emphasis;
		headerMarginBottom = arg1.Global.Space_400;
		headerHeight = arg1.Global.Size_350;
	}
end
local useScreenSize_upvr = require(Parent.EconomyCommonCoreScriptHooks).useScreenSize
local useUiModeInfo_upvr = require(Parent.RobloxAppHooks).useUiModeInfo
local UiMode_upvr = require(Parent.RobloxAppEnums).UiMode
local constants_upvr = require(BulkPurchaseApp.constants)
local Scrim_upvr = require(script.Parent.Scrim)
local Box_upvr = require(script.Parent.Box)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
return React_upvr.forwardRef(function(arg1, arg2) -- Line 66
	--[[ Upvalues[11]:
		[1]: useScreenSize_upvr (readonly)
		[2]: useDesignTokens_upvr (readonly)
		[3]: var12_upvr (readonly)
		[4]: useUiModeInfo_upvr (readonly)
		[5]: UiMode_upvr (readonly)
		[6]: constants_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: Scrim_upvr (readonly)
		[9]: Box_upvr (readonly)
		[10]: StyledTextLabel_upvr (readonly)
		[11]: CloseButton_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 48 start (CF ANALYSIS FAILED)
	local useScreenSize_upvr_result1 = useScreenSize_upvr()
	local var4_result1 = useDesignTokens_upvr(var12_upvr)
	local useUiModeInfo_upvr_result1 = useUiModeInfo_upvr()
	local var25
	if useUiModeInfo_upvr_result1.uiMode == var25 then
		var25 = constants_upvr
		var25 = constants_upvr.TEN_FOOT_MULTIPLIER
	else
	end
	var25 = useUiModeInfo_upvr_result1.uiMode
	if var25 == UiMode_upvr.TenFoot then
		var25 = constants_upvr.MAX_HEIGHT
	else
		var25 = constants_upvr
	end
	var25 = false
	if useScreenSize_upvr_result1.X < constants_upvr.MOBILE_BREAKPOINT then
		if useScreenSize_upvr_result1.X >= useScreenSize_upvr_result1.Y then
			var25 = false
		else
			var25 = true
		end
	end
	local module = {}
	module.ref = arg2
	local module_2 = {
		padding = {var4_result1.padding, var4_result1.padding, var4_result1.padding, var4_result1.padding};
		cornerRadius = UDim.new(0, var4_result1.cornerRadius);
	}
	if var25 then
		-- KONSTANTWARNING: GOTO [99] #68
	end
	-- KONSTANTERROR: [0] 1. Error Block 48 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [98] 67. Error Block 46 start (CF ANALYSIS FAILED)
	if var25 then
		local const_number = 0
	else
	end
	module_2.Size = UDim2.new(0, math.min(constants_upvr.MAX_WIDTH, useScreenSize_upvr_result1.X), 0, math.min(var25.MAX_HEIGHT, useScreenSize_upvr_result1.Y))
	module_2.BackgroundColor3 = var4_result1.background
	module_2.BorderSizePixel = 0
	if var25 then
	else
	end
	module_2.Position = UDim2.fromScale(0.5, 0.5)
	if var25 then
	else
	end
	module_2.AnchorPoint = Vector2.new(0.5, 0.5)
	do
		return React_upvr.createElement(Scrim_upvr, module, React_upvr.createElement(Box_upvr, module_2, {
			Header = React_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Size = UDim2.new(1, 0, 0, var4_result1.headerHeight);
			}, React_upvr.createElement(StyledTextLabel_upvr, {
				fontStyle = var4_result1.headerFontStyle;
				colorStyle = var4_result1.headerColorStyle;
				textXAlignment = Enum.TextXAlignment.Center;
				textYAlignment = Enum.TextYAlignment.Center;
				text = arg1.title;
				size = UDim2.new(1, 0, 1, 0);
			}), React_upvr.createElement(CloseButton_upvr, {
				onActivated = arg1.onClose;
			}));
			Content = React_upvr.createElement("Frame", {
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Size = UDim2.new(1, 0, 1, -var4_result1.headerHeight - var4_result1.headerMarginBottom);
				Position = UDim2.fromOffset(0, var4_result1.headerHeight + var4_result1.headerMarginBottom);
			}, arg1.children);
		}))
	end
	-- KONSTANTERROR: [98] 67. Error Block 46 end (CF ANALYSIS FAILED)
end)