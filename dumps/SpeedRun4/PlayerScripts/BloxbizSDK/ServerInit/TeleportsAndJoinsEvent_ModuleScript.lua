-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:13
-- Luau version 6, Types version 3
-- Time taken: 0.004154 seconds

local Players_upvr = game:GetService("Players")
local AdRequestStats_upvr = require(script.Parent.Parent.AdRequestStats)
local BatchHTTP_upvr = require(script.Parent.Parent.BatchHTTP)
local merge_upvr = require(script.Parent.Parent.Utils).merge
local module_upvr = {
	teleportedPlayers = {};
}
local function _(arg1) -- Line 13, Named "queueGameJoin"
	--[[ Upvalues[1]:
		[1]: BatchHTTP_upvr (readonly)
	]]
	local tbl_2 = {
		event_type = "game_join";
	}
	tbl_2.data = arg1
	table.insert(BatchHTTP_upvr.eventQueue, tbl_2)
end
local function _(arg1) -- Line 18, Named "queueGameTeleport"
	--[[ Upvalues[1]:
		[1]: BatchHTTP_upvr (readonly)
	]]
	local tbl_3 = {
		event_type = "game_teleport";
	}
	tbl_3.data = arg1
	table.insert(BatchHTTP_upvr.eventQueue, tbl_3)
end
function module_upvr.setTeleported(arg1, arg2) -- Line 23
	if arg1.teleportedPlayers[arg2.UserId] then
	else
		arg1.teleportedPlayers[arg2.UserId] = true
		task.delay(10, function() -- Line 30
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: arg2 (readonly)
			]]
			arg1.teleportedPlayers[arg2.UserId] = nil
		end)
	end
end
function module_upvr.trackGameTeleport(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 35
	--[[ Upvalues[4]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: merge_upvr (readonly)
		[4]: BatchHTTP_upvr (readonly)
	]]
	arg1:setTeleported(arg2)
	local var9
	repeat
		task.wait()
		if 10 >= tick() - tick() then
			var9 = false
		else
			var9 = true
		end
	until arg2.Parent ~= Players_upvr and var9 and arg6
	if var9 and arg6 ~= true then return end
	local tbl = {
		timestamp = os.time();
	}
	tbl.teleport_place_id = arg3
	tbl.bloxbiz_ad_id = arg4 or -1
	tbl.teleport_guid = arg5 or ""
	local var4_result1 = merge_upvr(merge_upvr(merge_upvr(tbl, AdRequestStats_upvr:getGameStats()), AdRequestStats_upvr:getPlayerStats(arg2)), AdRequestStats_upvr:getClientPlayerStats(arg2))
	table.insert(BatchHTTP_upvr.eventQueue, {
		event_type = "game_teleport";
		data = var4_result1;
	})
	return var4_result1
end
function module_upvr.trackGameJoin(arg1, arg2) -- Line 67
	--[[ Upvalues[3]:
		[1]: AdRequestStats_upvr (readonly)
		[2]: merge_upvr (readonly)
		[3]: BatchHTTP_upvr (readonly)
	]]
	local pcall_result1, pcall_result2 = pcall(function() -- Line 68
		--[[ Upvalues[1]:
			[1]: arg2 (readonly)
		]]
		return arg2:GetJoinData()
	end)
	if pcall_result1 then
		local TeleportData = pcall_result2.TeleportData
		if not TeleportData then
			TeleportData = {}
		end
		local merge_upvr_result1 = merge_upvr(merge_upvr(merge_upvr({
			timestamp = os.time();
			source_place_id = pcall_result2.SourcePlaceId or -1;
			source_game_id = pcall_result2.SourceGameId or -1;
			teleport_guid = TeleportData.teleportGuid or "";
			bloxbiz_ad_id = TeleportData.bloxbizAdId or -1;
			launch_data = pcall_result2.LaunchData or "";
		}, AdRequestStats_upvr:getGameStats()), AdRequestStats_upvr:getPlayerStats(arg2)), AdRequestStats_upvr:getClientPlayerStats(arg2, 180))
		table.insert(BatchHTTP_upvr.eventQueue, {
			event_type = "game_join";
			data = merge_upvr_result1;
		})
		return merge_upvr_result1
	end
end
function module_upvr.trackJoinAndTeleport(arg1, arg2) -- Line 95
	arg2.OnTeleport:connect(function(arg1_2, arg2_2) -- Line 96
		--[[ Upvalues[2]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
		]]
		if arg1.teleportedPlayers[arg2.UserId] then
		else
			arg1:trackGameTeleport(arg2, arg2_2)
		end
	end)
	arg1:trackGameJoin(arg2)
end
function module_upvr.init() -- Line 107
	--[[ Upvalues[2]:
		[1]: Players_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	Players_upvr.PlayerAdded:Connect(function(arg1) -- Line 108
		--[[ Upvalues[1]:
			[1]: module_upvr (copied, readonly)
		]]
		module_upvr:trackJoinAndTeleport(arg1)
	end)
end
return module_upvr