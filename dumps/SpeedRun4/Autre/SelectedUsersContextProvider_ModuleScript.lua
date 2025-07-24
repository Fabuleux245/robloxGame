-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:31:30
-- Luau version 6, Types version 3
-- Time taken: 0.006024 seconds

local Parent_2 = script.Parent
local Parent = Parent_2.Parent.Parent
local UserProfiles_upvr = require(Parent.UserProfiles)
local SquadInviteChangesExperimentation_upvr = require(Parent.SocialExperiments).SquadInviteChangesExperimentation
local React_upvr = require(Parent.React)
local Cryo_upvr = require(Parent.Cryo)
local dependencyArray_upvr = require(Parent.RoactUtils).Hooks.dependencyArray
local SelectedUsersContext_upvr = require(Parent_2.SelectedUsersContext)
return function(arg1) -- Line 21
	--[[ Upvalues[6]:
		[1]: UserProfiles_upvr (readonly)
		[2]: SquadInviteChangesExperimentation_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: Cryo_upvr (readonly)
		[5]: dependencyArray_upvr (readonly)
		[6]: SelectedUsersContext_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local tbl_2 = {}
	local preselectedUsers = arg1.preselectedUsers
	if not preselectedUsers then
		preselectedUsers = {}
	end
	tbl_2.userIds = preselectedUsers
	tbl_2.query = UserProfiles_upvr.Queries.userProfilesCombinedNameByUserIds
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
		local any_useUserProfilesFetch_result1_upvr = UserProfiles_upvr.Hooks.useUserProfilesFetch(tbl_2)
		local function _(arg1_2) -- Line 30
			--[[ Upvalues[3]:
				[1]: any_useUserProfilesFetch_result1_upvr (readonly)
				[2]: UserProfiles_upvr (copied, readonly)
				[3]: arg1 (readonly)
			]]
			local module = {}
			for _, v in pairs(arg1_2) do
				local var22
				if any_useUserProfilesFetch_result1_upvr.data then
					var22 = UserProfiles_upvr.Selectors.getCombinedNameFromId(any_useUserProfilesFetch_result1_upvr.data, v)
				end
				module[v] = {
					displayName = var22;
					layoutOrder = #module + 1;
					unremovable = arg1.preselectedUsersUnremovable;
				}
			end
			return module
		end
	end
	local var24
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and arg1.preselectedUsers then
		var24 = #arg1.preselectedUsers
	else
		var24 = 0
	end
	local var25
	var25 = React_upvr
	var24 = var25.useState
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and arg1.preselectedUsers then
		var25 = React_upvr.useCallback(_, nil)(arg1.preselectedUsers)
	else
		var25 = {}
	end
	var24 = var24(var25)
	local var24_result1_upvr, var24_result2_upvr = var24(var25)
	local var28
	var28 = React_upvr
	if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and arg1.preselectedUsers then
		var28 = #arg1.preselectedUsers
	else
		var28 = 0
	end
	local any_useState_result1_upvr, any_useState_result2_upvr = var28.useState(var28)
	local any_useRef_result1_upvr = React_upvr.useRef(var24)
	local any_useCallback_result1_upvr = React_upvr.useCallback(function(arg1_3, arg2) -- Line 65
		--[[ Upvalues[7]:
			[1]: arg1 (readonly)
			[2]: any_useState_result1_upvr (readonly)
			[3]: var24_result2_upvr (readonly)
			[4]: Cryo_upvr (copied, readonly)
			[5]: var24_result1_upvr (readonly)
			[6]: any_useRef_result1_upvr (readonly)
			[7]: any_useState_result2_upvr (readonly)
		]]
		if arg1.selectionLimit == nil or any_useState_result1_upvr < arg1.selectionLimit then
			local tbl = {}
			local tbl_3 = {}
			tbl_3.displayName = arg2
			tbl_3.layoutOrder = any_useRef_result1_upvr.current
			tbl[arg1_3] = tbl_3
			var24_result2_upvr(Cryo_upvr.Dictionary.join(var24_result1_upvr, tbl))
			any_useRef_result1_upvr.current += 1
			any_useState_result2_upvr(any_useState_result1_upvr + 1)
		end
	end, dependencyArray_upvr(var24_result1_upvr))
	local any_useCallback_result1_upvr_3 = React_upvr.useCallback(function(arg1_4, arg2) -- Line 79
		--[[ Upvalues[7]:
			[1]: var24_result2_upvr (readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: var24_result1_upvr (readonly)
			[4]: any_useState_result2_upvr (readonly)
			[5]: any_useState_result1_upvr (readonly)
			[6]: SquadInviteChangesExperimentation_upvr (copied, readonly)
			[7]: arg1 (readonly)
		]]
		var24_result2_upvr(Cryo_upvr.Dictionary.join(var24_result1_upvr, {
			[arg1_4] = Cryo_upvr.None;
		}))
		any_useState_result2_upvr(any_useState_result1_upvr - 1)
		if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() and arg1.onRemoveCallback then
			arg1.onRemoveCallback(arg1_4, arg2)
		end
	end, dependencyArray_upvr(var24_result1_upvr))
	local any_useCallback_result1_upvr_2 = React_upvr.useCallback(function(arg1_5) -- Line 87
		--[[ Upvalues[1]:
			[1]: var24_result1_upvr (readonly)
		]]
		local var40
		if var24_result1_upvr[arg1_5] == nil then
			var40 = false
		else
			var40 = true
		end
		return var40
	end, dependencyArray_upvr(var24_result1_upvr))
	return React_upvr.createElement(SelectedUsersContext_upvr.Provider, {
		value = React_upvr.useMemo(function() -- Line 92
			--[[ Upvalues[7]:
				[1]: any_useState_result1_upvr (readonly)
				[2]: var24_result1_upvr (readonly)
				[3]: any_useCallback_result1_upvr (readonly)
				[4]: any_useCallback_result1_upvr_3 (readonly)
				[5]: any_useCallback_result1_upvr_2 (readonly)
				[6]: SquadInviteChangesExperimentation_upvr (copied, readonly)
				[7]: arg1 (readonly)
			]]
			local module_2 = {
				selectedFriendsSize = any_useState_result1_upvr;
				selectedFriends = var24_result1_upvr;
				addFriend = any_useCallback_result1_upvr;
				removeFriend = any_useCallback_result1_upvr_3;
			}
			local var45 = any_useCallback_result1_upvr_2
			module_2.isFriendSelected = var45
			if SquadInviteChangesExperimentation_upvr.getInviteChangesEnabled() then
				var45 = arg1.preselectedUsers
			else
				var45 = nil
			end
			module_2.preselectedUsers = var45
			return module_2
		end, dependencyArray_upvr(var24_result1_upvr, any_useCallback_result1_upvr, any_useCallback_result1_upvr_3, any_useCallback_result1_upvr_2));
	}, arg1.children)
end