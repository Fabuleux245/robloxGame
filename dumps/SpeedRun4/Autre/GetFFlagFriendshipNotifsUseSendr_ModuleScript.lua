-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:56:46
-- Luau version 6, Types version 3
-- Time taken: 0.002100 seconds

local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("FriendshipNotifsUseSendrExperiment_v2", false)
local var3_upvw = false
local var4_upvw
local var5_upvw
local IXPServiceWrapper_upvr = require(game:GetService("CorePackages").Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
local game_DefineFastString_result1_upvr = game:DefineFastString("FriendshipNotifsUseSendrLayerName", "Notification.Toast")
local game_DefineFastFlag_result1_upvr_2 = game:DefineFastFlag("FriendshipNotifsUseSendrEnabledForAll", false)
local game_DefineFastString_result1_upvr_2 = game:DefineFastString("FriendshipNotifsUseSendrLayerValue", "EnableNotificationViaSENDR")
return function() -- Line 12
	--[[ Upvalues[8]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: var3_upvw (read and write)
		[3]: var4_upvw (read and write)
		[4]: var5_upvw (read and write)
		[5]: IXPServiceWrapper_upvr (readonly)
		[6]: game_DefineFastString_result1_upvr (readonly)
		[7]: game_DefineFastFlag_result1_upvr_2 (readonly)
		[8]: game_DefineFastString_result1_upvr_2 (readonly)
	]]
	if game_DefineFastFlag_result1_upvr and not var3_upvw then
		local pcall_result1_2, pcall_result2_2 = pcall(function() -- Line 14
			--[[ Upvalues[3]:
				[1]: var3_upvw (copied, read and write)
				[2]: IXPServiceWrapper_upvr (copied, readonly)
				[3]: game_DefineFastString_result1_upvr (copied, readonly)
			]]
			var3_upvw = true
			return IXPServiceWrapper_upvr:GetLayerData(game_DefineFastString_result1_upvr)
		end)
		var4_upvw = pcall_result1_2
		var5_upvw = pcall_result2_2
	end
	pcall_result1_2 = game_DefineFastFlag_result1_upvr_2
	local var21 = pcall_result1_2
	if not var21 then
		var21 = var4_upvw
		if var21 then
			var21 = var5_upvw
			if var21 then
				var21 = var5_upvw[game_DefineFastString_result1_upvr_2]
			end
		end
	end
	return var21
end