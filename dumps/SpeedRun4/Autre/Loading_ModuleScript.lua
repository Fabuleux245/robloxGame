-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:48:00
-- Luau version 6, Types version 3
-- Time taken: 0.001072 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local tbl_upvr = {
	size = require(Foundation.Enums.IconSize).Large;
}
local withDefaults_upvr = require(Foundation.Utility.withDefaults)
local useRotation_upvr = require(Foundation.Utility.useRotation)
local useTokens_upvr = require(Foundation.Providers.Style.useTokens)
local Icon_upvr = require(Foundation.Components.Icon)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 24, Named "Loading"
	--[[ Upvalues[7]:
		[1]: withDefaults_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: useRotation_upvr (readonly)
		[4]: useTokens_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: Icon_upvr (readonly)
		[7]: withCommonProps_upvr (readonly)
	]]
	local withDefaults_upvr_result1 = withDefaults_upvr(arg1, tbl_upvr)
	local module = {
		name = "icons/graphic/loadingspinner";
		size = withDefaults_upvr_result1.size;
		style = useTokens_upvr().DarkMode.Content.Emphasis;
		Rotation = useRotation_upvr();
	}
	module.ref = arg2
	return React_upvr.createElement(Icon_upvr, withCommonProps_upvr(withDefaults_upvr_result1, module))
end))