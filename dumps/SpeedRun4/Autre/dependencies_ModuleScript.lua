-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:17
-- Luau version 6, Types version 3
-- Time taken: 0.001558 seconds

local CorePackages = game:GetService("CorePackages")
local LuaSocialLibrariesDeps = require(CorePackages.Packages.LuaSocialLibrariesDeps)
local httpRequest_upvr = LuaSocialLibrariesDeps.httpRequest
local any_new_result1_upvr = require(CorePackages.Packages.Lumberyak).Logger.new(nil, "ContactList"):new("ContactList Networking")
local any_config_result1 = LuaSocialLibrariesDeps.RoduxNetworking.config({
	keyPath = "NetworkStatus";
	networkImpl = httpRequest_upvr.config({
		requestFunction = function(arg1, arg2, arg3) -- Line 10, Named "requestFunction"
			--[[ Upvalues[2]:
				[1]: any_new_result1_upvr (readonly)
				[2]: httpRequest_upvr (readonly)
			]]
			any_new_result1_upvr:info("Fetching: {}", string.format("[ requestMethod = %q, url = %q ]", arg2, arg1))
			return httpRequest_upvr.requestFunctions.HttpRbxApi(arg1, arg2, arg3)
		end;
		postRequestFunction = function(arg1, arg2) -- Line 14, Named "postRequestFunction"
			--[[ Upvalues[1]:
				[1]: any_new_result1_upvr (readonly)
			]]
			any_new_result1_upvr:debug("Returned: {}", string.format("[ requestMethod = %q, url = %q, statusCode = %s, body = %s ]", arg2.requestMethod, arg2.url, arg1.StatusCode, arg1.Body))
		end;
		maxRetryCount = game:DefineFastInt("ContactListHttpRetryCount", 3);
	});
})
return {
	Hooks = {
		dependencyArray = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.dependencyArray;
		useDispatch = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useDispatch;
		useSelector = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector;
		usePrevious = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.usePrevious;
		useLocalization = require(CorePackages.Workspace.Packages.Localization).Hooks.useLocalization;
	};
	NetworkingCall = LuaSocialLibrariesDeps.NetworkingCall.config({
		roduxNetworking = any_config_result1;
		useMockedResponse = true;
	});
	RoduxCall = LuaSocialLibrariesDeps.RoduxCall.config({
		keyPath = "Call";
	});
	RoduxFriends = require(CorePackages.Workspace.Packages.FriendsRodux).config({
		keyPath = "Friends";
	});
	RoduxPresence = LuaSocialLibrariesDeps.RoduxPresence.config({
		keyPath = "Presence";
	});
	RoduxUsers = LuaSocialLibrariesDeps.RoduxUsers.config({
		keyPath = "Users";
	});
	RoduxNetworking = any_config_result1;
	NetworkingPresence = LuaSocialLibrariesDeps.NetworkingPresence.config({
		roduxNetworking = any_config_result1;
	});
	NetworkingFriends = require(CorePackages.Workspace.Packages.FriendsNetworking).config({
		roduxNetworking = any_config_result1;
	});
	NetworkingUsers = LuaSocialLibrariesDeps.NetworkingUsers.config({
		roduxNetworking = any_config_result1;
	});
	SocialLibraries = LuaSocialLibrariesDeps.SocialLibraries.config({});
	UIBlox = require(CorePackages.Packages.UIBlox);
	enumerate = require(CorePackages.Packages.enumerate);
	getStandardSizeAvatarHeadShotRbxthumb = require(CorePackages.Workspace.Packages.UserLib).Utils.getStandardSizeAvatarHeadShotRbxthumb;
	teleportToRootPlace = require(script.Parent.teleportToRootPlace);
}