-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:16
-- Luau version 6, Types version 3
-- Time taken: 0.001512 seconds

local Parent = script.Parent.Parent
local MessageBus_upvr = require(Parent.MessageBus).MessageBus
local Promise_upvr = require(Parent.Promise)
local t = require(Parent.t)
local module_upvr = {
	SEND_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR = {
		protocolName = "SMSProtocol";
		methodName = "sendSMS";
		validateParams = t.strictInterface({
			address = t.string;
			message = t.string;
		});
	};
	SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR = {
		protocolName = "SMSProtocol";
		methodName = "sendSMS";
		validateParams = t.strictInterface({
			sent = t.optional(t.boolean);
		});
	};
	SUPPORTS_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR = {
		protocolName = "SMSProtocol";
		methodName = "supportsSMS";
		validateParams = t.table;
	};
	SUPPORTS_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR = {
		protocolName = "SMSProtocol";
		methodName = "supportsSMS";
		validateParams = t.table;
	};
}
module_upvr.__index = module_upvr
function module_upvr.new() -- Line 59
	--[[ Upvalues[2]:
		[1]: MessageBus_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	return setmetatable({
		subscriber = MessageBus_upvr.Subscriber.new();
	}, module_upvr)
end
function module_upvr.sendSMS(arg1, arg2) -- Line 72
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: MessageBus_upvr (readonly)
	]]
	MessageBus_upvr.publishProtocolMethodRequest(arg1.SEND_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR, arg2, {})
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 73
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR_upvr = arg1.SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR
		arg1.subscriber:subscribeProtocolMethodResponse(SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR_upvr, function(arg1_3) -- Line 75
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR_upvr (readonly)
				[3]: arg1_2 (readonly)
			]]
			arg1.subscriber:unsubscribeToProtocolMethodResponse(SEND_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR_upvr)
			arg1_2(arg1_3)
		end)
	end)
end
function module_upvr.supportsSMS(arg1) -- Line 93
	--[[ Upvalues[2]:
		[1]: Promise_upvr (readonly)
		[2]: MessageBus_upvr (readonly)
	]]
	MessageBus_upvr.publishProtocolMethodRequest(arg1.SUPPORTS_SMS_PROTOCOL_METHOD_REQUEST_DESCRIPTOR, {
		includeStatus = false;
	}, {})
	return Promise_upvr.new(function(arg1_4, arg2) -- Line 94
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		local SUPPORTS_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR_upvr = arg1.SUPPORTS_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR
		arg1.subscriber:subscribeProtocolMethodResponse(SUPPORTS_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR_upvr, function(arg1_5) -- Line 96
			--[[ Upvalues[3]:
				[1]: arg1 (copied, readonly)
				[2]: SUPPORTS_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR_upvr (readonly)
				[3]: arg1_4 (readonly)
			]]
			arg1.subscriber:unsubscribeToProtocolMethodResponse(SUPPORTS_SMS_PROTOCOL_METHOD_RESPONSE_DESCRIPTOR_upvr)
			arg1_4(arg1_5.support)
		end)
	end)
end
module_upvr.default = module_upvr.new()
return module_upvr