-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:00
-- Luau version 6, Types version 3
-- Time taken: 0.000936 seconds

local Parent = script:FindFirstAncestor("ExpChat").Parent
local SharedFlags = require(Parent.SharedFlags)
local GetFFlagEnableAppChatInExperience_upvr = SharedFlags.GetFFlagEnableAppChatInExperience
local InExperienceAppChatExperimentation_upvr = require(Parent.AppChat).App.InExperienceAppChatExperimentation
local getFFlagAppChatRebrandIconUpdates_upvr = SharedFlags.getFFlagAppChatRebrandIconUpdates
return function() -- Line 20
	--[[ Upvalues[3]:
		[1]: GetFFlagEnableAppChatInExperience_upvr (readonly)
		[2]: InExperienceAppChatExperimentation_upvr (readonly)
		[3]: getFFlagAppChatRebrandIconUpdates_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl = {
		on = "icons/menu/chat_on";
		off = "icons/menu/chat_off";
	}
	local var8
	if GetFFlagEnableAppChatInExperience_upvr() and InExperienceAppChatExperimentation_upvr.default.variant.ShowInExperienceChatNewIcon then
		var8 = {
			on = "icons/menu/publicChatOn";
			off = "icons/menu/publicChatOff";
		}
	end
	if getFFlagAppChatRebrandIconUpdates_upvr() then
		var8 = {
			on = "icons/menu/platformChatOn";
			off = "icons/menu/platformChatOff";
		}
	end
	return {
		label = "CoreScripts.TopBar.Chat";
		icon = var8;
		iconSize = 30;
	}
end