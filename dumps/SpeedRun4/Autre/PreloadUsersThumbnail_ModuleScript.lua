-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:33:45
-- Luau version 6, Types version 3
-- Time taken: 0.002517 seconds

local UserLib = script:FindFirstAncestor("UserLib")
local Parent = UserLib.Parent
local Promise_upvr = require(Parent.Promise)
local Constants_upvr = require(UserLib.Utils.Constants)
local getRbxthumbWithTypeSizeAndOptions_upvr = require(UserLib.Utils).getRbxthumbWithTypeSizeAndOptions
local Cryo_upvr = require(Parent.Cryo)
local function subdivideEntries_upvr(arg1, arg2) -- Line 33, Named "subdivideEntries"
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local module = {}
	for i = 1, #arg1, arg2 do
		table.insert(module, Cryo_upvr.List.getRange(arg1, i, i + arg2 - 1))
	end
	return module
end
local function _(arg1, arg2, arg3) -- Line 42, Named "makePreloadAsyncPromise"
	--[[ Upvalues[3]:
		[1]: Promise_upvr (readonly)
		[2]: Constants_upvr (readonly)
		[3]: getRbxthumbWithTypeSizeAndOptions_upvr (readonly)
	]]
	return Promise_upvr.new(function(arg1_2, arg2_2) -- Line 47
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: arg2 (readonly)
			[3]: Constants_upvr (copied, readonly)
			[4]: getRbxthumbWithTypeSizeAndOptions_upvr (copied, readonly)
			[5]: arg3 (readonly)
		]]
		local tbl_2 = {}
		for _, v in arg1 do
			tbl_2[v] = {}
			for _, v_2 in arg2 do
				local var20 = tbl_2[v][v_2.thumbnailType]
				if not var20 then
					var20 = {}
				end
				tbl_2[v][v_2.thumbnailType] = var20
				local var5_result1 = getRbxthumbWithTypeSizeAndOptions_upvr(v, Constants_upvr.RbxAvatarThumbnailTypeFromEnumToRbxthumbType[v_2.thumbnailType], Constants_upvr.RbxThumbnailSizeToNumberSize[v_2.thumbnailSize])
				tbl_2[v][v_2.thumbnailType][v_2.thumbnailSize] = var5_result1
				table.insert({}, var5_result1)
			end
		end
		local var22 = arg3
		if not var22 then
			var22 = game:GetService("ContentProvider")
		end
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		var22:PreloadAsync({})
		arg1_2()
	end)
end
local PromiseUtilities_upvr = require(Parent.AppCommonLib).Utils.PromiseUtilities
return function(arg1, arg2, arg3) -- Line 80
	--[[ Upvalues[5]:
		[1]: subdivideEntries_upvr (readonly)
		[2]: Promise_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: getRbxthumbWithTypeSizeAndOptions_upvr (readonly)
		[5]: PromiseUtilities_upvr (readonly)
	]]
	return function(arg1_3) -- Line 81
		--[[ Upvalues[8]:
			[1]: subdivideEntries_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: arg2 (readonly)
			[4]: arg3 (readonly)
			[5]: Promise_upvr (copied, readonly)
			[6]: Constants_upvr (copied, readonly)
			[7]: getRbxthumbWithTypeSizeAndOptions_upvr (copied, readonly)
			[8]: PromiseUtilities_upvr (copied, readonly)
		]]
		local module_2 = {}
		for _, v_3_upvr in pairs(subdivideEntries_upvr(arg1, 100)) do
			table.insert(module_2, Promise_upvr.new(function(arg1_4, arg2_3) -- Line 47
				--[[ Upvalues[5]:
					[1]: v_3_upvr (readonly)
					[2]: arg2 (readonly)
					[3]: Constants_upvr (copied, readonly)
					[4]: getRbxthumbWithTypeSizeAndOptions_upvr (copied, readonly)
					[5]: arg3 (readonly)
				]]
				local tbl = {}
				for _, v_4 in v_3_upvr do
					tbl[v_4] = {}
					for _, v_5 in arg2 do
						local var44 = tbl[v_4][v_5.thumbnailType]
						if not var44 then
							var44 = {}
						end
						tbl[v_4][v_5.thumbnailType] = var44
						local getRbxthumbWithTypeSizeAndOptions_upvr_result1 = getRbxthumbWithTypeSizeAndOptions_upvr(v_4, Constants_upvr.RbxAvatarThumbnailTypeFromEnumToRbxthumbType[v_5.thumbnailType], Constants_upvr.RbxThumbnailSizeToNumberSize[v_5.thumbnailSize])
						tbl[v_4][v_5.thumbnailType][v_5.thumbnailSize] = getRbxthumbWithTypeSizeAndOptions_upvr_result1
						table.insert({}, getRbxthumbWithTypeSizeAndOptions_upvr_result1)
					end
				end
				local var46 = arg3
				if not var46 then
					var46 = game:GetService("ContentProvider")
				end
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				var46:PreloadAsync({})
				arg1_4()
			end))
		end
		return PromiseUtilities_upvr.Batch(module_2)
	end
end