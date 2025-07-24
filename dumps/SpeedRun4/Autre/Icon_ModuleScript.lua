-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:42
-- Luau version 6, Types version 3
-- Time taken: 0.003172 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local Parent = Foundation.Parent
local React_upvr = require(Parent.React)
local BuilderIcons = require(Parent.BuilderIcons)
local tbl_2_upvr = {
	size = require(Foundation.Enums.IconSize).Medium;
	variant = BuilderIcons.IconVariant.Regular;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local useTextSizeOffset_upvr = require(Foundation.Providers.Style.useTextSizeOffset)
local isBuilderIcon_upvr = require(Foundation.Utility.isBuilderIcon)
local migrateIconName_upvr = require(script.Parent.migrateIconName)
local useIconSize_upvr = require(Foundation.Utility.useIconSize)
local migrateFontSize_upvr = require(script.Parent.migrateFontSize)
local Logger_upvr = require(Foundation.Utility.Logger)
local Image_upvr = require(Foundation.Components.Image)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local Text_upvr = require(Foundation.Components.Text)
local Font_upvr = BuilderIcons.Font
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 45, Named "Icon"
	--[[ Upvalues[14]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useTextSizeOffset_upvr (readonly)
		[5]: isBuilderIcon_upvr (readonly)
		[6]: migrateIconName_upvr (readonly)
		[7]: useIconSize_upvr (readonly)
		[8]: migrateFontSize_upvr (readonly)
		[9]: Logger_upvr (readonly)
		[10]: React_upvr (readonly)
		[11]: Image_upvr (readonly)
		[12]: withCommonProps_upvr (readonly)
		[13]: Text_upvr (readonly)
		[14]: Font_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local withDefaults_upvr_result1 = withDefaults_upvr(arg1, tbl_2_upvr)
	local var7_result1 = useTokens_upvr()
	local isBuilderIcon_upvr_result1 = isBuilderIcon_upvr(withDefaults_upvr_result1.name)
	local var10_result1 = migrateIconName_upvr(withDefaults_upvr_result1.name)
	local useIconSize_upvr_result1 = useIconSize_upvr(withDefaults_upvr_result1.size, isBuilderIcon_upvr_result1)
	local var23
	if typeof(useIconSize_upvr_result1) == "table" then
		var23 = nil
	else
		var23 = useIconSize_upvr_result1.Y.Offset
		local var24
	end
	if not isBuilderIcon_upvr_result1 and var10_result1 then
		var24 = typeof(useIconSize_upvr_result1)
		if var24 == "table" then
			var24 = error
			var24("Binding size isn't supported when migrating a UIBlox icon, use Builder Icons directly")
		end
		var24 = var10_result1.variant
		var24 = migrateFontSize_upvr(var23, var7_result1)
		var23 = var24
	end
	var24 = withDefaults_upvr_result1.style
	if not var24 then
		var24 = var7_result1.Color.Content.Default
		local var25
	end
	if not isBuilderIcon_upvr_result1 and not var10_result1 then
		if arg1.variant ~= nil then
			Logger_upvr:warning("variant is not supported when using FoundationImages, consider using BuilderIcons")
		end
		local module_2 = {
			imageStyle = var24;
		}
		var25 = withDefaults_upvr_result1.name
		module_2.Image = var25
		module_2.Size = useIconSize_upvr_result1
		module_2.ref = arg2
		var25 = withDefaults_upvr_result1.Rotation
		module_2.Rotation = var25
		return React_upvr.createElement(Image_upvr, withCommonProps_upvr(withDefaults_upvr_result1, module_2), withDefaults_upvr_result1.children)
	end
	local tbl = {
		textStyle = var24;
		Text = var10_result1.name;
	}
	var25 = {}
	var25.Font = Font_upvr[var24 or withDefaults_upvr_result1.variant]
	var25.FontSize = var23
	tbl.fontStyle = var25
	if typeof(useIconSize_upvr_result1) ~= "table" then
		var25 = false
	else
		var25 = true
	end
	tbl.TextScaled = var25
	local var28
	var28.Size = useIconSize_upvr_result1
	var28.ref = arg2
	var25 = withDefaults_upvr_result1.Rotation
	var28.Rotation = var25
	local module = {}
	var25 = 0
	if var25 < useTextSizeOffset_upvr() and var23 then
		var25 = React_upvr
		var28 = var25.createElement
		var25 = "UITextSizeConstraint"
		var28 = var28(var25, {
			MaxTextSize = var23;
		})
	else
		var28 = nil
	end
	module.UITextSizeConstraint = var28
	var25 = React_upvr
	var28 = var25.createElement
	var25 = React_upvr.Fragment
	var28 = var28(var25, withDefaults_upvr_result1.children)
	module.Children = var28
	return React_upvr.createElement(Text_upvr, withCommonProps_upvr(withDefaults_upvr_result1, var28), module)
end))