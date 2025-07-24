-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:03:14
-- Luau version 6, Types version 3
-- Time taken: 0.000653 seconds

local Config_upvr = require(script:FindFirstAncestor("ExpChat").Config)
return function(arg1, arg2, arg3) -- Line 4
	--[[ Upvalues[1]:
		[1]: Config_upvr (readonly)
	]]
	local var3 = arg2
	if not var3 then
		var3 = Config_upvr.ChatWindowFont
	end
	local var4 = var3
	var3 = arg3
	local var5 = var3
	if not var5 then
		var5 = Config_upvr.ChatWindowTextSize
	end
	local formatted = string.format("<font transparency='1.0' family='%s' weight='%s' size='%s'><stroke transparency='1.0'>%s</stroke></font>", var4.Family, string.gsub(tostring(var4.Weight), "Enum.FontWeight.", ""), var5, arg1)
	if var4.Style == Enum.FontStyle.Italic then
		formatted = "<i>"..formatted.."</i>"
	end
	return formatted
end