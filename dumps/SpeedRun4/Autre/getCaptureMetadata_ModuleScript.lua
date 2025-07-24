-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:17
-- Luau version 6, Types version 3
-- Time taken: 0.003300 seconds

local Parent = script.Parent.Parent
local FFlagUseRbxstorageInGallery_upvr = require(Parent.Flags.FFlagUseRbxstorageInGallery)
local CaptureType_upvr = require(Parent.Enums.CaptureType)
return function(arg1) -- Line 8
	--[[ Upvalues[2]:
		[1]: FFlagUseRbxstorageInGallery_upvr (readonly)
		[2]: CaptureType_upvr (readonly)
	]]
	local var16
	if FFlagUseRbxstorageInGallery_upvr then
		local var17 = CaptureType_upvr
		if arg1.type == var17.Video then
			local tonumber_result1_7 = tonumber(arg1.userId)
			if tonumber_result1_7 == nil then
				var17 = false
			else
				var17 = true
			end
			assert(var17, "userId should not be nil")
			local module_2 = {
				userId = tonumber_result1_7;
			}
			var17 = arg1.placeId
			module_2.placeId = var17
			var17 = arg1.creationTimestamp
			module_2.unixTimestamp = var17
			return module_2
		end
	end
	if FFlagUseRbxstorageInGallery_upvr then
		if arg1.type ~= CaptureType_upvr.Screenshot then
			return nil
		end
	end
	local string_match_result1, string_match_result2_2, string_match_result3 = string.match(arg1.filePath, "(%d+)_(%d+)_(%d+)%.?%w*$")
	if string_match_result1 == nil or string_match_result2_2 == nil or string_match_result3 == nil then
		return nil
	end
	local tonumber_result1_5 = tonumber(string_match_result1)
	local tonumber_result1_3 = tonumber(string_match_result2_2)
	local tonumber_result1_2 = tonumber(string_match_result3)
	if tonumber_result1_5 == nil then
		var16 = false
	else
		var16 = true
	end
	assert(var16, "userId should not be nil")
	if tonumber_result1_3 == nil then
		var16 = false
		-- KONSTANTWARNING: GOTO [92] #65
	end
	var16 = true
	assert(var16, "placeId should not be nil")
	if tonumber_result1_2 == nil then
		var16 = false
	else
		var16 = true
	end
	assert(var16, "unixTimestamp should not be nil")
	return {
		userId = tonumber_result1_5;
		placeId = tonumber_result1_3;
		unixTimestamp = tonumber_result1_2;
	}
end