-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:22
-- Luau version 6, Types version 3
-- Time taken: 0.001834 seconds

local Constants_upvr = require(script.Parent.Parent.Constants)
return function(arg1, arg2, arg3) -- Line 7, Named "createIndividualBodyPartSchema"
	--[[ Upvalues[1]:
		[1]: Constants_upvr (readonly)
	]]
	local var5 = Constants_upvr.ASSET_TYPE_INFO[arg1].subParts[arg2]
	local module = {
		ClassName = "MeshPart";
	}
	local tbl_3 = {}
	tbl_3[1] = arg2
	module.Name = tbl_3
	local tbl_2 = {}
	local tbl = {}
	local tbl_4 = {}
	tbl_4[1] = arg2
	tbl_4[2] = arg2.."WrapTarget"
	tbl_4[3] = "WrapTarget"
	tbl.Name = tbl_4
	tbl.ClassName = "WrapTarget"
	tbl_2[1] = {
		Name = {"AvatarPartScaleType"};
		ClassName = "StringValue";
	}
	tbl_2[2] = tbl
	tbl_2[3] = {
		Name = {"SurfaceAppearance"};
		ClassName = "SurfaceAppearance";
		_optional = true;
	}
	module._children = tbl_2
	table.insert(module._children, {
		Name = {var5.rigAttachmentToParent.name};
		ClassName = "Attachment";
	})
	for i in pairs(var5.otherAttachments) do
		table.insert(module._children, {
			Name = {i};
			ClassName = "Attachment";
		})
	end
	return module
end