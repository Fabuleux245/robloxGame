-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:04
-- Luau version 6, Types version 3
-- Time taken: 0.000687 seconds

local Parent = script.Parent
local Parent_2 = Parent.Parent
local Constants_upvr = require(Parent_2.Constants)
local tbl_upvr = {
	[Constants_upvr.ThemeName.Dark:lower()] = require(Parent.DarkTheme);
	[Constants_upvr.ThemeName.Light:lower()] = require(Parent.LightTheme);
}
local validateTheme_upvr = require(Parent_2.Validator.validateTheme)
return function(arg1) -- Line 15
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: validateTheme_upvr (readonly)
	]]
	local var7
	if arg1 ~= nil and 0 < #arg1 then
		var7 = tbl_upvr[arg1:lower()]
	end
	if var7 == nil then
		var7 = tbl_upvr[Constants_upvr.DefaultThemeName:lower()]
	end
	assert(validateTheme_upvr(var7))
	return var7
end