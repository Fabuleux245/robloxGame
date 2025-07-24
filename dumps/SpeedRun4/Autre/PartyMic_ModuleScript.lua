-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:44
-- Luau version 6, Types version 3
-- Time taken: 0.001450 seconds

local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")
local Service = require(Chrome.Service)
local Signal = require(CorePackages.Workspace.Packages.AppCommonLib).Signal
local var5_upvw
local var6_upvw = false
local any_new_result1_upvr_2 = Signal.new()
local any_new_result1_upvr = Signal.new()
any_new_result1_upvr_2:connect(function(arg1) -- Line 22
	--[[ Upvalues[1]:
		[1]: var5_upvw (read and write)
	]]
	var5_upvw = arg1
end)
any_new_result1_upvr:connect(function(arg1) -- Line 26
	--[[ Upvalues[1]:
		[1]: var6_upvw (read and write)
	]]
	var6_upvw = arg1
end)
local var11
if require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableCrossExpVoice() then
	local tbl_2 = {
		id = require(Chrome.Integrations.Party.Constants).TOGGLE_MIC_INTEGRATION_ID;
		label = "CoreScripts.TopBar.ToggleMic";
	}
	local Players_upvr = game:GetService("Players")
	local default_upvr = require(CorePackages.Workspace.Packages.CrossExperienceVoice).CrossExperienceVoiceManager.default
	function tbl_2.activated() -- Line 36
		--[[ Upvalues[4]:
			[1]: Players_upvr (readonly)
			[2]: var6_upvw (read and write)
			[3]: var5_upvw (read and write)
			[4]: default_upvr (readonly)
		]]
		local var15
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var15 = Players_upvr.LocalPlayer.UserId
			return var15
		end
		if not Players_upvr or not Players_upvr.LocalPlayer or not INLINED() then
			var15 = -1
		end
		if var15 ~= -1 and var6_upvw and var5_upvw ~= nil then
			if var5_upvw then
				default_upvr:unmuteVoiceParticipant(var15)
				return
			end
			default_upvr:muteVoiceParticipant(var15)
		end
	end
	local tbl = {}
	local PartyMicIcon_upvr = require(Chrome.Integrations.Party.PartyMicIcon)
	function tbl.Icon() -- Line 47
		--[[ Upvalues[3]:
			[1]: PartyMicIcon_upvr (readonly)
			[2]: any_new_result1_upvr_2 (readonly)
			[3]: any_new_result1_upvr (readonly)
		]]
		return PartyMicIcon_upvr({
			isLocalPlayerMutedSignal = any_new_result1_upvr_2;
			isVoiceConnectedSignal = any_new_result1_upvr;
		})
	end
	tbl_2.components = tbl
	tbl_2.initialAvailability = Service.AvailabilitySignal.Unavailable
	var11 = Service:register(tbl_2)
end
return var11