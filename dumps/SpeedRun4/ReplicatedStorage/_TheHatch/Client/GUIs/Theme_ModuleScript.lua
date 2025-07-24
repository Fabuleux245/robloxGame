-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:09
-- Luau version 6, Types version 3
-- Time taken: 0.001832 seconds

return {
	rarities = {Color3.fromHex("#9AC277"), Color3.fromHex("#7CB3CF"), Color3.fromHex("#E9AF57")};
	categories = {{
		name = "Connection";
		color = Color3.fromHex("#E07172");
		icon = "rbxassetid://129338587419433";
	}, {
		name = "Light";
		color = Color3.fromHex("#E9AF57");
		icon = "rbxassetid://116200307911981";
	}, {
		name = "Darkness";
		color = Color3.fromHex("#707D9D");
		icon = "rbxassetid://106012263033850";
	}, {
		name = "Fire";
		color = Color3.fromHex("#D7604B");
		icon = "rbxassetid://127041071044381";
	}, {
		name = "Earth";
		color = Color3.fromHex("#8AB465");
		icon = "rbxassetid://137479569291069";
	}, {
		name = "Water";
		color = Color3.fromHex("#6CA9C8");
		icon = "rbxassetid://77383960205620";
	}, {
		name = "Energy";
		color = Color3.fromHex("#7CBFCF");
		icon = "rbxassetid://105429920303358";
	}, {
		name = "Time";
		color = Color3.fromHex("#CDA085");
		icon = "rbxassetid://99448278816431";
	}, {
		name = "Ice";
		color = Color3.fromHex("#93B6B8");
		icon = "rbxassetid://117346785021495";
	}, {
		name = "Air";
		color = Color3.fromHex("#87AD94");
		icon = "rbxassetid://115034420912779";
	}};
	colors = {
		lightGreen = Color3.fromHex("#9AD8AC");
	};
	darken = function(arg1, arg2) -- Line 74, Named "darken"
		return Color3.new(arg1.R * (1 - arg2), arg1.G * (1 - arg2), arg1.B * (1 - arg2))
	end;
	lighten = function(arg1, arg2) -- Line 78, Named "lighten"
		return Color3.new(math.lerp(arg1.R, 1, arg2), math.lerp(arg1.G, 1, arg2), math.lerp(arg1.B, 1, arg2))
	end;
	plusDarker = function(arg1, arg2) -- Line 86, Named "plusDarker"
		return Color3.new(math.max(arg1.R - arg2, 0), math.max(arg1.G - arg2, 0), math.max(arg1.B - arg2, 0))
	end;
	plusLighter = function(arg1, arg2) -- Line 94, Named "plusLighter"
		return Color3.new(math.min(arg1.R + arg2, 1), math.min(arg1.G + arg2, 1), math.min(arg1.B + arg2, 1))
	end;
	desaturate = function(arg1, arg2) -- Line 102, Named "desaturate"
		local any_ToHSV_result1, any_ToHSV_result2_2, any_ToHSV_result3_2 = arg1:ToHSV()
		return Color3.fromHSV(any_ToHSV_result1, any_ToHSV_result2_2 * (1 - arg2), any_ToHSV_result3_2)
	end;
	saturate = function(arg1, arg2) -- Line 107, Named "saturate"
		local any_ToHSV_result1_2, any_ToHSV_result2, any_ToHSV_result3 = arg1:ToHSV()
		return Color3.fromHSV(any_ToHSV_result1_2, math.lerp(any_ToHSV_result2, 1, arg2), any_ToHSV_result3)
	end;
}