-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:23
-- Luau version 6, Types version 3
-- Time taken: 0.000553 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local module_2 = {}
local Cryo_upvr = InGameMenuDependencies.Cryo
module_2[require(script.Parent.Parent.Actions.SetFriendStatus).name] = function(arg1, arg2) -- Line 12
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local module = {}
	local friendStatus = arg2.friendStatus
	if not friendStatus then
		friendStatus = Cryo_upvr.None
	end
	module[arg2.userId] = friendStatus
	return Cryo_upvr.Dictionary.join(arg1, module)
end
return InGameMenuDependencies.Rodux.createReducer({}, module_2)