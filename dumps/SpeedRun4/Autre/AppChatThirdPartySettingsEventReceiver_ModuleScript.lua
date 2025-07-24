-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:59
-- Luau version 6, Types version 3
-- Time taken: 0.000707 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local useDispatch_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useProperty_upvr = require(Parent.GuiObjectUtils).useProperty
local Players_upvr = game:GetService("Players")
local React_upvr = require(Parent.React)
local ThirdPartyChatSettingsLoaded_upvr = require(AppChat.Actions.ThirdPartyChatSettingsLoaded)
return function() -- Line 10, Named "AppChatThirdPartySettingsEventReceiver"
	--[[ Upvalues[5]:
		[1]: useDispatch_upvr (readonly)
		[2]: useProperty_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: ThirdPartyChatSettingsLoaded_upvr (readonly)
	]]
	local var3_result1_upvr = useDispatch_upvr()
	local useProperty_upvr_result1_upvr = useProperty_upvr(useProperty_upvr(Players_upvr, "LocalPlayer"), "ThirdPartyTextChatRestrictionStatus")
	React_upvr.useEffect(function() -- Line 15
		--[[ Upvalues[3]:
			[1]: var3_result1_upvr (readonly)
			[2]: useProperty_upvr_result1_upvr (readonly)
			[3]: ThirdPartyChatSettingsLoaded_upvr (copied, readonly)
		]]
		if var3_result1_upvr and useProperty_upvr_result1_upvr then
			var3_result1_upvr(ThirdPartyChatSettingsLoaded_upvr(useProperty_upvr_result1_upvr))
		end
	end, {var3_result1_upvr, useProperty_upvr_result1_upvr})
	return nil
end