-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:37:46
-- Luau version 6, Types version 3
-- Time taken: 0.001596 seconds

local Parent = script:FindFirstAncestor("NetworkingSquads").Parent
local Cryo_upvr = require(Parent.Cryo)
local Url_upvr = require(Parent.Http).Url
return function(arg1) -- Line 9
	--[[ Upvalues[2]:
		[1]: Cryo_upvr (readonly)
		[2]: Url_upvr (readonly)
	]]
	return arg1.roduxNetworking.POST({
		Name = "SendSquadVoiceAbuseReport";
	}, function(arg1_2, arg2) -- Line 14
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (copied, readonly)
			[2]: Url_upvr (copied, readonly)
		]]
		assert(arg2.voiceChannelId, "Missing voiceChannelId")
		return arg1_2(Url_upvr.APIS_URL):path("abuse-reporting"):path("v2"):path("abuse-report"):body({
			tags = {
				ENTRY_POINT = {
					valueList = {{
						data = "party";
					}};
				};
				SUBMITTER_USER_ID = {
					valueList = {{
						data = arg2.submitterUserId;
					}};
				};
				REPORT_TARGET_USER_ID = {
					valueList = {{
						data = arg2.abuserUserId;
					}};
				};
				REPORTED_ABUSE_CATEGORY = {
					valueList = {{
						data = arg2.abuseReason;
					}};
				};
				REPORTER_COMMENT = {
					valueList = {{
						data = arg2.abuseComment;
					}};
				};
				IS_PLACE_VOICE_ENABLED = {
					valueList = {{
						data = "true";
					}};
				};
				VOICE_USER_IDS_FROM_CLIENT = {
					valueList = Cryo_upvr.List.map(arg2.voiceUserIds, function(arg1_3) -- Line 17
						return {
							data = tostring(arg1_3);
						}
					end);
				};
				IN_EXP_MENU_OPENED_UNIX_MILLI = {
					valueList = {{
						data = tostring(math.floor(arg2.reportBeginTimestampMs));
					}};
				};
				VOICE_CHANNEL_ID = {
					valueList = {{
						data = arg2.voiceChannelId;
					}};
				};
				VOICE_USER_COUNT = {
					valueList = {{
						data = tostring(arg2.voiceUserCount);
					}};
				};
				VOICE_IMPACTED_USER_COUNT = {
					valueList = {{
						data = '0';
					}};
				};
				REPORTED_ABUSE_VECTOR = {
					valueList = {{
						data = "voice";
					}};
				};
			};
		})
	end)
end