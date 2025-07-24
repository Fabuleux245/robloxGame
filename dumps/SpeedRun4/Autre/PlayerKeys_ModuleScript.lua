-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:37
-- Luau version 6, Types version 3
-- Time taken: 0.001770 seconds

local Actions = script.Parent.Parent.Actions
local function createKey_upvr(arg1, arg2, arg3) -- Line 10, Named "createKey"
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var2
	if arg2 ~= nil and arg3 ~= nil and arg3[arg1.UserId] ~= nil then
		var2 = arg3[arg1.UserId][arg2]
	end
	local module = {
		name = arg1.DisplayName:upper();
	}
	if not var2 or not tonumber(var2) then
	end
	module.stat = var2
	return module
end
local AddPlayer_upvr = require(Actions.AddPlayer)
local SetPlayerLeaderstat_upvr = require(Actions.SetPlayerLeaderstat)
local Cryo_upvr = require(game:GetService("CorePackages").Packages.Cryo)
local RemovePlayer_upvr = require(Actions.RemovePlayer)
return function(arg1, arg2, arg3) -- Line 22, Named "PlayerKeys"
	--[[ Upvalues[5]:
		[1]: createKey_upvr (readonly)
		[2]: AddPlayer_upvr (readonly)
		[3]: SetPlayerLeaderstat_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: RemovePlayer_upvr (readonly)
	]]
	local var12
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var12 = arg3.gameStats[1].name
		return var12
	end
	if not arg3.gameStats[1] or not INLINED() then
		var12 = nil
	end
	if not arg1 or var12 ~= arg1.primaryStat then
		for _, v in pairs(arg3.players) do
			({})[v] = createKey_upvr(v, var12, arg3.playerStats)
			local var17
		end
		return {
			primaryStat = var12;
			keys = var17;
		}
	end
	if arg2.type == AddPlayer_upvr.name or arg2.type == SetPlayerLeaderstat_upvr.name then
		return {
			primaryStat = var12;
			keys = Cryo_upvr.Dictionary.join(arg1.keys, {
				[arg2.player] = createKey_upvr(arg2.player, var12, arg3.playerStats);
			});
		}
	end
	if arg2.type == RemovePlayer_upvr.name then
		return {
			primaryStat = var12;
			keys = Cryo_upvr.Dictionary.join(arg1.keys, {
				[arg2.player] = Cryo_upvr.None;
			});
		}
	end
	return arg1
end