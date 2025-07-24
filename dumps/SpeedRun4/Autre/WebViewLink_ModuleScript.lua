-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:09
-- Luau version 6, Types version 3
-- Time taken: 0.001551 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local Foundation = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local HttpService_upvr = game:GetService("HttpService")
local GuiService_upvr = game:GetService("GuiService")
local NotificationType_upvr = require(GenericAbuseReporting.Bedui.Provider.AbuseReportBeduiTypes).NotificationType
local View_upvr = Foundation.View
local Button_upvr = Foundation.Button
local ButtonVariant_upvr = Foundation.Enums.ButtonVariant
return React_upvr.memo(function(arg1) -- Line 23
	--[[ Upvalues[7]:
		[1]: React_upvr (readonly)
		[2]: HttpService_upvr (readonly)
		[3]: GuiService_upvr (readonly)
		[4]: NotificationType_upvr (readonly)
		[5]: View_upvr (readonly)
		[6]: Button_upvr (readonly)
		[7]: ButtonVariant_upvr (readonly)
	]]
	return React_upvr.createElement(View_upvr, {
		tag = "size-full-0 auto-y";
		LayoutOrder = arg1.layoutOrder;
	}, {
		Button = React_upvr.createElement(Button_upvr, {
			text = arg1.component.link.linkButtonLabel;
			variant = ButtonVariant_upvr.Text;
			onActivated = React_upvr.useCallback(function() -- Line 24
				--[[ Upvalues[4]:
					[1]: HttpService_upvr (copied, readonly)
					[2]: arg1 (readonly)
					[3]: GuiService_upvr (copied, readonly)
					[4]: NotificationType_upvr (copied, readonly)
				]]
				local pcall_result1, pcall_result2 = pcall(function() -- Line 25
					--[[ Upvalues[2]:
						[1]: HttpService_upvr (copied, readonly)
						[2]: arg1 (copied, readonly)
					]]
					return HttpService_upvr:JSONEncode({
						title = arg1.component.link.label;
						presentationStyle = nil;
						visible = true;
						url = arg1.component.link.url;
					})
				end)
				if not pcall_result1 then
					warn("Failed to encode notification data for bedui webview link")
				else
					GuiService_upvr:BroadcastNotification(pcall_result2, NotificationType_upvr.OpenCustomWebView)
				end
			end, {arg1.component.link.label, arg1.component.link.url});
		});
	})
end)