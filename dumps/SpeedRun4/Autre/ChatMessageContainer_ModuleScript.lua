-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:48:42
-- Luau version 6, Types version 3
-- Time taken: 0.002423 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Roact_upvr = require(Parent.Roact)
local Logger_upvr = require(script.Parent.Logger)
local any_extend_result1 = Roact_upvr.PureComponent:extend("ChatMessageContainer")
any_extend_result1.defaultProps = {
	BackgroundColor3 = nil;
	BackgroundTransparency = nil;
	debugElement = nil;
	displayName = nil;
	failed = false;
	filteredForReceivers = false;
	Font = Enum.Font.Gotham;
	isIncoming = false;
	isNewSender = false;
	parentWidth = 0;
	messageTypePaddingOffset = 0;
	moderated = false;
	messageMaxWidth = 0;
	openViewProfile = function() -- Line 41, Named "openViewProfile"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		Logger_upvr:warning("openViewProfile was not passed to ChatMessage")
	end;
	renderMessage = function() -- Line 44, Named "renderMessage"
		--[[ Upvalues[1]:
			[1]: Logger_upvr (readonly)
		]]
		Logger_upvr:warning("renderMessage was not passed to ChatMessage")
	end;
	senderUserId = nil;
	thumbnail = nil;
	viewProfileOnAvatarPressed = true;
	messageDefaultNoticeText = "PLACEHOLDER Not everyone in this chat can see your message.";
	messageModeratedNoticeText = "PLACEHOLDER Your message was moderated and not sent.";
	unknownUserText = "PLACEHOLDER unknown user";
}
function any_extend_result1.init(arg1) -- Line 56
	function arg1.onAvatarActivated() -- Line 57
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.viewProfileOnAvatarPressed then
			arg1.props.openViewProfile(arg1.props.senderUserId)
		end
	end
end
local withStyle_upvr = require(Parent.UIBlox).Style.withStyle
local RoactFitComponents_upvr = require(Parent.LuaSocialLibrariesDeps).RoactFitComponents
local SystemMessage_upvr = require(script.Parent.SystemMessage)
local AvatarCircle_upvr = require(AppChat.SocialLibraries).Components.AvatarCircle
local NoticeText_upvr = require(script.Parent.NoticeText)
function any_extend_result1.render(arg1) -- Line 64
	--[[ Upvalues[6]:
		[1]: withStyle_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: RoactFitComponents_upvr (readonly)
		[4]: SystemMessage_upvr (readonly)
		[5]: AvatarCircle_upvr (readonly)
		[6]: NoticeText_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 65
		--[[ Upvalues[6]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: RoactFitComponents_upvr (copied, readonly)
			[4]: SystemMessage_upvr (copied, readonly)
			[5]: AvatarCircle_upvr (copied, readonly)
			[6]: NoticeText_upvr (copied, readonly)
		]]
		-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
		local var14
		-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
		-- KONSTANTERROR: [7] 6. Error Block 126 start (CF ANALYSIS FAILED)
		if arg1.props.isNewSender then
			var14 = 10
		else
			var14 = 2
		end
		var14 = arg1.props.messageTypePaddingOffset
		-- KONSTANTERROR: [7] 6. Error Block 126 end (CF ANALYSIS FAILED)
	end)
end
return any_extend_result1