-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:33
-- Luau version 6, Types version 3
-- Time taken: 0.002631 seconds

local Foundation = script:FindFirstAncestor("Foundation")
local ThumbnailType = require(Foundation.Enums.ThumbnailType)
local ThumbnailSize_upvr = require(Foundation.Enums.ThumbnailSize)
local tbl_upvr = {
	[ThumbnailType.Asset] = {
		[ThumbnailSize_upvr.Medium] = Vector2.new(150, 150);
		[ThumbnailSize_upvr.Large] = Vector2.new(420, 420);
	};
	[ThumbnailType.Avatar] = {
		[ThumbnailSize_upvr.Small] = Vector2.new(48, 48);
		[ThumbnailSize_upvr.Medium] = Vector2.new(150, 150);
		[ThumbnailSize_upvr.Large] = Vector2.new(420, 420);
		[ThumbnailSize_upvr.XLarge] = Vector2.new(720, 720);
	};
	[ThumbnailType.AvatarBust] = {
		[ThumbnailSize_upvr.Small] = Vector2.new(50, 50);
		[ThumbnailSize_upvr.Medium] = Vector2.new(150, 150);
		[ThumbnailSize_upvr.Large] = Vector2.new(420, 420);
	};
	[ThumbnailType.AvatarHeadShot] = {
		[ThumbnailSize_upvr.Small] = Vector2.new(48, 48);
		[ThumbnailSize_upvr.Medium] = Vector2.new(150, 150);
		[ThumbnailSize_upvr.Large] = Vector2.new(420, 420);
	};
	[ThumbnailType.BadgeIcon] = {
		[ThumbnailSize_upvr.Medium] = Vector2.new(150, 150);
	};
	[ThumbnailType.BundleThumbnail] = {
		[ThumbnailSize_upvr.Medium] = Vector2.new(150, 150);
		[ThumbnailSize_upvr.Large] = Vector2.new(420, 420);
	};
	[ThumbnailType.FontFamily] = {
		[ThumbnailSize_upvr.Medium] = Vector2.new(1200, 80);
	};
	[ThumbnailType.GameIcon] = {
		[ThumbnailSize_upvr.Small] = Vector2.new(50, 50);
		[ThumbnailSize_upvr.Medium] = Vector2.new(150, 150);
	};
	[ThumbnailType.GamePass] = {
		[ThumbnailSize_upvr.Medium] = Vector2.new(150, 150);
	};
	[ThumbnailType.GameThumbnail] = {
		[ThumbnailSize_upvr.Small] = Vector2.new(256, 144);
		[ThumbnailSize_upvr.Medium] = Vector2.new(384, 216);
		[ThumbnailSize_upvr.Large] = Vector2.new(480, 270);
		[ThumbnailSize_upvr.XLarge] = Vector2.new(768, 432);
	};
	[ThumbnailType.GroupIcon] = {
		[ThumbnailSize_upvr.Medium] = Vector2.new(150, 150);
		[ThumbnailSize_upvr.Large] = Vector2.new(420, 420);
	};
	[ThumbnailType.Outfit] = {
		[ThumbnailSize_upvr.Medium] = Vector2.new(150, 150);
		[ThumbnailSize_upvr.Large] = Vector2.new(420, 420);
	};
}
return function(arg1, arg2, arg3) -- Line 184
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: ThumbnailSize_upvr (readonly)
	]]
	local var18 = arg3
	if not var18 then
		var18 = ThumbnailSize_upvr.Medium
	end
	local var19 = tbl_upvr[arg1][var18]
	if not var19 then
		warn(`Unsupported size {arg3} for media type: {arg1}, defaulting to {ThumbnailSize_upvr.Medium}`)
		var19 = tbl_upvr[arg1][ThumbnailSize_upvr.Medium]
	end
	return `rbxthumb://type={arg1}&id={arg2}&w={var19.X}&h={var19.Y}`
end