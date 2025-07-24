-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:36
-- Luau version 6, Types version 3
-- Time taken: 0.000579 seconds

local GenericChallenges = script:FindFirstAncestor("GenericChallenges")
local tbl = {
	Login = "Login";
	AppLogin = "AppLogin";
	Signup = "Signup";
	AppSignup = "AppSignup";
	GroupJoin = "GroupJoin";
	GroupWallPost = "GroupWallPost";
	ResetPassword = "ResetPassword";
	ToyCodeRedeem = "ToyCodeRedeem";
	GameCardRedeem = "GameCardRedeem";
	FollowUser = "FollowUser";
}
local var3 = require(GenericChallenges.Parent.enumerate)(script.Name, tbl)
require(GenericChallenges.Utils.addRawValueMethodToEnum)(var3, tbl)
return var3