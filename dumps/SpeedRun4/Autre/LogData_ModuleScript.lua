-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:59
-- Luau version 6, Types version 3
-- Time taken: 0.002636 seconds

local Rodux_upvr = require(game:GetService("CorePackages").Packages.Rodux)
local Immutable_upvr = require(script.Parent.Parent.Immutable)
return function(arg1, arg2) -- Line 5
	--[[ Upvalues[2]:
		[1]: Rodux_upvr (readonly)
		[2]: Immutable_upvr (readonly)
	]]
	return Rodux_upvr.createReducer({
		clientSearchTerm = "";
		clientTypeFilters = {};
		serverSearchTerm = "";
		serverTypeFilters = {};
	}, {
		ClientLogAppendMessage = function(arg1_2, arg2_2) -- Line 13, Named "ClientLogAppendMessage"
			--[[ Upvalues[1]:
				[1]: Immutable_upvr (copied, readonly)
			]]
			return Immutable_upvr.JoinDictionaries(arg1_2, {
				clientData = Immutable_upvr.Append(arg1_2.clientData, arg2_2.newMessage);
			})
		end;
		ServerLogAppendMessage = function(arg1_3, arg2_3) -- Line 19, Named "ServerLogAppendMessage"
			--[[ Upvalues[1]:
				[1]: Immutable_upvr (copied, readonly)
			]]
			return Immutable_upvr.JoinDictionaries(arg1_3, {
				serverData = Immutable_upvr.Append(arg1_3.serverData, arg2_3.newMessage);
			})
		end;
		ClientLogAppendFilteredMessage = function(arg1_4, arg2_4) -- Line 25, Named "ClientLogAppendFilteredMessage"
			--[[ Upvalues[1]:
				[1]: Immutable_upvr (copied, readonly)
			]]
			return Immutable_upvr.JoinDictionaries(arg1_4, {
				clientData = Immutable_upvr.Append(arg1_4.clientData, arg2_4.newMessage);
				clientDataFiltered = Immutable_upvr.Append(arg1_4.clientDataFiltered, arg2_4.newMessage);
			})
		end;
		ServerLogAppendFilteredMessage = function(arg1_5, arg2_5) -- Line 32, Named "ServerLogAppendFilteredMessage"
			--[[ Upvalues[1]:
				[1]: Immutable_upvr (copied, readonly)
			]]
			return Immutable_upvr.JoinDictionaries(arg1_5, {
				serverData = Immutable_upvr.Append(arg1_5.serverData, arg2_5.newMessage);
				serverDataFiltered = Immutable_upvr.Append(arg1_5.serverDataFiltered, arg2_5.newMessage);
			})
		end;
		ClientLogSetData = function(arg1_6, arg2_6) -- Line 39, Named "ClientLogSetData"
			--[[ Upvalues[1]:
				[1]: Immutable_upvr (copied, readonly)
			]]
			return Immutable_upvr.JoinDictionaries(arg1_6, {
				clientData = arg2_6.newData;
				clientDataFiltered = arg2_6.newDataFiltered;
			})
		end;
		ServerLogSetData = function(arg1_7, arg2_7) -- Line 46, Named "ServerLogSetData"
			--[[ Upvalues[1]:
				[1]: Immutable_upvr (copied, readonly)
			]]
			return Immutable_upvr.JoinDictionaries(arg1_7, {
				serverData = arg2_7.newData;
				serverDataFiltered = arg2_7.newDataFiltered;
			})
		end;
		ClientLogUpdateSearchFilter = function(arg1_8, arg2_8) -- Line 53, Named "ClientLogUpdateSearchFilter"
			--[[ Upvalues[1]:
				[1]: Immutable_upvr (copied, readonly)
			]]
			return Immutable_upvr.JoinDictionaries(arg1_8, {
				clientSearchTerm = arg2_8.searchTerm;
				clientTypeFilters = Immutable_upvr.JoinDictionaries(arg1_8.clientTypeFilters, arg2_8.filterTypes);
			})
		end;
		ServerLogUpdateSearchFilter = function(arg1_9, arg2_9) -- Line 60, Named "ServerLogUpdateSearchFilter"
			--[[ Upvalues[1]:
				[1]: Immutable_upvr (copied, readonly)
			]]
			return Immutable_upvr.JoinDictionaries(arg1_9, {
				serverSearchTerm = arg2_9.searchTerm;
				serverTypeFilters = Immutable_upvr.JoinDictionaries(arg1_9.serverTypeFilters, arg2_9.filterTypes);
			})
		end;
	})(arg1, arg2)
end