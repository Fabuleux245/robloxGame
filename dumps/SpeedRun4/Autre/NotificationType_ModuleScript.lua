-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:59
-- Luau version 6, Types version 3
-- Time taken: 0.001247 seconds

local GuiService = game:GetService("GuiService")
local pcall_result1, pcall_result2 = pcall(GuiService.GetNotificationTypeList, GuiService)
local var5
local function INLINED() -- Internal function, doesn't exist in bytecode
	var5 = pcall_result2
	return var5
end
if not pcall_result1 or not INLINED() then
	var5 = {
		VIEW_PROFILE = 0;
		REPORT_ABUSE = 1;
		VIEW_GAME_DETAILS = 2;
		SHOW_TAB_BAR = 3;
		HIDE_TAB_BAR = 4;
		UNREAD_COUNT = 5;
		PRIVACY_SETTINGS = 6;
		BACK_BUTTON_NOT_CONSUMED = 7;
		PURCHASE_ROBUX = 8;
		VIEW_NOTIFICATIONS = 9;
		APP_READY = 10;
		CLOSE_MODAL = 11;
		VIEW_GAME_DETAILS_ANIMATED = 12;
		SEARCH_GAMES = 15;
		GAMES_SEE_ALL = 16;
		ACTION_LOG_OUT = 17;
		LAUNCH_CONVERSATION = 18;
		UNIVERSAL_FRIENDS = 19;
		OPEN_CUSTOM_WEBVIEW = 20;
		SET_STATUS_BAR_STYLE = 22;
		OPEN_YOUTUBE_VIDEO = 23;
		DID_LOG_OUT = 24;
		OPEN_BUILDERS_CLUB = 25;
		ACTION_LOG_IN = 26;
		OPEN_SETTINGS_WEBVIEW = 27;
		DID_LOG_IN = 28;
		OPEN_CAPTCHA_VIEW = 29;
		DID_SIGN_UP = 30;
		LUA_UNAUTHORIZED_LOG_OUT = 31;
		NATIVE_SHARE = 32;
		SDK_SHARE = 33;
		SDK_OPEN_URL = 34;
		NATIVE_EXIT = 35;
		RESTART_LUA_APP = 36;
		IDENTITY_VERIFICATION = 38;
		SCAN_QR_CODE = 39;
		SHOW_FRIEND_QR_CODE = 40;
		DID_SWITCH_ACCOUNT = 42;
	}
end
return var5