-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:51:03
-- Luau version 6, Types version 3
-- Time taken: 0.000454 seconds

local RealtimeDelivery_upvr = require(script:FindFirstAncestor("AppChat").Parent.RealtimeDelivery)
return function(arg1, arg2) -- Line 8, Named "useRealtimePlatformChat"
	--[[ Upvalues[1]:
		[1]: RealtimeDelivery_upvr (readonly)
	]]
	RealtimeDelivery_upvr.useRealtimeNamespace("CommunicationChannels", function(arg1_2) -- Line 9
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1_2.ChannelVertical == "PlatformChat" then
			arg1(arg1_2)
		end
	end, arg2)
end