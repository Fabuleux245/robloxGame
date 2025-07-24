-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:04
-- Luau version 6, Types version 3
-- Time taken: 0.002627 seconds

local t = require(game:GetService("CorePackages").Packages.t)
local module_upvr = {}
module_upvr.__index = module_upvr
local any_strictInterface_result1_upvr = t.strictInterface({
	eraseTimeout = t.number;
	testHarness = t.optional(t.strictInterface({
		players = t.union(t.instanceOf("Players"), t.interface({
			GetPlayers = t.callback;
			GetPlayerByUserId = t.callback;
			PlayerAdded = t.RBXScriptSignal;
			PlayerRemoving = t.RBXScriptSignal;
		}));
		wait = t.callback;
	}));
})
local Players_upvr = game:GetService("Players")
function module_upvr.new(arg1) -- Line 50
	--[[ Upvalues[3]:
		[1]: any_strictInterface_result1_upvr (readonly)
		[2]: Players_upvr (readonly)
		[3]: module_upvr (readonly)
	]]
	local assert = assert
	assert(any_strictInterface_result1_upvr(arg1))
	local var9
	if var9 == nil then
		assert = Players_upvr
	else
		var9 = arg1.testHarness
		assert = var9.players
	end
	if arg1.testHarness == nil then
		var9 = wait
	else
		var9 = arg1.testHarness.wait
	end
	return setmetatable({
		_eraseTimeout = arg1.eraseTimeout;
		_trackedPii = {};
		_playerCounter = 1;
		_disambiguationIdentifiers = {};
		_waitFn = var9;
		_players = assert;
	}, module_upvr)
end
function module_upvr._addPlayerToEraseMap(arg1, arg2) -- Line 75
	local var11 = arg1._disambiguationIdentifiers[arg2.UserId]
	if var11 == nil then
		var11 = arg1._playerCounter
		arg1._disambiguationIdentifiers[arg2.UserId] = arg1._playerCounter
		arg1._playerCounter += 1
	end
	arg1._trackedPii[tostring(arg2.UserId)] = string.format("UserId(%d)", var11)
	arg1._trackedPii[tostring(arg2.Name)] = string.format("UserName(%d)", var11)
	arg1._trackedPii[tostring(arg2.DisplayName)] = string.format("DisplayName(%d)", var11)
end
function module_upvr._removePlayerFromEraseMap(arg1, arg2) -- Line 88
	arg1._trackedPii[tostring(arg2.UserId)] = nil
	arg1._trackedPii[tostring(arg2.Name)] = nil
	arg1._trackedPii[tostring(arg2.DisplayName)] = nil
end
function module_upvr.startTracking(arg1) -- Line 94
	for _, v in ipairs(arg1._players:GetPlayers()) do
		arg1:_addPlayerToEraseMap(v)
	end
	arg1._playerAddedConnection = arg1._players.PlayerAdded:Connect(function(arg1_2) -- Line 99
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:_addPlayerToEraseMap(arg1_2)
	end)
	arg1._playerRemovingConnection = arg1._players.PlayerRemoving:Connect(function(arg1_3) -- Line 103
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1._waitFn(arg1._eraseTimeout)
		if arg1._players:GetPlayerByUserId(arg1_3.UserId) == nil then
			arg1:_removePlayerFromEraseMap(arg1_3)
		end
	end)
end
function module_upvr.stopTracking(arg1) -- Line 116
	arg1._playerAddedConnection:Disconnect()
	arg1._playerRemovingConnection:Disconnect()
end
function module_upvr.cleanPii(arg1, arg2) -- Line 121
	local var26
	for i_2, v_2 in pairs(arg1._trackedPii) do
		var26 = string.gsub(var26, i_2, v_2)
	end
	return var26
end
return module_upvr