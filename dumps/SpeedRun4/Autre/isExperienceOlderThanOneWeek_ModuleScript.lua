-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:08:03
-- Luau version 6, Types version 3
-- Time taken: 0.000621 seconds

local Workspace_upvr = game:GetService("Workspace")
return function(arg1) -- Line 7
	--[[ Upvalues[1]:
		[1]: Workspace_upvr (readonly)
	]]
	if arg1 ~= nil and arg1.Created ~= nil then
		local DateTime_fromIsoDate_result1_2 = DateTime.fromIsoDate(arg1.Created)
		if DateTime_fromIsoDate_result1_2 and 604800000 < Workspace_upvr:GetServerTimeNow() * 1000 - DateTime_fromIsoDate_result1_2.UnixTimestampMillis then
			return true
		end
	end
	return false
end