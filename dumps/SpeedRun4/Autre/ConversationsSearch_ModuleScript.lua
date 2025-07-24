-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:39
-- Luau version 6, Types version 3
-- Time taken: 0.001729 seconds

local ShareGame = game:GetService("CoreGui").RobloxGui.Modules.Settings.Pages.ShareGame
local module_upvr = {
	SearchAreaActive = false;
	SearchText = "";
}
local SetSearchAreaActive_upvr = require(ShareGame.Actions.SetSearchAreaActive)
local Immutable_upvr = require(game:GetService("CorePackages").Workspace.Packages.AppCommonLib).Immutable
local SetSearchText_upvr = require(ShareGame.Actions.SetSearchText)
local ClosePage_upvr = require(ShareGame.Actions.ClosePage)
return function(arg1, arg2) -- Line 19
	--[[ Upvalues[5]:
		[1]: module_upvr (readonly)
		[2]: SetSearchAreaActive_upvr (readonly)
		[3]: Immutable_upvr (readonly)
		[4]: SetSearchText_upvr (readonly)
		[5]: ClosePage_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var8 = arg1
	if not var8 then
		var8 = module_upvr
	end
	if arg2.type == SetSearchAreaActive_upvr.name then
		local any_Set_result1 = Immutable_upvr.Set(var8, "SearchAreaActive", arg2.isActive)
		return any_Set_result1
	end
	if arg2.type == SetSearchText_upvr.name then
		return Immutable_upvr.Set(any_Set_result1, "SearchText", arg2.searchText)
	end
	if arg2.type == ClosePage_upvr.name then
	end
	return module_upvr
end