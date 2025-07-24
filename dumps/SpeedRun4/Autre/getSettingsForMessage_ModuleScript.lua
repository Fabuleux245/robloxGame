-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:04:54
-- Luau version 6, Types version 3
-- Time taken: 0.000739 seconds

local maybeAssert_upvr = require(script.Parent.maybeAssert)
local Types_upvr = require(script.Parent.Parent.Types)
local t_upvr = require(game:GetService("CorePackages").Packages.t)
return function(arg1, arg2) -- Line 12, Named "getSettingsForMessage"
	--[[ Upvalues[3]:
		[1]: maybeAssert_upvr (readonly)
		[2]: Types_upvr (readonly)
		[3]: t_upvr (readonly)
	]]
	maybeAssert_upvr(Types_upvr.IChatSettings(arg1))
	maybeAssert_upvr(t_upvr.optional(Types_upvr.IMessage)(arg2))
	local UserSpecificSettings = arg1.UserSpecificSettings
	if not UserSpecificSettings or not arg2 then
		return arg1
	end
	local var5
	if not var5 and arg2.adornee then
		var5 = UserSpecificSettings[arg2.adornee:GetFullName()]
	end
	return var5 or arg1
end