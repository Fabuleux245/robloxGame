-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:54:06
-- Luau version 6, Types version 3
-- Time taken: 0.001614 seconds

local AppChat = script:FindFirstAncestor("AppChat")
local Parent = AppChat.Parent
local SharedFlags = require(Parent.SharedFlags)
local default_upvr = require(Parent.SocialCommon).Experiments.NewChatTabExperimentation.default
local GetFFlagEnableAppChatInExperience_upvr = SharedFlags.GetFFlagEnableAppChatInExperience
local InExperienceAppChatExperimentation_upvr = require(AppChat.App.InExperienceAppChatExperimentation)
local GetFFlagAppChatRebrandStringUpdates_upvr = SharedFlags.GetFFlagAppChatRebrandStringUpdates
local SquadExperimentation_upvr = require(Parent.SocialExperiments).SquadExperimentation
local getFFlagAppChatRebrandIconUpdates_upvr = SharedFlags.getFFlagAppChatRebrandIconUpdates
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("AppChatRebrandIconUpdatesNew", false)
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("AppChatRebrandIconUpdatesNewOn", "icons/menu/2-person-with-bubble-on")
local game_DefineFastString_result1_upvr = game:DefineFastString("AppChatRebrandIconUpdatesNewOff", "icons/menu/2-person-with-bubble")
return function() -- Line 21
	--[[ Upvalues[9]:
		[1]: default_upvr (readonly)
		[2]: GetFFlagEnableAppChatInExperience_upvr (readonly)
		[3]: InExperienceAppChatExperimentation_upvr (readonly)
		[4]: GetFFlagAppChatRebrandStringUpdates_upvr (readonly)
		[5]: SquadExperimentation_upvr (readonly)
		[6]: getFFlagAppChatRebrandIconUpdates_upvr (readonly)
		[7]: game_DefineFastFlag_result1_upvr (readonly)
		[8]: game_DefineFastString_result1_upvr_2 (readonly)
		[9]: game_DefineFastString_result1_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local _ = {
		on = "icons/menu/chat_on";
		off = "icons/menu/chat_off";
	}
	local var15
	if default_upvr.isEnabled() and default_upvr:getConnectTabLeadsToChatTab() then
	end
	if GetFFlagEnableAppChatInExperience_upvr() then
		if InExperienceAppChatExperimentation_upvr.default.variant.ShowPlatformChatNewTitleInUniversalApp then
		end
		if InExperienceAppChatExperimentation_upvr.default.variant.ShowPlatformChatNewIconInUniversalApp then
			local _ = {
				on = "icons/menu/platformChatOn";
				off = "icons/menu/platformChatOff";
			}
			var15 = UDim2.new(0, -6, 0, -1)
		end
	end
	local var17
	if GetFFlagAppChatRebrandStringUpdates_upvr() and SquadExperimentation_upvr.getSquadEntrypointsEnabled() then
		var17 = "Feature.Squads.Label.Party"
	end
	if getFFlagAppChatRebrandIconUpdates_upvr() then
		local tbl = {
			on = "icons/menu/groups_on";
			off = "icons/menu/groups";
		}
	end
	if game_DefineFastFlag_result1_upvr then
	end
	return {
		label = var17;
		icon = {
			on = game_DefineFastString_result1_upvr_2;
			off = game_DefineFastString_result1_upvr;
		};
		badgeOffset = var15;
	}
end