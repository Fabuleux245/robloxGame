-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:51
-- Luau version 6, Types version 3
-- Time taken: 0.003795 seconds

local module_upvr = {
	rigAttachmentToParentMap = {
		Head = "NeckRigAttachment";
		UpperTorso = "WaistRigAttachment";
		LowerTorso = "RootRigAttachment";
		RightHand = "RightWristRigAttachment";
		RightLowerArm = "RightElbowRigAttachment";
		RightUpperArm = "RightShoulderRigAttachment";
		LeftHand = "LeftWristRigAttachment";
		LeftLowerArm = "LeftElbowRigAttachment";
		LeftUpperArm = "LeftShoulderRigAttachment";
		RightFoot = "RightAnkleRigAttachment";
		RightLowerLeg = "RightKneeRigAttachment";
		RightUpperLeg = "RightHipRigAttachment";
		LeftFoot = "LeftAnkleRigAttachment";
		LeftLowerLeg = "LeftKneeRigAttachment";
		LeftUpperLeg = "LeftHipRigAttachment";
	};
}
local AvatarCreationService_upvr = game:GetService("AvatarCreationService")
function module_upvr.getRules(arg1) -- Line 34
	--[[ Upvalues[1]:
		[1]: AvatarCreationService_upvr (readonly)
	]]
	if not arg1.rules then
		arg1.rules = AvatarCreationService_upvr:GetValidationRules()
	end
	return arg1.rules
end
function module_upvr.getBodyPartMaxTrianglesRule(arg1, arg2) -- Line 42
	return arg1:getRules().MeshRules.BodyPartMaxTriangles[arg2]
end
function module_upvr.getAccessoryRules(arg1, arg2) -- Line 46
	for i, v in arg1:getRules().AccessoryRules do
		local tbl = {
			rigidAllowed = v.RigidAllowed;
			attachmentNames = {};
			bounds = {};
		}
		for _, v_2 in v.Attachments do
			table.insert(tbl.attachmentNames, v_2.Name)
			tbl.bounds[v_2.Name] = {
				size = v_2.Size;
				offset = v_2.Offset;
			}
		end
		arg2[i] = tbl
	end
end
function module_upvr.getBodyPartRules(arg1, arg2) -- Line 64
	--[[ Upvalues[1]:
		[1]: module_upvr (readonly)
	]]
	for i_3, v_3 in arg1:getRules().BodyPartRules do
		local tbl_2 = {
			isBodyPart = true;
			bounds = {};
			subParts = {};
		}
		for i_4, v_4 in v_3.Bounds do
			tbl_2.bounds[i_4] = {
				minSize = v_4.MinSize;
				maxSize = v_4.MaxSize;
			}
		end
		for i_5, v_5 in v_3.SubParts do
			local tbl_3 = {
				rigAttachmentToParent = {};
				otherAttachments = {};
			}
			for i_6, v_6 in v_5 do
				if module_upvr.rigAttachmentToParentMap[i_5] == i_6 then
					tbl_3.rigAttachmentToParent = {
						name = i_6;
						bounds = {
							min = v_6.LowerBound;
							max = v_6.UpperBound;
						};
					}
				else
					tbl_3.otherAttachments[i_6] = {
						bounds = {
							min = v_6.LowerBound;
							max = v_6.UpperBound;
						};
					}
				end
			end
			tbl_2.subParts[i_5] = tbl_3
		end
		arg2[i_3] = tbl_2
	end
end
function module_upvr.getFullBodyRulesBounds(arg1) -- Line 107
	local module = {}
	for i_7, v_7 in arg1:getRules().FullBodyRules.Bounds do
		module[i_7] = {
			minSize = v_7.MinSize;
			maxSize = v_7.MaxSize;
		}
	end
	return module
end
return module_upvr