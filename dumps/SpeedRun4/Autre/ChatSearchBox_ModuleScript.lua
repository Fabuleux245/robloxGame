-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:39
-- Luau version 6, Types version 3
-- Time taken: 0.001908 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local tbl_upvr = {
	paddingTop = 0;
	paddingBottom = 6;
	paddingLeft = 12;
	paddingRight = 12;
	layoutOrder = -1;
}
local Cryo_upvr = require(Parent.Cryo)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local React_upvr = require(Parent.React)
local SearchTopBar_upvr = require(AppChat.Components.ChatLanding.SearchTopBar)
local FFlagAppChatFixInExperienceMobileSearchBarHeight_upvr = require(AppChat.Flags.FFlagAppChatFixInExperienceMobileSearchBarHeight)
return function(arg1) -- Line 35
	--[[ Upvalues[6]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: SearchTopBar_upvr (readonly)
		[6]: FFlagAppChatFixInExperienceMobileSearchBarHeight_upvr (readonly)
	]]
	local any_union_result1 = Cryo_upvr.Dictionary.union(tbl_upvr, arg1)
	local useLocalization_upvr_result1 = useLocalization_upvr({
		searchPlaceholderText = "Feature.Chat.Label.SearchWord";
		cancelText = "Feature.Chat.Action.Cancel";
	})
	local module = {}
	local any_createElement_result1 = React_upvr.createElement(SearchTopBar_upvr, {
		initialInputText = any_union_result1.initialText or "";
		cancelText = useLocalization_upvr_result1.cancelText;
		searchPlaceholderText = useLocalization_upvr_result1.searchPlaceholderText;
		shouldShowCancel = false;
		captureFocusOnMount = false;
		filterBoxPaddingTop = any_union_result1.paddingTop;
		filterBoxPaddingBottom = any_union_result1.paddingBottom;
		filterBoxPaddingLeft = any_union_result1.paddingLeft;
		filterBoxPaddingRight = any_union_result1.paddingRight;
		textChangedCallback = any_union_result1.onFilter;
	})
	module.filterBox = any_createElement_result1
	if FFlagAppChatFixInExperienceMobileSearchBarHeight_upvr then
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1("UIFlexItem", {
			FlexMode = Enum.UIFlexMode.None;
		})
	else
		any_createElement_result1 = nil
	end
	module.heightFlexOverride = any_createElement_result1
	return React_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 0, any_union_result1.height - any_union_result1.paddingBottom - any_union_result1.paddingTop);
		LayoutOrder = any_union_result1.layoutOrder;
		BackgroundTransparency = 1;
	}, module)
end