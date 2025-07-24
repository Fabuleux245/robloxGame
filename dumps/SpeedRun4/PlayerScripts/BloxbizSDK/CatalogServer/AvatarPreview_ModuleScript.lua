-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:42:11
-- Luau version 6, Types version 3
-- Time taken: 0.001672 seconds

local tbl_upvr = {
	MerchBoothPose = 616136790;
	Stylish = 619511648;
	Bubbly = 1018553897;
	Ninja = 658832408;
	Levitate = 619542203;
	Elder = 892268340;
	Werewolf = 1113752682;
	Superhero = 619528125;
	Astronaut = 1090133099;
	Robot = 619521748;
	Mage = 754637456;
	Cartoony = 837011741;
	Pirate = 837024662;
	Toy = 973771666;
	Knight = 734327140;
	Zombie = 619535834;
	Vampire = 1113742618;
	Shy = 3576717965;
}
local module = {}
local function getPoses_upvr() -- Line 33, Named "getPoses"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	return tbl_upvr
end
local function getChild_upvr(arg1, arg2) -- Line 37, Named "getChild"
	local var10
	for _, v in ipairs(arg2:split('.')) do
		var10 = var10:FindFirstChild(v)
		if not var10 then return end
	end
	return var10
end
local var11_upvw
local BloxbizRemotes_upvr = game:GetService("ReplicatedStorage").BloxbizRemotes
local InsertService_upvr = game:GetService("InsertService")
function module.Init() -- Line 51
	--[[ Upvalues[6]:
		[1]: var11_upvw (read and write)
		[2]: getPoses_upvr (readonly)
		[3]: BloxbizRemotes_upvr (readonly)
		[4]: tbl_upvr (readonly)
		[5]: InsertService_upvr (readonly)
		[6]: getChild_upvr (readonly)
	]]
	var11_upvw = Instance.new("RemoteFunction")
	var11_upvw.Name = "CatalogOnGetPoses"
	var11_upvw.OnServerInvoke = getPoses_upvr
	var11_upvw.Parent = BloxbizRemotes_upvr
	local Folder_upvr = Instance.new("Folder")
	Folder_upvr.Name = "PoseAnimations"
	Folder_upvr.Parent = BloxbizRemotes_upvr
	for i_2_upvr, v_2_upvr in pairs(tbl_upvr) do
		task.spawn(function() -- Line 62
			--[[ Upvalues[6]:
				[1]: InsertService_upvr (copied, readonly)
				[2]: v_2_upvr (readonly)
				[3]: tbl_upvr (copied, readonly)
				[4]: i_2_upvr (readonly)
				[5]: getChild_upvr (copied, readonly)
				[6]: Folder_upvr (readonly)
			]]
			local pcall_result1, pcall_result2 = pcall(function() -- Line 63
				--[[ Upvalues[2]:
					[1]: InsertService_upvr (copied, readonly)
					[2]: v_2_upvr (copied, readonly)
				]]
				return InsertService_upvr:LoadAsset(v_2_upvr)
			end)
			if not pcall_result1 then
				tbl_upvr[i_2_upvr] = nil
			else
				local class_Animation = pcall_result2:FindFirstChildOfClass("Animation")
				if not class_Animation then
					class_Animation = getChild_upvr(pcall_result2, "R15Anim.idle.Animation1")
				end
				if not class_Animation then
					tbl_upvr[i_2_upvr] = nil
					return
				end
				class_Animation.Name = tostring(v_2_upvr)
				class_Animation.Parent = Folder_upvr
				assert(class_Animation, "Emote (%i) does not have an Animation":format(v_2_upvr))
			end
		end)
	end
end
return module