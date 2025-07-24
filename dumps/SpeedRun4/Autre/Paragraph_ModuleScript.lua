-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:35:09
-- Luau version 6, Types version 3
-- Time taken: 0.001918 seconds

local GenericAbuseReporting = script:FindFirstAncestor("GenericAbuseReporting")
local Parent = GenericAbuseReporting.Parent
local Foundation = require(Parent.Foundation)
local React_upvr = require(Parent.React)
local createTextWithLinks_upvr = require(GenericAbuseReporting.Bedui.Utils.createTextWithLinks)
local Button_upvr = Foundation.Button
local ButtonVariant_upvr = Foundation.Enums.ButtonVariant
local HttpService_upvr = game:GetService("HttpService")
local GuiService_upvr = game:GetService("GuiService")
local NotificationType_upvr = require(GenericAbuseReporting.Bedui.Provider.AbuseReportBeduiTypes).NotificationType
local View_upvr = Foundation.View
local Text_upvr = Foundation.Text
return React_upvr.memo(function(arg1) -- Line 25, Named "Paragraph"
	--[[ Upvalues[9]:
		[1]: React_upvr (readonly)
		[2]: createTextWithLinks_upvr (readonly)
		[3]: Button_upvr (readonly)
		[4]: ButtonVariant_upvr (readonly)
		[5]: HttpService_upvr (readonly)
		[6]: GuiService_upvr (readonly)
		[7]: NotificationType_upvr (readonly)
		[8]: View_upvr (readonly)
		[9]: Text_upvr (readonly)
	]]
	return React_upvr.createElement(View_upvr, {
		tag = "size-full-0 auto-y col";
		LayoutOrder = arg1.layoutOrder;
	}, {
		Text = React_upvr.createElement(Text_upvr, {
			Text = React_upvr.useMemo(function() -- Line 26
				--[[ Upvalues[2]:
					[1]: createTextWithLinks_upvr (copied, readonly)
					[2]: arg1 (readonly)
				]]
				return createTextWithLinks_upvr(arg1.component.paragraph.text, arg1.component.paragraph.links)
			end, {arg1.component.paragraph.text, arg1.component.paragraph.links});
			TextWrapped = true;
			TextXAlignment = Enum.TextXAlignment.Left;
			tag = "auto-xy padding-bottom-small";
			LayoutOrder = 0;
		});
		Links = React_upvr.createElement(View_upvr, {
			tag = "size-full-0 auto-y col wraps";
			LayoutOrder = 1;
		}, React_upvr.useMemo(function() -- Line 34
			--[[ Upvalues[7]:
				[1]: arg1 (readonly)
				[2]: React_upvr (copied, readonly)
				[3]: Button_upvr (copied, readonly)
				[4]: ButtonVariant_upvr (copied, readonly)
				[5]: HttpService_upvr (copied, readonly)
				[6]: GuiService_upvr (copied, readonly)
				[7]: NotificationType_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			if not arg1.component.paragraph.links then
				return {}
			end
			for _, v_upvr in arg1.component.paragraph.links do
				table.insert({}, React_upvr.createElement(Button_upvr, {
					text = v_upvr.linkButtonLabel;
					variant = ButtonVariant_upvr.Text;
					onActivated = function() -- Line 46, Named "onActivated"
						--[[ Upvalues[4]:
							[1]: HttpService_upvr (copied, readonly)
							[2]: v_upvr (readonly)
							[3]: GuiService_upvr (copied, readonly)
							[4]: NotificationType_upvr (copied, readonly)
						]]
						local pcall_result1, pcall_result2 = pcall(function() -- Line 47
							--[[ Upvalues[2]:
								[1]: HttpService_upvr (copied, readonly)
								[2]: v_upvr (copied, readonly)
							]]
							return HttpService_upvr:JSONEncode({
								title = v_upvr.label;
								presentationStyle = nil;
								visible = true;
								url = v_upvr.url;
							})
						end)
						if not pcall_result1 then
							warn("Failed to encode notification data for bedui paragraph")
						else
							GuiService_upvr:BroadcastNotification(pcall_result2, NotificationType_upvr.OpenCustomWebView)
						end
					end;
				}))
				local var30
			end
			return var30
		end, {arg1.component}));
	})
end)