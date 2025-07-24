-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:42
-- Luau version 6, Types version 3
-- Time taken: 0.001660 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local any_extend_result1 = Roact_upvr.PureComponent:extend("VoiceChatPrompt")
any_extend_result1.validateProps = t.strictInterface({
	promptSignal = t.optional(t.RBXScriptSignal);
	errorText = t.optional(t.string);
	bannedUntil = t.optional(t.string);
	onContinueFunc = t.optional(t.callback);
	onPrimaryActivated = t.optional(t.callback);
	onSecondaryActivated = t.optional(t.callback);
	onReadyForSignal = t.optional(t.callback);
	Analytics = t.optional(t.table);
	VoiceChatServiceManager = t.optional(t.table);
	policyMapper = t.optional(t.callback);
	settingsAppAvailable = t.optional(t.boolean);
})
local InGameMenuPolicy_upvr = require(script.Parent.Parent.Parent.InGameMenu.InGameMenuPolicy)
local VoiceChatPromptFrame_upvr = require(script.Parent.VoiceChatPromptFrame)
function any_extend_result1.render(arg1) -- Line 27
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: InGameMenuPolicy_upvr (readonly)
		[3]: VoiceChatPromptFrame_upvr (readonly)
	]]
	local module = {}
	local tbl_2 = {}
	local tbl = {}
	local policyMapper = arg1.props.policyMapper
	if not policyMapper then
		policyMapper = InGameMenuPolicy_upvr.Mapper
	end
	tbl[1] = policyMapper
	tbl_2.policy = tbl
	module.PolicyProvider = Roact_upvr.createElement(InGameMenuPolicy_upvr.Provider, tbl_2, {
		Content = Roact_upvr.createElement(VoiceChatPromptFrame_upvr, arg1.props);
	})
	return Roact_upvr.createElement("ScreenGui", {
		AutoLocalize = false;
		DisplayOrder = 9;
		IgnoreGuiInset = true;
		OnTopOfCoreBlur = true;
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
	}, module)
end
return any_extend_result1