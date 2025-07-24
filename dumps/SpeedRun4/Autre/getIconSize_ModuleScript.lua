-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:11:45
-- Luau version 6, Types version 3
-- Time taken: 0.000877 seconds

local IconSize_upvr = require(script.Parent.Enum.IconSize)
local module_upvr = {
	[IconSize_upvr.Small] = 16;
	[IconSize_upvr.Medium] = 36;
	[IconSize_upvr.Large] = 48;
	[IconSize_upvr.XLarge] = 96;
	[IconSize_upvr.XXLarge] = 192;
}
return function(arg1, arg2) -- Line 17
	--[[ Upvalues[2]:
		[1]: IconSize_upvr (readonly)
		[2]: module_upvr (readonly)
	]]
	assert(IconSize_upvr.isEnumValue(arg1))
	if arg2 ~= nil and arg2.Tokens ~= nil then
		if arg1 == IconSize_upvr.Small then
			return arg2.Tokens.Semantic.Icon.Size.Small
		end
		if arg1 == IconSize_upvr.Medium then
			return arg2.Tokens.Semantic.Icon.Size.Medium
		end
		if arg1 == IconSize_upvr.Large then
			return arg2.Tokens.Semantic.Icon.Size.Large
		end
		if arg1 == IconSize_upvr.XLarge then
			return arg2.Tokens.Semantic.Icon.Size.XLarge
		end
		if arg1 == IconSize_upvr.XXLarge then
			return arg2.Tokens.Semantic.Icon.Size.XxLarge
		end
		return nil
	end
	return module_upvr[arg1]
end