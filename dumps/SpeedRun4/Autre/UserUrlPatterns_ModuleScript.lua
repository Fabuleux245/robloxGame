-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:14:59
-- Luau version 6, Types version 3
-- Time taken: 0.001505 seconds

return function(arg1) -- Line 1
	return {
		profile = arg1.fromString("www:users/{userId}/profile?friendshipSourceType={sourceType|}");
		group = arg1.fromString("www:communities/{groupId}/{groupName|}#!/about");
		forumComment = arg1.fromString("www:communities/{groupId}#!/forums/{categoryId}/post/{postId}/comment/{commentId}");
		friends = arg1.fromString("www:users/{userId}/friends");
		inventory = arg1.fromString("www:users/{userId}/inventory");
		search = arg1.fromString("www:search/users?{keyword}");
		profileWithFriendshipSourceType = arg1.fromString("www:users/{userId}/profile?friendshipSourceType={sourceType}");
		followers = arg1.fromString("www:users/{userId}/friends#!/followers");
		following = arg1.fromString("www:users/{userId}/friends#!/following");
		report = function(arg1_2) -- Line 15, Named "report"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.fromString("www:abusereport/embedded/chat?id={userId}&{actionName}&{conversationId}&{redirecturl}")({
				userId = arg1_2.userId;
				conversationId = arg1_2.conversationId;
				actionName = "chat";
				redirecturl = arg1.fromString("www:home")();
			})
		end;
		appsflyer = function(arg1_3) -- Line 28, Named "appsflyer"
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			return arg1.fromString("appsflyer:Ebh5?pid=share&is_retargeting=true&af_dp={mobileUrl}&af_web_dp={webUrl}")({
				mobileUrl = arg1.fromString("mobilenav:profile?userId={userId}&friendshipSourceType={sourceType}")(arg1_3);
				webUrl = arg1.fromString("www:users/{userId}/profile?friendshipSourceType={sourceType}")(arg1_3);
			})
		end;
	}
end