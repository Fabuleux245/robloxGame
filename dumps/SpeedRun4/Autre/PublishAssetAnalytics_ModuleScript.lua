-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:22
-- Luau version 6, Types version 3
-- Time taken: 0.001116 seconds

local RbxAnalyticsService_upvr = game:GetService("RbxAnalyticsService")
local module_upvr = {
	Section = {
		BuyCreationPage = "buy_creation_page";
		BuyItemModal = "buy_item_modal";
		ProcessCompleteModal = "process_complete_modal";
	};
	Action = {
		FieldTouched = "field_touched";
		ButtonClicked = "button_clicked";
		PageLoad = "page_load";
	};
	Element = {
		Name = "name";
		Description = "description";
		X = 'x';
		Expand = "expand";
		Buy = "buy";
		Cancel = "cancel";
	};
}
local function _(arg1, arg2, arg3) -- Line 26, Named "sendEvent"
	--[[ Upvalues[1]:
		[1]: RbxAnalyticsService_upvr (readonly)
	]]
	local tbl_2 = {}
	tbl_2.section = arg1
	tbl_2.action = arg2
	tbl_2.element = arg3
	RbxAnalyticsService_upvr:SendEventDeferred("client", "publish_avatar_prompt", "iec_funnel_user_creation", tbl_2)
end
function module_upvr.sendPageLoad(arg1) -- Line 34
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
	]]
	local tbl_3 = {}
	tbl_3.section = arg1
	tbl_3.action = module_upvr.Action.PageLoad
	tbl_3.element = nil
	RbxAnalyticsService_upvr:SendEventDeferred("client", "publish_avatar_prompt", "iec_funnel_user_creation", tbl_3)
end
function module_upvr.sendFieldTouched(arg1, arg2) -- Line 38
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
	]]
	local tbl = {}
	tbl.section = arg1
	tbl.action = module_upvr.Action.FieldTouched
	tbl.element = arg2
	RbxAnalyticsService_upvr:SendEventDeferred("client", "publish_avatar_prompt", "iec_funnel_user_creation", tbl)
end
function module_upvr.sendButtonClicked(arg1, arg2) -- Line 42
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: RbxAnalyticsService_upvr (readonly)
	]]
	local tbl_4 = {}
	tbl_4.section = arg1
	tbl_4.action = module_upvr.Action.ButtonClicked
	tbl_4.element = arg2
	RbxAnalyticsService_upvr:SendEventDeferred("client", "publish_avatar_prompt", "iec_funnel_user_creation", tbl_4)
end
return module_upvr