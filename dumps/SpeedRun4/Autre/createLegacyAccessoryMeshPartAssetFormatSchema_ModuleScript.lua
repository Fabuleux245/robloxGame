-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:23
-- Luau version 6, Types version 3
-- Time taken: 0.002039 seconds

local getFFlagMeshPartAccessoryPBRSupport_upvr = require(script.Parent.Parent.flags.getFFlagMeshPartAccessoryPBRSupport)
return function(arg1) -- Line 6, Named "createLegacyAccessoryMeshPartAssetFormatSchema"
	--[[ Upvalues[1]:
		[1]: getFFlagMeshPartAccessoryPBRSupport_upvr (readonly)
	]]
	assert(arg1, "attachmentName cannot be nil")
	if getFFlagMeshPartAccessoryPBRSupport_upvr() then
		local module = {
			ClassName = "Accessory";
		}
		local tbl_6 = {}
		local tbl_4 = {
			Name = "Handle";
			ClassName = "MeshPart";
		}
		local tbl_7 = {}
		local tbl_2 = {}
		tbl_2.Name = arg1
		tbl_2.ClassName = "Attachment"
		tbl_7[1] = tbl_2
		tbl_7[2] = {
			ClassName = "SurfaceAppearance";
			Name = "SurfaceAppearance";
			_optional = true;
		}
		tbl_7[3] = {
			ClassName = "StringValue";
			Name = "AvatarPartScaleType";
			_optional = true;
		}
		tbl_7[4] = {
			ClassName = "TouchTransmitter";
			_optional = true;
		}
		tbl_4._children = tbl_7
		tbl_6[1] = {
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
		tbl_6[2] = tbl_4
		module._children = tbl_6
		return module
	end
	local module_2 = {
		ClassName = "Accessory";
	}
	local tbl_8 = {}
	local tbl_5 = {
		Name = "Handle";
		ClassName = "MeshPart";
	}
	local tbl_3 = {}
	local tbl = {}
	tbl.Name = arg1
	tbl.ClassName = "Attachment"
	tbl_3[1] = tbl
	tbl_3[2] = {
		ClassName = "StringValue";
		Name = "AvatarPartScaleType";
		_optional = true;
	}
	tbl_3[3] = {
		ClassName = "TouchTransmitter";
		_optional = true;
	}
	tbl_5._children = tbl_3
	tbl_8[1] = {
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
	tbl_8[2] = tbl_5
	module_2._children = tbl_8
	return module_2
end