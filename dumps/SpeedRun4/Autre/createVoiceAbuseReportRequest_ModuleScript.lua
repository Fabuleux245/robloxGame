-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:57
-- Luau version 6, Types version 3
-- Time taken: 0.003018 seconds

local Cryo_upvr = require(game:GetService("CorePackages").Packages.Cryo)
local getSortedPlayers_upvr = require(script.Parent.VoiceUsersByProximity).getSortedPlayers
local HttpService_upvr = game:GetService("HttpService")
return function(arg1, arg2, arg3) -- Line 21
	--[[ Upvalues[3]:
		[1]: Cryo_upvr (readonly)
		[2]: getSortedPlayers_upvr (readonly)
		[3]: HttpService_upvr (readonly)
	]]
	local any_GetPlayerByUserId_result1 = arg1:GetPlayerByUserId(arg3.abuserUserId)
	local var6
	if any_GetPlayerByUserId_result1 and any_GetPlayerByUserId_result1.Character and any_GetPlayerByUserId_result1.Character.PrimaryPart then
		var6 = any_GetPlayerByUserId_result1.Character.PrimaryPart.Position
	end
	local var7 = 0
	if var6 then
		var7 = #getSortedPlayers_upvr(arg1, arg2, var6, 160, nil, any_GetPlayerByUserId_result1)
	end
	local module = {}
	local tbl = {
		ENTRY_POINT = {
			valueList = {{
				data = "in-experience";
			}};
		};
		SUBMITTER_USER_ID = {
			valueList = {{
				data = tostring(arg3.localUserId);
			}};
		};
		REPORT_TARGET_USER_ID = {
			valueList = {{
				data = tostring(arg3.abuserUserId);
			}};
		};
		REPORTED_ABUSE_CATEGORY = {
			valueList = {{
				data = arg3.abuseReason;
			}};
		};
		REPORTER_COMMENT = {
			valueList = {{
				data = arg3.abuseComment;
			}};
		};
		IS_PLACE_VOICE_ENABLED = {
			valueList = {{
				data = "true";
			}};
		};
		VOICE_USER_IDS_FROM_CLIENT = {
			valueList = Cryo_upvr.List.map(arg3.sortedPlayerListUserIds, function(arg1_2) -- Line 47
				return {
					data = tostring(arg1_2);
				}
			end);
		};
	}
	local tbl_6 = {}
	local tbl_7 = {}
	local tbl_2 = {}
	local inExpMenuOpenedUnixMilli = arg3.inExpMenuOpenedUnixMilli
	tbl_2.data = tostring(inExpMenuOpenedUnixMilli)
	tbl_7[1] = tbl_2
	tbl_6.valueList = tbl_7
	tbl.IN_EXP_MENU_OPENED_UNIX_MILLI = tbl_6
	local tbl_3 = {}
	local tbl_5 = {}
	local tbl_4 = {}
	if game:GetEngineFeature("VoiceChatServiceExposesChannelId") then
		inExpMenuOpenedUnixMilli = arg2.service:GetChannelId()
	else
		inExpMenuOpenedUnixMilli = arg2.service:GetGroupId()
	end
	tbl_4.data = tostring(inExpMenuOpenedUnixMilli)
	tbl_5[1] = tbl_4
	tbl_3.valueList = tbl_5
	tbl.VOICE_CHANNEL_ID = tbl_3
	tbl.VOICE_USER_COUNT = {
		valueList = {{
			data = tostring(#Cryo_upvr.Dictionary.values(arg2.participants));
		}};
	}
	tbl.VOICE_IMPACTED_USER_COUNT = {
		valueList = {{
			data = tostring(var7);
		}};
	}
	tbl.REPORTED_ABUSE_VECTOR = {
		valueList = {{
			data = arg3.abuseVector;
		}};
	}
	module.tags = tbl
	return HttpService_upvr:JSONEncode(module)
end