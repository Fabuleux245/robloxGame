-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:24
-- Luau version 6, Types version 3
-- Time taken: 0.000639 seconds

local Parent = script.Parent.Parent
local Constants_upvr = require(Parent.Constants)
local createIndividualBodyPartSchema_upvr = require(Parent.util.createIndividualBodyPartSchema)
return function(arg1, arg2, arg3) -- Line 8, Named "createLimbsAndTorsoSchema"
	--[[ Upvalues[2]:
		[1]: Constants_upvr (readonly)
		[2]: createIndividualBodyPartSchema_upvr (readonly)
	]]
	local module = {
		ClassName = "Folder";
	}
	local tbl = {}
	tbl[1] = arg2
	module.Name = tbl
	module._children = {}
	for i in pairs(Constants_upvr.ASSET_TYPE_INFO[arg1].subParts) do
		table.insert(module._children, createIndividualBodyPartSchema_upvr(arg1, i, arg3))
	end
	return module
end