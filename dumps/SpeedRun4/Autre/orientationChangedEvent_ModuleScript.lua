-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:09
-- Luau version 6, Types version 3
-- Time taken: 0.000600 seconds

local UiShellEvents = script:FindFirstAncestor("UiShellEvents")
local t = require(UiShellEvents.Parent.t)
local any_strictInterface_result1_upvr = t.strictInterface({
	deviceOrientation = t.string;
	experienceOrientation = t.optional(t.string);
	page = t.optional(t.string);
	viewportX = t.number;
	viewportY = t.number;
	universeId = t.optional(t.string);
})
local Logger_upvr = require(UiShellEvents.Logger)
return function(arg1, arg2, arg3) -- Line 28
	--[[ Upvalues[2]:
		[1]: any_strictInterface_result1_upvr (readonly)
		[2]: Logger_upvr (readonly)
	]]
	local var6_result1, any_strictInterface_result1_upvr_result2 = any_strictInterface_result1_upvr(arg3)
	if not var6_result1 then
		Logger_upvr:error(any_strictInterface_result1_upvr_result2)
	end
	arg1:sendEventDeferred(arg2, "uiShellOrientationChanged", arg3)
end