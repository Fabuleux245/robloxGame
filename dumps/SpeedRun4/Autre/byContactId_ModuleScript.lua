-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:25:37
-- Luau version 6, Types version 3
-- Time taken: 0.001109 seconds

local Parent = script.Parent.Parent.Parent
local Types = Parent.Types
local Rodux_upvr = require(Parent.Parent.Rodux)
local module_upvr = {}
local setContactsInStore_upvr = require(script.Parent.utils.setContactsInStore)
local updateContactsInStore_upvr = require(script.Parent.utils.updateContactsInStore)
return function(arg1) -- Line 13
	--[[ Upvalues[4]:
		[1]: Rodux_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: setContactsInStore_upvr (readonly)
		[4]: updateContactsInStore_upvr (readonly)
	]]
	local networkingContacts = arg1.networkingContacts
	return Rodux_upvr.createReducer(module_upvr, {
		[networkingContacts.FindContactFriends.Succeeded.name] = function(arg1_2, arg2) -- Line 17
			--[[ Upvalues[1]:
				[1]: setContactsInStore_upvr (copied, readonly)
			]]
			return setContactsInStore_upvr(arg2)
		end;
		[networkingContacts.GetContactEntitiesByContactId.Succeeded.name] = function(arg1_3, arg2) -- Line 27
			--[[ Upvalues[1]:
				[1]: updateContactsInStore_upvr (copied, readonly)
			]]
			return updateContactsInStore_upvr(arg1_3, arg2)
		end;
	})
end