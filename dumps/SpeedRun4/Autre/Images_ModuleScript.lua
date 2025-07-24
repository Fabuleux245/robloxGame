-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:30
-- Luau version 6, Types version 3
-- Time taken: 0.000901 seconds

local module = {}
for i, v in pairs(require(script.Parent.GetImageSetData)(game:GetService("GuiService"):GetResolutionScale())) do
	require(game:GetService("CorePackages").Workspace.Packages.ArgCheck).isType(v, "table", "value")
	for i_2, v_2 in pairs(v) do
		if i_2 == "ImageSet" then
			({}).Image = string.format("rbxasset://textures/ui/ImageSet/%s.png", v_2)
		else
			-- KONSTANTERROR: Expression was reused, decompilation is incorrect
			;({})[i_2] = v_2
		end
	end
	-- KONSTANTERROR: Expression was reused, decompilation is incorrect
	module[i] = {}
end
setmetatable(module, {
	__index = function(arg1, arg2) -- Line 30, Named "__index"
		error("%q is not a valid member of Images":format(tostring(arg2)), 2)
	end;
})
return module