-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:16:00
-- Luau version 6, Types version 3
-- Time taken: 0.002186 seconds

local PeopleReactView = script:FindFirstAncestor("PeopleReactView")
local Parent = PeopleReactView.Parent
local Foundation = require(Parent.Foundation)
local useTokens_upvr = Foundation.Hooks.useTokens
local useSignalState_upvr = require(Parent.SignalsReact).useSignalState
local PeopleListStore_upvr = require(Parent.PeopleService).PeopleListStore
local React_upvr = require(Parent.React)
local PersonRow_upvr = require(PeopleReactView.Components.PersonRow)
local useLocalization_upvr = require(Parent.Localization).Hooks.useLocalization
local Constants_upvr = require(PeopleReactView.Constants)
local View_upvr = Foundation.View
local Text_upvr = Foundation.Text
return function() -- Line 25, Named "PeopleList"
	--[[ Upvalues[9]:
		[1]: useTokens_upvr (readonly)
		[2]: useSignalState_upvr (readonly)
		[3]: PeopleListStore_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: PersonRow_upvr (readonly)
		[6]: useLocalization_upvr (readonly)
		[7]: Constants_upvr (readonly)
		[8]: View_upvr (readonly)
		[9]: Text_upvr (readonly)
	]]
	local tbl = {}
	for i, v in useSignalState_upvr(PeopleListStore_upvr.get().people), nil do
		table.insert(tbl, React_upvr.createElement(PersonRow_upvr, {
			key = tostring(i)..'-'..tostring(v.UserId);
			person = v;
		}))
	end
	return React_upvr.createElement(View_upvr, {
		tag = "size-full-0 auto-y col gap-small";
	}, {
		Header = React_upvr.createElement(Text_upvr, {
			Text = useLocalization_upvr({
				playerList = Constants_upvr.PEOPLEPAGE.PEOPLE_LIST.HEADER;
			}).playerList;
			textStyle = {
				Color3 = useTokens_upvr().Color.Content.Default.Color3;
			};
			tag = "text-heading-small auto-y size-full-0 text-align-x-left";
		});
		PeopleList = React_upvr.createElement(View_upvr, {
			tag = "size-full-0 col gap-small auto-y";
		}, {tbl});
	})
end