-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:40:00
-- Luau version 6, Types version 3
-- Time taken: 0.000384 seconds

for _, v in pairs(script:GetChildren()) do
	if v:IsA("ModuleScript") then
		({})[v.Name] = require(v)
	end
end
-- KONSTANTERROR: Expression was reused, decompilation is incorrect
return {}