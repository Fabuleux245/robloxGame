-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:49:42
-- Luau version 6, Types version 3
-- Time taken: 0.000301 seconds

local Parent = script.Parent
return {
	name = "Private";
	group = "Foundation";
	roact = require(script:FindFirstAncestor("Foundation").Parent.Roact);
	storyRoots = require(Parent.GetStories)(false);
	mapStory = require(Parent.StoryMiddleware);
}