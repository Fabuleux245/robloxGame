-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:42:29
-- Luau version 6, Types version 3
-- Time taken: 0.004160 seconds

local SocialCards = script:FindFirstAncestor("SocialCards")
local Parent = SocialCards.Parent
local LuauPolyfill = require(Parent.LuauPolyfill)
local SquadsCore = require(Parent.SquadsCore)
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local React_upvr = require(Parent.React)
local SquadExternalContractContext_upvr = SquadsCore.SquadExternalContractProvider.SquadExternalContractContext
local useCurrentSquadSelector_upvr = require(Parent.RoduxSquads).Hooks.useCurrentSquadSelector
local Cryo_upvr = require(Parent.Cryo)
local useNavigationFocus_upvr = require(Parent.Navigation).useNavigationFocus
local SquadViewFlags_upvr = SquadsCore.SquadExternalContractProvider.SquadViewFlags
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local NetworkingSquads_upvr = SquadsCore.Http.NetworkingSquads
local Http_upvr = require(Parent.Http)
local setInterval_upvr = LuauPolyfill.setInterval
local clearInterval_upvr = LuauPolyfill.clearInterval
local SquadStartedCard_upvr = require(SocialCards.Components.SquadCard.SquadStartedCard)
local SquadEndedCard_upvr = require(SocialCards.Components.SquadCard.SquadEndedCard)
local Foundation_upvr = require(Parent.Foundation)
return function(arg1) -- Line 35, Named "SquadCard"
	--[[ Upvalues[16]:
		[1]: useDispatch_upvr (readonly)
		[2]: useLocalUserId_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: SquadExternalContractContext_upvr (readonly)
		[5]: useCurrentSquadSelector_upvr (readonly)
		[6]: Cryo_upvr (readonly)
		[7]: useNavigationFocus_upvr (readonly)
		[8]: SquadViewFlags_upvr (readonly)
		[9]: dependencyArray_upvr (readonly)
		[10]: NetworkingSquads_upvr (readonly)
		[11]: Http_upvr (readonly)
		[12]: setInterval_upvr (readonly)
		[13]: clearInterval_upvr (readonly)
		[14]: SquadStartedCard_upvr (readonly)
		[15]: SquadEndedCard_upvr (readonly)
		[16]: Foundation_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	local var6_result1_upvr = useLocalUserId_upvr()
	local any_useContext_result1_upvr = React_upvr.useContext(SquadExternalContractContext_upvr)
	local useCurrentSquadSelector_upvr_result1_upvr = useCurrentSquadSelector_upvr()
	local var25_upvr
	if useCurrentSquadSelector_upvr_result1_upvr then
		if useCurrentSquadSelector_upvr_result1_upvr.squadId ~= arg1.group_up_id then
			var25_upvr = false
		else
			var25_upvr = true
		end
	else
		var25_upvr = false
	end
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_2) -- Line 48
		--[[ Upvalues[4]:
			[1]: var25_upvr (readonly)
			[2]: useCurrentSquadSelector_upvr_result1_upvr (readonly)
			[3]: Cryo_upvr (copied, readonly)
			[4]: var6_result1_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		if var25_upvr then
			for _, v in ipairs(useCurrentSquadSelector_upvr_result1_upvr.members) do
				table.insert({}, v.userId)
				local var39
			end
			return var39
		end
		return Cryo_upvr.List.filter(arg1_2, function(arg1_3) -- Line 56
			--[[ Upvalues[1]:
				[1]: var6_result1_upvr (copied, readonly)
			]]
			local var41
			if tostring(arg1_3) == var6_result1_upvr then
				var41 = false
			else
				var41 = true
			end
			return var41
		end)
	end, {var25_upvr, useCurrentSquadSelector_upvr_result1_upvr, var6_result1_upvr})
	local any_useState_result1_upvr_2, any_useState_result2_upvr_2 = React_upvr.useState(arg1.is_alive)
	local any_useState_result1_upvr, any_useState_result2_upvr = React_upvr.useState(any_useCallback_result1_upvr_2(arg1.participant_user_ids))
	local var48_upvr = var25_upvr and useNavigationFocus_upvr()
	React_upvr.useEffect(function() -- Line 68
		--[[ Upvalues[3]:
			[1]: var48_upvr (readonly)
			[2]: any_useContext_result1_upvr (readonly)
			[3]: SquadViewFlags_upvr (copied, readonly)
		]]
		if var48_upvr then
			any_useContext_result1_upvr.updateSquadViewFlags(SquadViewFlags_upvr.SquadSystemMessage, true)
		end
		return function() -- Line 72
			--[[ Upvalues[3]:
				[1]: var48_upvr (copied, readonly)
				[2]: any_useContext_result1_upvr (copied, readonly)
				[3]: SquadViewFlags_upvr (copied, readonly)
			]]
			if var48_upvr then
				any_useContext_result1_upvr.updateSquadViewFlags(SquadViewFlags_upvr.SquadSystemMessage, false)
			end
		end
	end, dependencyArray_upvr(any_useContext_result1_upvr.updateSquadViewFlags, var48_upvr))
	React_upvr.useEffect(function() -- Line 79
		--[[ Upvalues[3]:
			[1]: any_useState_result2_upvr (readonly)
			[2]: any_useCallback_result1_upvr_2 (readonly)
			[3]: arg1 (readonly)
		]]
		any_useState_result2_upvr(any_useCallback_result1_upvr_2(arg1.participant_user_ids))
	end, dependencyArray_upvr(any_useState_result2_upvr, arg1.participant_user_ids, any_useCallback_result1_upvr_2))
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_4) -- Line 84
		--[[ Upvalues[5]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: NetworkingSquads_upvr (copied, readonly)
			[3]: any_useState_result2_upvr (readonly)
			[4]: Http_upvr (copied, readonly)
			[5]: any_useState_result2_upvr_2 (readonly)
		]]
		local tbl = {}
		tbl.squadId = arg1_4
		useDispatch_upvr_result1_upvr(NetworkingSquads_upvr.GetSquadFromSquadId.API(tbl)):andThen(function(arg1_5) -- Line 86
			--[[ Upvalues[1]:
				[1]: any_useState_result2_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			if arg1_5 and arg1_5.responseBody and arg1_5.responseBody.groupUp and arg1_5.responseBody.groupUp.members then
				for _, v_2 in ipairs(arg1_5.responseBody.groupUp.members) do
					table.insert({}, v_2.userId)
					local var67
				end
				any_useState_result2_upvr(var67)
			end
		end):catch(function(arg1_6) -- Line 100
			--[[ Upvalues[2]:
				[1]: Http_upvr (copied, readonly)
				[2]: any_useState_result2_upvr_2 (copied, readonly)
			]]
			if arg1_6.StatusCode == Http_upvr.StatusCodes.NOT_FOUND then
				any_useState_result2_upvr_2(false)
			else
				warn("Unsupported error type")
			end
		end)
	end, {useDispatch_upvr_result1_upvr})
	React_upvr.useEffect(function() -- Line 109
		--[[ Upvalues[6]:
			[1]: any_useState_result1_upvr_2 (readonly)
			[2]: var25_upvr (readonly)
			[3]: setInterval_upvr (copied, readonly)
			[4]: any_useCallback_result1_upvr (readonly)
			[5]: arg1 (readonly)
			[6]: clearInterval_upvr (copied, readonly)
		]]
		local var72_upvw
		if any_useState_result1_upvr_2 and not var25_upvr then
			var72_upvw = setInterval_upvr(function() -- Line 113
				--[[ Upvalues[2]:
					[1]: any_useCallback_result1_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				any_useCallback_result1_upvr(arg1.group_up_id)
			end, 10000)
		end
		return function() -- Line 118
			--[[ Upvalues[2]:
				[1]: var72_upvw (read and write)
				[2]: clearInterval_upvr (copied, readonly)
			]]
			if var72_upvw then
				clearInterval_upvr(var72_upvw)
			end
		end
	end, dependencyArray_upvr(any_useCallback_result1_upvr, any_useState_result1_upvr_2, var25_upvr, arg1.group_up_id))
	return React_upvr.createElement(Foundation_upvr.View, {
		AutomaticSize = Enum.AutomaticSize.Y;
		Size = UDim2.new(0, 280, 0, 0);
	}, React_upvr.useMemo(function() -- Line 125
		--[[ Upvalues[6]:
			[1]: any_useState_result1_upvr_2 (readonly)
			[2]: React_upvr (copied, readonly)
			[3]: SquadStartedCard_upvr (copied, readonly)
			[4]: arg1 (readonly)
			[5]: any_useState_result1_upvr (readonly)
			[6]: SquadEndedCard_upvr (copied, readonly)
		]]
		if any_useState_result1_upvr_2 then
			return React_upvr.createElement(SquadStartedCard_upvr, {
				conversationId = arg1.conversation_id;
				participantUserIds = any_useState_result1_upvr;
				squadLocation = arg1.moduleLocation;
			})
		end
		return React_upvr.createElement(SquadEndedCard_upvr, {
			conversationId = arg1.conversation_id;
			squadLocation = arg1.moduleLocation;
		})
	end, dependencyArray_upvr(any_useState_result1_upvr_2, any_useState_result1_upvr, arg1.conversation_id, arg1.group_up_id)))
end