-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:20
-- Luau version 6, Types version 3
-- Time taken: 0.000679 seconds

local createIndividualBodyPartSchema_upvr = require(script.Parent.Parent.util.createIndividualBodyPartSchema)
return function(arg1) -- Line 7, Named "createDynamicHeadMeshPartSchema"
	--[[ Upvalues[1]:
		[1]: createIndividualBodyPartSchema_upvr (readonly)
	]]
	local var2_result1 = createIndividualBodyPartSchema_upvr(Enum.AssetType.DynamicHead, "Head", arg1)
	table.insert(var2_result1._children, {
		Name = {"FaceControls"};
		ClassName = "FaceControls";
	})
	return var2_result1
end