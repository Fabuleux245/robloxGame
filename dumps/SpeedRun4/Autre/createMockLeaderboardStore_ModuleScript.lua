-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:13:44
-- Luau version 6, Types version 3
-- Time taken: 0.005494 seconds

local Parent = script.Parent.Parent
local Signals_upvr = require(Parent.Parent.Signals)
local createSignalMap_upvr = require(Parent.createSignalMap)
return function() -- Line 18, Named "createMockLeaderboardStore"
	--[[ Upvalues[2]:
		[1]: Signals_upvr (readonly)
		[2]: createSignalMap_upvr (readonly)
	]]
	return function() -- Line 19
		--[[ Upvalues[2]:
			[1]: Signals_upvr (copied, readonly)
			[2]: createSignalMap_upvr (copied, readonly)
		]]
		Instance.new("Team").Name = "Neutral"
		local Team_2 = Instance.new("Team")
		Team_2.Name = "Team 1"
		local Team = Instance.new("Team")
		Team.Name = "Team 2"
		local tbl_9 = {
			Name = "player1";
			Team = Team_2;
			UserId = math.random(1, 1234567890);
			leaderstats = {
				stat1 = {
					Value = 100;
				};
				stat2 = {
					Value = 200;
				};
			};
		}
		local tbl = {
			order = Signals_upvr.createSignal(1);
			stats = createSignalMap_upvr();
		}
		tbl.stats.setData("stat1", Signals_upvr.createSignal(tbl_9.leaderstats.stat1.Value), false)
		tbl.stats.setData("stat2", Signals_upvr.createSignal(tbl_9.leaderstats.stat2.Value), false)
		local tbl_6 = {
			Name = "player2";
			Team = Team_2;
			leaderstats = {
				stat1 = {
					Value = 30;
				};
				stat2 = {
					Value = 40;
				};
			};
		}
		local tbl_3 = {
			order = Signals_upvr.createSignal(2);
			stats = createSignalMap_upvr();
		}
		tbl_3.stats.setData("stat1", Signals_upvr.createSignal(tbl_6.leaderstats.stat1.Value), false)
		tbl_3.stats.setData("stat2", Signals_upvr.createSignal(tbl_6.leaderstats.stat2.Value), false)
		local tbl_5 = {
			Name = "player3";
			Team = Team;
			UserId = math.random(1, 1234567890);
			leaderstats = {
				stat1 = {
					Value = 500;
				};
				stat2 = {
					Value = 600;
				};
			};
		}
		local tbl_8 = {
			order = Signals_upvr.createSignal(1);
			stats = createSignalMap_upvr();
		}
		tbl_8.stats.setData("stat1", Signals_upvr.createSignal(tbl_5.leaderstats.stat1.Value), false)
		tbl_8.stats.setData("stat2", Signals_upvr.createSignal(tbl_5.leaderstats.stat2.Value), false)
		local tbl_7 = {
			Name = "player4";
			Team = Team;
			UserId = math.random(1, 1234567890);
			leaderstats = {
				stat1 = {
					Value = 70;
				};
				stat2 = {
					Value = 80;
				};
			};
		}
		local tbl_2 = {
			order = Signals_upvr.createSignal(2);
			stats = createSignalMap_upvr();
		}
		tbl_2.stats.setData("stat1", Signals_upvr.createSignal(tbl_7.leaderstats.stat1.Value), false)
		tbl_2.stats.setData("stat2", Signals_upvr.createSignal(tbl_7.leaderstats.stat2.Value), false)
		local tbl_4 = {
			Name = "player5";
			UserId = math.random(1, 1234567890);
			leaderstats = {
				stat1 = {
					Value = 90;
				};
				stat2 = {
					Value = 100;
				};
			};
		}
		local tbl_10 = {
			order = Signals_upvr.createSignal(1);
			stats = createSignalMap_upvr();
		}
		tbl_10.stats.setData("stat1", Signals_upvr.createSignal(tbl_4.leaderstats.stat1.Value), false)
		tbl_10.stats.setData("stat2", Signals_upvr.createSignal(tbl_4.leaderstats.stat2.Value), false)
		local createSignalMap_upvr_result1_upvw_2 = createSignalMap_upvr()
		createSignalMap_upvr_result1_upvw_2.setData(tbl_9, tbl, false)
		createSignalMap_upvr_result1_upvw_2.setData(tbl_6, tbl_3, false)
		createSignalMap_upvr_result1_upvw_2.setData(tbl_5, tbl_8, false)
		createSignalMap_upvr_result1_upvw_2.setData(tbl_7, tbl_2, false)
		createSignalMap_upvr_result1_upvw_2.setData(tbl_4, tbl_10, false)
		local var3_result1_upvw = createSignalMap_upvr()
		local var3_result1_upvw_2 = createSignalMap_upvr()
		var3_result1_upvw_2.setData("Neutral", {
			name = Signals_upvr.createSignal("Neutral");
			color = Signals_upvr.createSignal(Color3.fromRGB(0, 0, 0));
			order = Signals_upvr.createSignal(1);
			stats = createSignalMap_upvr();
			players = createSignalMap_upvr();
		}, false)
		local any_getData_result1 = var3_result1_upvw_2.getData("Neutral", false)
		any_getData_result1.players.setData("player5", tbl_4, false)
		any_getData_result1.stats.setData("stat1", Signals_upvr.createSignal(tbl_4.leaderstats.stat1.Value), false)
		any_getData_result1.stats.setData("stat2", Signals_upvr.createSignal(tbl_4.leaderstats.stat2.Value), false)
		var3_result1_upvw_2.setData(Team_2, {
			name = Signals_upvr.createSignal("Team 1");
			color = Signals_upvr.createSignal(Color3.fromRGB(255, 0, 0));
			order = Signals_upvr.createSignal(2);
			stats = createSignalMap_upvr();
			players = createSignalMap_upvr();
		}, false)
		local any_getData_result1_3 = var3_result1_upvw_2.getData(Team_2, false)
		any_getData_result1_3.players.setData("player1", tbl_9, false)
		any_getData_result1_3.players.setData("player2", tbl_6, false)
		any_getData_result1_3.stats.setData("stat1", Signals_upvr.createSignal(tbl_9.leaderstats.stat1.Value + tbl_6.leaderstats.stat1.Value), false)
		any_getData_result1_3.stats.setData("stat2", Signals_upvr.createSignal(tbl_9.leaderstats.stat2.Value + tbl_6.leaderstats.stat2.Value), false)
		var3_result1_upvw_2.setData(Team, {
			name = Signals_upvr.createSignal("Team 2");
			color = Signals_upvr.createSignal(Color3.fromRGB(0, 255, 0));
			order = Signals_upvr.createSignal(3);
			stats = createSignalMap_upvr();
			players = createSignalMap_upvr();
		}, false)
		local any_getData_result1_2 = var3_result1_upvw_2.getData(Team, false)
		any_getData_result1_2.players.setData("player3", tbl_5, false)
		any_getData_result1_2.players.setData("player4", tbl_7, false)
		any_getData_result1_2.stats.setData("stat1", Signals_upvr.createSignal(tbl_5.leaderstats.stat1.Value + tbl_7.leaderstats.stat1.Value), false)
		any_getData_result1_2.stats.setData("stat2", Signals_upvr.createSignal(tbl_5.leaderstats.stat2.Value + tbl_7.leaderstats.stat2.Value), false)
		local createSignalMap_upvr_result1_upvw = createSignalMap_upvr()
		createSignalMap_upvr_result1_upvw.setData("Neutral", var3_result1_upvw_2.getData("Neutral", false), false)
		createSignalMap_upvr_result1_upvw.setData(Team_2, var3_result1_upvw_2.getData(Team_2, false), false)
		createSignalMap_upvr_result1_upvw.setData(Team, var3_result1_upvw_2.getData(Team, false), false)
		return {
			getGameStatsList = function() -- Line 205, Named "getGameStatsList"
				--[[ Upvalues[1]:
					[1]: var3_result1_upvw (read and write)
				]]
				return var3_result1_upvw
			end;
			getTeamList = function() -- Line 208, Named "getTeamList"
				--[[ Upvalues[1]:
					[1]: createSignalMap_upvr_result1_upvw (read and write)
				]]
				return createSignalMap_upvr_result1_upvw
			end;
			getTeamPlayerList = function(arg1, arg2) -- Line 211, Named "getTeamPlayerList"
				--[[ Upvalues[1]:
					[1]: var3_result1_upvw_2 (read and write)
				]]
				return var3_result1_upvw_2.getData(arg1, false).players
			end;
			getPlayerEntry = function(arg1) -- Line 215, Named "getPlayerEntry"
				--[[ Upvalues[1]:
					[1]: createSignalMap_upvr_result1_upvw_2 (read and write)
				]]
				return createSignalMap_upvr_result1_upvw_2.getData(arg1, false)
			end;
			cleanUp = function() -- Line 218, Named "cleanUp"
				--[[ Upvalues[4]:
					[1]: var3_result1_upvw (read and write)
					[2]: createSignalMap_upvr_result1_upvw (read and write)
					[3]: var3_result1_upvw_2 (read and write)
					[4]: createSignalMap_upvr_result1_upvw_2 (read and write)
				]]
				var3_result1_upvw = nil
				createSignalMap_upvr_result1_upvw = nil
				var3_result1_upvw_2 = nil
				createSignalMap_upvr_result1_upvw_2 = nil
			end;
		}
	end
end