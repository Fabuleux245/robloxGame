-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:55:34
-- Luau version 6, Types version 3
-- Time taken: 0.001955 seconds

local Chrome = script:FindFirstAncestor("Chrome")
local CorePackages = game:GetService("CorePackages")
local React_upvr = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Constants = require(Chrome.ChromeShared.Unibar.Constants)
local useMappedSignal_upvr = require(Chrome.ChromeShared.Hooks.useMappedSignal)
local Images_upvr = UIBlox.App.ImageSet.Images
local useStyle_upvr = UIBlox.Core.Style.useStyle
local SubMenuContext_upvr = require(Chrome.ChromeShared.Unibar.SubMenuContext)
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local udim2_upvr = UDim2.new(0, Constants.ICON_SIZE, 0, Constants.ICON_SIZE)
local GetFFlagAnimateSubMenu_upvr = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagAnimateSubMenu
function CommonIconComponent(arg1) -- Line 23
	--[[ Upvalues[8]:
		[1]: useMappedSignal_upvr (readonly)
		[2]: Images_upvr (readonly)
		[3]: useStyle_upvr (readonly)
		[4]: React_upvr (readonly)
		[5]: SubMenuContext_upvr (readonly)
		[6]: ImageSetLabel_upvr (readonly)
		[7]: udim2_upvr (readonly)
		[8]: GetFFlagAnimateSubMenu_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var13
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var13 = useMappedSignal_upvr(arg1.activeSignalValue)
		return var13
	end
	if not arg1.activeSignalValue or not INLINED() then
		var13 = false
	end
	if var13 and arg1.iconOn then
		local iconOn = arg1.iconOn
	end
	if typeof(iconOn) == "string" and iconOn:sub(1, 11) ~= "rbxasset://" then
	end
	local useStyle_upvr_result1_upvr = useStyle_upvr()
	local module_2 = {
		BackgroundTransparency = 1;
		Image = Images_upvr[iconOn];
		Size = udim2_upvr;
		ImageColor3 = useStyle_upvr_result1_upvr.Theme.IconEmphasis.Color;
	}
	local var18
	if GetFFlagAnimateSubMenu_upvr() and React_upvr.useContext(SubMenuContext_upvr) then
		var18 = React_upvr.useContext(SubMenuContext_upvr):map(function(arg1_2) -- Line 46
			--[[ Upvalues[1]:
				[1]: useStyle_upvr_result1_upvr (readonly)
			]]
			return useStyle_upvr_result1_upvr.Theme.IconEmphasis.Transparency + (1 - useStyle_upvr_result1_upvr.Theme.IconEmphasis.Transparency) * (1 - arg1_2)
		end)
	else
		var18 = useStyle_upvr_result1_upvr.Theme.IconEmphasis.Transparency
	end
	module_2.ImageTransparency = var18
	return React_upvr.createElement(ImageSetLabel_upvr, module_2)
end
function CommonIcon(arg1, arg2, arg3) -- Line 53
	--[[ Upvalues[1]:
		[1]: React_upvr (readonly)
	]]
	local module = {}
	module.icon = arg1
	module.iconOn = arg2
	module.activeSignalValue = arg3
	return React_upvr.createElement(CommonIconComponent, module)
end
return CommonIcon