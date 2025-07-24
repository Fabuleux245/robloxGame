-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:41
-- Luau version 6, Types version 3
-- Time taken: 0.003308 seconds

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local function selectScreenSize_upvr(arg1) -- Line 18, Named "selectScreenSize"
	return arg1.ScreenSize
end
local useStyle_upvr = UIBlox.Core.Style.useStyle
local useNavigation_upvr = require(VirtualEvents.Parent.Navigation).useNavigation
local useSelector_upvr = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useLocalization_upvr = require(VirtualEvents.Parent.Localization).Hooks.useLocalization
local React_upvr = require(VirtualEvents.Parent.React)
local dependencyArray_upvr = require(VirtualEvents.Parent.RoactUtils).Hooks.dependencyArray
local PartialPageModal_upvr = UIBlox.App.Dialog.Modal.PartialPageModal
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
local udim_upvr = UDim.new(0, 24)
local udim_upvr_2 = UDim.new(0, 12)
local StyledTextLabel_upvr = UIBlox.App.Text.StyledTextLabel
return function(arg1) -- Line 27, Named "EventNotificationsModal"
	--[[ Upvalues[12]:
		[1]: useStyle_upvr (readonly)
		[2]: useNavigation_upvr (readonly)
		[3]: useSelector_upvr (readonly)
		[4]: selectScreenSize_upvr (readonly)
		[5]: useLocalization_upvr (readonly)
		[6]: React_upvr (readonly)
		[7]: dependencyArray_upvr (readonly)
		[8]: PartialPageModal_upvr (readonly)
		[9]: ButtonType_upvr (readonly)
		[10]: udim_upvr (readonly)
		[11]: udim_upvr_2 (readonly)
		[12]: StyledTextLabel_upvr (readonly)
	]]
	local useStyle_upvr_result1 = useStyle_upvr()
	local var4_result1_upvr = useNavigation_upvr()
	local useLocalization_upvr_result1 = useLocalization_upvr({
		title = "Feature.VirtualEvents.EnableNotificationsModalTitle";
		body = "Feature.VirtualEvents.EnableNotificationsModalBody";
		notNow = "Feature.VirtualEvents.NotNowButton";
		getNotified = "Feature.VirtualEvents.GetNotifiedButton";
	})
	local any_useCallback_result1_upvr = React_upvr.useCallback(function() -- Line 39
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: var4_result1_upvr (readonly)
		]]
		if arg1.onClose then
			arg1.onClose()
		end
		var4_result1_upvr.goBack()
	end, dependencyArray_upvr(arg1.onClose, var4_result1_upvr))
	return React_upvr.createElement(PartialPageModal_upvr, {
		position = UDim2.fromScale(0.5, 0.5);
		anchorPoint = Vector2.new(0.5, 0.5);
		title = useLocalization_upvr_result1.title;
		screenSize = useSelector_upvr(selectScreenSize_upvr);
		buttonStackProps = {
			buttons = {{
				buttonType = ButtonType_upvr.Secondary;
				props = {
					onActivated = any_useCallback_result1_upvr;
					text = useLocalization_upvr_result1.notNow;
				};
			}, {
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = React_upvr.useCallback(function() -- Line 47
						--[[ Upvalues[2]:
							[1]: arg1 (readonly)
							[2]: any_useCallback_result1_upvr (readonly)
						]]
						if arg1.onConfirm then
							arg1.onConfirm()
						end
						any_useCallback_result1_upvr()
					end, dependencyArray_upvr(arg1.onConfirm, any_useCallback_result1_upvr));
					text = useLocalization_upvr_result1.getNotified;
				};
			}};
		};
		contentPadding = udim_upvr;
		onCloseClicked = any_useCallback_result1_upvr;
	}, {
		Wrapper = React_upvr.createElement("Frame", {
			Size = UDim2.fromScale(1, 0);
			AutomaticSize = Enum.AutomaticSize.Y;
			BackgroundTransparency = 1;
		}, {
			Layout = React_upvr.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder;
				HorizontalAlignment = Enum.HorizontalAlignment.Center;
				Padding = udim_upvr_2;
			});
			Padding = React_upvr.createElement("UIPadding", {
				PaddingTop = udim_upvr_2 + udim_upvr_2;
				PaddingBottom = udim_upvr_2;
			});
			Body = React_upvr.createElement(StyledTextLabel_upvr, {
				text = useLocalization_upvr_result1.body;
				textXAlignment = Enum.TextXAlignment.Center;
				fontStyle = useStyle_upvr_result1.Font.Body;
				colorStyle = useStyle_upvr_result1.Theme.TextMuted;
				size = UDim2.fromScale(1, 0);
				automaticSize = Enum.AutomaticSize.Y;
				fluidSizing = false;
			});
		});
	})
end