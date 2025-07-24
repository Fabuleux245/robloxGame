-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:15:42
-- Luau version 6, Types version 3
-- Time taken: 0.000718 seconds

local Parent = script:FindFirstAncestor("PeekView").Parent
local t = require(Parent.t)
local any_union_result1_upvr = t.union(t.strictInterface({
	page = t.string;
	dismissMethod = t.string;
}), t.strictInterface({
	page = t.string;
	dismissMethod = t.string;
	locale = t.optional(t.string);
	universeId = t.string;
	source = t.string;
	index = t.number;
}))
local mutedError_upvr = require(Parent.Loggers).mutedError
return {
	dismissMethodEnum = {
		topBarTap = "topBarTap";
		scrimTap = "scrimTap";
		swipe = "swipe";
		handleTap = "handleTap";
	};
	logEvent = function(arg1, arg2, arg3) -- Line 31, Named "logEvent"
		--[[ Upvalues[2]:
			[1]: any_union_result1_upvr (readonly)
			[2]: mutedError_upvr (readonly)
		]]
		local var6_result1, any_union_result1_upvr_result2 = any_union_result1_upvr(arg3)
		if not var6_result1 then
			mutedError_upvr(any_union_result1_upvr_result2)
		end
		arg1:sendEventDeferred(arg2, "uiPeekViewDismissed", arg3)
	end;
}