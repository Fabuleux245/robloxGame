-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:34
-- Luau version 6, Types version 3
-- Time taken: 0.007069 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local dependencies = require(Parent.dependencies)
local UIBlox = dependencies.UIBlox
local tbl_2_upvr = {}
local var11_upvw
if require(Parent_2.SharedFlags).GetFFlagAppChatRebrandStringUpdates() and require(Parent_2.SocialExperiments).SquadExperimentation.getSquadEntrypointsEnabled() then
	var11_upvw = "Feature.Squads.Label.Party"
else
	var11_upvw = "Feature.Chat.Action.StartChatWithFriends"
end
tbl_2_upvr[require(Parent.type).NotificationTypeEnum.ChatNewMessage] = var11_upvw
var11_upvw = {}
var11_upvw[1] = {
	textKey = "fifteenMinutes";
	durationMinutes = 15;
}
var11_upvw[2] = {
	textKey = "fourHours";
	durationMinutes = 240;
}
var11_upvw[3] = {
	textKey = "oneDay";
	durationMinutes = 1440;
}
var11_upvw[4] = {
	textKey = "untilITurnItBackOn";
	durationMinutes = -1;
}
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useLocalization_upvr = dependencies.Localization.Hooks.useLocalization
local Cryo_upvr = dependencies.Cryo
local React_upvr = dependencies.React
local dependencyArray_upvr = dependencies.Hooks.dependencyArray
local ShowNotificationSnoozeMenuSignal_upvr = require(Parent.Signals).ShowNotificationSnoozeMenuSignal
local GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr = require(Parent_2.SharedFlags).GetFFlagAppChatInExpToastSnoozeMenuDismissFix
local DismissNotificationSnoozeMenuSignal_upvr = require(Parent.Signals).DismissNotificationSnoozeMenuSignal
local Colors_upvr = UIBlox.App.Style.Colors
local default_upvr = require(Parent.ToastNotificationSnoozeManager).default
local Interactable_upvr = UIBlox.Core.Control.Interactable
local Roact_upvr = dependencies.Roact
function var11_upvw() -- Line 60
	--[[ Upvalues[14]:
		[1]: useStyle_upvr (readonly)
		[2]: useLocalization_upvr (readonly)
		[3]: Cryo_upvr (readonly)
		[4]: tbl_2_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: dependencyArray_upvr (readonly)
		[7]: ShowNotificationSnoozeMenuSignal_upvr (readonly)
		[8]: GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr (readonly)
		[9]: DismissNotificationSnoozeMenuSignal_upvr (readonly)
		[10]: var11_upvw (read and write)
		[11]: Colors_upvr (readonly)
		[12]: default_upvr (readonly)
		[13]: Interactable_upvr (readonly)
		[14]: Roact_upvr (readonly)
	]]
	local useStyle_upvr_result1_upvr = useStyle_upvr()
	local any_useState_result1, any_useState_result2_upvr = React_upvr.useState(false)
	local any_useState_result1_upvr, any_useState_result2_upvr_2 = React_upvr.useState({})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 74
		--[[ Upvalues[1]:
			[1]: any_useState_result2_upvr (readonly)
		]]
		any_useState_result2_upvr(false)
	end, dependencyArray_upvr(any_useState_result2_upvr))
	React_upvr.useEffect(function() -- Line 78
		--[[ Upvalues[6]:
			[1]: ShowNotificationSnoozeMenuSignal_upvr (copied, readonly)
			[2]: any_useState_result2_upvr_2 (readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr (copied, readonly)
			[5]: DismissNotificationSnoozeMenuSignal_upvr (copied, readonly)
			[6]: any_useCallback_result1_upvr (readonly)
		]]
		local var34_upvw
		if GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr() then
			var34_upvw = DismissNotificationSnoozeMenuSignal_upvr:connect(function() -- Line 91
				--[[ Upvalues[1]:
					[1]: any_useCallback_result1_upvr (copied, readonly)
				]]
				any_useCallback_result1_upvr()
			end)
		end
		local any_connect_result1_upvw = ShowNotificationSnoozeMenuSignal_upvr:connect(function(arg1) -- Line 81
			--[[ Upvalues[2]:
				[1]: any_useState_result2_upvr_2 (copied, readonly)
				[2]: any_useState_result2_upvr (copied, readonly)
			]]
			any_useState_result2_upvr_2(arg1)
			any_useState_result2_upvr(true)
		end)
		return function() -- Line 96
			--[[ Upvalues[3]:
				[1]: any_connect_result1_upvw (read and write)
				[2]: GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr (copied, readonly)
				[3]: var34_upvw (read and write)
			]]
			any_connect_result1_upvw:disconnect()
			if GetFFlagAppChatInExpToastSnoozeMenuDismissFix_upvr() then
				var34_upvw:disconnect()
			end
		end
	end, dependencyArray_upvr(any_useState_result2_upvr))
	local useLocalization_upvr_result1_upvr = useLocalization_upvr(Cryo_upvr.Dictionary.union(tbl_2_upvr, {
		fifteenMinutes = "Feature.Notifications.Action.SnoozeFifteenMinutes";
		fourHours = "Feature.Notifications.Action.SnoozeFourHours";
		oneDay = "Feature.Notifications.Action.SnoozeOneDay";
		oneHour = "Feature.Notifications.Action.SnoozeOneHour";
		untilITurnItBackOn = "Feature.Notifications.Action.UntilITurnItBackOn";
		snoozeFeedback = "Feature.Notifications.Heading.SnoozeFeedback";
	}))
	if any_useState_result1 then
		local module_2 = {
			Size = UDim2.fromScale(1, 1);
			AutoButtonColor = false;
			BackgroundColor3 = Colors_upvr.Black;
			BackgroundTransparency = 0.6;
		}
		local function onStateChanged() -- Line 154
		end
		module_2.onStateChanged = onStateChanged
		module_2[React_upvr.Event.Activated] = any_useCallback_result1_upvr
		local module = {}
		local tbl_5 = {
			UICorner = React_upvr.createElement("UICorner", {
				CornerRadius = UDim.new(0, useStyle_upvr_result1_upvr.Tokens.Semantic.Radius.XLarge);
			});
			UIListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
			UIPadding = React_upvr.createElement("UIPadding", {
				PaddingLeft = UDim.new(0, 24);
			});
			UISizeConstraint = React_upvr.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(400, math.huge);
			});
		}
		local tbl = {
			UIListLayout = React_upvr.createElement("UIListLayout", {
				FillDirection = Enum.FillDirection.Vertical;
				HorizontalAlignment = Enum.HorizontalAlignment.Left;
				SortOrder = Enum.SortOrder.LayoutOrder;
				VerticalAlignment = Enum.VerticalAlignment.Center;
			});
			UIPadding = React_upvr.createElement("UIPadding", {
				PaddingBottom = UDim.new(0, 20);
				PaddingRight = UDim.new(0, 24);
				PaddingTop = UDim.new(0, 20);
			});
		}
		local any_createElement_result1 = React_upvr.createElement("TextLabel", {
			AutomaticSize = Enum.AutomaticSize.XY;
			BackgroundTransparency = 1;
			Font = useStyle_upvr_result1_upvr.Font.Body.Font;
			LayoutOrder = 1;
			Text = any_useState_result1_upvr.title or "";
			TextSize = useStyle_upvr_result1_upvr.Font.Body.RelativeSize * useStyle_upvr_result1_upvr.Font.BaseSize;
			TextColor3 = Colors_upvr.White;
			TextWrapped = true;
		})
		tbl.Title = any_createElement_result1
		if any_useState_result1_upvr and any_useState_result1_upvr.description and any_useState_result1_upvr.description ~= "" then
			any_createElement_result1 = React_upvr.createElement
			any_createElement_result1 = any_createElement_result1("TextLabel", {
				AutomaticSize = Enum.AutomaticSize.XY;
				BackgroundTransparency = 1;
				Font = useStyle_upvr_result1_upvr.Font.CaptionBody.Font;
				LayoutOrder = 2;
				Text = any_useState_result1_upvr.description or "";
				TextSize = useStyle_upvr_result1_upvr.Font.CaptionBody.RelativeSize * useStyle_upvr_result1_upvr.Font.BaseSize;
				TextColor3 = useStyle_upvr_result1_upvr.Theme.TextDefault.Color;
			})
		else
			any_createElement_result1 = nil
		end
		tbl.Description = any_createElement_result1
		tbl_5.TitleContainer = React_upvr.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.Y;
			Size = UDim2.new(1, 0, 0, 0);
			BackgroundTransparency = 1;
			LayoutOrder = 1;
		}, tbl)
		local tbl_4 = {
			LayoutOrder = 2;
			BackgroundTransparency = 1;
			AutomaticSize = Enum.AutomaticSize.Y;
		}
		any_createElement_result1 = 1
		tbl_4.Size = UDim2.new(any_createElement_result1, 0, 0, 0)
		local tbl_3 = {}
		any_createElement_result1 = React_upvr.createElement
		any_createElement_result1 = any_createElement_result1("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			SortOrder = Enum.SortOrder.LayoutOrder;
		})
		tbl_3.UIListLayout = any_createElement_result1
		any_createElement_result1 = Roact_upvr.createFragment(React_upvr.useMemo(function() -- Line 104
			--[[ Upvalues[8]:
				[1]: var11_upvw (copied, read and write)
				[2]: React_upvr (copied, readonly)
				[3]: useStyle_upvr_result1_upvr (readonly)
				[4]: useLocalization_upvr_result1_upvr (readonly)
				[5]: Colors_upvr (copied, readonly)
				[6]: any_useState_result1_upvr (readonly)
				[7]: default_upvr (copied, readonly)
				[8]: any_useState_result2_upvr (readonly)
			]]
			local module_3 = {}
			for i, v_upvr in ipairs(var11_upvw) do
				table.insert(module_3, React_upvr.createElement("TextButton", {
					Size = UDim2.new(1, 0, 0, 56);
					BackgroundTransparency = 1;
					Font = useStyle_upvr_result1_upvr.Font.Header2.Font;
					LayoutOrder = i;
					Text = useLocalization_upvr_result1_upvr[v_upvr.textKey];
					TextSize = useStyle_upvr_result1_upvr.Font.Header2.RelativeSize * useStyle_upvr_result1_upvr.Font.BaseSize;
					TextColor3 = Colors_upvr.White;
					TextXAlignment = Enum.TextXAlignment.Left;
					TextYAlignment = Enum.TextYAlignment.Center;
					[React_upvr.Event.Activated] = function() -- Line 120
						--[[ Upvalues[5]:
							[1]: any_useState_result1_upvr (copied, readonly)
							[2]: default_upvr (copied, readonly)
							[3]: v_upvr (readonly)
							[4]: useLocalization_upvr_result1_upvr (copied, readonly)
							[5]: any_useState_result2_upvr (copied, readonly)
						]]
						if any_useState_result1_upvr.notificationType then
							default_upvr:snoozeNotification({
								context = any_useState_result1_upvr.context;
								notificationType = any_useState_result1_upvr.notificationType;
								durationMinutes = v_upvr.durationMinutes;
								modalMessage = useLocalization_upvr_result1_upvr.snoozeFeedback:gsub("{title}", useLocalization_upvr_result1_upvr[any_useState_result1_upvr.notificationType] or ""):gsub("{duration}", useLocalization_upvr_result1_upvr[v_upvr.textKey]);
							})
						end
						any_useState_result2_upvr(false)
					end;
				}, {
					Border = React_upvr.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, 1);
						BackgroundTransparency = 0.8;
						BackgroundColor3 = Colors_upvr.White;
						LayoutOrder = i;
					});
				}))
				i += 1
			end
			return module_3
		end, dependencyArray_upvr(any_useState_result1_upvr)))
		tbl_3.SnoozeOptions = any_createElement_result1
		tbl_5.SnoozeOptions = React_upvr.createElement("Frame", tbl_4, tbl_3)
		module.SnoozeMenu = React_upvr.createElement(Interactable_upvr, {
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.fromScale(0.5, 0.5);
			Size = UDim2.new(1, -16, 0, 0);
			AutoButtonColor = false;
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundColor3 = useStyle_upvr_result1_upvr.Theme.BackgroundDefault.Color;
			BackgroundTransparency = useStyle_upvr_result1_upvr.Theme.BackgroundDefault.Transparency;
			onStateChanged = function() -- Line 165, Named "onStateChanged"
			end;
		}, tbl_5)
		return React_upvr.createElement(Interactable_upvr, module_2, module)
	end
	return nil
end
return var11_upvw