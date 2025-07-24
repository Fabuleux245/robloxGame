-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:43
-- Luau version 6, Types version 3
-- Time taken: 0.003748 seconds

local Parent = script.Parent.Parent
local getFFlagUGCValidateFixTransparencyReporting_upvr = require(Parent.flags.getFFlagUGCValidateFixTransparencyReporting)
local module = {}
local function _(arg1, arg2, arg3) -- Line 31, Named "orthoProjectCoordinate"
	return Vector2.new(arg1:Dot(arg3), arg2:Dot(arg3))
end
local function _(arg1, arg2) -- Line 38, Named "shouldRenderTriangle"
	--[[ Upvalues[1]:
		[1]: getFFlagUGCValidateFixTransparencyReporting_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var2_result1 = getFFlagUGCValidateFixTransparencyReporting_upvr()
	if var2_result1 then
		if arg1:Dot(arg2) >= 0 then
			var2_result1 = false
		else
			var2_result1 = true
		end
		return var2_result1
	end
	if math.deg(math.abs(math.acos(arg1:Dot(arg2)))) >= 90 then
	else
	end
	return true
end
function module.shouldRenderTriangle_UNIT_TEST(arg1, arg2) -- Line 50
	--[[ Upvalues[1]:
		[1]: getFFlagUGCValidateFixTransparencyReporting_upvr (readonly)
	]]
	local var5
	if getFFlagUGCValidateFixTransparencyReporting_upvr() then
		if arg1:Dot(arg2) >= 0 then
			var5 = false
		else
			var5 = true
		end
		return var5
	end
	if math.deg(math.abs(math.acos(arg1:Dot(arg2)))) >= 90 then
		var5 = false
	else
		var5 = true
	end
	do
		return var5
	end
	return var5
end
local function getScreenCoordinatesForTriangle_upvr(arg1, arg2, arg3, arg4, arg5) -- Line 54, Named "getScreenCoordinatesForTriangle"
	local var6 = arg5 / 2
	local var7 = (CFrame.new(arg4):Inverse() * arg1[1] + var6) / arg5
	local var8 = (CFrame.new(arg4):Inverse() * arg1[2] + var6) / arg5
	local var9 = (CFrame.new(arg4):Inverse() * arg1[3] + var6) / arg5
	return Vector2.new(arg3.axis1:Dot(var7), arg3.axis2:Dot(var7)) * (arg2 - Vector2.new(1, 1)), Vector2.new(arg3.axis1:Dot(var8), arg3.axis2:Dot(var8)) * (arg2 - Vector2.new(1, 1)), Vector2.new(arg3.axis1:Dot(var9), arg3.axis2:Dot(var9)) * (arg2 - Vector2.new(1, 1))
end
local AssetService_upvr = game:GetService("AssetService")
local tryYield_upvr = require(Parent.util.tryYield)
function module.rasterMesh(arg1, arg2, arg3, arg4, arg5, arg6) -- Line 81
	--[[ Upvalues[4]:
		[1]: AssetService_upvr (readonly)
		[2]: getFFlagUGCValidateFixTransparencyReporting_upvr (readonly)
		[3]: getScreenCoordinatesForTriangle_upvr (readonly)
		[4]: tryYield_upvr (readonly)
	]]
	local tbl = {}
	tbl.Size = arg2
	local any_CreateEditableImage_result1 = AssetService_upvr:CreateEditableImage(tbl)
	for _, v in arg1 do
		local var18
		if getFFlagUGCValidateFixTransparencyReporting_upvr() then
			if v.normal:Dot(arg3.normal) >= 0 then
				var18 = false
			else
				var18 = true
			end
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			if math.deg(math.abs(math.acos(v.normal:Dot(arg3.normal)))) >= 90 then
				var18 = false
			else
				var18 = true
			end
		end
		if var18 then
			var18 = getScreenCoordinatesForTriangle_upvr(v.orderedVerts, any_CreateEditableImage_result1.Size, arg3, arg4, arg5)
			local getScreenCoordinatesForTriangle_result1, getScreenCoordinatesForTriangle_result2, getScreenCoordinatesForTriangle_result3 = getScreenCoordinatesForTriangle_upvr(v.orderedVerts, any_CreateEditableImage_result1.Size, arg3, arg4, arg5)
			any_CreateEditableImage_result1:DrawTriangle(getScreenCoordinatesForTriangle_result1, getScreenCoordinatesForTriangle_result2, getScreenCoordinatesForTriangle_result3, Color3.new(1, 1, 1), 0)
			tryYield_upvr(arg6)
		end
	end
	return any_CreateEditableImage_result1
end
return module