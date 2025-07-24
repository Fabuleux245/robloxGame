-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:31
-- Luau version 6, Types version 3
-- Time taken: 0.002740 seconds

-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local Roact_upvr = require(SocialLibraries.dependencies).Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("CallbackInputBoxWithIcon")
local GetFFlagFilteredScrollingListAdditionalCustomizationsEnabled_upvr = require(SocialLibraries.Flags.GetFFlagFilteredScrollingListAdditionalCustomizationsEnabled)
local tbl = {
	backgroundTransparency = 0;
	backgroundColor3 = Color3.new(1, 1, 1);
}
local var6
tbl.borderColor = var6
if GetFFlagFilteredScrollingListAdditionalCustomizationsEnabled_upvr() then
	var6 = 0
else
	var6 = nil
end
tbl.borderThickness = var6
if GetFFlagFilteredScrollingListAdditionalCustomizationsEnabled_upvr() then
	var6 = 1
	-- KONSTANTWARNING: GOTO [65] #47
end
-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [64] 46. Error Block 22 start (CF ANALYSIS FAILED)
var6 = nil
tbl.borderTransparency = var6
if GetFFlagFilteredScrollingListAdditionalCustomizationsEnabled_upvr() then
	var6 = 0
else
	var6 = nil
end
tbl.cornerRadius = var6
var6 = 60
tbl.iconCellWidth = var6
var6 = 24
tbl.iconSize = var6
var6 = Color3.new(1, 1, 1)
tbl.iconColor3 = var6
var6 = 0
tbl.iconTransparency = var6
var6 = "rbxasset://textures/ui/LuaChat/icons/ic-search.png"
tbl.iconImage = var6
var6 = Enum.Font.BuilderSans
tbl.inputTextFont = var6
var6 = Color3.new(1, 0, 1)
tbl.inputTextColor3 = var6
var6 = 14
tbl.inputTextSize = var6
var6 = Enum.TextYAlignment.Center
tbl.inputTextYAlignment = var6
var6 = Enum.TextXAlignment.Left
tbl.inputTextXAlignment = var6
var6 = 0
tbl.inputTextTransparency = var6
var6 = 0.6
tbl.placeholderTextTransparency = var6
var6 = Color3.new(1, 0, 0)
tbl.placeholderTextColor3 = var6
var6 = "Test placeholder text"
tbl.placeholderText = var6
var6 = Color3.new(1, 1, 0)
tbl.clearIconColor3 = var6
var6 = "rbxasset://textures/ui/LuaChat/icons/ic-close-white.png"
tbl.clearIcon = var6
var6 = nil
tbl.clearButtonDisabled = var6
var6 = nil
tbl.textChangedCallback = var6
any_extend_result1.defaultProps = tbl
local CallbackInputBox_upvr = require(script.Parent.CallbackInputBox)
function any_extend_result1.render(arg1) -- Line 43
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: GetFFlagFilteredScrollingListAdditionalCustomizationsEnabled_upvr (readonly)
		[3]: CallbackInputBox_upvr (readonly)
	]]
	local iconCellWidth = arg1.props.iconCellWidth
	local iconSize = arg1.props.iconSize
	local module = {
		BackgroundTransparency = arg1.props.backgroundTransparency;
		BackgroundColor3 = arg1.props.backgroundColor3;
		BorderSizePixel = 0;
	}
	local var11 = 1
	module.Size = UDim2.new(var11, 0, 1, 0)
	local module_2 = {}
	if GetFFlagFilteredScrollingListAdditionalCustomizationsEnabled_upvr() then
		var11 = Roact_upvr.createElement
		var11 = var11("UIStroke", {
			Thickness = arg1.props.borderThickness;
			Color = arg1.props.borderColor;
			Transparency = arg1.props.borderTransparency;
		})
	else
		var11 = nil
	end
	module_2.UIStroke = var11
	if GetFFlagFilteredScrollingListAdditionalCustomizationsEnabled_upvr() then
		var11 = Roact_upvr.createElement
		var11 = var11("UICorner", {
			CornerRadius = UDim.new(0, arg1.props.cornerRadius);
		})
	else
		var11 = nil
	end
	module_2.UICorner = var11
	var11 = Roact_upvr.createElement
	var11 = var11("UIListLayout", {
		VerticalAlignment = Enum.VerticalAlignment.Center;
		HorizontalAlignment = Enum.HorizontalAlignment.Left;
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
		Padding = UDim.new(0, iconCellWidth / 4);
	})
	module_2.layout = var11
	var11 = Roact_upvr.createElement
	var11 = var11("UIPadding", {
		PaddingLeft = UDim.new(0, iconCellWidth / 4);
	})
	module_2.padding = var11
	var11 = Roact_upvr.createElement
	var11 = var11("ImageLabel", {
		BackgroundTransparency = 1;
		Size = UDim2.new(0, iconSize, 0, iconSize);
		ImageColor3 = arg1.props.iconColor3;
		ImageTransparency = arg1.props.iconTransparency;
		Image = arg1.props.iconImage;
		LayoutOrder = 1;
	})
	module_2.icon = var11
	var11 = Roact_upvr.createElement
	var11 = var11("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, -iconSize - iconCellWidth / 4, 1, 0);
		LayoutOrder = 2;
	}, {
		padding = Roact_upvr.createElement("UIPadding", {
			PaddingRight = UDim.new(0, iconCellWidth / 4);
		});
		inputBox = Roact_upvr.createElement(CallbackInputBox_upvr, arg1.props);
	})
	module_2.inputBoxContainer = var11
	return Roact_upvr.createElement("Frame", module, module_2)
end
do
	return any_extend_result1
end
-- KONSTANTERROR: [64] 46. Error Block 22 end (CF ANALYSIS FAILED)