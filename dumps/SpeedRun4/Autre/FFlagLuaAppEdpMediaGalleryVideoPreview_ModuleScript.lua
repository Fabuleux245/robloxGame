-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:22:38
-- Luau version 6, Types version 3
-- Time taken: 0.000810 seconds

local FFlagLuaAppEdpMediaGalleryRedesign = require(script.Parent.FFlagLuaAppEdpMediaGalleryRedesign)
if FFlagLuaAppEdpMediaGalleryRedesign then
	FFlagLuaAppEdpMediaGalleryRedesign = require(script.Parent.FFlagLuaAppEdpMediaGallerySelectedMediaEntriesRefactor)
	if FFlagLuaAppEdpMediaGalleryRedesign then
		FFlagLuaAppEdpMediaGalleryRedesign = game:DefineFastFlag("LuaAppEdpMediaGalleryVideoPreview", false) or require(script.Parent.FFlagLuaAppEdpMediaGalleryVideoPreviewIxp)
	end
end
return FFlagLuaAppEdpMediaGalleryRedesign