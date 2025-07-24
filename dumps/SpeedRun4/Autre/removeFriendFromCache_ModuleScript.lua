-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:17:42
-- Luau version 6, Types version 3
-- Time taken: 0.000493 seconds

return function(arg1, arg2) -- Line 6, Named "removeFriendFromCache"
	arg1.cache:evict({
		id = arg1.cache:identify({
			__typename = "Friend";
			id = arg2.userId;
			targetUserId = arg2.targetUserId;
		});
	})
	arg1.cache:gc()
end