-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:00
-- Luau version 6, Types version 3
-- Time taken: 0.002949 seconds

local PeopleReactView = script:FindFirstAncestor("PeopleReactView")
local Parent = PeopleReactView.Parent
local Foundation = require(Parent.Foundation)
local useTokens_upvr = Foundation.Hooks.useTokens
local React_upvr = require(Parent.React)
local PeopleListStore_upvr = require(Parent.PeopleService).PeopleListStore
local useSignalBinding_upvr = require(Parent.SignalsReact).useSignalBinding
local View_upvr = Foundation.View
local Avatar_upvr = Foundation.Avatar
local InputSize_upvr = Foundation.Enums.InputSize
local Text_upvr = Foundation.Text
local game_DefineFastFlag_result1_upvr = game:DefineFastFlag("PlayerListRefactorUsernameFormatting", false)
local formatUsername_upvr = require(Parent.UserProfiles).Formatters.formatUsername
local PlatformName_upvr = require(PeopleReactView.Components.PlatformName)
return function(arg1) -- Line 30, Named "PersonRow"
	--[[ Upvalues[11]:
		[1]: useTokens_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: PeopleListStore_upvr (readonly)
		[4]: useSignalBinding_upvr (readonly)
		[5]: View_upvr (readonly)
		[6]: Avatar_upvr (readonly)
		[7]: InputSize_upvr (readonly)
		[8]: Text_upvr (readonly)
		[9]: game_DefineFastFlag_result1_upvr (readonly)
		[10]: formatUsername_upvr (readonly)
		[11]: PlatformName_upvr (readonly)
	]]
	local var4_result1 = useTokens_upvr()
	local module = {}
	local tbl_3 = {
		Avatar = React_upvr.createElement(Avatar_upvr, {
			userId = arg1.person.UserId;
			size = InputSize_upvr.Large;
			backgroundStyle = {
				Color3 = var4_result1.Color.Shift.Shift_300.Color3;
				Transparency = var4_result1.Color.Shift.Shift_300.Transparency;
			};
			LayoutOrder = 1;
		});
	}
	local tbl = {}
	local tbl_2 = {
		Text = useSignalBinding_upvr(React_upvr.useMemo(function() -- Line 33
			--[[ Upvalues[2]:
				[1]: PeopleListStore_upvr (copied, readonly)
				[2]: arg1 (readonly)
			]]
			return PeopleListStore_upvr.get().getProfile(arg1.person.UserId)
		end, {arg1.person.UserId})):map(function(arg1_2) -- Line 39
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1_2 and 0 < string.len(arg1_2) then
				return arg1_2
			end
			return arg1.person.DisplayName
		end);
		textStyle = {
			Color3 = var4_result1.Color.Content.Default.Color3;
		};
		tag = "text-label-medium auto-xy text-align-x-left text-truncate-end";
	}
	local var29 = 1
	tbl_2.LayoutOrder = var29
	tbl.DisplayName = React_upvr.createElement(Text_upvr, tbl_2)
	local tbl_4 = {}
	if game_DefineFastFlag_result1_upvr then
		var29 = formatUsername_upvr(arg1.person.Name)
	else
		var29 = '@'..arg1.person.Name
	end
	tbl_4.Text = var29
	tbl_4.tag = "text-caption-small auto-xy text-align-x-left content-muted text-truncate-end"
	tbl_4.LayoutOrder = 2
	tbl.UserName = React_upvr.createElement(Text_upvr, tbl_4)
	tbl_3.NameContainer = React_upvr.createElement(View_upvr, {
		tag = "col gap-small auto-xy flex-evenly";
		LayoutOrder = 2;
	}, tbl)
	module.LeftContent = React_upvr.createElement(View_upvr, {
		tag = "row gap-medium align-y-center size-0-full auto-x text-no-wrap";
		LayoutOrder = 1;
	}, tbl_3)
	module.RightContent = React_upvr.createElement(PlatformName_upvr, {
		UserId = arg1.person.UserId;
	})
	return React_upvr.createElement(View_upvr, {
		tag = "size-full-1500 padding-medium bg-surface-200 radius-medium row flex-between";
	}, module)
end