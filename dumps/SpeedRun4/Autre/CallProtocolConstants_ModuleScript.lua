-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:57:09
-- Luau version 6, Types version 3
-- Time taken: 0.001121 seconds

local MessageBusService = game:GetService("MessageBusService")
return {
	NAME = "Call";
	MESSAGE_INIT_CALL = MessageBusService:GetMessageId("Call", "initCall");
	MESSAGE_ANSWER_CALL = MessageBusService:GetMessageId("Call", "answerCall");
	MESSAGE_ANSWER_SUCCESS_CALL = MessageBusService:GetMessageId("Call", "answerSuccessCall");
	MESSAGE_REJECT_CALL = MessageBusService:GetMessageId("Call", "rejectCall");
	MESSAGE_CANCEL_CALL = MessageBusService:GetMessageId("Call", "cancelCall");
	MESSAGE_TELEPORT_SUCCESS_CALL = MessageBusService:GetMessageId("Call", "teleportSuccessCall");
	MESSAGE_FINISH_CALL = MessageBusService:GetMessageId("Call", "finishCall");
	MESSAGE_UDPATE_MIC_AND_CAM_STATE = MessageBusService:GetMessageId("Call", "updateMicAndCamState");
	MESSAGE_HANDLE_INIT_CALL = MessageBusService:GetMessageId("Call", "handleInitCall");
	MESSAGE_HANDLE_CONNECTING_CALL = MessageBusService:GetMessageId("Call", "handleConnectingCall");
	MESSAGE_HANDLE_TELEPORTING_CALL = MessageBusService:GetMessageId("Call", "handleTeleportingCall");
	MESSAGE_HANDLE_ACTIVE_CALL = MessageBusService:GetMessageId("Call", "handleActiveCall");
	MESSAGE_HANDLE_END_CALL = MessageBusService:GetMessageId("Call", "handleEndCall");
	MESSAGE_HANDLE_CALL_MESSAGE = MessageBusService:GetMessageId("Call", "handleCallMessage");
	MESSAGE_HANDLE_MIC_AND_CAM_CHANGED = MessageBusService:GetMessageId("Call", "handleMicAndCamChanged");
	MESSAGE_HANDLE_TRANSFER_CALL_TELEPORT_LEAVE = MessageBusService:GetMessageId("Call", "handleTransferCallTeleportLeave");
	MESSAGE_HANDLE_TRANSFER_CALL_TELEPORT_JOIN = MessageBusService:GetMessageId("Call", "handleTransferCallTeleportJoin");
	METHOD_GET_CALL_STATE = "getCallState";
}