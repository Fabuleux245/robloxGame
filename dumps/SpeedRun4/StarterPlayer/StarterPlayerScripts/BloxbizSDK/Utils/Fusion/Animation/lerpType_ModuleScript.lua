-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:39:49
-- Luau version 6, Types version 3
-- Time taken: 0.004152 seconds

local Oklab_upvr = require(script.Parent.Parent.Colour.Oklab)
return function(arg1, arg2, arg3) -- Line 16, Named "lerpType"
	--[[ Upvalues[1]:
		[1]: Oklab_upvr (readonly)
	]]
	local typeof_result1 = typeof(arg1)
	if typeof(arg2) == typeof_result1 then
		if typeof_result1 == "number" then
			local var4 = arg1
			return (arg2 - var4) * arg3 + var4
		end
		if typeof_result1 == "CFrame" then
			return arg1:Lerp(arg2, arg3)
		end
		if typeof_result1 == "Color3" then
			return Oklab_upvr.from(Oklab_upvr.to(arg1):Lerp(Oklab_upvr.to(arg2), arg3), false)
		end
		if typeof_result1 == "ColorSequenceKeypoint" then
			local var5 = arg2
			local var6 = arg1
			return ColorSequenceKeypoint.new((var5.Time - var6.Time) * arg3 + var6.Time, Oklab_upvr.from(Oklab_upvr.to(var6.Value):Lerp(Oklab_upvr.to(var5.Value), arg3), false))
		end
		if typeof_result1 == "DateTime" then
			local var7 = arg1
			return DateTime.fromUnixTimestampMillis((arg2.UnixTimestampMillis - var7.UnixTimestampMillis) * arg3 + var7.UnixTimestampMillis)
		end
		if typeof_result1 == "NumberRange" then
			local var8 = arg2
			local var9 = arg1
			return NumberRange.new((var8.Min - var9.Min) * arg3 + var9.Min, (var8.Max - var9.Max) * arg3 + var9.Max)
		end
		if typeof_result1 == "NumberSequenceKeypoint" then
			local var10 = arg2
			local var11 = arg1
			return NumberSequenceKeypoint.new((var10.Time - var11.Time) * arg3 + var11.Time, (var10.Value - var11.Value) * arg3 + var11.Value, (var10.Envelope - var11.Envelope) * arg3 + var11.Envelope)
		end
		if typeof_result1 == "PhysicalProperties" then
			local var12 = arg2
			local var13 = arg1
			return PhysicalProperties.new((var12.Density - var13.Density) * arg3 + var13.Density, (var12.Friction - var13.Friction) * arg3 + var13.Friction, (var12.Elasticity - var13.Elasticity) * arg3 + var13.Elasticity, (var12.FrictionWeight - var13.FrictionWeight) * arg3 + var13.FrictionWeight, (var12.ElasticityWeight - var13.ElasticityWeight) * arg3 + var13.ElasticityWeight)
		end
		if typeof_result1 == "Ray" then
			local var14 = arg2
			local var15 = arg1
			return Ray.new(var15.Origin:Lerp(var14.Origin, arg3), var15.Direction:Lerp(var14.Direction, arg3))
		end
		if typeof_result1 == "Rect" then
			local var16 = arg2
			local var17 = arg1
			return Rect.new(var17.Min:Lerp(var16.Min, arg3), var17.Max:Lerp(var16.Max, arg3))
		end
		if typeof_result1 == "Region3" then
			local var18 = arg2
			local var19 = arg1
			local any_Lerp_result1 = var19.CFrame.Position:Lerp(var18.CFrame.Position, arg3)
			local var21 = var19.Size:Lerp(var18.Size, arg3) / 2
			return Region3.new(any_Lerp_result1 - var21, any_Lerp_result1 + var21)
		end
		if typeof_result1 == "Region3int16" then
			local var22 = arg2
			local var23 = arg1
			return Region3int16.new(Vector3int16.new((var22.Min.X - var23.Min.X) * arg3 + var23.Min.X, (var22.Min.Y - var23.Min.Y) * arg3 + var23.Min.Y, (var22.Min.Z - var23.Min.Z) * arg3 + var23.Min.Z), Vector3int16.new((var22.Max.X - var23.Max.X) * arg3 + var23.Max.X, (var22.Max.Y - var23.Max.Y) * arg3 + var23.Max.Y, (var22.Max.Z - var23.Max.Z) * arg3 + var23.Max.Z))
		end
		if typeof_result1 == "UDim" then
			local var24 = arg2
			local var25 = arg1
			return UDim.new((var24.Scale - var25.Scale) * arg3 + var25.Scale, (var24.Offset - var25.Offset) * arg3 + var25.Offset)
		end
		if typeof_result1 == "UDim2" then
			return arg1:Lerp(arg2, arg3)
		end
		if typeof_result1 == "Vector2" then
			return arg1:Lerp(arg2, arg3)
		end
		if typeof_result1 == "Vector2int16" then
			local var26 = arg2
			local var27 = arg1
			return Vector2int16.new((var26.X - var27.X) * arg3 + var27.X, (var26.Y - var27.Y) * arg3 + var27.Y)
		end
		if typeof_result1 == "Vector3" then
			return arg1:Lerp(arg2, arg3)
		end
		if typeof_result1 == "Vector3int16" then
			local var28 = arg2
			local var29 = arg1
			return Vector3int16.new((var28.X - var29.X) * arg3 + var29.X, (var28.Y - var29.Y) * arg3 + var29.Y, (var28.Z - var29.Z) * arg3 + var29.Z)
		end
	end
	if arg3 < 0.5 then
		return arg1
	end
	return arg2
end