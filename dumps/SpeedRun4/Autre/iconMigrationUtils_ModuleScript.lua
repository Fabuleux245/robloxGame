-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:34
-- Luau version 6, Types version 3
-- Time taken: 0.001098 seconds

local Parent = script.Parent
local uiblox_upvr = require(script:FindFirstAncestor("Foundation").Parent.BuilderIcons).Migration.uiblox
local Flags_upvr = require(Parent.Flags)
local isBuilderIcon_upvr = require(Parent.isBuilderIcon)
return {
	isMigrated = function(arg1) -- Line 11, Named "isMigrated"
		--[[ Upvalues[2]:
			[1]: Flags_upvr (readonly)
			[2]: uiblox_upvr (readonly)
		]]
		local FoundationMigrateIconNames = Flags_upvr.FoundationMigrateIconNames
		if FoundationMigrateIconNames then
			if uiblox_upvr[arg1] == nil then
				FoundationMigrateIconNames = false
			else
				FoundationMigrateIconNames = true
			end
		end
		return FoundationMigrateIconNames
	end;
	isBuilderOrMigratedIcon = function(arg1) -- Line 14, Named "isBuilderOrMigratedIcon"
		--[[ Upvalues[3]:
			[1]: isBuilderIcon_upvr (readonly)
			[2]: Flags_upvr (readonly)
			[3]: uiblox_upvr (readonly)
		]]
		local var5_result1 = isBuilderIcon_upvr(arg1)
		if not var5_result1 then
			var5_result1 = Flags_upvr.FoundationMigrateIconNames
			if var5_result1 then
				if uiblox_upvr[arg1] == nil then
					var5_result1 = false
				else
					var5_result1 = true
				end
			end
		end
		return var5_result1
	end;
}