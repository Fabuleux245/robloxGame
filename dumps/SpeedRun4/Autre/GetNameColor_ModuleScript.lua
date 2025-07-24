-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:04:00
-- Luau version 6, Types version 3
-- Time taken: 0.001969 seconds

local module_upvr = {Color3.new(0.9921568627450981, 0.1607843137254902, 0.2627450980392157), Color3.new(0.00392156862745098, 0.6352941176470588, 1), Color3.new(0.00784313725490196, 0.7215686274509804, 0.3411764705882353), BrickColor.new("Alder").Color, BrickColor.new("Bright orange").Color, BrickColor.new("Bright yellow").Color, BrickColor.new("Light reddish violet").Color, BrickColor.new("Brick yellow").Color}
local function GetNameValue_upvr(arg1) -- Line 14, Named "GetNameValue"
	local var4
	for i = 1, #arg1 do
		local var5 = #arg1 - i + 1
		local var6
		if #arg1 % 2 == 1 then
			var5 -= 1
		end
		if 2 <= var5 % 4 then
			var6 = -var6
		end
		var4 += var6
	end
	return var4
end
local function _(arg1) -- Line 31, Named "ComputeNameColor"
	--[[ Upvalues[2]:
		[1]: module_upvr (readonly)
		[2]: GetNameValue_upvr (readonly)
	]]
	return module_upvr[(GetNameValue_upvr(arg1) + 0) % #module_upvr + 1]
end
local Players_upvr = game:GetService("Players")
return function(arg1) -- Line 35, Named "GetNameColor"
	--[[ Upvalues[3]:
		[1]: Players_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: GetNameValue_upvr (readonly)
	]]
	local any_GetPlayerByUserId_result1 = Players_upvr:GetPlayerByUserId(arg1)
	if any_GetPlayerByUserId_result1 then
		if any_GetPlayerByUserId_result1.Team ~= nil then
			return any_GetPlayerByUserId_result1.TeamColor.Color
		end
		return module_upvr[(GetNameValue_upvr(any_GetPlayerByUserId_result1.Name) + 0) % #module_upvr + 1]
	end
	return Color3.fromRGB(255, 255, 255)
end