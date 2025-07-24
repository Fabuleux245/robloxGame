-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:14
-- Luau version 6, Types version 3
-- Time taken: 0.000490 seconds

local UserModel = require(script:FindFirstAncestor("SocialLibraries").dependencies).UserModel
return {
	[UserModel.PresenceType.OFFLINE] = "";
	[UserModel.PresenceType.ONLINE] = "rbxasset://textures/ui/LuaChat/graphic/gr-indicator-online-14x14.png";
	[UserModel.PresenceType.IN_GAME] = "rbxasset://textures/ui/LuaChat/graphic/gr-indicator-ingame-14x14.png";
	[UserModel.PresenceType.IN_STUDIO] = "rbxasset://textures/ui/LuaChat/graphic/gr-indicator-instudio-14x14.png";
}