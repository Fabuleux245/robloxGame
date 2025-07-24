-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:19
-- Luau version 6, Types version 3
-- Time taken: 0.000692 seconds

return function(arg1) -- Line 2, Named "createAccessorySchema"
	assert(arg1, "attachmentName cannot be nil")
	local module = {
		ClassName = "Accessory";
	}
	local tbl_4 = {}
	local tbl_2 = {
		Name = "Handle";
		ClassName = "Part";
	}
	local tbl = {}
	local tbl_3 = {}
	tbl_3.Name = arg1
	tbl_3.ClassName = "Attachment"
	tbl[1] = tbl_3
	tbl[2] = {
		ClassName = "SpecialMesh";
	}
	tbl[3] = {
		ClassName = "StringValue";
		Name = "AvatarPartScaleType";
		_optional = true;
	}
	tbl[4] = {
		ClassName = "TouchTransmitter";
		_optional = true;
	}
	tbl_2._children = tbl
	tbl_4[1] = {
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
	tbl_4[2] = tbl_2
	module._children = tbl_4
	return module
end