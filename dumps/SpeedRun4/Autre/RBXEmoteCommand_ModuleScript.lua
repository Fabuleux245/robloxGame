-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:28:04
-- Luau version 6, Types version 3
-- Time taken: 0.004333 seconds

local any_new_result1_upvr = require(script:FindFirstAncestor("ExpChatShared").Logger):new("ExpChat/Command/Emote")
local tbl_upvr = {
	wave = true;
	point = true;
	dance = true;
	dance1 = true;
	dance2 = true;
	dance3 = true;
	laugh = true;
	cheer = true;
}
local function _(arg1) -- Line 18, Named "getDanceBasedOnRigType"
	local var3
	local class_Humanoid = arg1:FindFirstChildOfClass("Humanoid")
	if class_Humanoid then
		if class_Humanoid.RigType == Enum.HumanoidRigType.R15 then
			var3 = "dance"
			return var3
		end
		if class_Humanoid.RigType == Enum.HumanoidRigType.R6 then
			var3 = "dance"..math.random(1, 3)
		end
	end
	return var3
end
local function handleLegacyEmote_upvr(arg1, arg2) -- Line 33, Named "handleLegacyEmote"
	--[[ Upvalues[1]:
		[1]: any_new_result1_upvr (readonly)
	]]
	local pcall_result1, pcall_result2_2 = pcall(function() -- Line 34
		--[[ Upvalues[3]:
			[1]: arg2 (readonly)
			[2]: arg1 (read and write)
			[3]: any_new_result1_upvr (copied, readonly)
		]]
		local Animate = arg2:FindFirstChild("Animate")
		if Animate then
			local PlayEmote = Animate:FindFirstChild("PlayEmote")
			if PlayEmote and PlayEmote:IsA("BindableFunction") then
				if arg1 == "dance" then
					local var8
					local class_Humanoid_3 = arg2:FindFirstChildOfClass("Humanoid")
					if class_Humanoid_3 then
						if class_Humanoid_3.RigType == Enum.HumanoidRigType.R15 then
							var8 = "dance"
						elseif class_Humanoid_3.RigType == Enum.HumanoidRigType.R6 then
							var8 = "dance"..math.random(1, 3)
						end
					end
					arg1 = var8
				end
				PlayEmote:Invoke(arg1)
				return true
			end
			any_new_result1_upvr:debug("PlayEmote BindableFunction does not exist.")
		end
		return false
	end)
	if pcall_result1 and pcall_result2_2 then
		any_new_result1_upvr:debug("Playing legacy emote successfully")
		return
	end
	return {
		key = "InGame.EmotesMenu.ErrorMessageNotSupported";
		metadata = "Roblox.Emote.Error.NotSupported";
	}
end
local function getValidEmoteOrResponse_upvr(arg1, arg2) -- Line 63, Named "getValidEmoteOrResponse"
	local tonumber_result1 = tonumber(arg2, 10)
	if tonumber_result1 then
		local any_GetEquippedEmotes_result1 = arg1:GetEquippedEmotes()
		if any_GetEquippedEmotes_result1[tonumber_result1] then
			return any_GetEquippedEmotes_result1[tonumber_result1].Name, nil
		end
		if 1 > tonumber_result1 or tonumber_result1 > 8 then
			return nil, {
				key = "CoreScripts.TextChat.Emote.Error.DoesNotExist";
				metadata = "Roblox.Emote.Error.DoesNotExist";
			}
		end
		return nil, {
			key = "CoreScripts.TextChat.Emote.Error.NotEquipped";
			metadata = "Roblox.Emote.Error.EmoteNotEquipped";
		}
	end
	for i, _ in pairs(arg1:GetEmotes()) do
		if string.lower(i) == arg2 then
			return i, nil
		end
	end
	return nil, {
		key = "CoreScripts.TextChat.Emote.Error.NotOwnedGeneric";
		metadata = "Roblox.Emote.Error.NotOwnedGeneric";
	}
end
local module = {
	name = script.Name;
	alias = {"/emote", "/e"};
}
local StarterPlayer_upvr = game:GetService("StarterPlayer")
function module.clientRun(arg1, arg2, arg3) -- Line 105
	--[[ Upvalues[5]:
		[1]: any_new_result1_upvr (readonly)
		[2]: tbl_upvr (readonly)
		[3]: handleLegacyEmote_upvr (readonly)
		[4]: StarterPlayer_upvr (readonly)
		[5]: getValidEmoteOrResponse_upvr (readonly)
	]]
	local var26
	if string.sub(arg3, 1, 3):lower() == "/e " then
		var26 = string.sub(arg3, 4)
	elseif string.sub(arg3, 1, 7):lower() == "/emote " then
		var26 = string.sub(arg3, 8)
	end
	if not var26 then
		any_new_result1_upvr:debug("No emote string given")
		return {
			key = "CoreScripts.TextChat.Emote.Error.DoesNotExist";
			metadata = "Roblox.Emote.Error.DoesNotExist";
		}
	end
	local string_lower_result1 = string.lower(var26)
	local LocalCharacter = arg1:getState().LocalCharacter
	if tbl_upvr[string_lower_result1] then
		any_new_result1_upvr:trace("Legacy emote found")
		return handleLegacyEmote_upvr(string_lower_result1, LocalCharacter)
	end
	if not StarterPlayer_upvr.UserEmotesEnabled then
		any_new_result1_upvr:debug("Experience does not have emotes enabled")
		return {
			key = "CoreScripts.TextChat.Emote.Error.NotEnabled";
			metadata = "Roblox.Emote.Error.UserEmotesNotEnabled";
		}
	end
	if not LocalCharacter then
		any_new_result1_upvr:debug("No character loaded")
		return {
			key = "InGame.EmotesMenu.ErrorMessageTemporarilyUnavailable";
			metadata = "Roblox.Emote.Error.TemporarilyUnavailable";
		}
	end
	if not LocalCharacter:FindFirstChild("Animate") then
		any_new_result1_upvr:debug("Animate script missing")
		return {
			key = "InGame.EmotesMenu.ErrorMessageNotSupported";
			metadata = "Roblox.Emote.Error.NotSupported";
		}
	end
	local class_Humanoid_2_upvr = LocalCharacter:FindFirstChildOfClass("Humanoid")
	if not class_Humanoid_2_upvr then
		any_new_result1_upvr:debug("Humanoid missing")
		return {
			key = "InGame.EmotesMenu.ErrorMessageTemporarilyUnavailable";
			metadata = "Roblox.Emote.Error.TemporarilyUnavailable";
		}
	end
	if class_Humanoid_2_upvr.RigType ~= Enum.HumanoidRigType.R15 then
		any_new_result1_upvr:debug("Humanoid.RigType is not R15")
		return {
			key = "InGame.EmotesMenu.ErrorMessageSwitchToR15";
			metadata = "Roblox.Emote.Error.SwitchToR15";
		}
	end
	local class_HumanoidDescription = class_Humanoid_2_upvr:FindFirstChildOfClass("HumanoidDescription")
	if not class_HumanoidDescription then
		any_new_result1_upvr:debug("HumanoidDescription missing")
		return {
			key = "InGame.EmotesMenu.ErrorMessageNotSupported";
			metadata = "Roblox.Emote.Error.NotSupported";
		}
	end
	local getValidEmoteOrResponse_upvr_result1_upvr, getValidEmoteOrResponse_upvr_result2 = getValidEmoteOrResponse_upvr(class_HumanoidDescription, string_lower_result1)
	if not getValidEmoteOrResponse_upvr_result1_upvr then
		any_new_result1_upvr:debug("Could not find a valid emote within HumanoidDescription")
		return getValidEmoteOrResponse_upvr_result2
	end
	local pcall_result1_2, pcall_result2 = pcall(function() -- Line 192
		--[[ Upvalues[2]:
			[1]: class_Humanoid_2_upvr (readonly)
			[2]: getValidEmoteOrResponse_upvr_result1_upvr (readonly)
		]]
		return class_Humanoid_2_upvr:PlayEmote(getValidEmoteOrResponse_upvr_result1_upvr)
	end)
	if not pcall_result1_2 or not pcall_result2 then
		any_new_result1_upvr:debug("Humanoid:PlayEmote encountered an error: {}", pcall_result2)
		return {
			key = "InGame.EmotesMenu.ErrorMessageAnimationPlaying";
			metadata = "Roblox.Emote.Error.AnimationPlaying";
		}
	end
	any_new_result1_upvr:debug("Playing emote: {}", tostring(getValidEmoteOrResponse_upvr_result1_upvr))
	return nil
end
return module