-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:31:42
-- Luau version 6, Types version 3
-- Time taken: 0.000500 seconds

local module_upvr = {
	Black = Enum.Font.GothamBlack;
	Bold = Enum.Font.GothamBold;
	Medium = Enum.Font.GothamMedium;
	Book = Enum.Font.Gotham;
}
return function(arg1) -- Line 55, Named "mapTypographyVariantToFontEnum"
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	if arg1.Font then
		return arg1.Font
	end
	if arg1.FontWeight then
		local var2 = module_upvr[arg1.FontWeight]
		if not var2 then
			var2 = module_upvr.Book
		end
		return var2
	end
	return module_upvr.Book
end