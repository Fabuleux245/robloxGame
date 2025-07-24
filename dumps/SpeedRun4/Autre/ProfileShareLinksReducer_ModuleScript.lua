-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:40:12
-- Luau version 6, Types version 3
-- Time taken: 0.000543 seconds

local ProfileShareLinks = script:FindFirstAncestor("ProfileShareLinks")
return require(ProfileShareLinks.Parent.Rodux).createReducer({}, {
	[require(ProfileShareLinks.Networking.Networking).ShareLinksNetworking.GetOrGenerateLink.Succeeded.name] = function(arg1, arg2) -- Line 10
		return arg2.responseBody
	end;
})