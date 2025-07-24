-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:19:19
-- Luau version 6, Types version 3
-- Time taken: 0.003708 seconds

local Parent = script:FindFirstAncestor("AppStartup").Parent
local function selectScreenSize_upvr(arg1) -- Line 17, Named "selectScreenSize"
	return arg1.ScreenSize
end
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local AppLinking_upvr = require(Parent.RoactServiceTags).AppLinking
local AppLogging_upvr = require(Parent.RoactServiceTags).AppLogging
local AppStartupMessageService_upvr = require(Parent.RoactServiceTags).AppStartupMessageService
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useDesignTokens_upvr = require(Parent.Style).useDesignTokens
local React_upvr = require(Parent.React)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Dash_upvr = require(Parent.Dash)
local LocalizationService_upvr = game:GetService("LocalizationService")
local NavigateDown_upvr = require(Parent.NavigationRodux).Thunks.NavigateDown
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
return function() -- Line 21, Named "useStartupMessageProps"
	--[[ Upvalues[14]:
		[1]: useRoactService_upvr (readonly)
		[2]: AppLinking_upvr (readonly)
		[3]: AppLogging_upvr (readonly)
		[4]: AppStartupMessageService_upvr (readonly)
		[5]: useSelector_upvr (readonly)
		[6]: selectScreenSize_upvr (readonly)
		[7]: useDispatch_upvr (readonly)
		[8]: useDesignTokens_upvr (readonly)
		[9]: React_upvr (readonly)
		[10]: useLocalization_upvr (readonly)
		[11]: Dash_upvr (readonly)
		[12]: LocalizationService_upvr (readonly)
		[13]: NavigateDown_upvr (readonly)
		[14]: AppPage_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var2_result1_upvr_2 = useRoactService_upvr(AppLinking_upvr)
	local var7_result1_upvr = useDispatch_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useState_result1_2_upvr, any_useState_result2_upvr_2 = React_upvr.useState(false)
	local any_getStartupMessage_result1 = useRoactService_upvr(AppStartupMessageService_upvr):getStartupMessage()
	local var23
	if any_getStartupMessage_result1 and not any_useState_result1 then
		local _ = true
	else
	end
	var23 = any_getStartupMessage_result1
	if not var23 then
		var23 = {}
	end
	local bodyLocalizationKey = var23.bodyLocalizationKey
	local loggingEventName_upvr = var23.loggingEventName
	local links = var23.links
	if not links then
		links = {}
	end
	local var10_result1_upvr = useLocalization_upvr(Dash_upvr.map(links, function(arg1) -- Line 42
		return arg1.localizationKey
	end))
	local tonumber_result1 = tonumber(var23.date)
	if tonumber_result1 then
	end
	local tbl = {
		titleText = var23.titleLocalizationKey;
	}
	if bodyLocalizationKey then
	end
	tbl.bodyText = {
		date = DateTime.fromUnixTimestamp(tonumber_result1):FormatUniversalTime("LL", LocalizationService_upvr.RobloxLocaleId);
		bodyLocalizationKey
	}
	tbl.buttonText = "CommonUI.Messages.Action.Dismiss"
	local var43_upvr = false
	local var2_result1_upvr = useRoactService_upvr(AppLogging_upvr)
	React_upvr.useEffect(function() -- Line 87
		--[[ Upvalues[5]:
			[1]: any_useState_result1_2_upvr (readonly)
			[2]: var43_upvr (readonly)
			[3]: loggingEventName_upvr (readonly)
			[4]: var2_result1_upvr (readonly)
			[5]: any_useState_result2_upvr_2 (readonly)
		]]
		if not any_useState_result1_2_upvr and var43_upvr and loggingEventName_upvr then
			var2_result1_upvr:logEphemeralCounterEvent({
				eventName = loggingEventName_upvr;
				backends = {"EphemeralCounter"};
				lastUpdated = {24, 2, 18};
				description = "Startup Message Displayed Event";
			})
			any_useState_result2_upvr_2(true)
		end
	end, {any_useState_result1_2_upvr, var43_upvr, loggingEventName_upvr})
	return {
		displayStartupMessage = var43_upvr;
		screenSize = useSelector_upvr(selectScreenSize_upvr);
		message = var23;
		localizedStrings = useLocalization_upvr(tbl);
		localizedLinks = Dash_upvr.reduce(links, function(arg1, arg2, arg3) -- Line 45
			--[[ Upvalues[2]:
				[1]: Dash_upvr (copied, readonly)
				[2]: var10_result1_upvr (readonly)
			]]
			return Dash_upvr.append(arg1, {{
				label = var10_result1_upvr[arg3];
				url = arg2.url;
			}})
		end, {});
		overlayColor = useDesignTokens_upvr(function(arg1) -- Line 27
			return arg1.Semantic.Color.Common.Overlay
		end);
		onDismissed = React_upvr.useCallback(function() -- Line 67
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (readonly)
			]]
			any_useState_result2_upvr(true)
		end, {});
		onOpenUrl = React_upvr.useCallback(function(arg1, arg2) -- Line 71
			--[[ Upvalues[4]:
				[1]: var2_result1_upvr_2 (readonly)
				[2]: var7_result1_upvr (readonly)
				[3]: NavigateDown_upvr (copied, readonly)
				[4]: AppPage_upvr (copied, readonly)
			]]
			var2_result1_upvr_2:isURLRegistered(arg1):andThen(function(arg1_2) -- Line 72
				--[[ Upvalues[6]:
					[1]: var2_result1_upvr_2 (copied, readonly)
					[2]: arg1 (readonly)
					[3]: var7_result1_upvr (copied, readonly)
					[4]: NavigateDown_upvr (copied, readonly)
					[5]: AppPage_upvr (copied, readonly)
					[6]: arg2 (readonly)
				]]
				if arg1_2 then
					var2_result1_upvr_2:detectURL(arg1)
				else
					local tbl_3 = {
						name = AppPage_upvr.GenericWebPage;
					}
					tbl_3.detail = arg1
					local tbl_2 = {}
					tbl_2.title = arg2
					tbl_3.extraProps = tbl_2
					var7_result1_upvr(NavigateDown_upvr(tbl_3))
				end
			end)
		end, {var7_result1_upvr, var2_result1_upvr_2});
	}
end