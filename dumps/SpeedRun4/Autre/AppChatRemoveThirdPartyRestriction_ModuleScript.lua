-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:59
-- Luau version 6, Types version 3
-- Time taken: 0.000840 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local React_upvr = require(Parent.React)
local ThirdPartyChatSettingsLoaded_upvr = require(AppChat.Actions.ThirdPartyChatSettingsLoaded)
return function() -- Line 7, Named "AppChatRemoveThirdPartyRestriction"
	--[[ Upvalues[3]:
		[1]: useDispatch_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ThirdPartyChatSettingsLoaded_upvr (readonly)
	]]
	local useDispatch_upvr_result1_upvr = useDispatch_upvr()
	React_upvr.useEffect(function() -- Line 9
		--[[ Upvalues[2]:
			[1]: useDispatch_upvr_result1_upvr (readonly)
			[2]: ThirdPartyChatSettingsLoaded_upvr (copied, readonly)
		]]
		if useDispatch_upvr_result1_upvr then
			useDispatch_upvr_result1_upvr(ThirdPartyChatSettingsLoaded_upvr(Enum.ChatRestrictionStatus.NotRestricted))
		end
	end, {useDispatch_upvr_result1_upvr})
	return nil
end