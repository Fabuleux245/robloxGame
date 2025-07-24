-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:32:13
-- Luau version 6, Types version 3
-- Time taken: 0.003166 seconds

local Parent = script:FindFirstAncestor("GameCollections").Parent
local t = require(Parent.t)
local mutedError_upvr = require(Parent.Loggers).mutedError
local any_strictInterface_result1_upvr = t.strictInterface({
	action = t.string;
	linkPath = t.string;
	webViewSupported = t.boolean;
	gameSetTypeId = t.optional(t.string);
	durationInSeconds = t.optional(t.number);
})
local function _(arg1) -- Line 28, Named "validateEventSchema"
	--[[ Upvalues[2]:
		[1]: any_strictInterface_result1_upvr (readonly)
		[2]: mutedError_upvr (readonly)
	]]
	local var5_result1, any_strictInterface_result1_upvr_result2_2 = any_strictInterface_result1_upvr(arg1)
	if not var5_result1 then
		mutedError_upvr(any_strictInterface_result1_upvr_result2_2)
	end
end
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local AppEventIngestService_upvr = require(Parent.RoactServiceTags).AppEventIngestService
local React_upvr = require(Parent.React)
local UrlBuilder_upvr = require(Parent.UrlBuilder).UrlBuilder
local default_upvr = require(Parent.LinkingProtocol).LinkingProtocol.default
local AppPage_upvr = require(Parent.RobloxAppEnums).AppPage
return function() -- Line 36, Named "useNavigateToSortLinkWebView"
	--[[ Upvalues[10]:
		[1]: useNavigation_upvr (readonly)
		[2]: useAppPolicy_upvr (readonly)
		[3]: useRoactService_upvr (readonly)
		[4]: AppEventIngestService_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: any_strictInterface_result1_upvr (readonly)
		[7]: mutedError_upvr (readonly)
		[8]: UrlBuilder_upvr (readonly)
		[9]: default_upvr (readonly)
		[10]: AppPage_upvr (readonly)
	]]
	local var8_result1_upvr = useNavigation_upvr()
	local useAppPolicy_upvr_result1_upvr = useAppPolicy_upvr(function(arg1) -- Line 38
		return arg1.getWebViewSupport()
	end)
	local var10_result1_upvr = useRoactService_upvr(AppEventIngestService_upvr)
	return React_upvr.useCallback(function(arg1, arg2, arg3, arg4, arg5) -- Line 44
		--[[ Upvalues[8]:
			[1]: useAppPolicy_upvr_result1_upvr (readonly)
			[2]: any_strictInterface_result1_upvr (copied, readonly)
			[3]: mutedError_upvr (copied, readonly)
			[4]: var10_result1_upvr (readonly)
			[5]: UrlBuilder_upvr (copied, readonly)
			[6]: default_upvr (copied, readonly)
			[7]: var8_result1_upvr (readonly)
			[8]: AppPage_upvr (copied, readonly)
		]]
		local function _(arg1_2, arg2_2) -- Line 45
			--[[ Upvalues[7]:
				[1]: arg1 (readonly)
				[2]: arg4 (readonly)
				[3]: useAppPolicy_upvr_result1_upvr (copied, readonly)
				[4]: any_strictInterface_result1_upvr (copied, readonly)
				[5]: mutedError_upvr (copied, readonly)
				[6]: var10_result1_upvr (copied, readonly)
				[7]: arg2 (readonly)
			]]
			local tbl_3 = {}
			tbl_3.linkPath = arg1
			tbl_3.action = arg1_2
			tbl_3.gameSetTypeId = arg4
			tbl_3.webViewSupported = useAppPolicy_upvr_result1_upvr
			tbl_3.durationInSeconds = arg2_2
			local var5_result1_3, any_strictInterface_result1_upvr_result2 = any_strictInterface_result1_upvr(tbl_3)
			if not var5_result1_3 then
				mutedError_upvr(any_strictInterface_result1_upvr_result2)
			end
			var10_result1_upvr:sendEventDeferred(arg2, "navigateToSortLink", tbl_3)
		end
		local tbl_6 = {}
		tbl_6.linkPath = arg1
		tbl_6.action = "click"
		tbl_6.gameSetTypeId = arg4
		tbl_6.webViewSupported = useAppPolicy_upvr_result1_upvr
		tbl_6.durationInSeconds = nil
		local any_strictInterface_result1_upvr_result1_2, var5_result2 = any_strictInterface_result1_upvr(tbl_6)
		if not any_strictInterface_result1_upvr_result1_2 then
			mutedError_upvr(var5_result2)
		end
		var10_result1_upvr:sendEventDeferred(arg2, "navigateToSortLink", tbl_6)
		if useAppPolicy_upvr_result1_upvr then
			local var28 = UrlBuilder_upvr
			if string.find(arg1, '/') == 1 then
				var28 = arg1:gsub('/', "www:", 1)
			else
				var28 = arg1
			end
			local var29_upvr = var28.fromString(var28)()
			local tbl_5 = {}
			tbl_5.linkPath = arg1
			tbl_5.action = "open"
			tbl_5.gameSetTypeId = arg4
			tbl_5.webViewSupported = useAppPolicy_upvr_result1_upvr
			tbl_5.durationInSeconds = nil
			local any_strictInterface_result1_upvr_result1, any_strictInterface_result1_upvr_result2_3 = any_strictInterface_result1_upvr(tbl_5)
			if not any_strictInterface_result1_upvr_result1 then
				mutedError_upvr(any_strictInterface_result1_upvr_result2_3)
			end
			var10_result1_upvr:sendEventDeferred(arg2, "navigateToSortLink", tbl_5)
			local os_clock_result1_upvr = os.clock()
			default_upvr:isURLRegistered(var29_upvr):andThen(function(arg1_3) -- Line 69
				--[[ Upvalues[14]:
					[1]: default_upvr (copied, readonly)
					[2]: var29_upvr (readonly)
					[3]: var8_result1_upvr (copied, readonly)
					[4]: AppPage_upvr (copied, readonly)
					[5]: arg3 (readonly)
					[6]: os_clock_result1_upvr (readonly)
					[7]: arg1 (readonly)
					[8]: arg4 (readonly)
					[9]: useAppPolicy_upvr_result1_upvr (copied, readonly)
					[10]: any_strictInterface_result1_upvr (copied, readonly)
					[11]: mutedError_upvr (copied, readonly)
					[12]: var10_result1_upvr (copied, readonly)
					[13]: arg2 (readonly)
					[14]: arg5 (readonly)
				]]
				if arg1_3 then
					default_upvr:detectURL(var29_upvr)
				else
					local tbl = {
						detail = var29_upvr;
					}
					local tbl_4 = {}
					tbl_4.title = arg3
					function tbl_4.onClose() -- Line 77
						--[[ Upvalues[9]:
							[1]: os_clock_result1_upvr (copied, readonly)
							[2]: arg1 (copied, readonly)
							[3]: arg4 (copied, readonly)
							[4]: useAppPolicy_upvr_result1_upvr (copied, readonly)
							[5]: any_strictInterface_result1_upvr (copied, readonly)
							[6]: mutedError_upvr (copied, readonly)
							[7]: var10_result1_upvr (copied, readonly)
							[8]: arg2 (copied, readonly)
							[9]: arg5 (copied, readonly)
						]]
						local tbl_2 = {}
						tbl_2.linkPath = arg1
						tbl_2.action = "close"
						tbl_2.gameSetTypeId = arg4
						tbl_2.webViewSupported = useAppPolicy_upvr_result1_upvr
						tbl_2.durationInSeconds = os.clock() - os_clock_result1_upvr
						local var5_result1_2, var5_result2_2 = any_strictInterface_result1_upvr(tbl_2)
						if not var5_result1_2 then
							mutedError_upvr(var5_result2_2)
						end
						var10_result1_upvr:sendEventDeferred(arg2, "navigateToSortLink", tbl_2)
						if arg5 then
							arg5()
						end
					end
					tbl.extraProps = tbl_4
					var8_result1_upvr.navigate(AppPage_upvr.GenericWebPage, tbl)
				end
			end)
		else
			var29_upvr = warn
			os_clock_result1_upvr = "WebView is not supported on this platform"
			var29_upvr(os_clock_result1_upvr)
		end
	end, {var8_result1_upvr, useAppPolicy_upvr_result1_upvr})
end