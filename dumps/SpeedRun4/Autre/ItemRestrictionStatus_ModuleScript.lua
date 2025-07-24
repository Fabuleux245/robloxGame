-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:31
-- Luau version 6, Types version 3
-- Time taken: 0.006828 seconds

local Parent = script.Parent.Parent
local Parent_3 = Parent.Parent.Parent
local Parent_2 = Parent_3.Parent
local Roact_upvr = require(Parent_2.Roact)
local t = require(Parent_2.t)
local Images_upvr = require(Parent_3.App.ImageSet.Images)
local ItemTileEnums_upvr = require(Parent.Enum.ItemTileEnums)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ItemRestrictionStatus")
any_extend_result1.validateProps = t.strictInterface({
	restrictionTypes = t.map(ItemTileEnums_upvr.Restriction.isEnumValue, t.boolean);
	restrictionInfo = t.optional(t.table);
})
local function _(arg1, arg2) -- Line 33, Named "getAdditionalText"
	--[[ Upvalues[1]:
		[1]: ItemTileEnums_upvr (readonly)
	]]
	local var10
	if arg1[ItemTileEnums_upvr.Restriction.LimitedUnique] then
		var10 = '#'
	end
	if arg1[ItemTileEnums_upvr.Restriction.Collectible] then
		return '#'
	end
	if arg2 and arg2.limitedSerialNumber then
		var10 = var10..' '..arg2.limitedSerialNumber
	end
	return var10
end
local function _(arg1) -- Line 51, Named "getRestrictionIcon"
	--[[ Upvalues[2]:
		[1]: ItemTileEnums_upvr (readonly)
		[2]: Images_upvr (readonly)
	]]
	if arg1[ItemTileEnums_upvr.Restriction.Collectible] then
		return Images_upvr["icons/status/item/limited"]
	end
	if arg1[ItemTileEnums_upvr.Restriction.Limited] or arg1[ItemTileEnums_upvr.Restriction.LimitedUnique] then
		return Images_upvr["icons/status/item/limited"]
	end
	return nil
end
local withStyle_upvr = require(Parent_3.Core.Style.withStyle)
local GetTextSize_upvr = require(Parent_3.Core.Text.GetTextSize)
local vector2_3_upvr = Vector2.new(50, 20)
local vector2_2_upvr = Vector2.new(8, 8)
local ImageSetComponent_upvr = require(Parent_3.Core.ImageSet.ImageSetComponent)
function any_extend_result1.render(arg1) -- Line 66
	--[[ Upvalues[8]:
		[1]: withStyle_upvr (readonly)
		[2]: ItemTileEnums_upvr (readonly)
		[3]: GetTextSize_upvr (readonly)
		[4]: vector2_3_upvr (readonly)
		[5]: Images_upvr (readonly)
		[6]: vector2_2_upvr (readonly)
		[7]: Roact_upvr (readonly)
		[8]: ImageSetComponent_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 67
		--[[ Upvalues[8]:
			[1]: arg1 (readonly)
			[2]: ItemTileEnums_upvr (copied, readonly)
			[3]: GetTextSize_upvr (copied, readonly)
			[4]: vector2_3_upvr (copied, readonly)
			[5]: Images_upvr (copied, readonly)
			[6]: vector2_2_upvr (copied, readonly)
			[7]: Roact_upvr (copied, readonly)
			[8]: ImageSetComponent_upvr (copied, readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		-- KONSTANTERROR: [0] 1. Error Block 37 start (CF ANALYSIS FAILED)
		local Theme = arg1_2.Theme
		local Font = arg1_2.Font
		local Tokens = arg1_2.Tokens
		local restrictionInfo = arg1.props.restrictionInfo
		local restrictionTypes = arg1.props.restrictionTypes
		local var22
		if restrictionTypes[ItemTileEnums_upvr.Restriction.LimitedUnique] then
			var22 = '#'
		end
		if restrictionTypes[ItemTileEnums_upvr.Restriction.Collectible] then
			local const_string = '#'
		elseif restrictionInfo and restrictionInfo.limitedSerialNumber then
			var22 = var22..' '..restrictionInfo.limitedSerialNumber
		end
		local var24 = Font.BaseSize * Font.CaptionHeader.RelativeSize
		local GetTextSize_upvr_result1 = GetTextSize_upvr(var22, var24, Font.CaptionHeader.Font, vector2_3_upvr)
		if restrictionTypes[ItemTileEnums_upvr.Restriction.Collectible] then
			-- KONSTANTWARNING: GOTO [91] #66
		end
		-- KONSTANTERROR: [0] 1. Error Block 37 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [72] 52. Error Block 38 start (CF ANALYSIS FAILED)
		if restrictionTypes[ItemTileEnums_upvr.Restriction.Limited] or restrictionTypes[ItemTileEnums_upvr.Restriction.LimitedUnique] then
			local _ = Images_upvr["icons/status/item/limited"]
		else
		end
		local function INLINED() -- Internal function, doesn't exist in bytecode
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			return nil.ImageRectSize / Images_upvr.ImagesResolutionScale
		end
		if not nil or not INLINED() then
			local vector2 = Vector2.new(0, 0)
		end
		local module = {}
		local var30
		if var30 then
			var30 = Roact_upvr.createElement
			local tbl = {
				AnchorPoint = Vector2.new(0, 0.5);
				BackgroundTransparency = 1;
			}
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			tbl.Image = nil
			tbl.ImageColor3 = Theme.IconEmphasis.Color
			tbl.ImageTransparency = Theme.IconEmphasis.Transparency
			tbl.Position = UDim2.new(0, vector2_2_upvr.X / 2, 0.5, 0)
			tbl.Size = UDim2.new(0, vector2.X, 0, vector2.Y)
			var30 = var30(ImageSetComponent_upvr.Label, tbl)
		end
		module.Icon = var30
		local tbl_2 = {
			BackgroundTransparency = 1;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_2.Font = Font.CaptionHeader.Font
		tbl_2.TextSize = var24
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_2.Text = var22
		tbl_2.TextColor3 = Theme.TextMuted.Color
		tbl_2.TextTransparency = Theme.TextMuted.TextTransparency
		tbl_2.TextTruncate = Enum.TextTruncate.AtEnd
		tbl_2.TextXAlignment = Enum.TextXAlignment.Center
		tbl_2.TextYAlignment = Enum.TextYAlignment.Center
		tbl_2.Position = UDim2.new(0, vector2.X, 0, 0)
		tbl_2.Size = UDim2.new(0, GetTextSize_upvr_result1.X + 10, 1, 0)
		module.Text = Roact_upvr.createElement("TextLabel", tbl_2)
		do
			return Roact_upvr.createElement(ImageSetComponent_upvr.Label, {
				AnchorPoint = Vector2.new(0, 1);
				BackgroundTransparency = 1;
				Image = Images_upvr["component_assets/circle_17"];
				ImageColor3 = Theme.UIDefault.Color;
				ImageTransparency = Theme.UIDefault.Transparency;
				ScaleType = Enum.ScaleType.Slice;
				SliceCenter = Rect.new(8, 8, 9, 9);
				Position = UDim2.new(0, Tokens.Global.Size_100, 1, -Tokens.Global.Size_100);
				Size = UDim2.new(0, vector2.X + GetTextSize_upvr_result1.X + vector2_2_upvr.X, 0, math.max(vector2.Y, GetTextSize_upvr_result1.Y) + vector2_2_upvr.Y);
			}, module)
		end
		-- KONSTANTERROR: [72] 52. Error Block 38 end (CF ANALYSIS FAILED)
	end)
end
return any_extend_result1