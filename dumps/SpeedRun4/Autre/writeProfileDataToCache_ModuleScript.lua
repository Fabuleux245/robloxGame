-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:17
-- Luau version 6, Types version 3
-- Time taken: 0.001555 seconds

local UserProfiles = script:FindFirstAncestor("UserProfiles")
local Queries_upvr = require(UserProfiles.Common.Queries)
local Cryo_upvr = require(UserProfiles.Parent.Cryo)
return function(arg1, arg2, arg3) -- Line 15
	--[[ Upvalues[2]:
		[1]: Queries_upvr (readonly)
		[2]: Cryo_upvr (readonly)
	]]
	if arg3 and arg3.query then
	else
	end
	for i, v in arg2 do
		arg1:writeQuery({
			variables = {
				userIds = i;
			};
			query = Queries_upvr.userProfilesAllNamesByUserIds;
			data = {
				userProfiles = {{
					__typename = "UserProfile";
					id = i;
					names = Cryo_upvr.Dictionary.join({
						__typename = "Names";
						alias = "";
						contactName = "";
						displayName = "";
						username = "";
						platformName = "";
					}, v);
				}};
			};
		})
	end
end