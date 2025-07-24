-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:40
-- Luau version 6, Types version 3
-- Time taken: 0.000505 seconds

return {
	Headshot = "rbxthumb://type=AvatarHeadShot&id=%d&w=%d&h=%d";
	Bust = string.gsub(string.gsub(string.gsub(game:GetService("ContentProvider").BaseUrl:lower(), "/m.", "/www."), "/www.", "/thumbnails."), "http:", "https:").."v1/users/avatar-bust?userIds=%d&size=%dx%d&format=Png&isCircular=false";
	Thumbnail = "rbxthumb://type=Avatar&id=%d&w=%d&h=%d";
}