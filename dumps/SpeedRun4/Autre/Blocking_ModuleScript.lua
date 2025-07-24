-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:38:46
-- Luau version 6, Types version 3
-- Time taken: 0.000629 seconds

local PlayerContextualMenu = script:FindFirstAncestor("PlayerContextualMenu")
local Parent = PlayerContextualMenu.Parent
local RoduxNetworking = require(script.Parent.RoduxNetworking)
if require(PlayerContextualMenu.Flags.FFlagUserBlockingApiPlayerContextMenuEnabled) then
	return require(Parent.UserBlockingNetworking).config({
		roduxNetworking = RoduxNetworking;
	})
end
return require(Parent.LuaSocialLibrariesDeps).NetworkingBlocking.config({
	roduxNetworking = RoduxNetworking;
})