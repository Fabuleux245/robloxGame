-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:09:21
-- Luau version 6, Types version 3
-- Time taken: 0.000813 seconds

local tbl_upvr = {"ThumbnailCharacterRotation", "ThumbnailHorizontalOffset", "ThumbnailKeyframe", "ThumbnailVerticalOffset", "ThumbnailZoom", "ThumbnailTime"}
return function() -- Line 14, Named "createEmoteSchema"
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	local module = {
		ClassName = "Animation";
		_children = {};
	}
	for _, v in tbl_upvr do
		table.insert(module._children, {
			Name = v;
			ClassName = "NumberValue";
			_optional = true;
		})
	end
	return module
end