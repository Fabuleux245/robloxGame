-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:23
-- Luau version 6, Types version 3
-- Time taken: 0.001240 seconds

return function(arg1) -- Line 2, Named "createLayeredClothingSchema"
	assert(arg1, "attachmentName cannot be nil")
	local module = {
		ClassName = "Accessory";
	}
	local tbl_3 = {}
	local tbl_2 = {
		Name = "Handle";
		ClassName = "MeshPart";
	}
	local tbl = {}
	local tbl_4 = {}
	tbl_4.Name = arg1
	tbl_4.ClassName = "Attachment"
	tbl[1] = tbl_4
	tbl[2] = {
		ClassName = "WrapLayer";
	}
	tbl[3] = {
		ClassName = "SurfaceAppearance";
		_optional = true;
	}
	tbl[4] = {
		ClassName = "StringValue";
		Name = "AvatarPartScaleType";
		_optional = true;
	}
	tbl[5] = {
		ClassName = "TouchTransmitter";
		_optional = true;
	}
	tbl_2._children = tbl
	tbl_3[1] = {
		Name = "ThumbnailConfiguration";
		ClassName = "Configuration";
		_optional = true;
		_children = {{
			Name = "ThumbnailCameraTarget";
			ClassName = "ObjectValue";
		}, {
			Name = "ThumbnailCameraValue";
			ClassName = "CFrameValue";
		}};
	}
	tbl_3[2] = tbl_2
	module._children = tbl_3
	return module
end