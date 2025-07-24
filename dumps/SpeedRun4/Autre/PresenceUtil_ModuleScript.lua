-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:38
-- Luau version 6, Types version 3
-- Time taken: 0.001723 seconds

local CorePackages = game:GetService("CorePackages")
local UIBlox = require(CorePackages.Packages.UIBlox)
local tbl = {
	Offline = "OFFLINE";
	Online = "ONLINE";
	InGame = "IN_GAME";
	InStudio = "IN_STUDIO";
}
local tbl_upvr = {
	[tbl.Online] = {
		Image = "component_assets/circle_16";
		Color = Color3.fromRGB(0, 180, 109);
		Size = UDim2.new(0, 12, 0, 12);
	};
	[tbl.InGame] = {
		Image = "icons/menu/games_small";
	};
	[tbl.InStudio] = {
		Image = "icons/logo/studiologo_small";
	};
}
local React_upvr = require(CorePackages.Packages.React)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local Images_upvr = UIBlox.App.ImageSet.Images
local IconSize_upvr = UIBlox.App.Constant.IconSize
return {
	PresenceType = tbl;
	GetIcon = function(arg1) -- Line 36, Named "GetIcon"
		--[[ Upvalues[5]:
			[1]: tbl_upvr (readonly)
			[2]: React_upvr (readonly)
			[3]: ImageSetLabel_upvr (readonly)
			[4]: Images_upvr (readonly)
			[5]: IconSize_upvr (readonly)
		]]
		local var12 = tbl_upvr[arg1]
		if not var12 then return end
		local module = {
			Image = Images_upvr[var12.Image];
			BackgroundTransparency = 1;
			ImageColor3 = var12.Color;
		}
		local Size = var12.Size
		if not Size then
			Size = UDim2.new(0, IconSize_upvr.Small, 0, IconSize_upvr.Small)
		end
		module.Size = Size
		return React_upvr.createElement(ImageSetLabel_upvr, module)
	end;
}