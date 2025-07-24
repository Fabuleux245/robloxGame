-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:41
-- Luau version 6, Types version 3
-- Time taken: 0.001239 seconds

local Color = require(game:GetService("CorePackages").Workspace.Packages.AppCommonLib).Color
local module = {
	Obsidian = Color.Color3FromHex(1579291);
	Carbon = Color.Color3FromHex(2040099);
	Slate = Color.Color3FromHex(2303271);
	Flint = Color.Color3FromHex(3750717);
	Graphite = Color.Color3FromHex(6645352);
	Pumice = Color.Color3FromHex(12435134);
	Black = Color3.fromRGB(0, 0, 0);
	White = Color3.fromRGB(255, 255, 255);
	Gray1 = Color.Color3FromHex(1644825);
	Gray2 = Color.Color3FromHex(7697781);
	Gray4 = Color.Color3FromHex(14935011);
	GrayBackground = Color.Color3FromHex(14211288);
	Green = Color.Color3FromHex(45167);
	DisabledGreen = Color.Color3FromHex(10273956);
}
setmetatable(module, {
	__newindex = function(arg1, arg2, arg3) -- Line 25, Named "__newindex"
	end;
	__index = function(arg1, arg2) -- Line 26, Named "__index"
		error("Colors table has no value: "..tostring(arg2))
	end;
})
return module