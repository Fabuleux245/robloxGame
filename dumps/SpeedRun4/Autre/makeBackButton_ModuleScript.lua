-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:55:59
-- Luau version 6, Types version 3
-- Time taken: 0.000930 seconds

local Parent = script.Parent.Parent.Parent
local UIBlox = require(Parent.UIBlox)
local React_upvr = require(Parent.React)
local IconButton_upvr = UIBlox.App.Button.IconButton
local IconSize_upvr = UIBlox.App.ImageSet.Enum.IconSize
local Images_upvr = UIBlox.App.ImageSet.Images
return function(arg1) -- Line 10, Named "makeBackButton"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: IconButton_upvr (readonly)
		[3]: IconSize_upvr (readonly)
		[4]: Images_upvr (readonly)
	]]
	return function() -- Line 11
		--[[ Upvalues[5]:
			[1]: React_upvr (copied, readonly)
			[2]: IconButton_upvr (copied, readonly)
			[3]: IconSize_upvr (copied, readonly)
			[4]: Images_upvr (copied, readonly)
			[5]: arg1 (readonly)
		]]
		local module = {
			size = UDim2.fromOffset(0, 0);
			iconSize = IconSize_upvr.Medium;
			icon = Images_upvr["icons/navigation/pushBack"];
		}
		module.onActivated = arg1
		return React_upvr.createElement(IconButton_upvr, module)
	end
end