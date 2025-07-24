-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:50
-- Luau version 6, Types version 3
-- Time taken: 0.002415 seconds

local Parent = script:FindFirstAncestor("FriendsCommon").Parent
local SocialLuaAnalytics = require(Parent.SocialLuaAnalytics)
function areEqual(arg1, arg2) -- Line 48
	local var9 = false
	if arg1.userPresenceType == arg2.userPresenceType then
		if arg1.placeId ~= arg2.placeId then
			var9 = false
		else
			var9 = true
		end
	end
	return var9
end
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local any_createEmitter_result1_upvr = SocialLuaAnalytics.Telemetry.createEmitter({
	telemetryImpl = require(Parent.LoggingProtocol).default;
	defaultTelemetryConfig = {
		throttlingThousandths = game:DefineFastInt("PresenceImpressionLoggingThrottlePerMyriad", 10000);
		links = "https://docs.google.com/document/d/1uj9vb188k-wC2u3U3-UX3fm7xLffIbbvF7BDq3hs2Ak";
	};
	getSharedInfo = function() -- Line 29, Named "getSharedInfo"
		return {}
	end;
})
local any_new_result1_upvr = SocialLuaAnalytics.Telemetry.new({
	name = "PresenceImpression";
	description = "Emitted when the presence status of a friend updates on the client";
	lastUpdated = {2025, 4, 10};
	backendsList = {{
		type = "EventIngest";
		format = function(arg1, arg2) -- Line 41, Named "format"
			return arg1
		end;
	}};
})
function usePresenceImpressionEvents(arg1) -- Line 52
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: any_createEmitter_result1_upvr (readonly)
		[4]: any_new_result1_upvr (readonly)
	]]
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState({})
	local tbl = {}
	tbl[1] = arg1
	React_upvr.useEffect(function() -- Line 55
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: any_useState_result1_upvr (readonly)
			[4]: any_createEmitter_result1_upvr (copied, readonly)
			[5]: any_new_result1_upvr (copied, readonly)
			[6]: any_useState_result2_upvr (readonly)
		]]
		local tbl_2 = {}
		local _, pairs_result2, pairs_result3 = pairs(arg1)
		local var29
		for _, v in var29, pairs_result2, pairs_result3 do
			tbl_2[v.id] = v.presence
		end
		var29 = false
		for i_2, v_2 in pairs(Cryo_upvr.Dictionary.join(any_useState_result1_upvr, tbl_2)) do
			if tbl_2[i_2] == nil then
				any_createEmitter_result1_upvr.emit(any_new_result1_upvr, {
					observedUserId = i_2;
					presenceType = "Offline";
					lastLocation = "Website";
					implementationVariant = "UniversalAppGraphQL";
				})
				var29 = true
			elseif any_useState_result1_upvr[i_2] == nil or not areEqual(any_useState_result1_upvr[i_2], tbl_2[i_2]) then
				any_createEmitter_result1_upvr.emit(any_new_result1_upvr, {
					observedUserId = v_2.id;
					presenceType = v_2.userPresenceType;
					placeId = v_2.placeId;
					universeId = v_2.universeId;
					gameId = v_2.gameId;
					lastLocation = v_2.lastLocation;
					implementationVariant = "UniversalAppGraphQL";
				})
				var29 = true
			end
		end
		if var29 then
			any_useState_result2_upvr(tbl_2)
		end
	end, tbl)
end
return usePresenceImpressionEvents