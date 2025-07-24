-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:22:17
-- Luau version 6, Types version 3
-- Time taken: 0.003189 seconds

local AvatarExperienceNavigation = script:FindFirstAncestor("AvatarExperienceNavigation")
local AvatarRoute_upvr = require(AvatarExperienceNavigation.AvatarRoute.AvatarRoute)
local function avatarRouteFromString_upvr(arg1) -- Line 17, Named "avatarRouteFromString"
	--[[ Upvalues[1]:
		[1]: AvatarRoute_upvr (readonly)
	]]
	local tbl_2 = {}
	tbl_2.name = arg1
	tbl_2.key = arg1
	tbl_2.params = {}
	return AvatarRoute_upvr.new({
		current = tbl_2;
		previousPages = {tbl_2};
		opaque = tbl_2;
		isVisible = true;
		isOverlayVisible = false;
	})
end
local AvatarScreen_upvr = require(AvatarExperienceNavigation.Enums.AvatarScreen)
local function avatarRouteFromTable_upvr(arg1) -- Line 32, Named "avatarRouteFromTable"
	--[[ Upvalues[2]:
		[1]: AvatarScreen_upvr (readonly)
		[2]: AvatarRoute_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var7 = arg1
	if not var7 then
		var7 = {}
	end
	local var8 = var7
	var7 = var8.current
	local var9 = var7
	if not var9 then
		var9 = {}
	end
	local previous = var8.previous
	if not previous then
		previous = {}
	end
	local opaque = var8.opaque
	if not opaque then
		opaque = {}
	end
	local name_2 = var9.name
	if not name_2 then
		name_2 = AvatarScreen_upvr.None
	end
	local name_3 = previous.name
	if not name_3 then
		name_3 = AvatarScreen_upvr.None
	end
	local name = opaque.name
	if not name then
		name = AvatarScreen_upvr.None
	end
	local module = {}
	local tbl = {
		name = name_2;
		key = var9.key or name_2;
	}
	local params = var9.params
	if not params then
		params = {}
	end
	tbl.params = params
	module.current = tbl
	local tbl_5 = {}
	local tbl_3 = {
		name = name_3;
		key = previous.key or name_3;
	}
	local params_3 = previous.params
	if not params_3 then
		params_3 = {}
	end
	tbl_3.params = params_3
	tbl_5[1] = tbl_3
	module.previousPages = tbl_5
	local tbl_4 = {
		name = name;
		key = opaque.key or name;
	}
	local params_2 = opaque.params
	if not params_2 then
		params_2 = {}
	end
	tbl_4.params = params_2
	module.opaque = tbl_4
	if var8.isVisible == false then
	else
	end
	module.isVisible = true
	if var8.isOverlayVisible ~= true then
	else
	end
	module.isOverlayVisible = true
	return AvatarRoute_upvr.new(module)
end
local React_upvr = require(AvatarExperienceNavigation.Parent.React)
local AvatarRouteContext_upvr = require(AvatarExperienceNavigation.AvatarRoute.Context.AvatarRouteContext)
return function(arg1, arg2) -- Line 72
	--[[ Upvalues[4]:
		[1]: avatarRouteFromString_upvr (readonly)
		[2]: avatarRouteFromTable_upvr (readonly)
		[3]: React_upvr (readonly)
		[4]: AvatarRouteContext_upvr (readonly)
	]]
	local var26_upvr
	if type(arg2) == "string" then
		var26_upvr = avatarRouteFromString_upvr(arg2)
	else
		var26_upvr = avatarRouteFromTable_upvr(arg2)
	end
	return React_upvr.forwardRef(function(arg1_2, arg2_2) -- Line 77
		--[[ Upvalues[4]:
			[1]: React_upvr (copied, readonly)
			[2]: AvatarRouteContext_upvr (copied, readonly)
			[3]: var26_upvr (readonly)
			[4]: arg1 (readonly)
		]]
		local clone = table.clone(arg1_2)
		clone.ref = arg2_2
		return React_upvr.createElement(AvatarRouteContext_upvr.Provider, {
			value = var26_upvr;
		}, {
			component = React_upvr.createElement(arg1, clone);
		})
	end)
end