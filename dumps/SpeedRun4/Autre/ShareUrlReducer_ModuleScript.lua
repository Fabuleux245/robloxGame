-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:39:41
-- Luau version 6, Types version 3
-- Time taken: 0.000372 seconds

local ProfileQRCode = script:FindFirstAncestor("ProfileQRCode")
return require(ProfileQRCode.Parent.Rodux).createReducer({}, {
	[require(ProfileQRCode.Networking.createOrGetProfileShareUrl).Succeeded.name] = function(arg1, arg2) -- Line 14
		return arg2.responseBody
	end;
})