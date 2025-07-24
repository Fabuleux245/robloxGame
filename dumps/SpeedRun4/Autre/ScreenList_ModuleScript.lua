-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:59:24
-- Luau version 6, Types version 3
-- Time taken: 0.001725 seconds

local Actions = game:GetService("CoreGui").RobloxGui.Modules.Shell.Actions
local InsertScreen_upvr = require(Actions.InsertScreen)
local Immutable_upvr = require(game:GetService("CorePackages").Workspace.Packages.AppCommonLib).Immutable
local RemoveScreen_upvr = require(Actions.RemoveScreen)
return function(arg1, arg2) -- Line 19
	--[[ Upvalues[3]:
		[1]: InsertScreen_upvr (readonly)
		[2]: Immutable_upvr (readonly)
		[3]: RemoveScreen_upvr (readonly)
	]]
	local var6 = arg1
	if not var6 then
		var6 = {}
	end
	local var7 = var6
	assert(var7, "")
	if arg2.type == InsertScreen_upvr.name then
		local any_Append_result1 = Immutable_upvr.Append(var7, arg2.item)
		table.sort(any_Append_result1, function(arg1_2, arg2_2) -- Line 26
			local priority = arg1_2.priority
			if priority == arg2_2.priority then
				if arg2_2.createdAt >= arg1_2.createdAt then
					priority = false
				else
					priority = true
				end
				return priority
			end
			if arg2_2.priority >= arg1_2.priority then
				priority = false
			else
				priority = true
			end
			return priority
		end)
		return any_Append_result1
	end
	if arg2.type == RemoveScreen_upvr.name then
		return Immutable_upvr.RemoveValueFromList(var7, arg2.item)
	end
	return var7
end