-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:53:27
-- Luau version 6, Types version 3
-- Time taken: 0.008489 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
-- KONSTANTERROR: [0] 1. Error Block 41 start (CF ANALYSIS FAILED)
local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local Cryo_upvr = require(Parent.Cryo)
local ConversationChannels_upvr = require(AppChat.Models.ConversationChannels)
local FFlagAppChatEnableFriendConversationModals_upvr = require(Parent.SharedFlags).FFlagAppChatEnableFriendConversationModals
local FFlagAppChatEnableTC_upvr = require(Parent.SharedFlags).FFlagAppChatEnableTC
local FFlagDebugAppChatFae = require(AppChat.Flags.FFlagDebugAppChatFae)
local AppChatNetworking_upvr = require(Parent.AppChatNetworking)
local module = {
	[AppChatNetworking_upvr.rodux.GetChatLandingModal.Succeeded.name] = function(arg1, arg2) -- Line 40
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			chatLandingModal = arg2.responseBody;
		})
	end;
}
local function var13(arg1, arg2) -- Line 52
	--[[ Upvalues[3]:
		[1]: FFlagAppChatEnableFriendConversationModals_upvr (readonly)
		[2]: ConversationChannels_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	local var14
	if arg2.postBody then
		var14 = arg2.postBody
	end
	var14 = arg2.postBody
	if var14 then
		var14 = arg2.postBody.friend_id
	end
	local var15
	if FFlagAppChatEnableFriendConversationModals_upvr and var14 and not var15 then
		var15 = ConversationChannels_upvr.getFriendConversationId({var14})
	end
	if not var15 then
		return arg1
	end
	return Cryo_upvr.Dictionary.join(arg1, {
		conversationTopModals = Cryo_upvr.Dictionary.join(arg1.conversationTopModals, {
			[var15] = arg2.responseBody;
		});
	})
end
module[AppChatNetworking_upvr.rodux.GetConversationTopModal.Succeeded.name] = var13
var13 = AppChatNetworking_upvr.rodux.GetModalSequence.Succeeded
local var48 = var13
if FFlagAppChatEnableTC_upvr then
	local ModalSequence_upvr = AppChatNetworking_upvr.Constants.ModalSequence
	local Logger_upvr = require(AppChat.Logger)
	function var48(arg1, arg2) -- Line 79
		--[[ Upvalues[4]:
			[1]: ConversationChannels_upvr (readonly)
			[2]: ModalSequence_upvr (readonly)
			[3]: Cryo_upvr (readonly)
			[4]: Logger_upvr (readonly)
		]]
		local var23
		if arg2.postBody then
			var23 = arg2.postBody
		end
		var23 = arg2.postBody
		if var23 then
			var23 = arg2.postBody.friend_id
			local var24
		end
		if var23 and not var24 then
			var24 = ConversationChannels_upvr.getFriendConversationId({var23})
		end
		if arg2.postBody.modal_sequence == ModalSequence_upvr.ConversationOverlay then
			if not var24 then
				return arg1
			end
			return Cryo_upvr.Dictionary.join(arg1, {
				conversationOverlays = Cryo_upvr.Dictionary.join(arg1.conversationOverlays, {
					[var24] = arg2.responseBody;
				});
			})
		end
		Logger_upvr:warning(`GetModalSequence.Succeeded with unsupported modal sequence: {arg2.postBody.modal_sequence}`)
		return arg1
	end
else
	var48 = nil
end
module[var48.name] = var48
function var48(arg1, arg2) -- Line 111
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local conversationId = arg2.conversationId
	local modalVariant = arg2.modalVariant
	if not conversationId or not modalVariant then
		return arg1
	end
	local module_2 = {}
	local tbl = {}
	local var33 = arg1.conversationTopModalsDismissed[conversationId]
	if not var33 then
		var33 = {}
	end
	tbl[conversationId] = Cryo_upvr.Dictionary.join(var33, {
		[modalVariant] = true;
	})
	module_2.conversationTopModalsDismissed = Cryo_upvr.Dictionary.join(arg1.conversationTopModalsDismissed, tbl)
	return Cryo_upvr.Dictionary.join(arg1, module_2)
end
module[require(AppChat.Conversations.Actions.DismissedConversationTopModal).name] = var48
if FFlagAppChatEnableTC_upvr then
	function var48(arg1, arg2) -- Line 127
		--[[ Upvalues[2]:
			[1]: ModalSequence_upvr (readonly)
			[2]: Cryo_upvr (readonly)
		]]
		local key = arg2.key
		if arg2.modalSequence == ModalSequence_upvr.ConversationOverlay then
			if not key or arg1.conversationOverlays[key].modal_variant ~= arg2.modalVariant then
				return arg1
			end
			return Cryo_upvr.Dictionary.join(arg1, {
				conversationOverlays = Cryo_upvr.Dictionary.join(arg1.conversationOverlays, {
					[key] = Cryo_upvr.None;
				});
			})
		end
		return arg1
	end
	-- KONSTANTWARNING: GOTO [184] #115
end
-- KONSTANTERROR: [0] 1. Error Block 41 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [183] 114. Error Block 46 start (CF ANALYSIS FAILED)
var48 = nil
module[require(AppChat.Conversations.Actions.DismissedChatModal).name] = var48
var48 = AppChatNetworking_upvr.rodux.GetPendingStateModal.Succeeded
function var48(arg1, arg2) -- Line 145
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local postBody = arg2.postBody
	if postBody then
		postBody = arg2.postBody.conversation_id
	end
	if not postBody then
		return arg1
	end
	return Cryo_upvr.Dictionary.join(arg1, {
		pendingStateModals = Cryo_upvr.Dictionary.join(arg1.pendingStateModals, {
			[postBody] = arg2.responseBody;
		});
	})
end
module[var48.name] = var48
function var48(arg1, arg2) -- Line 164
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local conversationId_2 = arg2.conversationId
	if not conversationId_2 then
		return arg1
	end
	return Cryo_upvr.Dictionary.join(arg1, {
		conversationTopModals = Cryo_upvr.Dictionary.join(arg1.conversationTopModals, {
			[conversationId_2] = Cryo_upvr.None;
		});
		pendingStateModals = Cryo_upvr.Dictionary.join(arg1.pendingStateModals, {
			[conversationId_2] = Cryo_upvr.None;
		});
	})
end
module[require(AppChat.Conversations.Actions.RemovedConversation).name] = var48
if FFlagAppChatEnableFriendConversationModals_upvr or FFlagAppChatEnableTC_upvr then
	function var48(arg1, arg2) -- Line 180
		--[[ Upvalues[3]:
			[1]: FFlagAppChatEnableFriendConversationModals_upvr (readonly)
			[2]: Cryo_upvr (readonly)
			[3]: FFlagAppChatEnableTC_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local oldFriendConversationId = arg2.oldFriendConversationId
		local newConversationId = arg2.newConversationId
		local var51
		if not oldFriendConversationId or not newConversationId then
			return arg1
		end
		local var52 = arg1
		if FFlagAppChatEnableFriendConversationModals_upvr then
			if arg1.conversationTopModals[oldFriendConversationId] then
			end
			if arg1.conversationTopModalsDismissed[oldFriendConversationId] then
				({}).conversationTopModalsDismissed = Cryo_upvr.Dictionary.join(Cryo_upvr.Dictionary.join(var52, {
					conversationTopModals = Cryo_upvr.Dictionary.join(var52.conversationTopModals, {
						[newConversationId] = arg1.conversationTopModals[oldFriendConversationId];
						[oldFriendConversationId] = Cryo_upvr.None;
					});
				}).conversationTopModalsDismissed, {
					[newConversationId] = arg1.conversationTopModalsDismissed[oldFriendConversationId];
					[oldFriendConversationId] = Cryo_upvr.None;
				})
			end
		end
		local var58
		if FFlagAppChatEnableTC_upvr and arg1.conversationOverlays[oldFriendConversationId] then
			var58 = Cryo_upvr.Dictionary.join(var58, {
				conversationOverlays = Cryo_upvr.Dictionary.join(var58.conversationOverlays, {
					[newConversationId] = arg1.conversationOverlays[oldFriendConversationId];
					[oldFriendConversationId] = Cryo_upvr.None;
				});
			})
		end
		return var58
	end
else
	var48 = nil
end
module[require(AppChat.Conversations.Actions.FriendConversationCreated).name] = var48
if FFlagDebugAppChatFae then
	local function _(arg1) -- Line 228
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (readonly)
			[2]: AppChatNetworking_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.union(arg1, {
			chatLandingModal = {
				modal_variant = AppChatNetworking_upvr.Constants.ChatLandingModalVariant.AgeAssuranceUpsell;
				modal_layout = {
					id = "asdf";
					label = {
						text = "New";
					};
					header = {
						text = "FAE Title";
					};
					body = {
						text = "FAE debug Body";
						additional_content = {{
							type = AppChatNetworking_upvr.Constants.ModalContentType.Link;
							text = "Learn more";
						}};
					};
					buttons = {{
						text = "Continue";
					}};
					seen_record_action = "none";
					dismiss_record_action = "none";
				};
			};
		})
	end
	-- KONSTANTWARNING: GOTO [218] #143
end
module.DEBUG_ShowAppChatFaeUpsell = nil
if require(Parent.SharedFlags).FFlagTCUpsellModalEnabled_DEV then
	local function _(arg1, arg2) -- Line 262
		--[[ Upvalues[2]:
			[1]: Cryo_upvr (readonly)
			[2]: AppChatNetworking_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			conversationOverlays = Cryo_upvr.Dictionary.join(arg1.conversationOverlays, {
				[arg2.conversationId] = {
					modal_variant = AppChatNetworking_upvr.Constants.ConversationOverlay.TrustedConnectionCreated;
					modal_layout = {
						id = "asdf";
						seen_record_action = "none";
						dismiss_record_action = "none";
					};
				};
			});
		})
	end
	-- KONSTANTWARNING: GOTO [226] #150
end
module.DEBUG_ShowNewTCOverlay = nil
if FFlagDebugAppChatFae then
	local function _(arg1) -- Line 278
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			chatLandingModal = Cryo_upvr.None;
		})
	end
else
end
module.DEBUG_DismissChatLandingModal = nil
do
	return require(Parent.Rodux).createReducer({
		chatLandingModal = {};
		conversationTopModals = {};
		conversationTopModalsDismissed = {};
		conversationOverlays = {};
		pendingStateModals = {};
	}, module)
end
-- KONSTANTERROR: [183] 114. Error Block 46 end (CF ANALYSIS FAILED)