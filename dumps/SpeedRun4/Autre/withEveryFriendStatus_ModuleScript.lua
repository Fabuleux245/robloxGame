-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:32
-- Luau version 6, Types version 3
-- Time taken: 0.004556 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local Rodux = dependencies.Rodux
local llama_upvr = dependencies.llama
local FriendshipOriginSourceType_upvr = require(FriendsLanding.Parent.FriendsNetworking).Enums.FriendshipOriginSourceType
local tbl_2_upvr = {
	["36"] = Enum.FriendStatus.NotFriend;
	["37"] = Enum.FriendStatus.FriendRequestSent;
	["38"] = Enum.FriendStatus.FriendRequestReceived;
	["39"] = Enum.FriendStatus.Friend;
	["40"] = Enum.FriendStatus.FriendRequestReceived;
	["41"] = Enum.FriendStatus.FriendRequestReceived;
}
local User_upvr = require(AddFriends.Redux.RoduxUsers).Models.User
local tbl = {
	tileProps = {
		sentFromExperienceName = "TestSentFrom";
		amIFollowingUser = true;
		isUserFollowingMe = true;
	};
	userProps = {
		mutualFriends = {{}, {}, {}};
		userPresenceType = require(AddFriends.Redux.RoduxPresence).Enums.PresenceType.InGame;
		lastLocation = "TestLastLocation";
	};
}
local module = {
	localUserId = '0';
	friendWithContextInfo = {
		FriendWithFullContextInfo = llama_upvr.Dictionary.joinDeep(tbl, {
			userProps = {
				username = "FriendRequestReceived";
				displayName = "WithFullContextInfo";
			};
		});
		FriendWithMutualFriends = {
			tileProps = {};
			userProps = {
				username = "FriendRequestReceived";
				displayName = "WithMutualFriends";
				mutualFriends = tbl.userProps.mutualFriends;
			};
		};
		Contact = {
			tileProps = {};
			userProps = {
				entityDisplayName = "entityDisplayName";
				thumbnailEntities = {
					avatarImageUrl = "avatarImageUrl";
				};
				contextType = require(AddFriends.Redux.RoduxFriends).Enums.RecommendationContextType.Contacts;
			};
		};
		FriendWithSentFrom = {
			tileProps = {
				sentFromExperienceName = tbl.tileProps.sentFromExperienceName;
			};
			userProps = {
				username = "FriendRequestReceived";
				displayName = "WithSentContext";
				id = "40";
			};
		};
		FriendYouAreFollowing = {
			tileProps = {
				amIFollowingUser = tbl.tileProps.amIFollowingUser;
			};
			userProps = {
				username = "FriendRequestReceived";
				displayName = "WithYouAreFollowing";
				id = "38";
			};
		};
		FriendFollowingMe = {
			tileProps = {
				isUserFollowingMe = tbl.tileProps.isUserFollowingMe;
			};
			userProps = {
				username = "FriendRequestReceived";
				displayName = "WithFollowingMe";
				followers = {};
				id = "37";
			};
		};
		FriendViaQRCode = {
			tileProps = {
				originSourceType = FriendshipOriginSourceType_upvr.QrCode.rawValue();
			};
			userProps = {
				username = "FriendRequestReceived";
				displayName = "WithQRCode";
				id = "41";
			};
		};
		FriendNoFriend = {
			tileProps = {};
			userProps = {
				username = "NotFriend";
				displayName = "Friend to add";
			};
		};
		FriendNoFriendWithNickname = {
			tileProps = {};
			userProps = {
				username = "NotFriend";
				displayName = "Friend to add";
				senderNickname = "SenderNickname";
			};
		};
		FriendPending = {
			tileProps = {};
			userProps = {
				username = "FriendRequestSent";
				displayName = "Friend pending";
			};
		};
	};
	fullContextInfo = tbl;
}
function module.userForStatus(arg1, arg2) -- Line 89
	--[[ Upvalues[3]:
		[1]: llama_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: User_upvr (readonly)
	]]
	return llama_upvr.Dictionary.join(User_upvr.mock({
		id = llama_upvr.Dictionary.flip(tbl_2_upvr)[arg1];
	}), arg2)
end
module.baseStore = Rodux.Store.new(function() -- Line 31
	--[[ Upvalues[2]:
		[1]: tbl_2_upvr (readonly)
		[2]: FriendshipOriginSourceType_upvr (readonly)
	]]
	return {
		LocalUserId = '0';
		FriendStatuses = tbl_2_upvr;
		ScreenSize = Vector2.new(500, 500);
		AddFriends = {
			RequestsFromOriginSourceType = {
				["41"] = FriendshipOriginSourceType_upvr.QrCode.rawValue();
			};
			IsUserFollowing = {
				["36"] = {
					isFollowing = false;
					isFollowed = false;
				};
				["37"] = {
					isFollowing = false;
					isFollowed = true;
				};
				["38"] = {
					isFollowing = true;
					isFollowed = false;
				};
				["39"] = {
					isFollowing = true;
					isFollowed = true;
				};
				["40"] = {
					isFollowing = false;
					isFollowed = false;
				};
				["41"] = {
					isFollowing = false;
					isFollowed = false;
				};
			};
			Friends = {
				requests = {
					sourceUniverseIds = {
						["36"] = 0;
						["37"] = 0;
						["38"] = 0;
						["39"] = 0;
						["40"] = 1;
						["41"] = 0;
					};
				};
			};
			Games = {
				byGameId = {
					['1'] = {
						name = "someGameName";
					};
				};
			};
		};
	}
end, {}, {Rodux.thunkMiddleware})
return module