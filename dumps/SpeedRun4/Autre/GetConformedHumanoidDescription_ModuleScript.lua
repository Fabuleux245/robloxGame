-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:00:02
-- Luau version 6, Types version 3
-- Time taken: 0.001822 seconds

local AvatarEditorService_upvr = game:GetService("AvatarEditorService")
local function removeDefaultClothing_upvr(arg1, arg2, arg3) -- Line 14, Named "removeDefaultClothing"
	--[[ Upvalues[1]:
		[1]: AvatarEditorService_upvr (readonly)
	]]
	local any_GetAvatarRules_result1 = AvatarEditorService_upvr:GetAvatarRules()
	local var11
	if not any_GetAvatarRules_result1.DefaultClothingAssetLists then
		arg3("No default clothing in avatar rules")
	else
		local DefaultShirtAssetIds = any_GetAvatarRules_result1.DefaultClothingAssetLists.DefaultShirtAssetIds
		var11 = any_GetAvatarRules_result1.DefaultClothingAssetLists
		local DefaultPantAssetIds = var11.DefaultPantAssetIds
		if not DefaultShirtAssetIds or not DefaultPantAssetIds then
			var11 = arg3
			var11("No default clothing ids in avatar rules")
			return
		end
		var11 = nil
		for _, v in ipairs(DefaultShirtAssetIds) do
			if v == arg1.Shirt then
				local var17 = var11
				if not var17 then
					var17 = arg1:Clone()
				end
				var11 = var17
				var11.Shirt = 0
			end
		end
		for _, v_2 in ipairs(DefaultPantAssetIds) do
			if v_2 == arg1.Pants then
				local var21 = var11
				if not var21 then
					var21 = arg1:Clone()
				end
				var11 = var21
				var11.Pants = 0
			end
		end
		arg2(var11 or arg1)
	end
end
local var22_upvw
local Promise_upvr = require(game:GetService("CorePackages").Packages.Promise)
local var24_upvw
return function(arg1, arg2) -- Line 48, Named "GetConformedHumanoidDescription"
	--[[ Upvalues[5]:
		[1]: var22_upvw (read and write)
		[2]: Promise_upvr (readonly)
		[3]: var24_upvw (read and write)
		[4]: removeDefaultClothing_upvr (readonly)
		[5]: AvatarEditorService_upvr (readonly)
	]]
	if arg1 == var22_upvw then
		if arg2 then
			return Promise_upvr.resolve(var24_upvw)
		end
		return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 53
			--[[ Upvalues[2]:
				[1]: removeDefaultClothing_upvr (copied, readonly)
				[2]: var24_upvw (copied, read and write)
			]]
			removeDefaultClothing_upvr(var24_upvw, arg1_2, arg2_2)
		end)
	end
	return Promise_upvr.new(function(arg1_3, arg2_3) -- Line 59
		--[[ Upvalues[6]:
			[1]: AvatarEditorService_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: var22_upvw (copied, read and write)
			[4]: var24_upvw (copied, read and write)
			[5]: arg2 (readonly)
			[6]: removeDefaultClothing_upvr (copied, readonly)
		]]
		coroutine.wrap(function() -- Line 60
			--[[ Upvalues[8]:
				[1]: AvatarEditorService_upvr (copied, readonly)
				[2]: arg1 (copied, readonly)
				[3]: var22_upvw (copied, read and write)
				[4]: var24_upvw (copied, read and write)
				[5]: arg2 (copied, readonly)
				[6]: arg1_3 (readonly)
				[7]: removeDefaultClothing_upvr (copied, readonly)
				[8]: arg2_3 (readonly)
			]]
			local pcall_result1, pcall_result2 = pcall(function() -- Line 61
				--[[ Upvalues[2]:
					[1]: AvatarEditorService_upvr (copied, readonly)
					[2]: arg1 (copied, readonly)
				]]
				return AvatarEditorService_upvr:ConformToAvatarRules(arg1)
			end)
			if pcall_result1 then
				var22_upvw = arg1
				var24_upvw = pcall_result2
				if arg2 then
					arg1_3(pcall_result2)
				else
					removeDefaultClothing_upvr(pcall_result2, arg1_3, arg2_3)
				end
			end
			arg2_3(pcall_result2)
		end)()
	end)
end