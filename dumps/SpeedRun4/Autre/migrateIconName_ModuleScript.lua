-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:43
-- Luau version 6, Types version 3
-- Time taken: 0.000386 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local Flags_upvr = require(Foundation.Utility.Flags)
local Migration_upvr = require(Foundation.Parent.BuilderIcons).Migration
return function(arg1) -- Line 8, Named "migrateIconName"
	--[[ Upvalues[2]:
		[1]: Flags_upvr (readonly)
		[2]: Migration_upvr (readonly)
	]]
	if Flags_upvr.FoundationMigrateIconNames then
		return Migration_upvr.uiblox[arg1]
	end
	return nil
end