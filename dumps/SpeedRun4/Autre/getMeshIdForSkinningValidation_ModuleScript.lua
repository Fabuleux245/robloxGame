-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:34
-- Luau version 6, Types version 3
-- Time taken: 0.000632 seconds

local Constants_upvr = require(script.Parent.Parent.Constants)
return function(arg1, arg2) -- Line 5
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local MeshId = arg1.MeshId
	if not arg2 then
		return MeshId
	end
	local attribute = arg1:GetAttribute(Constants_upvr.AlternateMeshIdAttributeName)
	if attribute and attribute ~= "" then
		return attribute
	end
	return MeshId
end