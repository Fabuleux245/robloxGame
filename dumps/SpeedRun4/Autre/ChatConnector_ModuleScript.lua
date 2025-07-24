-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:46:13
-- Luau version 6, Types version 3
-- Time taken: 0.002679 seconds

local CorePackages = game:GetService("CorePackages")
local t = require(CorePackages.Packages.t)
local Parent = script.Parent.Parent.Parent
local any_extend_result1 = require(CorePackages.Packages.Roact).PureComponent:extend("ChatConnector")
any_extend_result1.validateProps = t.strictInterface({
	isSmallTouchScreen = t.boolean;
	updateChatVisible = t.callback;
	updateChatMessages = t.callback;
})
local GameSettings_upvr = UserSettings().GameSettings
local ChatSelector_upvr = require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.ChatSelector)
function any_extend_result1.didMount(arg1) -- Line 28
	--[[ Upvalues[2]:
		[1]: GameSettings_upvr (readonly)
		[2]: ChatSelector_upvr (readonly)
	]]
	local ChatVisible = GameSettings_upvr.ChatVisible
	if arg1.props.isSmallTouchScreen then
		ChatVisible = false
	end
	ChatSelector_upvr:SetVisible(ChatVisible)
	arg1.props.updateChatMessages(ChatSelector_upvr:GetMessageCount())
	arg1.props.updateChatVisible(ChatSelector_upvr:GetVisibility())
	arg1.chatVisibleConnection = ChatSelector_upvr.VisibilityStateChanged:connect(function(arg1_2) -- Line 38
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.updateChatVisible(arg1_2)
	end)
	arg1.chatMessagesConnection = ChatSelector_upvr.MessagesChanged:connect(function(arg1_3) -- Line 42
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1.props.updateChatMessages(arg1_3)
	end)
end
function any_extend_result1.render(arg1) -- Line 47
	return nil
end
function any_extend_result1.willUnmount(arg1) -- Line 51
	arg1.chatVisibleConnection:disconnect()
	arg1.chatMessagesConnection:disconnect()
end
local UpdateChatVisible_upvr = require(Parent.Actions.UpdateChatVisible)
local UpdateChatMessages_upvr = require(Parent.Actions.UpdateChatMessages)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1) -- Line 56, Named "mapStateToProps"
	return {
		isSmallTouchScreen = arg1.displayOptions.isSmallTouchDevice;
	}
end, function(arg1) -- Line 62, Named "mapDispatchToProps"
	--[[ Upvalues[2]:
		[1]: UpdateChatVisible_upvr (readonly)
		[2]: UpdateChatMessages_upvr (readonly)
	]]
	return {
		updateChatVisible = function(arg1_4) -- Line 64, Named "updateChatVisible"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: UpdateChatVisible_upvr (copied, readonly)
			]]
			return arg1(UpdateChatVisible_upvr(arg1_4))
		end;
		updateChatMessages = function(arg1_5) -- Line 68, Named "updateChatMessages"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: UpdateChatMessages_upvr (copied, readonly)
			]]
			return arg1(UpdateChatMessages_upvr(arg1_5))
		end;
	}
end)(any_extend_result1)