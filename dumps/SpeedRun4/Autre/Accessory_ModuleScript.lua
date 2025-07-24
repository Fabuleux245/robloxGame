-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:20
-- Luau version 6, Types version 3
-- Time taken: 0.002082 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local Parent = Foundation.Parent
local React_upvr = require(Parent.React)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local useAccessoryVariants_upvr = require(script.Parent.useAccessoryVariants)
local View_upvr = require(Foundation.Components.View)
local isBuilderOrMigratedIcon_upvr = iconMigrationUtils.isBuilderOrMigratedIcon
local Icon_upvr = require(Foundation.Components.Icon)
local isMigrated_upvr = iconMigrationUtils.isMigrated
local uiblox_upvr = require(Parent.BuilderIcons).Migration.uiblox
local Image_upvr = require(Foundation.Components.Image)
return React_upvr.memo(function(arg1) -- Line 37, Named "Accessory"
	--[[ Upvalues[9]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: useAccessoryVariants_upvr (readonly)
		[4]: View_upvr (readonly)
		[5]: isBuilderOrMigratedIcon_upvr (readonly)
		[6]: Icon_upvr (readonly)
		[7]: isMigrated_upvr (readonly)
		[8]: uiblox_upvr (readonly)
		[9]: Image_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_useMemo_result1 = React_upvr.useMemo(function() -- Line 39
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if type(arg1.config) == "string" then
			return {
				iconName = arg1.config;
				isCircular = false;
			}
		end
		return arg1.config
	end, {arg1.config})
	local useAccessoryVariants_upvr_result1 = useAccessoryVariants_upvr(useTokens_upvr(), arg1.size, arg1.isLeading, any_useMemo_result1.isCircular or false)
	local module_2 = {
		tag = "auto-xy";
		padding = useAccessoryVariants_upvr_result1.accessory.padding;
	}
	local onActivated = any_useMemo_result1.onActivated
	module_2.onActivated = onActivated
	local var20
	if arg1.isLeading then
		onActivated = 1
	else
		onActivated = 3
	end
	module_2.LayoutOrder = onActivated
	if isBuilderOrMigratedIcon_upvr(any_useMemo_result1.iconName) then
		local tbl = {}
		if isMigrated_upvr(any_useMemo_result1.iconName) then
			var20 = uiblox_upvr[any_useMemo_result1.iconName].name
		else
			var20 = any_useMemo_result1.iconName
		end
		tbl.name = var20
		if isMigrated_upvr(any_useMemo_result1.iconName) then
			var20 = uiblox_upvr[any_useMemo_result1.iconName].variant
		else
			var20 = any_useMemo_result1.iconVariant
		end
		tbl.variant = var20
		var20 = useAccessoryVariants_upvr_result1.accessory.Size.Y.Offset
		tbl.size = var20
		var20 = arg1.contentStyle
		tbl.style = var20
	else
		local module = {}
		var20 = any_useMemo_result1.iconName
		module.Image = var20
		var20 = useAccessoryVariants_upvr_result1.accessory.Size
		module.Size = var20
		var20 = arg1.contentStyle
		module.imageStyle = var20
	end
	return React_upvr.createElement(View_upvr, module_2, React_upvr.createElement(Image_upvr, module))
end)