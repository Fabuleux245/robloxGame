-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:02
-- Luau version 6, Types version 3
-- Time taken: 0.003525 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local tbl_upvr = {
	isChecked = false;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local useCursor_upvr = require(Foundation.Providers.Cursor.useCursor)
local useMenuItemVariants_upvr = require(script.Parent.useMenuItemVariants)
local View_upvr = require(Foundation.Components.View)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local Image_upvr = require(Foundation.Components.Image)
local Text_upvr = require(Foundation.Components.Text)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 39, Named "MenuItem"
	--[[ Upvalues[10]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: useCursor_upvr (readonly)
		[5]: useMenuItemVariants_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: View_upvr (readonly)
		[8]: withCommonProps_upvr (readonly)
		[9]: Image_upvr (readonly)
		[10]: Text_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 20 start (CF ANALYSIS FAILED)
	local withDefaults_upvr_result1_upvr = withDefaults_upvr(arg1, tbl_upvr)
	local var5_result1 = useTokens_upvr()
	local useMenuItemVariants_upvr_result1 = useMenuItemVariants_upvr(var5_result1, withDefaults_upvr_result1_upvr.size, withDefaults_upvr_result1_upvr.isChecked)
	local module = {}
	local var19
	if withDefaults_upvr_result1_upvr.isDisabled then
		var19 = 0.5
	else
		var19 = nil
	end
	module.GroupTransparency = var19
	var19 = withDefaults_upvr_result1_upvr.isDisabled
	module.isDisabled = var19
	module.onActivated = React_upvr.useCallback(function() -- Line 51
		--[[ Upvalues[1]:
			[1]: withDefaults_upvr_result1_upvr (readonly)
		]]
		withDefaults_upvr_result1_upvr.onActivated(withDefaults_upvr_result1_upvr.id)
	end, {withDefaults_upvr_result1_upvr.onActivated})
	var19 = {}
	var19.Selectable = not withDefaults_upvr_result1_upvr.isDisabled
	var19.SelectionImageObject = useCursor_upvr({
		radius = UDim.new(0, var5_result1.Radius.Small);
		offset = var5_result1.Size.Size_200;
		borderWidth = var5_result1.Stroke.Thicker;
	})
	module.selection = var19
	var19 = useMenuItemVariants_upvr_result1.container.tag
	module.tag = var19
	module.ref = arg2
	local module_2 = {}
	var19 = withDefaults_upvr_result1_upvr.icon
	if var19 then
		var19 = React_upvr
		var19 = Image_upvr
		local tbl = {
			LayoutOrder = 1;
			Image = withDefaults_upvr_result1_upvr.icon;
			tag = useMenuItemVariants_upvr_result1.icon.tag;
		}
		-- KONSTANTWARNING: GOTO [115] #78
	end
	-- KONSTANTERROR: [0] 1. Error Block 20 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [114] 77. Error Block 22 start (CF ANALYSIS FAILED)
	module_2.Icon = nil
	var19 = React_upvr
	var19 = Text_upvr
	module_2.Text = var19.createElement(var19, {
		LayoutOrder = 2;
		Text = withDefaults_upvr_result1_upvr.text;
		tag = useMenuItemVariants_upvr_result1.text.tag;
	})
	var19 = withDefaults_upvr_result1_upvr.isChecked
	if var19 then
		var19 = React_upvr
		var19 = Image_upvr
		local _ = {
			LayoutOrder = 3;
			Image = "icons/status/success";
			tag = useMenuItemVariants_upvr_result1.check.tag;
		}
	else
	end
	module_2.Check = nil
	do
		return React_upvr.createElement(View_upvr, withCommonProps_upvr(withDefaults_upvr_result1_upvr, module), module_2)
	end
	-- KONSTANTERROR: [114] 77. Error Block 22 end (CF ANALYSIS FAILED)
end))