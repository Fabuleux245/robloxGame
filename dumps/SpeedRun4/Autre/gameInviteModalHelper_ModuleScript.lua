-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:00
-- Luau version 6, Types version 3
-- Time taken: 0.001037 seconds

local GameInviteConstants_upvr = require(script:FindFirstAncestor("GameInvite").GameInviteConstants)
function isTriggerDDI(arg1) -- Line 5
	--[[ Upvalues[1]:
		[1]: GameInviteConstants_upvr (readonly)
	]]
	local var3 = true
	if arg1 ~= GameInviteConstants_upvr.Triggers.DeveloperSingle then
		if arg1 ~= GameInviteConstants_upvr.Triggers.DeveloperMultiple then
			var3 = false
		else
			var3 = true
		end
	end
	return var3
end
function isTriggerGameMenu(arg1) -- Line 9
	--[[ Upvalues[1]:
		[1]: GameInviteConstants_upvr (readonly)
	]]
	local var4
	if arg1 ~= GameInviteConstants_upvr.Triggers.GameMenu then
		var4 = false
	else
		var4 = true
	end
	return var4
end
return {
	isTriggerDDI = isTriggerDDI;
	isTriggerGameMenu = isTriggerGameMenu;
}