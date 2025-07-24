-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:35:33
-- Luau version 6, Types version 3
-- Time taken: 0.001071 seconds

local Parent_2 = script.Parent.Parent.Parent
local Parent = Parent_2.Parent
local React_upvr = require(Parent.React)
local useRoactService_upvr = require(Parent.RobloxAppHooks).useRoactService
local RoactNetworking_upvr = require(Parent.RoactServiceTags).RoactNetworking
local useContext_upvr = React_upvr.useContext
local ServiceOverrideContext_upvr = require(Parent_2.Components.CoreUI.ServiceOverrideContext)
local fetchEventDetails_upvr = require(Parent_2.Common.fetchEventDetails)
local useExternalEvent_upvr = require(Parent.UIBlox).Core.Hooks.useExternalEvent
return function(arg1) -- Line 26
	--[[ Upvalues[7]:
		[1]: useRoactService_upvr (readonly)
		[2]: RoactNetworking_upvr (readonly)
		[3]: useContext_upvr (readonly)
		[4]: ServiceOverrideContext_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: fetchEventDetails_upvr (readonly)
		[7]: useExternalEvent_upvr (readonly)
	]]
	local useRoactService_upvr_result1_upvr = useRoactService_upvr(RoactNetworking_upvr)
	local socialService_upvr = useContext_upvr(ServiceOverrideContext_upvr).socialService
	useExternalEvent_upvr(socialService_upvr.ShowPromptRsvpToEvent, React_upvr.useCallback(function(arg1_2) -- Line 33
		--[[ Upvalues[4]:
			[1]: fetchEventDetails_upvr (copied, readonly)
			[2]: useRoactService_upvr_result1_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: socialService_upvr (readonly)
		]]
		fetchEventDetails_upvr(useRoactService_upvr_result1_upvr, arg1_2):andThen(function(arg1_3) -- Line 34
			--[[ Upvalues[2]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_2 (readonly)
			]]
			arg1.openRsvpPrompt(arg1_2, arg1_3)
		end, function(arg1_4) -- Line 36
			--[[ Upvalues[3]:
				[1]: socialService_upvr (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: arg1 (copied, readonly)
			]]
			socialService_upvr:PromptRsvpToEventCompleted(arg1_2, false, Enum.RsvpStatus.None)
			warn("Error fetching event details: ", arg1_4)
			arg1.closePrompt()
		end)
	end, {arg1.openRsvpPrompt, useRoactService_upvr_result1_upvr}))
	return React_upvr.createElement(React_upvr.Fragment, {}, {})
end