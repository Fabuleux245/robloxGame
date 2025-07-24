-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:32:00
-- Luau version 6, Types version 3
-- Time taken: 0.006152 seconds

local TnSAvatarIdentification = script:FindFirstAncestor("TnSAvatarIdentification")
local GetFFlagAvatarIdentificationSafeAreaFix_upvr = require(TnSAvatarIdentification.Parent.SharedFlags).GetFFlagAvatarIdentificationSafeAreaFix
local var3_upvw
if GetFFlagAvatarIdentificationSafeAreaFix_upvr() then
	var3_upvw = game:GetService("CoreGui")
end
local vector2_3_upvr = Vector2.new(math.huge, math.huge)
local function _(arg1) -- Line 59
	local var14 = true
	if arg1.Y >= 0 then
		var14 = true
		if 1 >= arg1.Y then
			var14 = true
			if arg1.X >= 0 then
				if 1 >= arg1.X then
					var14 = false
				else
					var14 = true
				end
			end
		end
	end
	return var14
end
function worldToFullViewportPointNormalized(arg1, arg2, arg3) -- Line 63
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local any_WorldToViewportPoint_result1_3, _ = arg2:WorldToViewportPoint(arg1)
	local vector2 = Vector2.new((any_WorldToViewportPoint_result1_3.X + arg3.insets.left) / arg3.width, (any_WorldToViewportPoint_result1_3.Y + arg3.insets.top) / arg3.height)
	local var28 = true
	if vector2.Y >= 0 then
		var28 = true
		if 1 >= vector2.Y then
			var28 = true
			if vector2.X >= 0 then
				if 1 >= vector2.X then
					var28 = false
				else
					var28 = true
				end
			end
		end
	end
	local var29 = not var28
	if var29 then
		if 0 >= any_WorldToViewportPoint_result1_3.Z then
		else
		end
	end
	return vector2, any_WorldToViewportPoint_result1_3.Z, true
end
local vector2_5_upvr = Vector2.new(0, 0)
local GetFFlagReportAnythingFixConvexHullCalculation_upvr = require(TnSAvatarIdentification.Flags.GetFFlagReportAnythingFixConvexHullCalculation)
function getViewportCorners(arg1, arg2, arg3) -- Line 80
	--[[ Upvalues[4]:
		[1]: vector2_3_upvr (readonly)
		[2]: vector2_5_upvr (readonly)
		[3]: GetFFlagAvatarIdentificationSafeAreaFix_upvr (readonly)
		[4]: GetFFlagReportAnythingFixConvexHullCalculation_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local ViewportSize = arg2.ViewportSize
	local var44
	for _, v in ipairs(arg1) do
		local var45
		local var46
		if GetFFlagAvatarIdentificationSafeAreaFix_upvr() then
			assert(arg3, "getViewportCorners requires viewportInfo when FFlagAvatarIdentificationSafeAreaFix is enabled")
			local worldToFullViewportPointNormalized_result1, worldToFullViewportPointNormalized_result2, worldToFullViewportPointNormalized_result3 = worldToFullViewportPointNormalized(v, arg2, arg3)
			var46 = worldToFullViewportPointNormalized_result1
			_ = worldToFullViewportPointNormalized_result2
			var45 = worldToFullViewportPointNormalized_result3
		else
			local any_WorldToViewportPoint_result1, any_WorldToViewportPoint_result2 = arg2:WorldToViewportPoint(v)
			local var52 = any_WorldToViewportPoint_result1
			var45 = any_WorldToViewportPoint_result2
			var46 = Vector2.new(var52.X / ViewportSize.X, var52.Y / ViewportSize.Y)
		end
		if not var45 then
			var46 = Vector2.new(math.clamp(var46.X, 0, 1), math.clamp(var46.Y, 0, 1))
		end
		if GetFFlagReportAnythingFixConvexHullCalculation_upvr() then
			if var45 then
				var44 += 1
				-- KONSTANTWARNING: GOTO [81] #66
			end
		else
			var44 += 1
		end
	end
	if var44 <= 2 then
		return vector2_3_upvr, vector2_5_upvr
	end
	return vector2_3_upvr:Min(var46), vector2_5_upvr:Max(var46)
end
function shouldIgnoreLocalCharacter(arg1) -- Line 125
	local Head = arg1:FindFirstChild("Head")
	if Head then
		local children = Head:IsA("BasePart")
		if children then
			if 0.95 > Head.LocalTransparencyModifier then
				children = false
			else
				children = true
			end
			return children
		end
	end
	return false
end
function getLocalCharacterPosition(arg1) -- Line 134
	local HumanoidRootPart = arg1:FindFirstChild("HumanoidRootPart")
	if not HumanoidRootPart then
		return nil
	end
	return HumanoidRootPart.Position
end
return {
	getViewportInfo = function() -- Line 24, Named "getViewportInfo"
		--[[ Upvalues[1]:
			[1]: var3_upvw (read and write)
		]]
		assert(var3_upvw, "getViewportInfo requires CoreGui to be available")
		if not var3_upvw:FindFirstChild("_FullscreenTestGui_AvatarID") then
			local ScreenGui = Instance.new("ScreenGui")
			ScreenGui.Name = "_FullscreenTestGui_AvatarID"
			ScreenGui.Parent = var3_upvw
			ScreenGui.ScreenInsets = Enum.ScreenInsets.None
		end
		if not var3_upvw:FindFirstChild("_DeviceTestGui_AvatarID") then
			local ScreenGui_2 = Instance.new("ScreenGui")
			ScreenGui_2.Name = "_DeviceTestGui_AvatarID"
			ScreenGui_2.Parent = var3_upvw
			ScreenGui_2.ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
		end
		local var6 = ScreenGui_2.AbsolutePosition - ScreenGui.AbsolutePosition
		local var7 = (ScreenGui.AbsolutePosition + ScreenGui.AbsoluteSize) - (ScreenGui_2.AbsolutePosition + ScreenGui_2.AbsoluteSize)
		return {
			width = ScreenGui.AbsoluteSize.X;
			height = ScreenGui.AbsoluteSize.Y;
			insets = {
				left = var6.X;
				top = var6.Y;
				right = var7.X;
				bottom = var7.Y;
			};
		}
	end;
	getViewportCorners = getViewportCorners;
	worldToFullViewportPointNormalized = worldToFullViewportPointNormalized;
	shouldIgnoreLocalCharacter = shouldIgnoreLocalCharacter;
	getLocalCharacterPosition = getLocalCharacterPosition;
	defaultMin = vector2_3_upvr;
}