-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:12:18
-- Luau version 6, Types version 3
-- Time taken: 0.004892 seconds

local Parent = script.Parent.Parent.Parent
local Parent_2 = Parent.Parent
local React_upvr = require(Parent_2.React)
local NavigationTabLayout_upvr = require(Parent.App.Navigation.Enum.NavigationTabLayout)
local tbl_3_upvr = {
	hasLabel = false;
	isChecked = false;
	badgeValue = nil;
	layout = NavigationTabLayout_upvr.Stacked;
}
local Cryo_upvr = require(Parent_2.Cryo)
local useStyle_upvr = require(Parent.Core.Style.useStyle)
local UIBloxConfig_upvr = require(Parent.UIBloxConfig)
local TextService_upvr = game:GetService("TextService")
local vector2_upvr = Vector2.new(math.huge, math.huge)
local Label_upvr = require(Parent.Core.ImageSet.ImageSetComponent).Label
local Badge_upvr = require(Parent.App.Indicator.Badge)
local StateLayer_upvr = require(Parent.Core.Control.StateLayer)
return React_upvr.forwardRef(function(arg1, arg2) -- Line 65
	--[[ Upvalues[11]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_3_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: UIBloxConfig_upvr (readonly)
		[6]: TextService_upvr (readonly)
		[7]: vector2_upvr (readonly)
		[8]: Label_upvr (readonly)
		[9]: NavigationTabLayout_upvr (readonly)
		[10]: Badge_upvr (readonly)
		[11]: StateLayer_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 92 start (CF ANALYSIS FAILED)
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_3_upvr, arg1)
	local Tokens_2 = useStyle_upvr().Tokens
	local _, any_useBinding_result2_upvr = React_upvr.useBinding(UDim2.new())
	local function _(arg1_3) -- Line 69
		--[[ Upvalues[1]:
			[1]: any_useBinding_result2_upvr (readonly)
		]]
		any_useBinding_result2_upvr(UDim2.fromOffset(arg1_3.AbsoluteSize.X, arg1_3.AbsoluteSize.Y))
	end
	if UIBloxConfig_upvr.enableAppNavTextFlickerFix then
		local var32_upvw
		if any_join_result1_upvr.labelTypography then
			var32_upvw = any_join_result1_upvr.labelTypography.FontSize
			if var32_upvw ~= nil and typeof(var32_upvw) ~= "number" then
				var32_upvw = var32_upvw:getValue()
			end
		end
		local function _() -- Line 83
			--[[ Upvalues[4]:
				[1]: any_join_result1_upvr (readonly)
				[2]: TextService_upvr (copied, readonly)
				[3]: var32_upvw (read and write)
				[4]: vector2_upvr (copied, readonly)
			]]
			if any_join_result1_upvr.hasLabel and any_join_result1_upvr.labelText and any_join_result1_upvr.labelTypography then
				local any_GetTextSize_result1 = TextService_upvr:GetTextSize(any_join_result1_upvr.labelText, var32_upvw, any_join_result1_upvr.labelTypography.Font, vector2_upvr)
				return UDim2.new(0, any_GetTextSize_result1.X + 2, 0, any_GetTextSize_result1.Y + 2)
			end
			return nil
		end
		local _ = {any_join_result1_upvr.hasLabel, any_join_result1_upvr.labelText, any_join_result1_upvr.labelTypography, var32_upvw}
	end
	if any_join_result1_upvr.renderIcon then
		-- KONSTANTWARNING: GOTO [154] #103
	end
	-- KONSTANTERROR: [0] 1. Error Block 92 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [97] 69. Error Block 93 start (CF ANALYSIS FAILED)
	local var36
	if any_join_result1_upvr.isChecked and any_join_result1_upvr.iconCheckedImage then
		var36 = any_join_result1_upvr.iconCheckedImage
	else
		var36 = any_join_result1_upvr.iconImage
	end
	if any_join_result1_upvr.isChecked then
		local _ = Tokens_2.Semantic.Color.Icon.Emphasis
	else
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	;({
		BackgroundTransparency = 1;
		Size = UDim2.fromOffset(Tokens_2.Global.Size_350, Tokens_2.Global.Size_350);
		Image = var36;
		ScaleType = Enum.ScaleType.Fit;
		ImageColor3 = Tokens_2.Semantic.Color.Icon.Default.Color3;
	}).ImageTransparency = Tokens_2.Semantic.Color.Icon.Default.Transparency
	-- KONSTANTERROR: [97] 69. Error Block 93 end (CF ANALYSIS FAILED)
end)