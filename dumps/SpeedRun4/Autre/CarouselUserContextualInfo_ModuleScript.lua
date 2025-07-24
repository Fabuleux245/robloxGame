-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:27:59
-- Luau version 6, Types version 3
-- Time taken: 0.004931 seconds

local Parent = script:FindFirstAncestor("SocialCommon").Parent
local UIBlox = require(Parent.UIBlox)
local Constants = require(script.Parent.Constants)
local tbl_5_upvr = {
	maxNumberOfLines = Constants.LINES_MAX;
	lineWidth = Constants.TILE_SIZE;
}
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FixPYMKCarouselTilePreferredTextSize", false)
local useTextSizeOffset_upvr = UIBlox.Core.Style.useTextSizeOffset
local IconSize_upvr = UIBlox.App.Constant.IconSize
local React_upvr = require(Parent.React)
local Text_upvr = require(Parent.AppCommonLib).Text
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
function CarouselUserContextualInfo(arg1) -- Line 55
	--[[ Upvalues[11]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_5_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: game_DefineFastFlag_result1_upvr (readonly)
		[5]: useTextSizeOffset_upvr (readonly)
		[6]: IconSize_upvr (readonly)
		[7]: React_upvr (readonly)
		[8]: Text_upvr (readonly)
		[9]: ImageSetLabel_upvr (readonly)
		[10]: Images_upvr (readonly)
		[11]: StyledTextLabel_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_5_upvr, arg1)
	local icon = any_join_result1_upvr.icon
	local label = any_join_result1_upvr.label
	local useStyle_upvr_result1 = useStyle_upvr()
	local var19_upvr
	if game_DefineFastFlag_result1_upvr then
		local useTextSizeOffset_upvr_result1 = useTextSizeOffset_upvr()
	else
	end
	local Theme = useStyle_upvr_result1.Theme
	local Font_upvr = useStyle_upvr_result1.Font
	var19_upvr = label.font
	if not var19_upvr then
		var19_upvr = Font_upvr.CaptionBody
	end
	local text_upvr = label.text
	if game_DefineFastFlag_result1_upvr then
		if not icon or not ((any_join_result1_upvr.lineWidth) - (IconSize_upvr.Small + 2)) then
			local _ = any_join_result1_upvr.lineWidth
			-- KONSTANTWARNING: GOTO [46] #35
		end
	else
	end
	local const_number_upvr = 0
	local const_number_upvr_2 = 0
	local tbl_6 = {}
	if game_DefineFastFlag_result1_upvr then
		-- KONSTANTWARNING: GOTO [74] #57
	end
	if game_DefineFastFlag_result1_upvr then
		-- KONSTANTWARNING: GOTO [79] #62
	end
	tbl_6[1] = var19_upvr.Font
	tbl_6[2] = Font_upvr.BaseSize
	tbl_6[3] = var19_upvr.RelativeSize
	tbl_6[4] = any_join_result1_upvr.maxNumberOfLines
	tbl_6[5] = text_upvr
	tbl_6[6] = nil
	tbl_6[7] = nil
	local module = {
		LayoutOrder = any_join_result1_upvr.layoutOrder;
		BackgroundTransparency = 1;
	}
	if game_DefineFastFlag_result1_upvr then
		-- KONSTANTWARNING: GOTO [105] #82
	end
	module.Size = nil
	local module_2 = {}
	local tbl_3 = {
		FillDirection = Enum.FillDirection.Horizontal;
		SortOrder = Enum.SortOrder.LayoutOrder;
	}
	if game_DefineFastFlag_result1_upvr then
		-- KONSTANTWARNING: GOTO [127] #97
	end
	tbl_3.VerticalAlignment = nil
	local var32
	tbl_3.Padding = UDim.new(0, 2)
	var32 = var32("UIListLayout", tbl_3)
	module_2.UIListLayout = var32
	if icon and icon.path then
		var32 = React_upvr.createElement
		local tbl = {
			layout = React_upvr.createElement("UIListLayout", {
				VerticalAlignment = Enum.VerticalAlignment.Top;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
			});
		}
		local tbl_2 = {
			LayoutOrder = 1;
			BackgroundTransparency = 1;
			Image = Images_upvr[icon.path];
		}
		local color = icon.color
		if not color then
			color = Theme.IconDefault.Color
		end
		tbl_2.ImageColor3 = color
		color = icon.transparency
		local var38 = color
		if not var38 then
			var38 = Theme.IconDefault.Transparency
		end
		tbl_2.ImageTransparency = var38
		var38 = icon.size
		local var39 = var38
		if not var39 then
			var39 = UDim2.fromOffset(IconSize_upvr.Small, IconSize_upvr.Small)
		end
		tbl_2.Size = var39
		tbl_2.AnchorPoint = Vector2.new(0.5, 0.5)
		tbl_2.Position = UDim2.fromScale(0.5, 0.5)
		tbl.ImageLabel = React_upvr.createElement(ImageSetLabel_upvr, tbl_2)
		var32 = var32("Frame", {
			Size = UDim2.fromOffset(IconSize_upvr.Small, IconSize_upvr.Small);
			BackgroundTransparency = 1;
		}, tbl)
	else
		var32 = nil
	end
	module_2.IconFrame = var32
	if text_upvr then
		var32 = React_upvr.createElement
		local tbl_4 = {
			layoutOrder = 2;
		}
		if game_DefineFastFlag_result1_upvr then
			local _ = const_number_upvr_2
		elseif not icon or not ((any_join_result1_upvr.lineWidth) - (IconSize_upvr.Small + 2)) then
		end
		tbl_4.size = UDim2.fromOffset(any_join_result1_upvr.lineWidth, React_upvr.useMemo(function() -- Line 71
			--[[ Upvalues[8]:
				[1]: game_DefineFastFlag_result1_upvr (copied, readonly)
				[2]: Font_upvr (readonly)
				[3]: var19_upvr (readonly)
				[4]: const_number_upvr (readonly)
				[5]: any_join_result1_upvr (readonly)
				[6]: Text_upvr (copied, readonly)
				[7]: text_upvr (readonly)
				[8]: const_number_upvr_2 (readonly)
			]]
			if game_DefineFastFlag_result1_upvr then
				return math.min((Font_upvr.BaseSize * var19_upvr.RelativeSize + const_number_upvr) * any_join_result1_upvr.maxNumberOfLines, Text_upvr.GetTextHeight(text_upvr or "", var19_upvr.Font, Font_upvr.BaseSize * var19_upvr.RelativeSize, const_number_upvr_2))
			end
			return Text_upvr.GetTextHeight(text_upvr or "", var19_upvr.Font, Font_upvr.BaseSize * var19_upvr.RelativeSize, 10000) * any_join_result1_upvr.maxNumberOfLines
		end, tbl_6))
		tbl_4.lineHeight = 1
		tbl_4.text = text_upvr
		tbl_4.textXAlignment = Enum.TextXAlignment.Left
		tbl_4.textYAlignment = Enum.TextYAlignment.Top
		tbl_4.textTruncate = Enum.TextTruncate.AtEnd
		tbl_4.fontStyle = var19_upvr
		local colorStyle = label.colorStyle
		if not colorStyle then
			colorStyle = Theme.SecondaryContent
		end
		tbl_4.colorStyle = colorStyle
		tbl_4.fluidSizing = false
		tbl_4.richText = false
		var32 = var32(StyledTextLabel_upvr, tbl_4)
	else
		var32 = nil
	end
	module_2.ContextualText = var32
	return React_upvr.createElement("Frame", module, module_2)
end
return CarouselUserContextualInfo