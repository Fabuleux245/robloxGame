-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:01
-- Luau version 6, Types version 3
-- Time taken: 0.001114 seconds

local Parent = script.Parent.Parent
local FontLoader_upvr = require(script.Parent.FontLoader)
local Constants_upvr = require(Parent.Constants)
local validateFont_upvr = require(Parent.Validator.validateFont)
return function(arg1, arg2) -- Line 9
	--[[ Upvalues[3]:
		[1]: FontLoader_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: validateFont_upvr (readonly)
	]]
	local tbl = {
		[Constants_upvr.FontName.Gotham:lower()] = FontLoader_upvr.new(arg2):loadFont();
	}
	local var7
	if arg1 ~= nil and 0 < #arg1 then
		var7 = tbl[arg1:lower()]
	end
	if var7 == nil then
		var7 = tbl[Constants_upvr.DefaultFontName:lower()]
	end
	assert(validateFont_upvr(var7))
	return var7
end