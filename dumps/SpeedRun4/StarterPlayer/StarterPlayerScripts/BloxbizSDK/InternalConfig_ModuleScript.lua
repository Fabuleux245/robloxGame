-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:40:44
-- Luau version 6, Types version 3
-- Time taken: 0.001139 seconds

local tbl_upvr = {
	BASE_URL = "https://analytics-api-{GAME_ID}-{GUID}.superbiz.gg";
	USE_INTERNAL_CONFIG_BASE_URL = false;
	API_KEY = nil;
	USE_INTERNAL_CONFIG_API_KEY = false;
	BATCH_EVENTS_WAIT_TIME = 10;
	DETECT_IMPRESSION_WAIT_TIME = 0.25;
	DRAW_RAYCAST = false;
	MAX_EVENT_BATCH = 1000;
	MAX_EVENT_BATCH_SIZE = 4000000;
	MAX_RETRY_EVENTS = 5;
	MAX_RETRY_GET_ADS = 5;
	PRINT_DEBUG_STATEMENTS = false;
	PRINT_IMPRESSIONS = false;
	SDK_VERSION = 39;
	IMPRESSION_TIME_UNTIL_IMG_GIF_ROTATION = 10;
	TIME_BETWEEN_HEART_BEAT = 60;
}
local function _() -- Line 22, Named "getConfig"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local InternalConfigDev_2 = game.ReplicatedStorage:FindFirstChild("InternalConfigDev")
	if InternalConfigDev_2 then
		return require(InternalConfigDev_2)
	end
	return tbl_upvr
end
local InternalConfigDev = game.ReplicatedStorage:FindFirstChild("InternalConfigDev")
local var4
if InternalConfigDev then
	var4 = require(InternalConfigDev)
else
	var4 = tbl_upvr
end
return var4