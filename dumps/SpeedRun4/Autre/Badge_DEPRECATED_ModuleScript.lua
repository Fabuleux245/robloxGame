-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:12
-- Luau version 6, Types version 3
-- Time taken: 0.003130 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local tbl_upvr = {
	variant = require(Foundation.Enums.BadgeVariant).Primary;
	size = require(Foundation.Enums.BadgeSize).Medium;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local IconPosition_upvr = require(Foundation.Enums.IconPosition)
local useBadgeVariants_DEPRECATED_upvr = require(script.Parent.useBadgeVariants_DEPRECATED)
local View_upvr = require(Foundation.Components.View)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
local Icon_upvr = require(Foundation.Components.Icon)
local IconSize_upvr = require(Foundation.Enums.IconSize)
local Text_upvr = require(Foundation.Components.Text)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 46, Named "Badge"
	--[[ Upvalues[11]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: IconPosition_upvr (readonly)
		[6]: useBadgeVariants_DEPRECATED_upvr (readonly)
		[7]: View_upvr (readonly)
		[8]: withCommonProps_upvr (readonly)
		[9]: Icon_upvr (readonly)
		[10]: IconSize_upvr (readonly)
		[11]: Text_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var5_result1_upvr = withDefaults_upvr(arg1, tbl_upvr)
	local useTokens_upvr_result1 = useTokens_upvr()
	local function var16() -- Line 51
		--[[ Upvalues[2]:
			[1]: var5_result1_upvr (readonly)
			[2]: IconPosition_upvr (copied, readonly)
		]]
		if typeof(var5_result1_upvr.icon) == "string" then
			return {
				name = var5_result1_upvr.icon;
				position = IconPosition_upvr.Left;
			}
		end
		return var5_result1_upvr.icon
	end
	;({})[1] = var5_result1_upvr.icon
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	local any_useMemo_result1 = React_upvr.useMemo(var16, {})
	local var19
	if any_useMemo_result1 == nil then
		var16 = false
	else
		var16 = true
	end
	var19 = false
	if var5_result1_upvr.text ~= nil then
		if 0 >= #var5_result1_upvr.text then
			var19 = false
		else
			var19 = true
		end
	end
	local useBadgeVariants_DEPRECATED_upvr_result1, var8_result2, var8_result3, var8_result4, var8_result5 = useBadgeVariants_DEPRECATED_upvr(var5_result1_upvr.variant, var5_result1_upvr.size, var16, var19)
	local module_2 = {}
	if var5_result1_upvr.isDisabled then
	else
	end
	module_2.GroupTransparency = nil
	module_2.backgroundStyle = useBadgeVariants_DEPRECATED_upvr_result1.backgroundStyle
	module_2.stroke = {
		Color = useTokens_upvr_result1.Color.Surface.Surface_100.Color3;
		Transparency = useTokens_upvr_result1.Color.Surface.Surface_100.Transparency;
	}
	module_2.sizeConstraint = var8_result2
	module_2.tag = var8_result4
	module_2.ref = arg2
	local module = {}
	if any_useMemo_result1 ~= nil then
		local tbl = {
			name = any_useMemo_result1.name;
			size = IconSize_upvr.Small;
		}
		local contentStyle = useBadgeVariants_DEPRECATED_upvr_result1.contentStyle
		tbl.style = contentStyle
		if any_useMemo_result1.position == IconPosition_upvr.Left then
			contentStyle = 1
		else
			contentStyle = 3
		end
		tbl.LayoutOrder = contentStyle
	else
	end
	module.Icon = nil
	if var19 then
		local tbl_2 = {
			Text = var5_result1_upvr.text;
			textStyle = useBadgeVariants_DEPRECATED_upvr_result1.contentStyle;
			fontStyle = {
				LineHeight = 1;
			};
			RichText = true;
			LayoutOrder = 2;
			sizeConstraint = var8_result3;
			tag = var8_result5;
		}
	else
	end
	module.Text = nil
	return React_upvr.createElement(View_upvr, withCommonProps_upvr(var5_result1_upvr, module_2), module)
end))