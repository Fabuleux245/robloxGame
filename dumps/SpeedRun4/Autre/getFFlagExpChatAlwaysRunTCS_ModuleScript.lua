-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:25:35
-- Luau version 6, Types version 3
-- Time taken: 0.001685 seconds

local Chat_upvr = game:GetService("Chat")
game:DefineFastFlag("DebugExpChatAlwaysRunTCS", false)
local getFFlagExpChatMigrationSetup_upvr = require(script.Parent.getFFlagExpChatMigrationSetup)
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ExpChatMigrationReplicationFix", false)
local RobloxReplicatedStorage_upvr = game:GetService("RobloxReplicatedStorage")
local IsAutoMigrated_upvw = Chat_upvr.IsAutoMigrated
if game:GetService("RunService"):IsServer() then
	RobloxReplicatedStorage_upvr:SetAttribute("ChatMigratedToExpChat", Chat_upvr.IsAutoMigrated)
	Chat_upvr:GetPropertyChangedSignal("IsAutoMigrated"):Connect(function() -- Line 18
		--[[ Upvalues[3]:
			[1]: RobloxReplicatedStorage_upvr (readonly)
			[2]: Chat_upvr (readonly)
			[3]: IsAutoMigrated_upvw (read and write)
		]]
		RobloxReplicatedStorage_upvr:SetAttribute("ChatMigratedToExpChat", Chat_upvr.IsAutoMigrated)
		IsAutoMigrated_upvw = Chat_upvr.IsAutoMigrated
	end)
else
	if RobloxReplicatedStorage_upvr:GetAttribute("ChatMigratedToExpChat") ~= true then
		IsAutoMigrated_upvw = false
	else
		IsAutoMigrated_upvw = true
	end
	RobloxReplicatedStorage_upvr:GetAttributeChangedSignal("ChatMigratedToExpChat"):Connect(function() -- Line 24
		--[[ Upvalues[3]:
			[1]: IsAutoMigrated_upvw (read and write)
			[2]: RobloxReplicatedStorage_upvr (readonly)
			[3]: Chat_upvr (readonly)
		]]
		local var8
		if RobloxReplicatedStorage_upvr:GetAttribute("ChatMigratedToExpChat") ~= true then
			var8 = false
		else
			var8 = true
		end
		IsAutoMigrated_upvw = var8
		var8 = Chat_upvr
		var8.IsAutoMigrated = IsAutoMigrated_upvw
	end)
end
local function _() -- Line 30, Named "IsChatAutoMigrated"
	--[[ Upvalues[4]:
		[1]: getFFlagExpChatMigrationSetup_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: Chat_upvr (readonly)
		[4]: IsAutoMigrated_upvw (read and write)
	]]
	if not getFFlagExpChatMigrationSetup_upvr() then
		return false
	end
	if game:GetEngineFeature("ChatServiceCompatibilityForAll") then
		return true
	end
	if game_DefineFastFlag_result1_upvr and game:GetEngineFeature("TCSMigrationReplicationFix") then
		return Chat_upvr.IsAutoMigrated
	end
	return IsAutoMigrated_upvw
end
return function() -- Line 46
	--[[ Upvalues[4]:
		[1]: getFFlagExpChatMigrationSetup_upvr (readonly)
		[2]: game_DefineFastFlag_result1_upvr (readonly)
		[3]: Chat_upvr (readonly)
		[4]: IsAutoMigrated_upvw (read and write)
	]]
	local var10
	if not getFFlagExpChatMigrationSetup_upvr() then
		var10 = false
	elseif game:GetEngineFeature("ChatServiceCompatibilityForAll") then
		var10 = true
	elseif game_DefineFastFlag_result1_upvr and game:GetEngineFeature("TCSMigrationReplicationFix") then
		var10 = Chat_upvr.IsAutoMigrated
	else
		var10 = IsAutoMigrated_upvw
	end
	if not var10 then
		var10 = game:GetFastFlag("DebugExpChatAlwaysRunTCS")
	end
	return var10
end