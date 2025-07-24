-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:59:26
-- Luau version 6, Types version 3
-- Time taken: 0.001854 seconds

local Parent = script.Parent.Parent
local Parent_2 = Parent.Parent
local function _() -- Line 17, Named "getViewportSize"
	local CurrentCamera = workspace.CurrentCamera
	if not CurrentCamera then return end
	return CurrentCamera.ViewportSize
end
local round_upvr = math.round
local function _(arg1) -- Line 28, Named "vec2ToTable"
	--[[ Upvalues[1]:
		[1]: round_upvr (readonly)
	]]
	return {
		x = round_upvr(arg1.X);
		y = round_upvr(arg1.Y);
	}
end
local game_DefineFastInt_result1_upvr_3 = game:DefineFastInt("CaptureMetadataGetAvatarsTimeoutMs", 150)
local AvatarIdentification_upvr = require(Parent_2.AvatarIdentification).AvatarIdentification
local Dash_upvr = require(Parent_2.Dash)
local GuiService_upvr = game:GetService("GuiService")
local game_DefineFastInt_result1_upvr_4 = game:DefineFastInt("CaptureMetadataMaxAvatars", 5)
local game_DefineFastInt_result1_upvr = game:DefineFastInt("CaptureMetadataMinHitRatePercentage", 50)
local game_DefineFastInt_result1_upvr_2 = game:DefineFastInt("CaptureMetadataMinAvatarBoundingBoxPixels", 200)
local getAvatarAssets_upvr = require(Parent.Utils.getAvatarAssets)
return function() -- Line 32
	--[[ Upvalues[9]:
		[1]: game_DefineFastInt_result1_upvr_3 (readonly)
		[2]: AvatarIdentification_upvr (readonly)
		[3]: Dash_upvr (readonly)
		[4]: GuiService_upvr (readonly)
		[5]: game_DefineFastInt_result1_upvr_4 (readonly)
		[6]: game_DefineFastInt_result1_upvr (readonly)
		[7]: game_DefineFastInt_result1_upvr_2 (readonly)
		[8]: getAvatarAssets_upvr (readonly)
		[9]: round_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	-- KONSTANTERROR: [0] 1. Error Block 22 start (CF ANALYSIS FAILED)
	local CurrentCamera_2 = workspace.CurrentCamera
	local var24
	if not CurrentCamera_2 then
		var24 = nil
	else
		var24 = CurrentCamera_2.ViewportSize
	end
	if not var24 then
		return {}
	end
	local any_values_result1 = Dash_upvr.values(AvatarIdentification_upvr.getVisibleAvatars(true, game_DefineFastInt_result1_upvr_3 / 1000))
	local any_GetRawScreenScale_result1 = GuiService_upvr:GetRawScreenScale()
	for _, v in any_values_result1 do
		v.boundingBox.min = v.boundingBox.min * var24 * any_GetRawScreenScale_result1
		v.boundingBox.max = v.boundingBox.max * var24 * any_GetRawScreenScale_result1
		local _
	end
	table.sort(any_values_result1, function(arg1, arg2) -- Line 50
		local var29 = arg2.boundingBox.max - arg2.boundingBox.min
		if var29.Magnitude >= (arg1.boundingBox.max - arg1.boundingBox.min).Magnitude then
			var29 = false
		else
			var29 = true
		end
		return var29
	end)
	-- KONSTANTERROR: [0] 1. Error Block 22 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [151] 106. Error Block 14 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [151] 106. Error Block 14 end (CF ANALYSIS FAILED)
	-- KONSTANTERROR: [70] 53. Error Block 10 start (CF ANALYSIS FAILED)
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	-- KONSTANTERROR: [70] 53. Error Block 10 end (CF ANALYSIS FAILED)
end