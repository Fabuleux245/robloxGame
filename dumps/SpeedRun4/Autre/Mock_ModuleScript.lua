-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:07:08
-- Luau version 6, Types version 3
-- Time taken: 0.009629 seconds

local Rodux = require(script:FindFirstAncestor("FriendsRodux").Parent.Rodux)
return {
	mockGetFriendsFromUserId = "GET_FRIENDS_SUCCEEDED_ACTION";
	mockGetFriendsFromUserIdAction = Rodux.makeActionCreator("GET_FRIENDS_SUCCEEDED_ACTION", function(arg1, arg2, arg3) -- Line 8
		local module_3 = {}
		local tbl = {}
		tbl.data = arg2
		module_3.responseBody = tbl
		local tbl_5 = {}
		tbl_5.users = arg1
		module_3.namedIds = tbl_5
		local tbl_11 = {}
		tbl_11.userSort = arg3
		module_3.queryArgs = tbl_11
		return module_3
	end);
	mockGetFriendsCountFromUserId = "GET_FRIENDS_COUNT_SUCCEEDED_ACTION";
	mockGetFriendsCountFromUserIdAction = Rodux.makeActionCreator("GET_FRIENDS_COUNT_SUCCEEDED_ACTION", function(arg1, arg2) -- Line 20
		local module_9 = {}
		local tbl_10 = {}
		tbl_10.count = arg2
		module_9.responseBody = tbl_10
		local tbl_2 = {}
		tbl_2.users = arg1
		module_9.namedIds = tbl_2
		return module_9
	end);
	mockRequestCount = "GET_REQUEST_COUNT";
	mockRequestCountAction = Rodux.makeActionCreator("GET_REQUEST_COUNT", function(arg1) -- Line 29
		local module_6 = {}
		local tbl_4 = {}
		tbl_4.count = arg1
		module_6.responseBody = tbl_4
		return module_6
	end);
	mockGetNewRequestsCount = "GET_NEW_FRIEND_REQUEST_COUNT";
	mockNewFriendRequestsCountAction = Rodux.makeActionCreator("GET_NEW_FRIEND_REQUEST_COUNT", function(arg1) -- Line 38
		local module_7 = {}
		local tbl_9 = {}
		tbl_9.count = arg1
		module_7.responseBody = tbl_9
		return module_7
	end);
	mockClearNewFriendRequests = "CLEAR_NEW_FRIEND_REQUEST_COUNT";
	mockClearNewFriendRequestsAction = Rodux.makeActionCreator("GET_NEW_FRIEND_REQUEST_COUNT", function(arg1) -- Line 47
		local module_2 = {}
		local tbl_7 = {}
		tbl_7.status = arg1
		module_2.responseBody = tbl_7
		return module_2
	end);
	mockUnfriendTargetUserId = "UNFRIEND_TARGET_USER_ID";
	mockUnfriendTargetUserIdAction = Rodux.makeActionCreator("UNFRIEND_TARGET_USER_ID", function(arg1) -- Line 56
		return {
			namedIds = {
				users = arg1.targetUserId;
			};
			additionalData = {
				currentUserId = arg1.currentUserId;
			};
		}
	end);
	mockAcceptFriendRequestFromUserId = "ACCEPT_REQUEST_FROM_USER_ID";
	mockAcceptFriendRequestFromUserIdAction = Rodux.makeActionCreator("ACCEPT_REQUEST_FROM_USER_ID", function(arg1) -- Line 66
		return {
			ids = arg1.ids;
			additionalData = {
				currentUserId = arg1.currentUserId;
			};
		}
	end);
	mockRequestFriendshipFromUserId = "REQUEST_FRIENDSHIP_FROM_USER_ID";
	mockRequestFriendshipFromUserIdAction = Rodux.makeActionCreator("REQUEST_FRIENDSHIP_FROM_USER_ID", function(arg1) -- Line 75
		return {
			namedIds = {
				users = arg1.users;
			};
			additionalData = {
				currentUserId = arg1.currentUserId;
			};
		}
	end);
	mockRequestFriendshipFromContactId = "REQUEST_FRIENDSHIP_FROM_CONTACT_ID";
	mockRequestFriendshipFromContactIdAction = Rodux.makeActionCreator("REQUEST_FRIENDSHIP_FROM_CONTACT_ID", function(arg1) -- Line 85
		return {
			namedIds = {
				contacts = arg1.contacts;
			};
			additionalData = {
				currentUserId = arg1.currentUserId;
			};
		}
	end);
	mockDeclineFriendRequestFromUserId = "DECLINE_REQUEST_FROM_USER_ID";
	mockDeclineFriendRequestFromUserIdAction = Rodux.makeActionCreator("DECLINE_REQUEST_FROM_USER_ID", function(arg1) -- Line 96
		return {
			ids = arg1.ids;
		}
	end);
	mockGetFriendRequests = "GET_FRIEND_REQUESTS";
	mockGetFriendRequestsAction = Rodux.makeActionCreator("GET_FRIEND_REQUESTS", function(arg1) -- Line 104
		local module_8 = {}
		local var39
		if not arg1 or not arg1.data then
			local tbl_8 = {}
			var39 = nil
			tbl_8.previousPageCursor = var39
			var39 = "637699238608300000-46587081730_1_986dd841c63787446d580a8055b3fa73"
			tbl_8.nextPageCursor = var39
			var39 = {}
			var39[1] = {
				friendRequest = {
					sentAt = "2021-10-22T23:20:18.163Z";
					senderId = 123;
					sourceUniverseId = nil;
					contactName = "Name";
					senderNickname = "nickname";
				};
				mutualFriendsList = nil;
				description = "me dan robux :) gracias";
				created = "2021-01-19T02:01:21.997Z";
				isBanned = false;
				externalAppDisplayName = nil;
				id = 123;
				name = "TestUser_1";
				displayName = "TestUser_1";
			}
			var39[2] = {
				friendRequest = {
					sentAt = "2021-10-22T23:20:18.163Z";
					senderId = 456;
					sourceUniverseId = 2092410051;
					contactName = nil;
					senderNickname = nil;
					originSourceType = "qrCode";
				};
				mutualFriendsList = {123, 345};
				description = "me dan robux :) gracias";
				created = "2021-01-19T02:01:21.997Z";
				isBanned = false;
				externalAppDisplayName = nil;
				id = 456;
				name = "TestUser_2";
				displayName = "TestUser_2";
			}
			tbl_8.data = var39
		end
		module_8.responseBody = tbl_8
		local tbl_6 = {}
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var39 = arg1.currentUserId
			return var39
		end
		if not arg1 or not INLINED() then
			var39 = nil
		end
		tbl_6.currentUserId = var39
		module_8.additionalData = tbl_6
		return module_8
	end);
	mockDeclineAllFriendRequests = "DECLINE_ALL_FRIEND_REQUESTS";
	mockDeclineAllFriendRequestsAction = Rodux.makeActionCreator("DECLINE_ALL_FRIEND_REQUESTS", function(arg1) -- Line 152
		return {
			ids = arg1.ids;
		}
	end);
	mockGetFriendRecommendationsFromUserId = "GET_FRIEND_RECOMMENDATIONS_FROM_USER_ID";
	mockGetFriendRecommendationsFromUserIdAction = Rodux.makeActionCreator("GET_FRIEND_RECOMMENDATIONS_FROM_USER_ID", function(arg1, arg2) -- Line 161
		local module_5 = {}
		local tbl_3 = {}
		if not arg2 then
		end
		tbl_3.data = {{
			friendRequest = nil;
			rank = 2;
			mutualFriendsList = {'1', '2'};
			description = "string";
			created = "2022-02-25T21:22:29.217Z";
			isBanned = true;
			externalAppDisplayName = "string";
			id = 89;
			name = "red";
			displayName = "coolDisplayName";
		}, {
			friendRequest = nil;
			rank = 4;
			mutualFriendsList = {};
			description = "string";
			created = "2022-02-25T21:22:29.217Z";
			isBanned = true;
			externalAppDisplayName = "string";
			id = 19;
			name = "reputation";
			contextType = "MutualFriends";
			displayName = "anotherCoolName";
		}, {
			rank = 3;
			mutualFriendsList = {};
			description = "string";
			created = "2022-02-25T21:22:29.217Z";
			isBanned = true;
			externalAppDisplayName = "string";
			id = 25;
			name = "reputation";
			contextType = "MutualFriends";
			displayName = "anotherCoolName";
			friendRequest = {
				sentAt = "2021-10-22T23:20:18.163Z";
				senderId = 123;
				sourceUniverseId = nil;
				contactName = nil;
			};
		}, {
			rank = 1;
			mutualFriendsList = {};
			description = "string";
			created = "2022-02-25T21:22:29.217Z";
			isBanned = true;
			externalAppDisplayName = "string";
			id = 0;
			contactId = "contactId";
			thumbnailEntities = {
				avatarImageUrl = "avatarImageUrl";
				headshotImageUrl = "headshotImageUrl";
			};
			name = "reputation";
			contextType = "Contacts";
			displayName = "Contact Name";
		}}
		module_5.responseBody = tbl_3
		module_5.namedIds = {
			users = arg1 or 678;
		}
		return module_5
	end);
	mockGetFriendshipStatus = "GET_FRIENDSHIP_STATUS";
	mockGetFriendshipStatusAction = Rodux.makeActionCreator("GET_FRIENDSHIP_STATUS", function(arg1) -- Line 236
		return {
			responseBody = {
				data = {{
					id = 123;
					status = "NotFriends";
				}, {
					id = 355;
					status = "Friends";
				}};
			};
		}
	end);
	mockGetFriendshipStatuses = "GET_FRIENDSHIP_STATUSES";
	mockGetFriendshipStatusesAction = Rodux.makeActionCreator("GET_FRIENDSHIP_STATUSES", function(arg1) -- Line 254
		return {
			responseBody = {
				data = {{
					id = 123;
					status = "NotFriends";
				}, {
					id = 355;
					status = "Friends";
				}};
			};
		}
	end);
	mockGetUserExtendedFriendshipStatus = "GET_EXTENDED_FRIENDSHIP_STATUS";
	mockGetUserExtendedFriendshipStatusAction = Rodux.makeActionCreator("GET_EXTENDED_FRIENDSHIP_STATUS", function(arg1, arg2) -- Line 274
		local module_4 = {}
		module_4.responseBody = arg2
		local tbl_12 = {}
		tbl_12[1] = arg1
		module_4.ids = tbl_12
		return module_4
	end);
	mockGetFollowingExists = "GET_FOLLOWING_EXISTS";
	mockGetFollowingExistsAction = Rodux.makeActionCreator("GET_FOLLOWING_EXISTS", function(arg1, arg2) -- Line 292
		return {
			responseBody = {
				followings = {{
					userId = 123;
					isFollowing = true;
					isFollowed = true;
				}, {
					userId = 355;
					isFollowing = false;
					isFollowed = true;
				}};
			};
		}
	end);
	mockBlockUserById = "BLOCK_USER_BY_ID";
	mockBlockUserByIdAction = Rodux.makeActionCreator("BLOCK_USER_BY_ID", function(arg1, arg2) -- Line 283
		local module = {}
		module.responseBody = arg2
		module.namedIds = {
			users = arg1.userId;
		}
		module.additionalData = {
			currentUserId = arg1.currentUserId;
		}
		return module
	end);
	friendsNetworkingMock = {
		GetFriendshipStatus = {
			Succeeded = {
				name = "GET_FRIENDSHIP_STATUS";
			};
		};
		GetFriendshipStatuses = {
			Succeeded = {
				name = "GET_FRIENDSHIP_STATUSES";
			};
		};
		GetFriendsFromUserId = {
			Succeeded = {
				name = "GET_FRIENDS_SUCCEEDED_ACTION";
			};
		};
		GetFriendsCountFromUserId = {
			Succeeded = {
				name = "GET_FRIENDS_COUNT_SUCCEEDED_ACTION";
			};
		};
		UnfriendTargetUserId = {
			Succeeded = {
				name = "UNFRIEND_TARGET_USER_ID";
			};
		};
		GetFriendRequestsCount = {
			Succeeded = {
				name = "GET_REQUEST_COUNT";
			};
		};
		GetNewFriendRequestsCount = {
			Succeeded = {
				name = "GET_NEW_FRIEND_REQUEST_COUNT";
			};
		};
		ClearNewFriendRequests = {
			Succeeded = {
				name = "CLEAR_NEW_FRIEND_REQUEST_COUNT";
			};
		};
		AcceptFriendRequestFromUserId = {
			Succeeded = {
				name = "ACCEPT_REQUEST_FROM_USER_ID";
			};
		};
		DeclineFriendRequestFromUserId = {
			Succeeded = {
				name = "DECLINE_REQUEST_FROM_USER_ID";
			};
		};
		GetFriendRequests = {
			Succeeded = {
				name = "GET_FRIEND_REQUESTS";
			};
		};
		DeclineAllFriendRequests = {
			Succeeded = {
				name = "DECLINE_ALL_FRIEND_REQUESTS";
			};
		};
		GetFriendRecommendationsFromUserId = {
			Succeeded = {
				name = "GET_FRIEND_RECOMMENDATIONS_FROM_USER_ID";
			};
		};
		RequestFriendshipFromUserId = {
			Succeeded = {
				name = "REQUEST_FRIENDSHIP_FROM_USER_ID";
			};
		};
		RequestFriendshipFromContactId = {
			Succeeded = {
				name = "REQUEST_FRIENDSHIP_FROM_CONTACT_ID";
			};
		};
		GetExtendedFriendshipStatus = {
			Succeeded = {
				name = "GET_EXTENDED_FRIENDSHIP_STATUS";
			};
		};
		GetFollowingExists = {
			Succeeded = {
				name = "GET_FOLLOWING_EXISTS";
			};
		};
	};
	networkingBlockingMock = {
		BlockUserById = {
			Succeeded = {
				name = "BLOCK_USER_BY_ID";
			};
		};
	};
	userBlockingNetworkingMock = {
		BlockUserById = {
			Succeeded = {
				name = "BLOCK_USER_BY_ID";
			};
		};
	};
}