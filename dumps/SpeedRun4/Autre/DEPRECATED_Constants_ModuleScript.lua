-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:07:58
-- Luau version 6, Types version 3
-- Time taken: 0.008843 seconds

-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
-- KONSTANTERROR: [0] 1. Error Block 106 start (CF ANALYSIS FAILED)
local Parent = script.Parent
local getFFlagUGCValidateRestrictAttachmentPositions = require(Parent.flags.getFFlagUGCValidateRestrictAttachmentPositions)
local function _(arg1) -- Line 33, Named "convertArrayToTable"
	local module = {}
	for _, v in pairs(arg1) do
		module[v] = true
	end
	return module
end
local tbl_4 = {
	MAX_HAT_TRIANGLES = 4000;
	MAX_TEXTURE_SIZE = 1024;
}
local tbl_2 = {}
for _, v_2 in pairs({Enum.Material.Plastic}) do
	tbl_2[v_2] = true
end
tbl_4.MATERIAL_WHITELIST = tbl_2
tbl_4.BANNED_CLASS_NAMES = {"Script", "LocalScript", "ModuleScript", "ParticleEmitter", "Fire", "Smoke", "Sparkles"}
tbl_4.R6_BODY_PARTS = {"Torso", "Left Leg", "Right Leg", "Left Arm", "Right Arm"}
tbl_4.R15_BODY_PARTS = {"UpperTorso", "LowerTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "LeftUpperArm", "LeftLowerArm", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand"}
tbl_4.UGC_BODY_PARTS = {"Head", "UpperTorso", "LowerTorso", "LeftUpperLeg", "LeftLowerLeg", "LeftHand", "RightUpperArm", "RightLowerArm", "RightHand", "LeftUpperArm", "LeftLowerArm", "LeftFoot", "RightUpperLeg", "RightLowerLeg", "RightFoot", "EyebrowAccessory", "EyelashAccessory", "HairAccessory"}
tbl_4.UGC_BODY_PART_NAMES_TO_ASSET_TYPE = {
	Head = Enum.AssetType.DynamicHead;
	UpperTorso = Enum.AssetType.Torso;
	LowerTorso = Enum.AssetType.Torso;
	LeftUpperArm = Enum.AssetType.LeftArm;
	LeftLowerArm = Enum.AssetType.LeftArm;
	LeftHand = Enum.AssetType.LeftArm;
	RightUpperArm = Enum.AssetType.RightArm;
	RightLowerArm = Enum.AssetType.RightArm;
	RightHand = Enum.AssetType.RightArm;
	LeftUpperLeg = Enum.AssetType.LeftLeg;
	LeftLowerLeg = Enum.AssetType.LeftLeg;
	LeftFoot = Enum.AssetType.LeftLeg;
	RightUpperLeg = Enum.AssetType.RightLeg;
	RightLowerLeg = Enum.AssetType.RightLeg;
	RightFoot = Enum.AssetType.RightLeg;
	EyebrowAccessory = Enum.AssetType.EyebrowAccessory;
	EyelashAccessory = Enum.AssetType.EyelashAccessory;
	HairAccessory = Enum.AssetType.HairAccessory;
}
tbl_4.ASSET_TYPES_THAT_SKIP_FOLDER = {Enum.AssetType.DynamicHead, Enum.AssetType.EyebrowAccessory, Enum.AssetType.EyelashAccessory, Enum.AssetType.HairAccessory}
tbl_4.FOLDER_NAMES = {
	R6 = "R6";
	R15ArtistIntent = "R15ArtistIntent";
	R15Fixed = "R15Fixed";
}
tbl_4.EXTRA_BANNED_NAMES = {"Head", "HumanoidRootPart", "Humanoid"}
for _, v_3 in ipairs({"Body Colors", "Shirt Graphic", "Shirt", "Pants", "Health", "Animate"}) do
	table.insert(tbl_4.EXTRA_BANNED_NAMES, v_3)
end
for _, v_4 in pairs(require(Parent.Parent.Cryo).Dictionary.join(tbl_4.R6_BODY_PARTS, tbl_4.R15_BODY_PARTS, tbl_4.EXTRA_BANNED_NAMES)) do
	({})[v_4] = true
	local var57
end
tbl_4.BANNED_NAMES = var57
tbl_4.ASSET_STATUS = {
	UNKNOWN = "Unknown";
	REVIEW_PENDING = "ReviewPending";
	MODERATED = "Moderated";
}
tbl_4.ASSET_TYPE_INFO = {}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.Hat] = {
	attachmentNames = {"HatAttachment"};
	bounds = {
		HatAttachment = {
			size = Vector3.new(3, 4, 3);
		};
	};
	rigidAllowed = true;
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.HairAccessory] = {
	attachmentNames = {"HairAttachment"};
	bounds = {
		HairAttachment = {
			size = Vector3.new(3, 5, 3.5);
			offset = Vector3.new(0, -0.5, 0.25);
		};
	};
	rigidAllowed = true;
}
local tbl = {
	size = Vector3.new(3, 2, 2);
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.FaceAccessory] = {
	attachmentNames = {"FaceFrontAttachment", "FaceCenterAttachment"};
	bounds = {
		FaceFrontAttachment = tbl;
		FaceCenterAttachment = tbl;
	};
	rigidAllowed = true;
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.NeckAccessory] = {
	attachmentNames = {"NeckAttachment"};
	bounds = {
		NeckAttachment = {
			size = Vector3.new(3, 3, 2);
		};
	};
	rigidAllowed = true;
}
local tbl_6 = {
	size = Vector3.new(3, 3, 3);
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.ShoulderAccessory] = {
	attachmentNames = {"NeckAttachment", "LeftCollarAttachment", "RightCollarAttachment", "LeftShoulderAttachment", "RightShoulderAttachment"};
	bounds = {
		NeckAttachment = {
			size = Vector3.new(7, 3, 3);
		};
		LeftCollarAttachment = tbl_6;
		RightCollarAttachment = tbl_6;
		LeftShoulderAttachment = tbl_6;
		RightShoulderAttachment = tbl_6;
	};
	rigidAllowed = true;
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.FrontAccessory] = {
	attachmentNames = {"BodyFrontAttachment"};
	bounds = {
		BodyFrontAttachment = {
			size = Vector3.new(3, 3, 3);
		};
	};
	rigidAllowed = true;
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.BackAccessory] = {
	attachmentNames = {"BodyBackAttachment"};
	bounds = {
		BodyBackAttachment = {
			size = Vector3.new(10, 7, 4.5);
			offset = Vector3.new(0, 0, 0.75);
		};
	};
	rigidAllowed = true;
}
local tbl_5 = {
	size = Vector3.new(4, 3.5, 7);
	offset = Vector3.new(0, -0.25, 0);
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.WaistAccessory] = {
	attachmentNames = {"WaistBackAttachment", "WaistFrontAttachment", "WaistCenterAttachment"};
	bounds = {
		WaistBackAttachment = tbl_5;
		WaistFrontAttachment = tbl_5;
		WaistCenterAttachment = tbl_5;
	};
	rigidAllowed = true;
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.TShirtAccessory] = {
	attachmentNames = {"BodyFrontAttachment"};
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.ShirtAccessory] = {
	attachmentNames = {"BodyFrontAttachment"};
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.PantsAccessory] = {
	attachmentNames = {"WaistCenterAttachment"};
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.JacketAccessory] = {
	attachmentNames = {"BodyFrontAttachment"};
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.SweaterAccessory] = {
	attachmentNames = {"BodyFrontAttachment"};
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.ShortsAccessory] = {
	attachmentNames = {"WaistCenterAttachment"};
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.LeftShoeAccessory] = {
	attachmentNames = {"LeftFootAttachment"};
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.RightShoeAccessory] = {
	attachmentNames = {"RightFootAttachment"};
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.DressSkirtAccessory] = {
	attachmentNames = {"WaistCenterAttachment"};
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.EyebrowAccessory] = {
	attachmentNames = {"FaceFrontAttachment", "FaceCenterAttachment"};
	layeredClothingBounds = {
		FaceFrontAttachment = {
			size = Vector3.new(1.5, 0.5, 0.5);
		};
		FaceCenterAttachment = {
			size = Vector3.new(1.5, 0.5, 0.5);
		};
	};
}
tbl_4.ASSET_TYPE_INFO[Enum.AssetType.EyelashAccessory] = {
	attachmentNames = {"FaceFrontAttachment", "FaceCenterAttachment"};
	layeredClothingBounds = {
		FaceFrontAttachment = {
			size = Vector3.new(1.5, 0.5, 0.5);
		};
		FaceCenterAttachment = {
			size = Vector3.new(1.5, 0.5, 0.5);
		};
	};
}
tbl_4.AvatarPartScaleTypes = {
	Classic = true;
	ProportionsSlender = true;
	ProportionsNormal = true;
}
local var121 = require(Parent.flags.getFIntMeshDivisionFullExtended)() / 100
local var122 = require(Parent.flags.getFIntMeshDivision)() / 100
local var123 = require(Parent.flags.getFIntMeshDivisionFull)() / 100
local var124 = require(Parent.flags.getFIntMeshDivisionMedium)() / 100
if getFFlagUGCValidateRestrictAttachmentPositions() then
	-- KONSTANTWARNING: GOTO [852] #553
end
-- KONSTANTERROR: [0] 1. Error Block 106 end (CF ANALYSIS FAILED)
-- KONSTANTERROR: [851] 552. Error Block 139 start (CF ANALYSIS FAILED)
local var125
local tbl_3 = {
	min = Vector3.new(-var123, -var123, -var123);
	max = Vector3.new(var123, var123, var123);
}
local _ = {
	min = Vector3.new(-var121, -var121, -var121);
	max = Vector3.new(var121, var121, var121);
}
local _ = {
	min = tbl_3.min;
	max = Vector3.new(-var124, tbl_3.max.y, tbl_3.max.z);
}
local _ = {
	min = Vector3.new(var124, tbl_3.min.y, tbl_3.min.z);
	max = tbl_3.max;
}
local _ = {
	min = Vector3.new(tbl_3.min.x, var122, tbl_3.min.z);
	max = tbl_3.max;
}
if getFFlagUGCValidateRestrictAttachmentPositions() then
	local _ = {
		min = Vector3.new(tbl_3.min.X, var122, -var125);
		max = Vector3.new(-var122, tbl_3.max.Y, var125);
	}
	-- KONSTANTWARNING: GOTO [986] #641
end
-- KONSTANTERROR: [851] 552. Error Block 139 end (CF ANALYSIS FAILED)