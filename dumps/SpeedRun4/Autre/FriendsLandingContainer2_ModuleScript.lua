-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:55
-- Luau version 6, Types version 3
-- Time taken: 0.002950 seconds

local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Parent = FriendsLanding.Parent
local PresenceType_upvr = dependencies.RoduxPresence.Enums.PresenceType
local PresenceType_upvr_2 = require(Parent.GraphQLServer).types.PresenceType
local tbl_upvr = {
	[PresenceType_upvr_2.Offline] = PresenceType_upvr.Offline;
	[PresenceType_upvr_2.Online] = PresenceType_upvr.Online;
	[PresenceType_upvr_2.InGame] = PresenceType_upvr.InGame;
	[PresenceType_upvr_2.InStudio] = PresenceType_upvr.InStudio;
}
local useLocalUserId_upvr = require(Parent.RobloxAppHooks).useLocalUserId
local useSelector_upvr = require(Parent.RoactUtils).Hooks.RoactRodux.useSelector
local getDeepValue_upvr = dependencies.SocialLibraries.Dictionary.getDeepValue
local useAppPolicy_upvr = require(Parent.UniversalAppPolicy).useAppPolicy
local React_upvr = require(Parent.React)
local FriendsLandingContext_upvr = require(FriendsLanding.FriendsLandingContext)
local useFriendsListOrderedByPresence_upvr = require(Parent.FriendsCommon).Hooks.useFriendsListOrderedByPresence
local game_DefineFastInt_result1_upvr = game:DefineFastInt("FriendsLandingPageSize", 50)
local filterStates_upvr = require(FriendsLanding.Friends.filterStates)
local Cryo_upvr = require(Parent.Cryo)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local getRbxthumbWithTypeSizeAndOptions_upvr = dependencies.getRbxthumbWithTypeSizeAndOptions
local UserLibConstants_upvr = dependencies.UserLibConstants
local FriendsLandingPage_upvr = require(FriendsLanding.Components.FriendsLandingPage)
function FriendsLandingContainer(arg1) -- Line 39
	--[[ Upvalues[17]:
		[1]: useLocalUserId_upvr (readonly)
		[2]: useSelector_upvr (readonly)
		[3]: getDeepValue_upvr (readonly)
		[4]: useAppPolicy_upvr (readonly)
		[5]: React_upvr (readonly)
		[6]: FriendsLandingContext_upvr (readonly)
		[7]: useFriendsListOrderedByPresence_upvr (readonly)
		[8]: game_DefineFastInt_result1_upvr (readonly)
		[9]: filterStates_upvr (readonly)
		[10]: Cryo_upvr (readonly)
		[11]: PresenceType_upvr_2 (readonly)
		[12]: dependencyArray_upvr (readonly)
		[13]: getRbxthumbWithTypeSizeAndOptions_upvr (readonly)
		[14]: UserLibConstants_upvr (readonly)
		[15]: tbl_upvr (readonly)
		[16]: PresenceType_upvr (readonly)
		[17]: FriendsLandingPage_upvr (readonly)
	]]
	local var7_result1_upvr = useLocalUserId_upvr()
	local any_useContext_result1_upvr = React_upvr.useContext(FriendsLandingContext_upvr.Context)
	local useFriendsListOrderedByPresence_upvr_result1_upvr = useFriendsListOrderedByPresence_upvr({
		userId = var7_result1_upvr;
		pageSize = game_DefineFastInt_result1_upvr;
	})
	local any_useMemo_result1_upvr = React_upvr.useMemo(function() -- Line 56
		--[[ Upvalues[5]:
			[1]: useFriendsListOrderedByPresence_upvr_result1_upvr (readonly)
			[2]: any_useContext_result1_upvr (readonly)
			[3]: filterStates_upvr (copied, readonly)
			[4]: Cryo_upvr (copied, readonly)
			[5]: PresenceType_upvr_2 (copied, readonly)
		]]
		local var28
		if useFriendsListOrderedByPresence_upvr_result1_upvr.onlineFriends and useFriendsListOrderedByPresence_upvr_result1_upvr.offlineFriends then
			if any_useContext_result1_upvr.filter == filterStates_upvr.All then
				var28 = Cryo_upvr.List.join(useFriendsListOrderedByPresence_upvr_result1_upvr.onlineFriends, useFriendsListOrderedByPresence_upvr_result1_upvr.offlineFriends)
				return var28
			end
			if any_useContext_result1_upvr.filter == filterStates_upvr.Offline then
				var28 = useFriendsListOrderedByPresence_upvr_result1_upvr.offlineFriends
				return var28
			end
			if any_useContext_result1_upvr.filter == filterStates_upvr.Online then
				var28 = useFriendsListOrderedByPresence_upvr_result1_upvr.onlineFriends
				return var28
			end
			var28 = Cryo_upvr.List.filter(useFriendsListOrderedByPresence_upvr_result1_upvr.onlineFriends, function(arg1_4) -- Line 67
				--[[ Upvalues[1]:
					[1]: PresenceType_upvr_2 (copied, readonly)
				]]
				local presence = arg1_4.presence
				if presence then
					if arg1_4.presence.userPresenceType ~= PresenceType_upvr_2.InGame then
						presence = false
					else
						presence = true
					end
				end
				return presence
			end)
		end
		return var28
	end, dependencyArray_upvr(any_useContext_result1_upvr.filter, useFriendsListOrderedByPresence_upvr_result1_upvr.onlineFriends, useFriendsListOrderedByPresence_upvr_result1_upvr.offlineFriends))
	local module_2 = {
		totalFriendCount = useSelector_upvr(function(arg1_2) -- Line 41
			--[[ Upvalues[2]:
				[1]: getDeepValue_upvr (copied, readonly)
				[2]: var7_result1_upvr (readonly)
			]]
			return getDeepValue_upvr(arg1_2, `FriendsLanding.Friends.countsByUserId.{var7_result1_upvr}`)
		end);
		friends = React_upvr.useMemo(function() -- Line 76
			--[[ Upvalues[6]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: any_useMemo_result1_upvr (readonly)
				[3]: getRbxthumbWithTypeSizeAndOptions_upvr (copied, readonly)
				[4]: UserLibConstants_upvr (copied, readonly)
				[5]: tbl_upvr (copied, readonly)
				[6]: PresenceType_upvr (copied, readonly)
			]]
			return Cryo_upvr.List.map(any_useMemo_result1_upvr, function(arg1_5, arg2) -- Line 77
				--[[ Upvalues[4]:
					[1]: getRbxthumbWithTypeSizeAndOptions_upvr (copied, readonly)
					[2]: UserLibConstants_upvr (copied, readonly)
					[3]: tbl_upvr (copied, readonly)
					[4]: PresenceType_upvr (copied, readonly)
				]]
				local id = arg1_5.id
				local var35
				if arg1_5.presence then
					var35 = arg1_5.presence.userPresenceType
					id = tbl_upvr[var35]
				else
					id = PresenceType_upvr.Offline
				end
				local module = {}
				var35 = arg1_5.id
				module.id = var35
				var35 = ""
				module.username = var35
				module.thumbnail = getRbxthumbWithTypeSizeAndOptions_upvr(id, UserLibConstants_upvr.RbxthumbTypes.Avatar, 352)
				module.userPresenceType = id
				local function INLINED() -- Internal function, doesn't exist in bytecode
					var35 = arg1_5.presence.universeId
					return var35
				end
				if not arg1_5.presence or not INLINED() then
					var35 = nil
				end
				module.universeId = var35
				if arg1_5.presence then
					var35 = arg1_5.presence.lastLocation
				else
					var35 = nil
				end
				module.lastLocation = var35
				return module
			end)
		end, {any_useMemo_result1_upvr});
	}
	local var39
	if useFriendsListOrderedByPresence_upvr_result1_upvr and not useFriendsListOrderedByPresence_upvr_result1_upvr.isEndOfList then
		var39 = useFriendsListOrderedByPresence_upvr_result1_upvr.fetchMoreFriends
	else
		var39 = nil
	end
	module_2.fetchMoreFriends = var39
	var39 = useFriendsListOrderedByPresence_upvr_result1_upvr.refreshFriendsData
	module_2.refreshFriends = var39
	module_2.enableDisplayNamePolicy = useAppPolicy_upvr(function(arg1_3) -- Line 45
		return arg1_3.getShowDisplayName()
	end)
	module_2.localUserId = var7_result1_upvr
	return React_upvr.createElement(FriendsLandingPage_upvr, module_2)
end
return FriendsLandingContainer