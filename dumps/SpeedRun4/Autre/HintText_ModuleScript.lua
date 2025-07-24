-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:41
-- Luau version 6, Types version 3
-- Time taken: 0.000883 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local React_upvr = require(Foundation.Parent.React)
local Text_upvr = require(Foundation.Components.Text)
local withCommonProps_upvr = require(Foundation.Utility.withCommonProps)
return React_upvr.memo(React_upvr.forwardRef(function(arg1, arg2) -- Line 18, Named "HintText"
	--[[ Upvalues[3]:
		[1]: React_upvr (readonly)
		[2]: Text_upvr (readonly)
		[3]: withCommonProps_upvr (readonly)
	]]
	local module = {
		Text = arg1.text;
		tag = {
			["size-full-0 auto-y text-caption-small text-align-x-left text-align-y-top text-wrap"] = true;
			["content-default"] = not arg1.hasError;
			["content-action-alert"] = arg1.hasError;
		};
	}
	module.ref = arg2
	return React_upvr.createElement(Text_upvr, withCommonProps_upvr(arg1, module))
end))