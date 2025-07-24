-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:47:56
-- Luau version 6, Types version 3
-- Time taken: 0.000967 seconds

local tbl_upvr = {}
local UserInputService_upvr = require(script:FindFirstAncestor("Foundation").Utility.Wrappers).Services.UserInputService
return function(arg1) -- Line 13
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: UserInputService_upvr (readonly)
	]]
	if tbl_upvr[arg1] then
		return tbl_upvr[arg1]
	end
	local any_GetImageForKeyCode_result1 = UserInputService_upvr:GetImageForKeyCode(arg1)
	if any_GetImageForKeyCode_result1 and any_GetImageForKeyCode_result1 ~= "" then
		return {
			keyVisualType = "Image";
			size = UDim2.fromScale(0.7, 0.7);
			key = any_GetImageForKeyCode_result1;
		}
	end
	local var7 = {
		keyVisualType = "String";
		size = UDim2.fromScale(0.8, 0.8);
		key = UserInputService_upvr:GetStringForKeyCode(arg1) or "";
	}
	tbl_upvr[arg1] = var7
	return var7
end