-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:42:31
-- Luau version 6, Types version 3
-- Time taken: 0.005551 seconds

local Payload_upvr = require(script.Payload)
local function _(arg1) -- Line 36, Named "GetAllowedSlotNameFromValue"
	--[[ Upvalues[1]:
		[1]: Payload_upvr (readonly)
	]]
	for i, v in pairs(Payload_upvr.Slots) do
		if arg1 == v then
			return i
		end
	end
end
local function GetAccessoryType_upvr(arg1) -- Line 46, Named "GetAccessoryType"
	for _, v_2 in pairs(Enum.AccessoryType:GetEnumItems()) do
		if string.match(arg1, v_2.Name) then
			return v_2.Value + 1
		end
	end
	return nil
end
local function GetOutfitItemFromPayloadItem_upvr(arg1) -- Line 152, Named "GetOutfitItemFromPayloadItem"
	--[[ Upvalues[2]:
		[1]: Payload_upvr (readonly)
		[2]: GetAccessoryType_upvr (readonly)
	]]
	-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
	local pairs_result1_2, pairs_result2_2, pairs_result3 = pairs(Payload_upvr.Slots)
	-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 10. Error Block 4 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [13] 10. Error Block 4 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [9] 7. Error Block 15 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTWARNING: Failed to evaluate expression, replaced with nil [13.7]
	if arg1.slot == nil then
		-- KONSTANTWARNING: GOTO [16] #12
	end
	-- KONSTANTERROR: [9] 7. Error Block 15 end (CF ANALYSIS FAILED)
end
return {
	GetOfflineMode = function() -- Line 213, Named "GetOfflineMode"
		return false
	end;
	GetEnumFromValue = function(arg1, arg2) -- Line 58, Named "GetEnumFromValue"
		for _, v_3 in ipairs(arg1:GetEnumItems()) do
			if arg2 == v_3.Value then
				return arg1[v_3.Name]
			end
		end
	end;
	GetServerOutfitFromHumanoidDescription = function(arg1, arg2) -- Line 68, Named "GetServerOutfitFromHumanoidDescription"
		--[[ Upvalues[1]:
			[1]: Payload_upvr (readonly)
		]]
		local tbl = {}
		local any_GetAccessories_result1 = arg2:GetAccessories(true)
		table.sort(any_GetAccessories_result1, function(arg1_2, arg2_2) -- Line 74
			local Order = arg2_2.Order
			if (arg1_2.Order or 0) >= (Order or 0) then
				Order = false
			else
				Order = true
			end
			return Order
		end)
		for _, v_4 in pairs(any_GetAccessories_result1) do
			local Name = v_4.AccessoryType.Name
			local var29
			if Name == "Hat" then
				var29 = Payload_upvr.Slots.Hat
			else
				var29 = Payload_upvr.Slots[Name.."Accessory"]
			end
			if var29 then
				table.insert(tbl, {
					slot = var29;
					id = v_4.AssetId;
				})
			end
		end
		table.insert(tbl, {
			id = arg2.Shirt;
			slot = Payload_upvr.Slots.Shirt;
		})
		table.insert(tbl, {
			id = arg2.Pants;
			slot = Payload_upvr.Slots.Pants;
		})
		table.insert(tbl, {
			id = arg2.Torso;
			slot = Payload_upvr.Slots.Torso;
		})
		table.insert(tbl, {
			id = arg2.RightArm;
			slot = Payload_upvr.Slots.RightArm;
		})
		table.insert(tbl, {
			id = arg2.RightLeg;
			slot = Payload_upvr.Slots.RightLeg;
		})
		table.insert(tbl, {
			id = arg2.LeftArm;
			slot = Payload_upvr.Slots.LeftArm;
		})
		table.insert(tbl, {
			id = arg2.LeftLeg;
			slot = Payload_upvr.Slots.LeftLeg;
		})
		table.insert(tbl, {
			id = arg2.Head;
			slot = Payload_upvr.Slots.Head;
		})
		local module_2 = {}
		module_2.name = arg1
		module_2.items = tbl
		module_2.head_color = arg2.HeadColor:ToHex()
		module_2.torso_color = arg2.TorsoColor:ToHex()
		module_2.left_arm_color = arg2.LeftArmColor:ToHex()
		module_2.right_arm_color = arg2.RightArmColor:ToHex()
		module_2.left_leg_color = arg2.LeftLegColor:ToHex()
		module_2.right_leg_color = arg2.RightLegColor:ToHex()
		return module_2
	end;
	GetOutfitFromServerData = function(arg1) -- Line 176, Named "GetOutfitFromServerData"
		--[[ Upvalues[1]:
			[1]: GetOutfitItemFromPayloadItem_upvr (readonly)
		]]
		for _, v_5 in pairs(arg1.items) do
			local GetOutfitItemFromPayloadItem_result1 = GetOutfitItemFromPayloadItem_upvr(v_5)
			if GetOutfitItemFromPayloadItem_result1 then
				table.insert({}, GetOutfitItemFromPayloadItem_result1)
			end
		end
		local module = {
			GUID = arg1.guid;
			Name = arg1.name;
		}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		module.Items = {}
		module.Colors = {
			Head = arg1.head_color;
			Torso = arg1.torso_color;
			LeftArm = arg1.left_arm_color;
			RightArm = arg1.right_arm_color;
			LeftLeg = arg1.left_leg_color;
			RightLeg = arg1.right_leg_color;
		}
		module.Likes = arg1.likes or 0
		module.OwnLike = arg1.own_like or false
		module.Boosts = arg1.times_boosted or 0
		module.TryOns = arg1.try_on_count or 0
		module.Impressions = arg1.impression_count or 0
		module.CreatorId = arg1.creator
		module.GameId = arg1.game_id
		module.CreatedAt = arg1.created_at
		return module
	end;
	GetAllowedSlot = function(arg1) -- Line 28, Named "GetAllowedSlot"
		--[[ Upvalues[1]:
			[1]: Payload_upvr (readonly)
		]]
		if arg1 == "Hat" then
			return Payload_upvr.Slots.Hat
		end
		return Payload_upvr.Slots[arg1.."Accessory"]
	end;
}