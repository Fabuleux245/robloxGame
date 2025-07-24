-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:24:34
-- Luau version 6, Types version 3
-- Time taken: 0.000432 seconds

local Parent = script.Parent.Parent.Parent.Parent.Parent
local useNavigation_upvr = require(Parent.Navigation).useNavigation
local React_upvr = require(Parent.React)
local ContactsRevokedAccessDialog_upvr = require(script.Parent.ContactsRevokedAccessDialog)
local Dash_upvr = require(Parent.Dash)
return function(arg1) -- Line 14, Named "ContactsRevokedAccessDialogEntryPoint"
	--[[ Upvalues[4]:
		[1]: useNavigation_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ContactsRevokedAccessDialog_upvr (readonly)
		[4]: Dash_upvr (readonly)
	]]
	return React_upvr.createElement(ContactsRevokedAccessDialog_upvr, Dash_upvr.join(arg1, {
		navigation = useNavigation_upvr();
	}))
end