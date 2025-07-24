-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:18:50
-- Luau version 6, Types version 3
-- Time taken: 0.004578 seconds

local Parent = script.Parent.Parent.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local Cryo_upvr = require(Parent.Cryo)
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local ControlState_upvr = UIBlox.Core.Control.Enum.ControlState
local NavigationTab_upvr = UIBlox.App.Navigation.NavigationTab
local NavigationTabLayout_upvr = UIBlox.App.Navigation.Enum.NavigationTabLayout
return React_upvr.memo(function(arg1) -- Line 46, Named "AppNavItem"
	--[[ Upvalues[6]:
		[1]: useStyle_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: ControlState_upvr (readonly)
		[5]: NavigationTab_upvr (readonly)
		[6]: NavigationTabLayout_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 26 start (CF ANALYSIS FAILED)
	local Tokens_upvr = useStyle_upvr().Tokens
	local useLocalization_upvr_result1_upvr = useLocalization_upvr({
		labelText = arg1.item.labelText;
	})
	local any_useState_result1_upvr, any_useState_result2 = React_upvr.useState(ControlState_upvr.Initialize)
	local Footer_upvr = Tokens_upvr.Semantic.Typography.Footer
	local any_getBinding_result1 = arg1.systemBarLabelTextSizeBinding.default:getBinding()
	React_upvr.useEffect(function() -- Line 55
		--[[ Upvalues[4]:
			[1]: arg1 (readonly)
			[2]: useLocalization_upvr_result1_upvr (readonly)
			[3]: Footer_upvr (readonly)
			[4]: Tokens_upvr (readonly)
		]]
		arg1.systemBarLabelTextSizeBinding.default:getMinTextSize(useLocalization_upvr_result1_upvr.labelText or "", Footer_upvr.Font, Vector2.new(Tokens_upvr.Global.Space_600, Tokens_upvr.Global.Space_600))
	end, {any_getBinding_result1, useLocalization_upvr_result1_upvr.labelText, Tokens_upvr})
	local tbl = {
		iconImage = arg1.item.iconImage;
	}
	local iconCheckedImage = arg1.item.iconCheckedImage
	tbl.iconCheckedImage = iconCheckedImage
	if arg1.item.renderIcon then
		function iconCheckedImage(arg1_2) -- Line 67
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: any_useState_result1_upvr (readonly)
			]]
			return arg1.item.renderIcon(arg1_2, any_useState_result1_upvr)
		end
	else
		iconCheckedImage = nil
	end
	tbl.renderIcon = iconCheckedImage
	tbl.hasLabel = arg1.hasLabel
	tbl.labelText = useLocalization_upvr_result1_upvr.labelText
	tbl.labelTypography = {
		Font = Footer_upvr.Font;
		FontSize = any_getBinding_result1;
		LineHeight = Footer_upvr.LineHeight;
		LetterSpacing = Footer_upvr.LetterSpacing;
	}
	tbl.isChecked = arg1.isChecked
	tbl.badgeVariant = arg1.item.badgeVariant
	tbl.badgeValue = arg1.item.badgeValue
	tbl.layout = NavigationTabLayout_upvr.Stacked
	if arg1.isCenterPositioned then
		-- KONSTANTWARNING: GOTO [135] #86
	end
	-- KONSTANTERROR: [0] 1. Error Block 26 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [134] 85. Error Block 29 start (CF ANALYSIS FAILED)
	tbl.anchorPoint = nil
	if arg1.isCenterPositioned then
		-- KONSTANTWARNING: GOTO [147] #95
	end
	-- KONSTANTERROR: [134] 85. Error Block 29 end (CF ANALYSIS FAILED)
end, function(arg1, arg2) -- Line 37, Named "arePropsEqual"
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local any_equals_result1 = Cryo_upvr.Dictionary.equals(arg1.item, arg2.item)
	if any_equals_result1 then
		any_equals_result1 = false
		if arg1.systemBarLabelTextSizeBinding == arg2.systemBarLabelTextSizeBinding then
			any_equals_result1 = false
			if arg1.isChecked == arg2.isChecked then
				any_equals_result1 = false
				if arg1.isCenterPositioned == arg2.isCenterPositioned then
					if arg1.hasLabel ~= arg2.hasLabel then
						any_equals_result1 = false
					else
						any_equals_result1 = true
					end
				end
			end
		end
	end
	return any_equals_result1
end)