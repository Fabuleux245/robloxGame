-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:28
-- Luau version 6, Types version 3
-- Time taken: 0.000987 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local tbl_upvr = {
	isTitleVisible = false;
	titleHeight = 0;
	hasMediaBleed = false;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local React_upvr = require(Foundation.Parent.React)
local DialogLayoutContext_upvr = require(script.Parent.DialogLayoutContext)
return function(arg1) -- Line 22, Named "DialogLayoutProvider"
	--[[ Upvalues[4]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: DialogLayoutContext_upvr (readonly)
	]]
	local withDefaults_upvr_result1 = withDefaults_upvr(arg1, tbl_upvr)
	local any_useState_result1, any_useState_result2_2 = React_upvr.useState(withDefaults_upvr_result1.titleHeight)
	local any_useState_result1_2, any_useState_result2 = React_upvr.useState(withDefaults_upvr_result1.hasMediaBleed)
	return React_upvr.createElement(DialogLayoutContext_upvr.Provider, {
		value = {
			isTitleVisible = withDefaults_upvr_result1.isTitleVisible;
			titleHeight = any_useState_result1;
			setTitleHeight = any_useState_result2_2;
			hasMediaBleed = any_useState_result1_2;
			setHasMediaBleed = any_useState_result2;
		};
	}, withDefaults_upvr_result1.children)
end