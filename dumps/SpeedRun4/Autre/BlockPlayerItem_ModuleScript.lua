-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:43:27
-- Luau version 6, Types version 3
-- Time taken: 0.005035 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local UIBlox = require(CorePackages.Packages.UIBlox)
local t = require(CorePackages.Packages.t)
local Dependencies = require(script.Parent.Parent.Dependencies)
local any_extend_result1 = Roact_upvr.PureComponent:extend("BlockPlayerItem")
any_extend_result1.validateProps = t.strictInterface({
	layoutOrder = t.optional(t.number);
	size = t.UDim2;
	text = t.string;
	description = t.string;
	icon = t.union(t.string, t.table);
	iconSize = t.UDim2;
	isDisabled = t.optional(t.boolean);
	isCheckBoxSelected = t.boolean;
	onCheckBoxActivated = t.callback;
})
any_extend_result1.defaultProps = {
	isDisabled = false;
	isCheckBoxSelected = false;
}
function any_extend_result1.init(arg1) -- Line 36
	function arg1.onClicked() -- Line 37
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.onCheckBoxActivated and not arg1.props.isDisabled then
			arg1.props.onCheckBoxActivated(not arg1.props.isCheckBoxSelected)
		end
	end
end
local withStyle_upvr = UIBlox.Style.withStyle
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Checkbox_upvr = UIBlox.App.InputButton.Checkbox
local ThemedTextLabel_upvr = require(Dependencies.ThemedTextLabel)
local Divider_upvr = require(Dependencies.Divider)
function any_extend_result1.render(arg1) -- Line 44
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: Checkbox_upvr (readonly)
		[5]: ThemedTextLabel_upvr (readonly)
		[6]: Divider_upvr (readonly)
	]]
	local props_upvr = arg1.props
	return withStyle_upvr(function(arg1_2) -- Line 47
		--[[ Upvalues[7]:
			[1]: Roact_upvr (copied, readonly)
			[2]: props_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: ImageSetLabel_upvr (copied, readonly)
			[5]: Checkbox_upvr (copied, readonly)
			[6]: ThemedTextLabel_upvr (copied, readonly)
			[7]: Divider_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
		local module = {}
		local tbl_6 = {
			AnchorPoint = Vector2.new(0, 0.5);
			BackgroundTransparency = 1;
		}
		local icon = props_upvr.icon
		tbl_6.Image = icon
		local var21
		if props_upvr.isDisabled then
			icon = 0.5
		else
			icon = nil
		end
		tbl_6.ImageTransparency = icon
		var21 = 0
		tbl_6.Position = UDim2.new(0, 16, 0.5, var21)
		tbl_6.Size = props_upvr.iconSize
		module.BlockIcon = Roact_upvr.createElement(ImageSetLabel_upvr, tbl_6)
		local tbl_4 = {
			AnchorPoint = Vector2.new(1, 0.5);
			BackgroundTransparency = 1;
		}
		var21 = 0
		tbl_4.Position = UDim2.new(1, -20, 0.5, var21)
		tbl_4.Size = UDim2.fromOffset(24, 24)
		local tbl_5 = {}
		local tbl_7 = {}
		var21 = UDim2.new(1, 0, 1, 0)
		tbl_7.size = var21
		var21 = ""
		tbl_7.text = var21
		var21 = props_upvr.isDisabled
		tbl_7.isDisabled = var21
		var21 = props_upvr.onCheckBoxActivated
		tbl_7.onActivated = var21
		var21 = props_upvr.isCheckBoxSelected
		tbl_7.isSelected = var21
		tbl_5.CheckBox = Roact_upvr.createElement(Checkbox_upvr, tbl_7)
		module.CheckBoxFrame = Roact_upvr.createElement("Frame", tbl_4, tbl_5)
		local tbl_10 = {
			AnchorPoint = Vector2.new(0, 0.5);
			BackgroundTransparency = 1;
		}
		var21 = 0
		tbl_10.Position = UDim2.new(0, 60, 0.5, var21)
		var21 = 0
		tbl_10.Size = UDim2.new(1, -124, 1, var21)
		local tbl_2 = {}
		local tbl_3 = {}
		var21 = Enum.FillDirection.Vertical
		tbl_3.FillDirection = var21
		var21 = Enum.HorizontalAlignment.Left
		tbl_3.HorizontalAlignment = var21
		var21 = Enum.VerticalAlignment.Center
		tbl_3.VerticalAlignment = var21
		var21 = Enum.SortOrder.LayoutOrder
		tbl_3.SortOrder = var21
		var21 = UDim.new(0, 4)
		tbl_3.Padding = var21
		tbl_2.Layout = Roact_upvr.createElement("UIListLayout", tbl_3)
		local tbl_9 = {}
		var21 = 1
		tbl_9.LayoutOrder = var21
		if props_upvr.isDisabled then
			var21 = 0.5
			-- KONSTANTWARNING: GOTO [236] #167
		end
		-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [235] 166. Error Block 22 start (CF ANALYSIS FAILED)
		var21 = nil
		tbl_9.TextTransparency = var21
		var21 = Enum.AutomaticSize.XY
		tbl_9.AutomaticSize = var21
		var21 = "SubHeader1"
		tbl_9.fontKey = var21
		var21 = "TextEmphasis"
		tbl_9.themeKey = var21
		var21 = props_upvr.text
		tbl_9.Text = var21
		var21 = Enum.TextTruncate.AtEnd
		tbl_9.TextTruncate = var21
		var21 = Enum.TextXAlignment.Left
		tbl_9.TextXAlignment = var21
		tbl_2.Text = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl_9)
		local tbl = {}
		var21 = 2
		tbl.LayoutOrder = var21
		if props_upvr.isDisabled then
			var21 = 0.5
		else
			var21 = nil
		end
		tbl.TextTransparency = var21
		var21 = Enum.AutomaticSize.XY
		tbl.AutomaticSize = var21
		var21 = "Footer"
		tbl.fontKey = var21
		var21 = true
		tbl.TextWrapped = var21
		var21 = "TextDefault"
		tbl.themeKey = var21
		var21 = props_upvr.description
		tbl.Text = var21
		var21 = Enum.TextXAlignment.Left
		tbl.TextXAlignment = var21
		var21 = 1.25
		tbl.LineHeight = var21
		tbl_2.Description = Roact_upvr.createElement(ThemedTextLabel_upvr, tbl)
		module.TextFrame = Roact_upvr.createElement("Frame", tbl_10, tbl_2)
		local tbl_8 = {}
		var21 = 0
		tbl_8.Position = UDim2.new(0, 0, 1, var21)
		module.Divider = Roact_upvr.createElement(Divider_upvr, tbl_8)
		do
			return Roact_upvr.createElement("TextButton", {
				BackgroundTransparency = 1;
				LayoutOrder = props_upvr.layoutOrder;
				Size = props_upvr.size;
				AutoButtonColor = false;
				BorderSizePixel = 0;
				Text = "";
				[Roact_upvr.Event.Activated] = arg1.onClicked;
			}, module)
		end
		-- KONSTANTERROR: [235] 166. Error Block 22 end (CF ANALYSIS FAILED)
	end)
end
return any_extend_result1