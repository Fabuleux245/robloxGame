-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:49
-- Luau version 6, Types version 3
-- Time taken: 0.001606 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local SquadExternalContractContext_upvr = require(SquadsCore.Components.SquadExternalContractProvider.SquadExternalContractContext)
local FFlagSquadAppChatRTNFix_upvr = require(Parent.SharedFlags).FFlagSquadAppChatRTNFix
local useCurrentSquadParentChannelId_upvr = require(SquadsCore.Hooks.useCurrentSquadParentChannelId)
local RealtimeDelivery_upvr = require(Parent.RealtimeDelivery)
local Constants_upvr = require(SquadsCore.Common.Constants)
return function(arg1) -- Line 20, Named "SquadAppChatEventReceiver"
	--[[ Upvalues[7]:
		[1]: useDispatch_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: SquadExternalContractContext_upvr (readonly)
		[4]: FFlagSquadAppChatRTNFix_upvr (readonly)
		[5]: useCurrentSquadParentChannelId_upvr (readonly)
		[6]: RealtimeDelivery_upvr (readonly)
		[7]: Constants_upvr (readonly)
	]]
	local var3_result1_upvr = useDispatch_upvr()
	local var11_upvr = SquadExternalContractContext_upvr
	local any_useContext_result1_upvr = React_upvr.useContext(var11_upvr)
	if FFlagSquadAppChatRTNFix_upvr then
		var11_upvr = useCurrentSquadParentChannelId_upvr()
	else
		var11_upvr = arg1.conversationId
	end
	RealtimeDelivery_upvr.useRealtimeNamespace(Constants_upvr.COMMUNICATION_CHANNEL_RTN_NAMESPACE, function(arg1_2) -- Line 28
		--[[ Upvalues[6]:
			[1]: FFlagSquadAppChatRTNFix_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Constants_upvr (copied, readonly)
			[4]: var11_upvr (readonly)
			[5]: any_useContext_result1_upvr (readonly)
			[6]: var3_result1_upvr (readonly)
		]]
		if FFlagSquadAppChatRTNFix_upvr then
		elseif arg1.conversationId then
			if arg1.conversationId ~= arg1_2.ChannelId then
			else
			end
		end
		local var14
		if arg1_2.ChannelType == Constants_upvr.SQUAD_CHANNEL_TYPE then
			if FFlagSquadAppChatRTNFix_upvr then
				local var15 = var11_upvr
				if var15 then
					if var11_upvr ~= arg1_2.ParentChannelId then
						var15 = false
					else
						var15 = true
					end
				end
				var14 = var15
			end
			if arg1_2.Type == Constants_upvr.CHANNEL_CREATED_DETAIL_TYPE and not var14 or arg1_2.Type == Constants_upvr.CHANNEL_DELETED_DETAIL_TYPE then
				any_useContext_result1_upvr.fetchParentChannelDetails(var3_result1_upvr, arg1_2.ParentChannelId)
			end
			if arg1_2.Type == Constants_upvr.CHANNEL_UPDATED_DETAIL_TYPE and arg1_2.PreviousChannelStatus and arg1_2.PreviousChannelStatus.ParentChannelId then
				any_useContext_result1_upvr.fetchParentChannelDetails(var3_result1_upvr, arg1_2.PreviousChannelStatus.ParentChannelId)
			end
		end
	end, {var3_result1_upvr, var11_upvr, any_useContext_result1_upvr.fetchParentChannelDetails})
	return nil
end