-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:05
-- Luau version 6, Types version 3
-- Time taken: 0.000385 seconds

local React_upvr = require(game:GetService("CorePackages").Packages.React)
local ContactListContext_upvr = require(script:FindFirstAncestor("ContactList").Context.ContactListContext)
return function() -- Line 10
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: ContactListContext_upvr (readonly)
	]]
	return {
		fireEvent = React_upvr.useContext(ContactListContext_upvr).fireAnalyticsEvent;
	}
end