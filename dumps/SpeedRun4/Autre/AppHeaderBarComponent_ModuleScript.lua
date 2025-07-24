-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:57
-- Luau version 6, Types version 3
-- Time taken: 0.005424 seconds

local Parent = script.Parent.Parent.Parent
local React_upvr = require(Parent.React)
local UIBlox = require(Parent.UIBlox)
local Cryo_upvr = require(Parent.Cryo)
local FFlagLuaAppFixAppNavTitleOverlap_upvr = require(Parent.SharedFlags).FFlagLuaAppFixAppNavTitleOverlap
local tbl_upvr = {
	automaticHeight = false;
	hasDivider = false;
	onMedia = false;
	isTitleCentered = false;
	utilitiesGap = UDim.new(0, 0);
}
local useStyle_upvr = UIBlox.Core.Style.useStyle
local FFlagLuaAppFixAppNavTextFlicker_upvr = require(Parent.SharedFlags).FFlagLuaAppFixAppNavTextFlicker
local TextService_upvr = game:GetService("TextService")
local function BarTitle_upvr(arg1) -- Line 37, Named "BarTitle"
	--[[ Upvalues[6]:
		[1]: useStyle_upvr (readonly)
		[2]: FFlagLuaAppFixAppNavTextFlicker_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: TextService_upvr (readonly)
		[5]: FFlagLuaAppFixAppNavTitleOverlap_upvr (readonly)
		[6]: Cryo_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local Tokens_upvr = useStyle_upvr().Tokens
	local title_upvr_3 = arg1.title
	local var13_upvr
	if not var13_upvr then
		var13_upvr = Tokens_upvr.Semantic.Typography.Title
	end
	if arg1.onMedia then
		local _ = Tokens_upvr.Global.Color.White
	else
	end
	if FFlagLuaAppFixAppNavTextFlicker_upvr then
		local function _() -- Line 48
			--[[ Upvalues[4]:
				[1]: TextService_upvr (copied, readonly)
				[2]: title_upvr_3 (readonly)
				[3]: var13_upvr (readonly)
				[4]: Tokens_upvr (readonly)
			]]
			local any_GetTextSize_result1 = TextService_upvr:GetTextSize(title_upvr_3, var13_upvr.FontSize, var13_upvr.Font, Vector2.new(math.huge, math.huge))
			return UDim2.fromOffset(any_GetTextSize_result1.X + 2, any_GetTextSize_result1.Y + Tokens_upvr.Global.Space_25 * 2)
		end
		local _ = {title_upvr_3, var13_upvr.FontSize, var13_upvr.Font, Tokens_upvr}
	else
	end
	local module = {
		LayoutOrder = arg1.layoutOrder;
	}
	if FFlagLuaAppFixAppNavTextFlicker_upvr then
		-- KONSTANTWARNING: GOTO [71] #49
	end
	module.AutomaticSize = Enum.AutomaticSize.XY
	if FFlagLuaAppFixAppNavTextFlicker_upvr then
		-- KONSTANTWARNING: GOTO [78] #55
	end
	module.Size = nil
	module.BackgroundTransparency = 1
	module.Text = title_upvr_3
	module.Font = var13_upvr.Font
	module.TextSize = var13_upvr.FontSize
	module.LineHeight = var13_upvr.LineHeight
	module.TextColor3 = Tokens_upvr.Semantic.Color.Text.Emphasis.Color3
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module.TextTransparency = Tokens_upvr.Semantic.Color.Text.Emphasis.Transparency
	if FFlagLuaAppFixAppNavTitleOverlap_upvr then
		-- KONSTANTWARNING: GOTO [111] #74
	end
	module.TextXAlignment = nil
	if FFlagLuaAppFixAppNavTitleOverlap_upvr then
		-- KONSTANTWARNING: GOTO [118] #80
	end
	module.TextWrapped = nil
	if FFlagLuaAppFixAppNavTitleOverlap_upvr then
		local children = arg1.children
		if not children then
			children = {}
		end
		local any_join_result1_2 = Cryo_upvr.Dictionary.join(children, {
			Padding = React_upvr.createElement("UIPadding", {
				PaddingTop = UDim.new(0, Tokens_upvr.Global.Space_25);
				PaddingBottom = UDim.new(0, Tokens_upvr.Global.Space_25);
			});
		})
	else
		({}).Padding = React_upvr.createElement("UIPadding", {
			PaddingTop = UDim.new(0, Tokens_upvr.Global.Space_25);
			PaddingBottom = UDim.new(0, Tokens_upvr.Global.Space_25);
		})
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	return React_upvr.createElement("TextLabel", module, {})
end
local function useRenderLeft_upvr(arg1) -- Line 87, Named "useRenderLeft"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: BarTitle_upvr (readonly)
		[3]: FFlagLuaAppFixAppNavTitleOverlap_upvr (readonly)
	]]
	local renderNavigation_upvr = arg1.renderNavigation
	local title_upvr = arg1.title
	local onMedia_upvr = arg1.onMedia
	local titleFontStyle_upvr = arg1.titleFontStyle
	local isTitleCentered_upvr_2 = arg1.isTitleCentered
	local groupTransparencyLeft_upvr = arg1.groupTransparencyLeft
	return React_upvr.useCallback(function(arg1_2) -- Line 95
		--[[ Upvalues[9]:
			[1]: React_upvr (copied, readonly)
			[2]: groupTransparencyLeft_upvr (readonly)
			[3]: renderNavigation_upvr (readonly)
			[4]: title_upvr (readonly)
			[5]: isTitleCentered_upvr_2 (readonly)
			[6]: BarTitle_upvr (copied, readonly)
			[7]: titleFontStyle_upvr (readonly)
			[8]: onMedia_upvr (readonly)
			[9]: FFlagLuaAppFixAppNavTitleOverlap_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 42 start (CF ANALYSIS FAILED)
		if groupTransparencyLeft_upvr then
		else
		end
		if groupTransparencyLeft_upvr then
			-- KONSTANTWARNING: GOTO [19] #17
		end
		-- KONSTANTERROR: [0] 1. Error Block 42 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [18] 16. Error Block 45 start (CF ANALYSIS FAILED)
		;({
			BackgroundTransparency = 1;
		}).GroupTransparency = nil
		if groupTransparencyLeft_upvr then
			-- KONSTANTWARNING: GOTO [28] #24
		end
		-- KONSTANTERROR: [18] 16. Error Block 45 end (CF ANALYSIS FAILED)
	end, {renderNavigation_upvr, title_upvr, titleFontStyle_upvr, groupTransparencyLeft_upvr, onMedia_upvr, isTitleCentered_upvr_2})
end
local function useRenderCenter_upvr(arg1) -- Line 132, Named "useRenderCenter"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: BarTitle_upvr (readonly)
	]]
	local renderCenter_upvr = arg1.renderCenter
	local title_upvr_2 = arg1.title
	local onMedia_upvr_2 = arg1.onMedia
	local titleFontStyle_upvr_2 = arg1.titleFontStyle
	local isTitleCentered_upvr = arg1.isTitleCentered
	return React_upvr.useCallback(function() -- Line 139
		--[[ Upvalues[7]:
			[1]: renderCenter_upvr (readonly)
			[2]: title_upvr_2 (readonly)
			[3]: isTitleCentered_upvr (readonly)
			[4]: React_upvr (copied, readonly)
			[5]: BarTitle_upvr (copied, readonly)
			[6]: titleFontStyle_upvr_2 (readonly)
			[7]: onMedia_upvr_2 (readonly)
		]]
		if renderCenter_upvr then
			return renderCenter_upvr()
		end
		if title_upvr_2 and isTitleCentered_upvr then
			return React_upvr.createElement(BarTitle_upvr, {
				title = title_upvr_2;
				titleFont = titleFontStyle_upvr_2;
				onMedia = onMedia_upvr_2;
			})
		end
		return nil
	end, {renderCenter_upvr, title_upvr_2, titleFontStyle_upvr_2, isTitleCentered_upvr, onMedia_upvr_2})
end
local UtilityActionIcon_upvr = UIBlox.App.Button.UtilityActionIcon
local function useRenderRight_upvr(arg1) -- Line 154, Named "useRenderRight"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: UtilityActionIcon_upvr (readonly)
	]]
	local renderUserInfo_upvr = arg1.renderUserInfo
	local avatarActionIcon_upvr = arg1.avatarActionIcon
	local searchActionIcon_upvr = arg1.searchActionIcon
	local renderUtilities_upvr = arg1.renderUtilities
	local utilitiesGap_upvr = arg1.utilitiesGap
	local groupTransparencyRight_upvr = arg1.groupTransparencyRight
	return React_upvr.useCallback(function() -- Line 163
		--[[ Upvalues[8]:
			[1]: React_upvr (copied, readonly)
			[2]: groupTransparencyRight_upvr (readonly)
			[3]: utilitiesGap_upvr (readonly)
			[4]: renderUserInfo_upvr (readonly)
			[5]: avatarActionIcon_upvr (readonly)
			[6]: UtilityActionIcon_upvr (copied, readonly)
			[7]: searchActionIcon_upvr (readonly)
			[8]: renderUtilities_upvr (readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 44 start (CF ANALYSIS FAILED)
		if groupTransparencyRight_upvr then
		else
		end
		if groupTransparencyRight_upvr then
			-- KONSTANTWARNING: GOTO [26] #22
		end
		-- KONSTANTERROR: [0] 1. Error Block 44 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [25] 21. Error Block 50 start (CF ANALYSIS FAILED)
		;({
			Size = UDim2.fromScale(0, 1);
			BackgroundTransparency = 1;
		}).GroupTransparency = nil
		if groupTransparencyRight_upvr then
			-- KONSTANTWARNING: GOTO [35] #29
		end
		-- KONSTANTERROR: [25] 21. Error Block 50 end (CF ANALYSIS FAILED)
	end, {renderUserInfo_upvr, avatarActionIcon_upvr, searchActionIcon_upvr, renderUtilities_upvr, utilitiesGap_upvr, groupTransparencyRight_upvr})
end
local function _(arg1) -- Line 211, Named "shouldRenderRight"
	if arg1.renderUserInfo or arg1.avatarActionIcon or arg1.searchActionIcon or arg1.renderUtilities then
		return true
	end
	return false
end
local HeaderBar_upvr = UIBlox.App.Bar.HeaderBar
local GetFFlagLuaAppFixAppNavSearchBarSize_upvr = require(Parent.SharedFlags).GetFFlagLuaAppFixAppNavSearchBarSize
return function(arg1) -- Line 223, Named "AppHeaderBarComponent"
	--[[ Upvalues[8]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useRenderLeft_upvr (readonly)
		[4]: useRenderCenter_upvr (readonly)
		[5]: useRenderRight_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: HeaderBar_upvr (readonly)
		[8]: GetFFlagLuaAppFixAppNavSearchBarSize_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
	local any_join_result1 = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local groupTransparency = any_join_result1.groupTransparency
	if any_join_result1.renderUserInfo or any_join_result1.avatarActionIcon or any_join_result1.searchActionIcon or any_join_result1.renderUtilities then
	else
	end
	if groupTransparency then
		-- KONSTANTWARNING: GOTO [63] #45
	end
	-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [62] 44. Error Block 44 start (CF ANALYSIS FAILED)
	local _ = {
		Size = UDim2.fromScale(1, 0);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
	}
	if groupTransparency then
		-- KONSTANTWARNING: GOTO [82] #59
	end
	-- KONSTANTERROR: [62] 44. Error Block 44 end (CF ANALYSIS FAILED)
end