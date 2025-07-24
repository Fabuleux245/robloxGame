-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:07:08
-- Luau version 6, Types version 3
-- Time taken: 0.008804 seconds

local module_upvr = {}
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local module_upvr_3 = require(ReplicatedStorage:WaitForChild("CommonData"))
local module_2_upvr = require(ReplicatedStorage:WaitForChild("Theme"))
local Modules = ReplicatedStorage:WaitForChild("Modules")
local module_upvr_4 = require(Modules:WaitForChild("BUEGameClient"))
local module = require(Modules:WaitForChild("ClientData"))
local UserInterface = Modules:WaitForChild("UserInterface")
local module_upvr_5 = require(UserInterface:WaitForChild("NotificationsUI"))
local tbl_3_upvr = {
	ItemPopups_ByItemData = {};
	ItemData_ByItemPopup = {};
	PetReminderPopup = nil;
}
local tbl_2_upvw = {}
if module_upvr_4.EventsEnabled then
	tbl_2_upvw = {
		[module_upvr_4.RewardKind.challenge] = "Scavenger Hunt";
		[module_upvr_4.RewardKind.daily_login] = "Daily Login";
		[module_upvr_4.RewardKind.multiverse] = "Multiverse";
		[module_upvr_4.RewardKind.playtime] = "Playtime";
		[module_upvr_4.RewardKind.special] = "Special";
	}
end
local function RemoveItemPopup_upvr(arg1) -- Line 46, Named "RemoveItemPopup"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	local var13 = tbl_3_upvr.ItemData_ByItemPopup[arg1]
	if var13 then
		tbl_3_upvr.ItemData_ByItemPopup[arg1] = nil
		tbl_3_upvr.ItemPopups_ByItemData[var13] = nil
	end
end
function module_upvr.ExplainViaPopup(arg1, arg2, arg3) -- Line 55
	--[[ Upvalues[7]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_2_upvr (readonly)
		[3]: module_upvr_3 (readonly)
		[4]: module_upvr_4 (readonly)
		[5]: tbl_2_upvw (read and write)
		[6]: module_upvr_5 (readonly)
		[7]: RemoveItemPopup_upvr (readonly)
	]]
	local var24
	if var24 then
	else
		var24 = nil
		if arg3 then
			var24 = arg3
		else
			local UnlockMethod_2 = arg2.UnlockMethod
			if arg2.Price or UnlockMethod_2 == module_upvr_3.UnlockMethod.Currency then
				var24 = string.format("Purchase this %s to unlock it.", module_2_upvr.FrontEndNames.Items_ByItemType[arg1].Singular.Proper)
			elseif UnlockMethod_2 == module_upvr_3.UnlockMethod.EventReward then
				local any_GetRewardForItemData_result1, any_GetRewardForItemData_result2, any_GetRewardForItemData_result3 = module_upvr_4.GetRewardForItemData(arg2)
				if any_GetRewardForItemData_result1 and any_GetRewardForItemData_result2 then
					if any_GetRewardForItemData_result3 == module_upvr_4.RewardClaimability.Ineligible then
						if any_GetRewardForItemData_result2 == module_upvr_4.RewardKind.challenge then
							local Requirement = any_GetRewardForItemData_result1.Requirement
							local var30
							local any_GetLoadedEvent_result1_2 = module_upvr_4.GetLoadedEvent()
							if any_GetLoadedEvent_result1_2 then
								if Requirement ~= 1 then
									var30 = any_GetLoadedEvent_result1_2.ChallengeScavengerHunt.CollectibleNamePlural
								else
									var30 = any_GetLoadedEvent_result1_2.ChallengeScavengerHunt.CollectibleNameSingular
								end
							elseif Requirement ~= 1 then
								var30 = "collectibles"
							else
								var30 = "collectible"
							end
							-- KONSTANTERROR: Expression was reused, decompilation is incorrect
							var24 = string.format("Unlock this %s in the Event Menu\nafter finding %i %s.", module_2_upvr.FrontEndNames.Items_ByItemType[arg1].Singular.Proper, Requirement, var30)
						else
							error(string.format("REWARD KIND '%i' NOT IMPLEMENTED.", any_GetRewardForItemData_result2))
						end
					elseif any_GetRewardForItemData_result3 == module_upvr_4.RewardClaimability.Claimable then
						-- KONSTANTERROR: Expression was reused, decompilation is incorrect
						var24 = string.format("Claim this %s from the \"%s\"\npage of the Event Menu!", module_2_upvr.FrontEndNames.Items_ByItemType[arg1].Singular.Proper, tbl_2_upvw[any_GetRewardForItemData_result2])
					else
						warn(module_upvr_3.FormatOutput("Unlock method queried for claimed event reward (kind '%*')", "UnlockMethodHelper", nil, any_GetRewardForItemData_result2))
					end
				end
			end
		end
		if not var24 then
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		end
		local any_Create_result1 = module_upvr_5.Popup.Create(module_upvr_5.Popup.Type.Timed, string.format("This %s is locked.", module_2_upvr.FrontEndNames.Items_ByItemType[arg1].Singular.Proper), {
			Font = module_2_upvr.FontFaceNormal;
			Color = module_2_upvr.TextColor1;
		})
		tbl_3_upvr.ItemPopups_ByItemData[arg2] = any_Create_result1
		tbl_3_upvr.ItemData_ByItemPopup[any_Create_result1] = arg2
		any_Create_result1.Callback = RemoveItemPopup_upvr
		module_upvr_5.Popup.Queue(any_Create_result1)
	end
end
local module_upvr_2 = require(UserInterface:WaitForChild("SpecialLevelUI"))
local module_upvr_6 = require(Modules:WaitForChild("Worlds"))
module.Signals.UnlockExplanationRequested:Connect(function(arg1, arg2, arg3) -- Line 148
	--[[ Upvalues[5]:
		[1]: module_upvr_3 (readonly)
		[2]: module_upvr_2 (readonly)
		[3]: module_upvr_6 (readonly)
		[4]: module_2_upvr (readonly)
		[5]: module_upvr (readonly)
	]]
	local var38
	local var39 = false
	if arg1 == module_upvr_3.ItemType.Level then
		var39 = module_upvr_2.OpenFromContext(arg2, arg3)
		if not var39 and module_upvr_6.Data_ByLevel[arg2] == module_upvr_6.Data_ById[module_upvr_3.DefaultWorldId] then
			var38 = string.format("Unlock previous %s first.", module_2_upvr.FrontEndNames.Items_ByItemType[arg1].Plural.Proper)
		end
	end
	if not var39 then
		module_upvr.ExplainViaPopup(arg1, arg2, var38)
	end
end)
local function RemovePetPopup_upvr(arg1) -- Line 182, Named "RemovePetPopup"
	--[[ Upvalues[1]:
		[1]: tbl_3_upvr (readonly)
	]]
	if tbl_3_upvr.PetReminderPopup == arg1 then
		tbl_3_upvr.PetReminderPopup = nil
	end
end
module.Signals.PetReminderRequested:Connect(function() -- Line 189
	--[[ Upvalues[4]:
		[1]: tbl_3_upvr (readonly)
		[2]: module_upvr_5 (readonly)
		[3]: module_2_upvr (readonly)
		[4]: RemovePetPopup_upvr (readonly)
	]]
	if tbl_3_upvr.PetReminderPopup then
	else
		local any_Create_result1_2 = module_upvr_5.Popup.Create(module_upvr_5.Popup.Type.Timed, "Equip some pets!\nPets give you energy faster!", {
			Font = module_2_upvr.FontFaceNormal;
			Color = module_2_upvr.TextColor1;
			TextScale = 1.5;
		})
		tbl_3_upvr.PetReminderPopup = any_Create_result1_2
		any_Create_result1_2.Callback = RemovePetPopup_upvr
		module_upvr_5.Popup.Queue(any_Create_result1_2)
	end
end)
return module_upvr