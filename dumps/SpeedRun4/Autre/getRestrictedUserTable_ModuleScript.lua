-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:38
-- Luau version 6, Types version 3
-- Time taken: 0.000894 seconds

local pcall_result1, pcall_result2 = pcall(function() -- Line 1
	return game:GetService("StudioService")
end)
local var4_upvr
if pcall_result1 then
	var4_upvr = pcall_result2
else
	var4_upvr = nil
end
return function() -- Line 10, Named "getRestrictedUserTable"
	--[[ Upvalues[1]:
		[1]: var4_upvr (readonly)
	]]
	if var4_upvr then
		return {{
			creatorType = "User";
			id = var4_upvr:GetUserId();
		}}
	end
	return {}
end