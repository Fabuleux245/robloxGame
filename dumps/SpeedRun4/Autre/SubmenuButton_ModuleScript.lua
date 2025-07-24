-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:04
-- Luau version 6, Types version 3
-- Time taken: 0.001559 seconds

local Songbird = script:FindFirstAncestor("Songbird")
local React_upvr = require(Songbird.Parent.React)
local Foundation_upvr = require(Songbird.Parent.Foundation)
local tbl_upvr = {
	iconSize = Foundation_upvr.Enums.IconSize.Medium;
}
local Cryo_upvr = require(Songbird.Parent.Cryo)
local createNextOrder_upvr = require(Songbird.Parent.ReactUtils).createNextOrder
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local useCallback_upvr = React_upvr.useCallback
return function(arg1) -- Line 31, Named "SubmenuButton"
	--[[ Upvalues[7]:
		[1]: Cryo_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: createNextOrder_upvr (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: useCallback_upvr (readonly)
		[6]: Foundation_upvr (readonly)
		[7]: React_upvr (readonly)
	]]
	local any_join_result1_upvr = Cryo_upvr.Dictionary.join(tbl_upvr, arg1)
	local module = {}
	local var14
	if any_join_result1_upvr.icon then
		var14 = React_upvr.createElement
		var14 = var14(Foundation_upvr.Icon, {
			name = any_join_result1_upvr.icon;
			size = any_join_result1_upvr.iconSize;
			style = useTokens_upvr().Color.Content.Emphasis;
			LayoutOrder = createNextOrder_upvr()();
		})
	else
		var14 = nil
	end
	module.Icon = var14
	var14 = React_upvr.createElement
	local tbl = {
		tag = "auto-xy content-default text-label-large";
		Text = any_join_result1_upvr.text;
	}
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	tbl.LayoutOrder = createNextOrder_upvr()()
	var14 = var14(Foundation_upvr.Text, tbl)
	module.Text = var14
	return React_upvr.createElement(Foundation_upvr.View, {
		tag = "size-full-0 auto-y row gap-small padding-small align-y-center radius-medium";
		onStateChanged = useCallback_upvr(function(arg1_2) -- Line 37
			--[[ Upvalues[2]:
				[1]: Foundation_upvr (copied, readonly)
				[2]: any_join_result1_upvr (readonly)
			]]
			if arg1_2 == Foundation_upvr.Enums.ControlState.Pressed and any_join_result1_upvr.onActivated then
				any_join_result1_upvr.onActivated()
			end
		end, {any_join_result1_upvr.onActivated});
		LayoutOrder = any_join_result1_upvr.LayoutOrder;
	}, module)
end