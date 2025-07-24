-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:08
-- Luau version 6, Types version 3
-- Time taken: 0.001517 seconds

local CorePackages = game:GetService("CorePackages")
local ContactList = game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.ContactList
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("ContactListNavigatorEnabled", false)
local React_upvr = require(CorePackages.Packages.React)
local RoactNavigation_upvr = require(CorePackages.Packages.RoactNavigation)
local ContactListContainer_upvr = require(ContactList.Components.ContactListContainer)
local SoundManager_upvr = require(CorePackages.Workspace.Packages.SoundManager).SoundManager
local SoundGroups_upvr = require(CorePackages.Workspace.Packages.SoundManager).SoundGroups
local CallDialogContainer_upvr = require(ContactList.Components.CallDialogContainer)
local PlayerMenuContainer_upvr = require(ContactList.Components.PlayerMenuContainer)
local CallBarContainer_upvr = require(ContactList.Components.CallBarContainer)
return function() -- Line 21
	--[[ Upvalues[9]:
		[1]: game_DefineFastFlag_result1_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: RoactNavigation_upvr (readonly)
		[4]: ContactListContainer_upvr (readonly)
		[5]: SoundManager_upvr (readonly)
		[6]: SoundGroups_upvr (readonly)
		[7]: CallDialogContainer_upvr (readonly)
		[8]: PlayerMenuContainer_upvr (readonly)
		[9]: CallBarContainer_upvr (readonly)
	]]
	local var13
	if game_DefineFastFlag_result1_upvr then
		var13 = React_upvr.useMemo(function() -- Line 27
			--[[ Upvalues[2]:
				[1]: RoactNavigation_upvr (copied, readonly)
				[2]: ContactListContainer_upvr (copied, readonly)
			]]
			return RoactNavigation_upvr.createAppContainer(RoactNavigation_upvr.createRobloxStackNavigator({{
				ContactList = {
					screen = ContactListContainer_upvr;
				};
			}}, {
				defaultNavigationOptions = {
					absorbInput = false;
				};
			}))
		end, {})
	end
	React_upvr.useEffect(function() -- Line 38
		--[[ Upvalues[2]:
			[1]: SoundManager_upvr (copied, readonly)
			[2]: SoundGroups_upvr (copied, readonly)
		]]
		SoundManager_upvr:CreateSoundGroup(SoundGroups_upvr.Iris.Name)
	end, {})
	local module = {}
	local any_createElement_result1 = React_upvr.createElement(CallDialogContainer_upvr)
	module.CallDialogContainer = any_createElement_result1
	if game_DefineFastFlag_result1_upvr then
		any_createElement_result1 = React_upvr.createElement(var13)
	else
		any_createElement_result1 = React_upvr.createElement(ContactListContainer_upvr)
	end
	module.ContactListContainer = any_createElement_result1
	module.PlayerMenuContainer = React_upvr.createElement(PlayerMenuContainer_upvr)
	module.CallBarContainer = React_upvr.createElement(CallBarContainer_upvr)
	return React_upvr.createElement("Folder", {}, module)
end