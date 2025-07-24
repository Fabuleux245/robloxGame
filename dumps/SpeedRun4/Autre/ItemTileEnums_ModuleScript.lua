-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:13:26
-- Luau version 6, Types version 3
-- Time taken: 0.000463 seconds

local Parent = script.Parent.Parent.Parent.Parent
local enumerate = require(Parent.Parent.enumerate)
return require(Parent.Utility.strict)({
	ItemIconType = enumerate("ItemIconType", {"AnimationBundle", "Bundle", "DynamicHead"});
	Restriction = enumerate("Restriction", {"Limited", "LimitedUnique", "Collectible"});
	StatusStyle = enumerate("StatusStyle", {"Alert", "Info", "PendingIcon", "AlertIcon"});
}, script.Name)