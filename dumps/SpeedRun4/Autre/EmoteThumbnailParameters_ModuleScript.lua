-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:47:14
-- Luau version 6, Types version 3
-- Time taken: 0.000950 seconds

local t = require(game:GetService("CorePackages").Packages.t)
return {
	validate = t.strictInterface({
		thumbnailKeyframe = t.number;
		thumbnailTime = t.number;
		thumbnailZoom = t.number;
		thumbnailVerticalOffset = t.number;
		thumbnailHorizontalOffset = t.number;
		thumbnailCharacterRotation = t.number;
	});
	defaultParameters = {
		thumbnailKeyframe = 1;
		thumbnailTime = 0;
		thumbnailZoom = 1;
		thumbnailVerticalOffset = 0;
		thumbnailHorizontalOffset = 0;
		thumbnailCharacterRotation = 0;
	};
	encodeAsATable = function(arg1) -- Line 41
		return {
			ThumbnailBundleId = 515;
			ThumbnailCharacterRotation = arg1.thumbnailCharacterRotation;
			ThumbnailHorizontalOffset = arg1.thumbnailHorizontalOffset;
			ThumbnailVerticalOffset = arg1.thumbnailVerticalOffset;
			ThumbnailZoom = arg1.thumbnailZoom;
			ThumbnailKeyframe = arg1.thumbnailKeyframe;
			ThumbnailTime = arg1.thumbnailTime;
		}
	end;
}