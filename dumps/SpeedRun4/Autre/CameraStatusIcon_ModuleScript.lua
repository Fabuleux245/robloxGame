-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:06
-- Luau version 6, Types version 3
-- Time taken: 0.001504 seconds

local Packages = game:GetService("CorePackages").Packages
local UIBlox = require(Packages.UIBlox)
local useCameraOn_upvr = require(script.Parent.Parent.Hooks.useCameraOn)
local React_upvr = require(Packages.React)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local udim2_upvr = UDim2.fromScale(1, 1)
return function(arg1) -- Line 18, Named "CameraStatusIcon"
	--[[ Upvalues[5]:
		[1]: useCameraOn_upvr (readonly)
		[2]: React_upvr (readonly)
		[3]: ImageSetLabel_upvr (readonly)
		[4]: Images_upvr (readonly)
		[5]: udim2_upvr (readonly)
	]]
	local module = {}
	local tbl = {
		BackgroundTransparency = 1;
	}
	local var11
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var11 = Images_upvr["icons/controls/video"]
		return var11
	end
	if not useCameraOn_upvr() or not INLINED() then
		var11 = Images_upvr["icons/controls/videoOff"]
	end
	tbl.Image = var11
	var11 = arg1.iconSize
	if not var11 then
		var11 = udim2_upvr
	end
	tbl.Size = var11
	tbl.Position = UDim2.fromScale(0.5, 0.5)
	tbl.AnchorPoint = Vector2.new(0.5, 0.5)
	tbl.ImageTransparency = arg1.transparency or 0
	module.Icon = React_upvr.createElement(ImageSetLabel_upvr, tbl)
	return React_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.fromScale(1, 1);
	}, module)
end