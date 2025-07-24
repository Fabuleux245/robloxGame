-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:33:13
-- Luau version 6, Types version 3
-- Time taken: 0.000835 seconds

local Parent = script:FindFirstAncestor("GamePlayButton").Parent
local t = require(Parent.t)
local any_strictInterface_result1_upvr = t.strictInterface({
	placeId = t.string;
	playButtonState = t.string;
	universeId = t.string;
})
local mutedError_upvr = require(Parent.Loggers).mutedError
return function(arg1, arg2) -- Line 16
	--[[ Upvalues[2]:
		[1]: any_strictInterface_result1_upvr (readonly)
		[2]: mutedError_upvr (readonly)
	]]
	local var5_result1, var5_result2 = any_strictInterface_result1_upvr(arg2)
	if not var5_result1 then
		mutedError_upvr(var5_result2)
	end
	arg1.EventStream:setRBXEventStream("GamePlayButton", "shareLinkGameJoin", arg2)
	arg1.Diag:reportCounter("shareLinkGameJoin", 1)
end