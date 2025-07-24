-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:33
-- Luau version 6, Types version 3
-- Time taken: 0.003111 seconds

local Parent = script.Parent.Parent.Parent.Parent
local dependencies = require(Parent.dependencies)
local t = dependencies.t
local Roact_upvr = dependencies.Roact
local UIBlox = dependencies.UIBlox
local any_extend_result1 = Roact_upvr.PureComponent:extend("ContactsRevokedAccessDialog")
any_extend_result1.validateProps = t.strictInterface({
	navigation = t.table;
	screenSize = t.Vector2;
})
local withLocalization_upvr = dependencies.withLocalization
local TextKeys_upvr = require(Parent.Common.TextKeys)
local withStyle_upvr = UIBlox.Style.withStyle
local Constants_upvr = require(Parent.Common.Constants)
local getFFlagPassNavigationToContactsRevoked_upvr = require(Parent.Flags.getFFlagPassNavigationToContactsRevoked)
local InteractiveAlert_upvr = UIBlox.App.Dialog.Alert.InteractiveAlert
local ButtonType_upvr = UIBlox.App.Button.Enum.ButtonType
function any_extend_result1.render(arg1) -- Line 31
	--[[ Upvalues[8]:
		[1]: withLocalization_upvr (readonly)
		[2]: TextKeys_upvr (readonly)
		[3]: withStyle_upvr (readonly)
		[4]: Constants_upvr (readonly)
		[5]: getFFlagPassNavigationToContactsRevoked_upvr (readonly)
		[6]: Roact_upvr (readonly)
		[7]: InteractiveAlert_upvr (readonly)
		[8]: ButtonType_upvr (readonly)
	]]
	return withLocalization_upvr({
		titleText = TextKeys_upvr.CONTACTS_LIST_TITLE;
		revokedFlow = TextKeys_upvr.CONTACTS_REVOKED_FLOW;
		closeModalOk = TextKeys_upvr.CLOSE_MODAL_OK;
	})(function(arg1_2) -- Line 36
		--[[ Upvalues[7]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Constants_upvr (copied, readonly)
			[4]: getFFlagPassNavigationToContactsRevoked_upvr (copied, readonly)
			[5]: Roact_upvr (copied, readonly)
			[6]: InteractiveAlert_upvr (copied, readonly)
			[7]: ButtonType_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 37
			--[[ Upvalues[7]:
				[1]: arg1 (copied, readonly)
				[2]: Constants_upvr (copied, readonly)
				[3]: getFFlagPassNavigationToContactsRevoked_upvr (copied, readonly)
				[4]: Roact_upvr (copied, readonly)
				[5]: InteractiveAlert_upvr (copied, readonly)
				[6]: arg1_2 (readonly)
				[7]: ButtonType_upvr (copied, readonly)
			]]
			local props = arg1.props
			local navigation = props.navigation
			local any_getParam_result1_upvr = navigation.getParam(Constants_upvr.CLOSE_MODAL)
			if not any_getParam_result1_upvr then
				any_getParam_result1_upvr = getFFlagPassNavigationToContactsRevoked_upvr()
				if any_getParam_result1_upvr then
					any_getParam_result1_upvr = navigation.pop
				end
			end
			return Roact_upvr.createElement(InteractiveAlert_upvr, {
				title = arg1_2.titleText;
				screenSize = props.screenSize;
				buttonStackInfo = {
					buttons = {{
						buttonType = ButtonType_upvr.Secondary;
						props = {
							onActivated = function() -- Line 51, Named "onActivated"
								--[[ Upvalues[1]:
									[1]: any_getParam_result1_upvr (readonly)
								]]
								any_getParam_result1_upvr()
							end;
							text = arg1_2.closeModalOk;
						};
					}};
					buttonHeight = 48;
					forcedFillDirection = Enum.FillDirection.Vertical;
				};
				bodyText = arg1_2.revokedFlow;
			})
		end)
	end)
end
return dependencies.RoactRodux.connect(function(arg1) -- Line 67
	return {
		screenSize = arg1.ScreenSize;
	}
end, nil)(any_extend_result1)