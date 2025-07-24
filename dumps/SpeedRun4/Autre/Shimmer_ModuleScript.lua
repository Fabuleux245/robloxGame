-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:58:06
-- Luau version 6, Types version 3
-- Time taken: 0.002427 seconds

local CorePackages = game:GetService("CorePackages")
local module_upvr = {}
module_upvr.__index = module_upvr
local tbl_upvr = {}
local Create_upvr = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local Constants_upvr = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Constants
function tbl_upvr.PrimaryButton(arg1) -- Line 15
	--[[ Upvalues[2]:
		[1]: Create_upvr (readonly)
		[2]: Constants_upvr (readonly)
	]]
	local module = {
		Name = "ShimmerFrame";
		BackgroundColor3 = Color3.fromRGB(0, 0, 0);
		BackgroundTransparency = 0.7;
		ClipsDescendants = true;
		Size = UDim2.new(1, 0, 1, 0);
		BorderSizePixel = 0;
		Visible = false;
	}
	module.Parent = arg1
	module.ZIndex = 8
	module[1] = Create_upvr("ImageLabel")({
		Name = "Shimmer";
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 2, 0);
		Position = UDim2.new(-1, 0, 0, 0);
		Image = Constants_upvr.SHIMMER_TEXTURE;
		BorderSizePixel = 0;
		ZIndex = 8;
	})
	module[2] = Create_upvr("ImageLabel")({
		Name = "ShimmerOverlay";
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(8, 8, 9, 9);
		ImageColor3 = Constants_upvr.COLORS.FLINT;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Image = Constants_upvr.OVERLAY_TEXTURE;
		Size = UDim2.new(1, 0, 1, 0);
		ZIndex = 9;
	})
	return Create_upvr("ImageLabel")(module)
end
local TweenService_upvr = game:GetService("TweenService")
local TweenInfo_new_result1_upvr = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut, -1, false, 0)
function module_upvr.new(arg1, arg2) -- Line 50
	--[[ Upvalues[4]:
		[1]: tbl_upvr (readonly)
		[2]: module_upvr (readonly)
		[3]: TweenService_upvr (readonly)
		[4]: TweenInfo_new_result1_upvr (readonly)
	]]
	if not arg2 or not tbl_upvr[arg2] then return end
	local setmetatable_result1 = setmetatable({}, module_upvr)
	setmetatable_result1._shimmer = tbl_upvr[arg2](arg1)
	setmetatable_result1._shimmerAnimation = TweenService_upvr:Create(setmetatable_result1._shimmer.Shimmer, TweenInfo_new_result1_upvr, {
		Position = UDim2.new(1, 0, 0, 0);
	})
	return setmetatable_result1
end
function module_upvr.play(arg1) -- Line 60
	arg1._shimmer.Visible = true
	arg1._shimmerAnimation:Play()
end
function module_upvr.stop(arg1) -- Line 65
	arg1._shimmerAnimation:Cancel()
	arg1._shimmer.Visible = false
end
return module_upvr