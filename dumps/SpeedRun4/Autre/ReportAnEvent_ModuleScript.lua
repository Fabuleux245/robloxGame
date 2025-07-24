-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:54
-- Luau version 6, Types version 3
-- Time taken: 0.001059 seconds

local gamePlayIntent_upvr = require(script:FindFirstAncestor("AppChat").Parent.DiscoveryAnalytics).Events.gamePlayIntent
return function(arg1, arg2, arg3) -- Line 9, Named "ReportAnEvent"
	--[[ Upvalues[1]:
		[1]: gamePlayIntent_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var2
	if arg2 == "gamePlayIntent" then
		local _ = {
			conversationId = arg1.conversationId;
			rootPlaceId = arg1.placeId;
			joinAttemptId = arg1.joinAttemptId;
		}
		var2 = arg1.eventIngest
	else
		local tbl_2 = {
			conversationId = arg1.conversationId;
			placeId = arg1.placeId;
		}
		var2 = arg1.eventStream
	end
	if arg2 == "gamePlayIntent" then
		local tbl = {
			placeId = tbl_2.rootPlaceId;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.rootPlaceId = tonumber(tbl_2.rootPlaceId)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.conversationId = tbl_2.conversationId
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl.joinAttemptId = tbl_2.joinAttemptId
		gamePlayIntent_upvr(var2, arg3, tbl)
	else
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var2:setRBXEventStream(arg3, arg2, tbl_2)
	end
end