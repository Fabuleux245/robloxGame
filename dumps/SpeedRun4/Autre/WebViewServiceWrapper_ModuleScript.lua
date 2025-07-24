-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:49
-- Luau version 6, Types version 3
-- Time taken: 0.001635 seconds

local GetFFlagEnableUnifiedWebViews_upvr = require(script.Parent.Parent.Parent.SharedFlags).GetFFlagEnableUnifiedWebViews
local module_upvr = {}
module_upvr.__index = module_upvr
local WebViewService_upvr = game:GetService("WebViewService")
function module_upvr.new(arg1) -- Line 50
	--[[ Upvalues[3]:
		[1]: GetFFlagEnableUnifiedWebViews_upvr (readonly)
		[2]: WebViewService_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local tbl = {}
	if GetFFlagEnableUnifiedWebViews_upvr() then
		local webViewService = arg1.webViewService
		if not webViewService then
			webViewService = WebViewService_upvr
		end
		tbl.webViewService = webViewService
	end
	tbl.title = arg1.title
	tbl.url = arg1.url
	tbl.closeCallbackConnection = nil
	local setmetatable_result1 = setmetatable(tbl, module_upvr)
	local closeCallback_2 = arg1.closeCallback
	if not closeCallback_2 then
		function closeCallback_2() -- Line 65
		end
	end
	setmetatable_result1:setCloseCallback(closeCallback_2)
	return setmetatable_result1
end
function module_upvr.setCloseCallback(arg1, arg2) -- Line 70
	--[[ Upvalues[1]:
		[1]: GetFFlagEnableUnifiedWebViews_upvr (readonly)
	]]
	if GetFFlagEnableUnifiedWebViews_upvr() then
		function arg1.closeCallback() -- Line 75
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1:close()
			if arg2 ~= nil then
				arg2()
			end
		end
	else
		arg1.closeCallback = arg2
	end
end
function module_upvr.setOpenCallback(arg1, arg2) -- Line 88
	arg1.openCallback = arg2
end
local HttpService_upvr = game:GetService("HttpService")
local BrowserService_upvr = game:GetService("BrowserService")
function module_upvr.open(arg1) -- Line 92
	--[[ Upvalues[3]:
		[1]: GetFFlagEnableUnifiedWebViews_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: BrowserService_upvr (readonly)
	]]
	if arg1.openCallback ~= nil then
		arg1.openCallback()
	end
	if arg1.closeCallback ~= nil and GetFFlagEnableUnifiedWebViews_upvr() then
		arg1.closeCallbackConnection = arg1.webViewService.OnWindowClosed:Connect(arg1.closeCallback)
	end
	if GetFFlagEnableUnifiedWebViews_upvr() then
		arg1.webViewService:OpenWindow(arg1.url, arg1.title, true)
	else
		BrowserService_upvr:SendCommand(HttpService_upvr:JSONEncode({
			command = "open";
			url = arg1.url;
			title = arg1.title;
			visible = true;
			isGenericWebview = true;
			enableOverlayReplacement = true;
		}))
	end
end
function module_upvr.close(arg1) -- Line 117
	--[[ Upvalues[1]:
		[1]: GetFFlagEnableUnifiedWebViews_upvr (readonly)
	]]
	if GetFFlagEnableUnifiedWebViews_upvr() then
		arg1.webViewService:CloseWindow()
	end
	if arg1.closeCallbackConnection ~= nil then
		arg1.closeCallbackConnection:Disconnect()
	end
end
return module_upvr