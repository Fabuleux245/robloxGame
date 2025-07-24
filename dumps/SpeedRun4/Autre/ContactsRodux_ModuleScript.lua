-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:25:31
-- Luau version 6, Types version 3
-- Time taken: 0.000759 seconds

local Parent = script.Parent
local module = {
	["jest.config"] = script["jest.config"];
}
local Dash_upvr = require(Parent.Dash)
local NetworkingContacts_upvr = require(Parent.LuaSocialLibrariesDeps).NetworkingContacts
local RoduxNetworking_upvr = require(Parent.LuaSocialLibrariesDeps).RoduxNetworking
local ContactsReducer_upvr = require(script.Reducers.ContactsReducer)
local Selectors_upvr = require(script.Selectors)
function module.config(arg1) -- Line 11
	--[[ Upvalues[5]:
		[1]: Dash_upvr (readonly)
		[2]: NetworkingContacts_upvr (readonly)
		[3]: RoduxNetworking_upvr (readonly)
		[4]: ContactsReducer_upvr (readonly)
		[5]: Selectors_upvr (readonly)
	]]
	local any_join_result1_upvw = Dash_upvr.join(arg1, {
		networkingContacts = NetworkingContacts_upvr.config({
			roduxNetworking = RoduxNetworking_upvr.mock();
		});
	})
	return {
		installReducer = function() -- Line 19, Named "installReducer"
			--[[ Upvalues[2]:
				[1]: ContactsReducer_upvr (copied, readonly)
				[2]: any_join_result1_upvw (read and write)
			]]
			return ContactsReducer_upvr(any_join_result1_upvw)
		end;
		Selectors = Selectors_upvr(any_join_result1_upvw);
		Models = require(script.Models);
		Actions = require(script.Actions);
	}
end
return module