-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:34:09
-- Luau version 6, Types version 3
-- Time taken: 0.000968 seconds

return function(arg1) -- Line 7
	local userId = arg1.userId
	local names = arg1.names
	local var4 = ""
	if names.alias ~= "" then
		var4 = names.alias
	elseif names.contactName ~= "" then
		var4 = names.contactName
	elseif names.displayName ~= "" then
		var4 = names.displayName
	else
		var4 = names.username
	end
	arg1.client:writeQuery({
		variables = {
			userIds = {userId};
		};
		query = arg1.query;
		data = {
			userProfiles = {{
				__typename = "UserProfile";
				id = userId;
				names = {
					__typename = "Names";
					combinedName = var4;
					alias = names.alias;
					contactName = names.contactName;
					displayName = names.displayName;
					username = names.username;
				};
			}};
		};
	})
end