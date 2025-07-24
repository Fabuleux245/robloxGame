-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:29
-- Luau version 6, Types version 3
-- Time taken: 0.003137 seconds

local GetFFlagEnableUnifiedWebViews_upvr = require(script:FindFirstAncestor("GenericChallenges").Parent.SharedFlags).GetFFlagEnableUnifiedWebViews
local var3_upvr
if GetFFlagEnableUnifiedWebViews_upvr() then
	var3_upvr = game:GetService("WebViewService")
else
	var3_upvr = nil
end
local module_upvr = {}
module_upvr.__index = module_upvr
local BrowserService_upvr = game:GetService("BrowserService")
local ChallengeHeaders_upvr = require(script.Parent.ChallengeHeaders)
local BuildChallengeWebViewUrl_upvr = require(script.Parent.BuildChallengeWebViewUrl)
function module_upvr.new(arg1) -- Line 63
	--[[ Upvalues[6]:
		[1]: GetFFlagEnableUnifiedWebViews_upvr (readonly)
		[2]: var3_upvr (readonly)
		[3]: BrowserService_upvr (readonly)
		[4]: ChallengeHeaders_upvr (readonly)
		[5]: BuildChallengeWebViewUrl_upvr (readonly)
		[6]: module_upvr (readonly)
	]]
	local module = {}
	local var9
	if var9 then
		var9 = arg1.webViewService
		if not var9 then
			var9 = var3_upvr
		end
		module.webViewService = var9
	else
		if not arg1.browserService then
		end
		module.browserService = BrowserService_upvr
	end
	if arg1.rawResponseHeaders ~= nil then
	end
	module.challengeUrl = BuildChallengeWebViewUrl_upvr(ChallengeHeaders_upvr.new(arg1.rawResponseHeaders), arg1.challengeType, arg1.challengeParameters)
	module.title = arg1.title
	if arg1.hybridCallback ~= nil then
		module.hybridCallback = arg1.hybridCallback
	end
	if arg1.closeCallback ~= nil then
		module.closeCallback = arg1.closeCallback
	end
	if arg1.openCallback ~= nil then
		module.openCallback = arg1.openCallback
	end
	module.hybridCallbackConnection = nil
	module.modal = false
	if arg1.modal ~= nil then
		module.modal = arg1.modal
	end
	return setmetatable(module, module_upvr)
end
function module_upvr.setCloseCallback(arg1, arg2) -- Line 108
	--[[ Upvalues[1]:
		[1]: GetFFlagEnableUnifiedWebViews_upvr (readonly)
	]]
	if GetFFlagEnableUnifiedWebViews_upvr() then
		function arg1.closeCallback() -- Line 111
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1.webViewService:CloseWindow()
			arg2()
		end
	else
		arg1.closeCallback = arg2
	end
end
function module_upvr.setOpenCallback(arg1, arg2) -- Line 120
	arg1.openCallback = arg2
end
function module_upvr.setHybridCallback(arg1, arg2) -- Line 125
	arg1.hybridCallback = arg2
end
local HttpService_upvr = game:GetService("HttpService")
function module_upvr.open(arg1) -- Line 130
	--[[ Upvalues[2]:
		[1]: GetFFlagEnableUnifiedWebViews_upvr (readonly)
		[2]: HttpService_upvr (readonly)
	]]
	local var12
	if arg1.hybridCallback == nil then
		var12 = false
	else
		var12 = true
	end
	assert(var12, "hybrid callback has not been initialized")
	if arg1.openCallback ~= nil then
		arg1.openCallback()
	end
	if GetFFlagEnableUnifiedWebViews_upvr() then
		var12 = arg1.webViewService
		arg1.hybridCallbackConnection = var12.OnJavaScriptCall:Connect(arg1.hybridCallback)
	else
		var12 = arg1.browserService
		arg1.hybridCallbackConnection = var12.JavaScriptCallback:Connect(arg1.hybridCallback)
	end
	if arg1.closeCallback ~= nil then
		if GetFFlagEnableUnifiedWebViews_upvr() then
			var12 = arg1.webViewService
			arg1.closeCallbackConnection = var12.OnWindowClosed:Connect(arg1.closeCallback)
		else
			var12 = arg1.browserService
			arg1.closeCallbackConnection = var12.BrowserWindowClosed:Connect(arg1.closeCallback)
		end
	end
	if 0 >= string.len(arg1.challengeUrl) then
		var12 = false
	else
		var12 = true
	end
	assert(var12, "challenge url must have been constructed")
	if arg1.hybridCallbackConnection == nil then
		var12 = false
	else
		var12 = true
	end
	assert(var12, "hybrid callback connection should be initialized")
	if GetFFlagEnableUnifiedWebViews_upvr() then
		arg1.webViewService:OpenWindow(arg1.challengeUrl, arg1.title, true)
	else
		var12 = arg1.browserService:SendCommand
		var12(HttpService_upvr:JSONEncode({
			command = "open";
			url = arg1.challengeUrl;
			title = arg1.title;
			visible = true;
			modal = arg1.modal;
			isGenericWebview = true;
			enableOverlayReplacement = true;
		}))
	end
end
function module_upvr.close(arg1) -- Line 168
	--[[ Upvalues[1]:
		[1]: GetFFlagEnableUnifiedWebViews_upvr (readonly)
	]]
	if arg1.hybridCallbackConnection ~= nil then
		arg1.hybridCallbackConnection:Disconnect()
	end
	if GetFFlagEnableUnifiedWebViews_upvr() then
		arg1.webViewService:CloseWindow()
	else
		arg1.browserService:CloseBrowserWindow()
	end
	if arg1.closeCallbackConnection ~= nil then
		arg1.closeCallbackConnection:Disconnect()
	end
end
return module_upvr