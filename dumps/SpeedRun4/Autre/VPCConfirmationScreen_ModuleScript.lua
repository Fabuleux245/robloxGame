-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:16
-- Luau version 6, Types version 3
-- Time taken: 0.002402 seconds

local Parent = script:FindFirstAncestor("AmpUpsell").Parent
local UIBlox = require(Parent.UIBlox)
local function selectScreenSize_upvr(arg1) -- Line 17, Named "selectScreenSize"
	return arg1.ScreenSize
end
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Cryo_upvr = require(Parent.Cryo)
local React_upvr = require(Parent.React)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
return function(arg1) -- Line 21, Named "VPCConfirmationScreen"
	--[[ Upvalues[7]:
		[1]: useSelector_upvr (readonly)
		[2]: selectScreenSize_upvr (readonly)
		[3]: useLocalization_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: InteractiveAlert_upvr (readonly)
		[7]: ButtonType_upvr (readonly)
	]]
	local messageStrings = arg1.messageStrings
	local parentEmails = arg1.parentEmails
	local var11
	if #parentEmails == 1 then
		var11 = useLocalization_upvr(Cryo_upvr.Dictionary.join(messageStrings, {
			bodyText = {
				parentEmail = parentEmails[1];
				messageStrings.oneParentBody
			};
		}))
	else
		var11 = useLocalization_upvr(Cryo_upvr.Dictionary.join(messageStrings, {
			bodyText = messageStrings.multipleParentsBody;
		}))
	end
	return React_upvr.createElement(InteractiveAlert_upvr, {
		anchorPoint = Vector2.new(0.5, 0.5);
		position = UDim2.new(0.5, 0, 0.5, 0);
		screenSize = useSelector_upvr(selectScreenSize_upvr);
		title = var11.title;
		bodyText = var11.bodyText;
		buttonStackInfo = {
			buttons = {{
				buttonType = ButtonType_upvr.PrimarySystem;
				props = {
					onActivated = arg1.onAck;
					text = var11.buttonText;
				};
			}};
		};
	})
end