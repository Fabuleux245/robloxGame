-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:02
-- Luau version 6, Types version 3
-- Time taken: 0.002308 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local Parent = Foundation.Parent
local React_upvr = require(Parent.React)
local InputSize = require(Foundation.Enums.InputSize)
local tbl_upvr = {
	size = InputSize.Medium;
}
local tbl_upvr_2 = {
	[InputSize.XSmall] = "padding-xsmall";
	[InputSize.Small] = "padding-small";
	[InputSize.Medium] = "padding-small";
	[InputSize.Large] = "padding-small";
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local View_upvr = require(Foundation.Components.View)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local useScaledValue_upvr = require(Foundation.Utility.useScaledValue)
local Dash_upvr = require(Parent.Dash)
local MenuItem_upvr = require(script.Parent.MenuItem)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 52, Named "Menu"
	--[[ Upvalues[9]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: View_upvr (readonly)
		[5]: withCommonProps_upvr (readonly)
		[6]: useScaledValue_upvr (readonly)
		[7]: tbl_upvr_2 (readonly)
		[8]: Dash_upvr (readonly)
		[9]: MenuItem_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7_result1_upvr = withDefaults_upvr(arg1, tbl_upvr)
	local module_2 = {}
	local var20
	if var7_result1_upvr.width then
		var20 = UDim2.new(var7_result1_upvr.width, UDim.new())
	else
		var20 = UDim2.fromOffset(useScaledValue_upvr(260), 0)
	end
	module_2.Size = var20
	var20 = {}
	var20[`col gap-xxsmall {tbl_upvr_2[var7_result1_upvr.size]}`] = true
	if var7_result1_upvr.width == nil then
	else
	end
	var20["auto-y"] = true
	if var7_result1_upvr.width ~= nil then
	else
	end
	var20["auto-xy"] = true
	module_2.tag = var20
	module_2.ref = arg2
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 55
		--[[ Upvalues[1]:
			[1]: var7_result1_upvr (readonly)
		]]
		for _, v in var7_result1_upvr.items do
			if v.icon ~= nil then
				return true
			end
		end
		return false
	end, {var7_result1_upvr.items})
	function var20(arg1_2, arg2_2) -- Line 77
		--[[ Upvalues[4]:
			[1]: React_upvr (copied, readonly)
			[2]: MenuItem_upvr (copied, readonly)
			[3]: any_useMemo_result1_upvr (readonly)
			[4]: var7_result1_upvr (readonly)
		]]
		local module = {}
		module.LayoutOrder = arg2_2
		module.key = arg1_2.id
		local icon = arg1_2.icon
		if not icon then
			if any_useMemo_result1_upvr then
				icon = ""
			else
				icon = nil
			end
		end
		module.icon = icon
		module.isChecked = arg1_2.isChecked
		module.isDisabled = arg1_2.isDisabled
		module.text = arg1_2.text
		module.onActivated = var7_result1_upvr.onActivated
		module.size = var7_result1_upvr.size
		module.id = arg1_2.id
		module.testId = "--foundation-menu-item"
		return React_upvr.createElement(MenuItem_upvr, module)
	end
	return React_upvr.createElement(View_upvr, withCommonProps_upvr(var7_result1_upvr, module_2), Dash_upvr.map(var7_result1_upvr.items, var20))
end))