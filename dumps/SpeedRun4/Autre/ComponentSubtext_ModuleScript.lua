-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:07
-- Luau version 6, Types version 3
-- Time taken: 0.000813 seconds

local Parent = script:FindFirstAncestor("GenericAbuseReporting").Parent
local React_upvr = require(Parent.React)
local Foundation = require(Parent.Foundation)
local useTokens_upvr = Foundation.Hooks.useTokens
local Text_upvr = Foundation.Text
return React_upvr.memo(function(arg1) -- Line 16, Named "ComponentSubtext"
	--[[ Upvalues[3]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: Text_upvr (readonly)
	]]
	local useTokens_upvr_result1 = useTokens_upvr()
	local module = {
		Text = arg1.requirementMessage;
	}
	local var8
	if arg1.isOptional then
		var8 = useTokens_upvr_result1.Color.Content.Muted
	else
		var8 = useTokens_upvr_result1.Color.System.Alert
	end
	module.textStyle = var8
	var8 = useTokens_upvr_result1.Typography.CaptionMedium
	module.fontStyle = var8
	var8 = "auto-xy"
	module.tag = var8
	if not arg1.isOptional and not arg1.isErrorState then
		var8 = false
	else
		var8 = true
	end
	module.Visible = var8
	var8 = arg1.layoutOrder
	module.LayoutOrder = var8
	return React_upvr.createElement(Text_upvr, module)
end)