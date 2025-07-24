-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:27:53
-- Luau version 6, Types version 3
-- Time taken: 0.000624 seconds

local Parent = script:FindFirstAncestor("ExpChatShared").Parent
local TenFootInterfaceExpChatExperimentation_upvr = require(Parent.SocialExperiments).TenFootInterfaceExpChatExperimentation
return require(Parent.Rodux).makeActionCreator(script.Name, function(arg1) -- Line 16
	--[[ Upvalues[1]:
		[1]: TenFootInterfaceExpChatExperimentation_upvr (readonly)
	]]
	local module = {}
	local team = arg1.team
	module.team = team
	if arg1.isChatCoreGuiEnabled == nil then
		team = true
	else
		team = arg1.isChatCoreGuiEnabled
	end
	module.isChatCoreGuiEnabled = team
	team = arg1.isTouchEnabled
	module.isTouchEnabled = team
	if TenFootInterfaceExpChatExperimentation_upvr.getIsEnabled() then
		team = arg1.isGamepadConnected
	else
		team = nil
	end
	module.isGamepadConnected = team
	return module
end)