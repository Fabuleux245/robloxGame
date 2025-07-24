-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:58:32
-- Luau version 6, Types version 3
-- Time taken: 0.002437 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local Foundation_upvr = require(Parent.Foundation)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local useScaledValue_upvr = Foundation_upvr.Hooks.useScaledValue
local useTokens_upvr = Foundation_upvr.Hooks.useTokens
local React_upvr = require(Parent.React)
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local Constants_upvr = require(Parent_2.Constants)
local ControlState_upvr = Foundation_upvr.Enums.ControlState
local default_upvr = require(Parent.VoiceChatCore).CoreVoiceManager.default
local CaptureTriggerType_upvr = require(Parent_2.Enums.CaptureTriggerType)
local View_upvr = Foundation_upvr.View
local Popover_upvr = Foundation_upvr.Popover
local Icon_upvr = Foundation_upvr.Icon
local PopoverAlign_upvr = Foundation_upvr.Enums.PopoverAlign
local Text_upvr = Foundation_upvr.Text
return function(arg1) -- Line 33
	--[[ Upvalues[15]:
		[1]: useLocalization_upvr (readonly)
		[2]: useScaledValue_upvr (readonly)
		[3]: useTokens_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: useSelector_upvr (readonly)
		[6]: Constants_upvr (readonly)
		[7]: ControlState_upvr (readonly)
		[8]: default_upvr (readonly)
		[9]: CaptureTriggerType_upvr (readonly)
		[10]: View_upvr (readonly)
		[11]: Popover_upvr (readonly)
		[12]: Icon_upvr (readonly)
		[13]: Foundation_upvr (readonly)
		[14]: PopoverAlign_upvr (readonly)
		[15]: Text_upvr (readonly)
	]]
	local useLocalization_upvr_result1 = useLocalization_upvr({
		voiceChatMutedLabel = "Feature.Captures.Label.VideoCaptureVoiceChatMutedTooltip";
		voiceChatMutedTitle = "Feature.Captures.Title.VideoCaptureVoiceChatMutedTooltip";
	})
	local var7_result1 = useTokens_upvr()
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(false)
	local var9_result1 = useSelector_upvr(function(arg1_2) -- Line 43
		--[[ Upvalues[1]:
			[1]: Constants_upvr (copied, readonly)
		]]
		return arg1_2[Constants_upvr.RoduxKey].IsVideoCaptureActive.triggerType
	end)
	if not default_upvr:UserVoiceEnabled() or not default_upvr:IsInitialized() then
		return nil
	end
	if var9_result1 ~= CaptureTriggerType_upvr.UserCapture and var9_result1 ~= CaptureTriggerType_upvr.DeveloperCapture then
		return nil
	end
	return React_upvr.createElement(View_upvr, {
		LayoutOrder = arg1.layoutOrder;
		onStateChanged = React_upvr.useCallback(function(arg1_3) -- Line 47
			--[[ Upvalues[3]:
				[1]: ControlState_upvr (copied, readonly)
				[2]: any_useState_result2_upvr (readonly)
				[3]: any_useState_result1_upvr (readonly)
			]]
			if arg1_3 == ControlState_upvr.Pressed then
				any_useState_result2_upvr(not any_useState_result1_upvr)
			end
		end, {any_useState_result1_upvr});
		tag = "anchor-center-center clip position-center-center radius-circle size-700-700";
	}, {
		Popover = React_upvr.createElement(Popover_upvr.Root, {
			isOpen = any_useState_result1_upvr;
		}, {
			Anchor = React_upvr.createElement(Popover_upvr.Anchor, {
				AnchorPoint = Vector2.new(0.5, 0.5);
				Position = UDim2.fromScale(0.5, 0.5);
			}, {
				DeafenIcon = React_upvr.createElement(Icon_upvr, {
					name = "icons/controls/headphoneDeafen_small";
					size = Foundation_upvr.Enums.IconSize.Small;
					style = var7_result1.Color.Content.Emphasis;
				});
			});
			Content = React_upvr.createElement(Popover_upvr.Content, {
				align = PopoverAlign_upvr.Center;
				hasArrow = false;
				onPressedOutside = React_upvr.useCallback(function() -- Line 53
					--[[ Upvalues[1]:
						[1]: any_useState_result2_upvr (readonly)
					]]
					any_useState_result2_upvr(false)
				end, {});
				side = {
					offset = var7_result1.Size.Size_500;
					position = arg1.popoverSide;
				};
			}, {
				Tooltip = React_upvr.createElement(View_upvr, {
					sizeConstraint = {
						MaxSize = Vector2.new(useScaledValue_upvr(320), math.huge);
					};
					tag = "auto-xy col gap-xsmall padding-y-small padding-x-medium";
				}, {
					Title = React_upvr.createElement(Text_upvr, {
						tag = "size-full-0 auto-y text-truncate-end text-align-x-left text-title-small";
						Text = useLocalization_upvr_result1.voiceChatMutedTitle;
					});
					Subtitle = React_upvr.createElement(Text_upvr, {
						tag = "size-full-0 auto-y text-wrap text-align-x-left text-body-small";
						Text = useLocalization_upvr_result1.voiceChatMutedLabel;
					});
				});
			});
		});
	})
end