-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:30:51
-- Luau version 6, Types version 3
-- Time taken: 0.001517 seconds

local SquadsCore = script:FindFirstAncestor("SquadsCore")
local Parent = SquadsCore.Parent
local RoactUtils = require(Parent.RoactUtils)
local useDispatch_upvr = RoactUtils.Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local SquadExternalContractContext_upvr = require(SquadsCore.Components.SquadExternalContractProvider.SquadExternalContractContext)
local RealtimeDelivery_upvr = require(Parent.RealtimeDelivery)
local Constants_upvr = require(SquadsCore.Common.Constants)
local Logger_upvr = require(SquadsCore.Logger)
local serializeTable_upvr = require(SquadsCore.Utils.serializeTable)
local RoduxSquads_upvr = require(SquadsCore.RoduxSquads)
local fetchActiveSquad_upvr = require(SquadsCore.Thunks.fetchActiveSquad)
local dependencyArray_upvr = RoactUtils.Hooks.dependencyArray
return function(arg1) -- Line 23
	--[[ Upvalues[10]:
		[1]: useDispatch_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: SquadExternalContractContext_upvr (readonly)
		[4]: RealtimeDelivery_upvr (readonly)
		[5]: Constants_upvr (readonly)
		[6]: Logger_upvr (readonly)
		[7]: serializeTable_upvr (readonly)
		[8]: RoduxSquads_upvr (readonly)
		[9]: fetchActiveSquad_upvr (readonly)
		[10]: dependencyArray_upvr (readonly)
	]]
	local var5_result1_upvr = useDispatch_upvr()
	local any_useContext_result1_upvr = React_upvr.useContext(SquadExternalContractContext_upvr)
	RealtimeDelivery_upvr.useRealtimeNamespace(Constants_upvr.COMMUNICATION_CHANNEL_RTN_NAMESPACE, function(arg1_2) -- Line 28
		--[[ Upvalues[7]:
			[1]: Constants_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Logger_upvr (copied, readonly)
			[4]: serializeTable_upvr (copied, readonly)
			[5]: var5_result1_upvr (readonly)
			[6]: RoduxSquads_upvr (copied, readonly)
			[7]: fetchActiveSquad_upvr (copied, readonly)
		]]
		if table.find(Constants_upvr.PARENT_CHANNEL_TYPES, arg1_2.ChannelType) then
			local currentParentChannelId = arg1.currentParentChannelId
			if currentParentChannelId then
				if arg1.currentParentChannelId ~= arg1_2.ChannelId then
					currentParentChannelId = false
				else
					currentParentChannelId = true
				end
			end
			if currentParentChannelId then
				Logger_upvr:debug("Parent squad channel RTN received. Detail: {}, CurrentParentChannelId: {}", serializeTable_upvr(arg1_2), arg1.currentParentChannelId)
				if arg1_2.Type == Constants_upvr.CHANNEL_DELETED_DETAIL_TYPE or arg1_2.Type == Constants_upvr.CHANNEL_ARCHIVED_DETAIL_TYPE or arg1_2.Type == Constants_upvr.CHANNEL_LOCAL_USER_REMOVED_DETAIL_TYPE then
					var5_result1_upvr(RoduxSquads_upvr.Actions.CurrentSquadUpdated(nil))
					return
				end
				if arg1_2.Type == Constants_upvr.CHANNEL_PARTICIPANT_REMOVED_DETAIL_TYPE then
					var5_result1_upvr(fetchActiveSquad_upvr())
				end
			end
		end
	end, {var5_result1_upvr, arg1.currentParentChannelId, any_useContext_result1_upvr.fetchParentChannelDetails})
	React_upvr.useEffect(function() -- Line 56
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: any_useContext_result1_upvr (readonly)
			[3]: var5_result1_upvr (readonly)
		]]
		if arg1.currentParentChannelId and arg1.currentParentChannelId ~= "" then
			any_useContext_result1_upvr.fetchParentChannelDetails(var5_result1_upvr, arg1.currentParentChannelId)
		end
	end, dependencyArray_upvr(var5_result1_upvr, arg1.currentParentChannelId, any_useContext_result1_upvr.fetchParentChannelDetails))
	return nil
end