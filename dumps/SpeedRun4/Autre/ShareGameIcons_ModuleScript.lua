-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:42
-- Luau version 6, Types version 3
-- Time taken: 0.001921 seconds

local function _(arg1, arg2) -- Line 3, Named "createFrameModel"
	local module = {}
	module.offset = arg1
	module.size = arg2
	return module
end
local module_upvr = {
	frames = {
		back = {
			offset = Vector2.new(2, 19);
			size = Vector2.new(24, 24);
		};
		clear = {
			offset = Vector2.new(6, 51);
			size = Vector2.new(16, 16);
		};
		invite = {
			offset = Vector2.new(2, 75);
			size = Vector2.new(24, 24);
		};
		search_border = {
			offset = Vector2.new(11, 1);
			size = Vector2.new(7, 7);
		};
		search_large = {
			offset = Vector2.new(3, 132);
			size = Vector2.new(22, 22);
		};
		search_small = {
			offset = Vector2.new(6, 106);
			size = Vector2.new(16, 16);
		};
		friends = {
			offset = Vector2.new(0, 159);
			size = Vector2.new(72, 72);
		};
		cross = {
			offset = Vector2.new(4, 231);
			size = Vector2.new(24, 24);
		};
		modal_border = {
			offset = Vector2.new(0, 255);
			size = Vector2.new(7, 7);
		};
	};
}
return {
	GetFrame = function(arg1, arg2) -- Line 26, Named "GetFrame"
		--[[ Upvalues[1]:
			[1]: module_upvr (readonly)
		]]
		return module_upvr.frames[arg2]
	end;
	GetImagePath = function(arg1) -- Line 30, Named "GetImagePath"
		return "rbxasset://textures/ui/Settings/ShareGame/icons.png"
	end;
	ApplyImage = function(arg1, arg2, arg3) -- Line 34, Named "ApplyImage"
		local any_GetFrame_result1 = arg1:GetFrame(arg3)
		arg2.Image = "rbxasset://textures/ui/Settings/ShareGame/icons.png"
		arg2.ImageRectOffset = any_GetFrame_result1.offset
		arg2.ImageRectSize = any_GetFrame_result1.size
	end;
}