-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:34:03
-- Luau version 6, Types version 3
-- Time taken: 0.004235 seconds

local Parent = script:FindFirstAncestor("GameTile").Parent
local Roact_upvr = require(Parent.Roact)
local UserLib = require(Parent.UserLib)
local any_extend_result1 = Roact_upvr.PureComponent:extend("FriendIcon")
any_extend_result1.defaultProps = {
	layoutOrder = 0;
	maskColor = require(Parent.Style).Colors.White;
	showBackground = true;
}
local Constants_upvr_2 = require(Parent.AppChat).Constants
local getRbxthumbWithTypeSizeAndOptions_upvr = UserLib.Utils.getRbxthumbWithTypeSizeAndOptions
local Constants_upvr = UserLib.Utils.Constants
local ImageSetLabel_upvr = require(Parent.UIBlox).Core.ImageSet.ImageSetLabel
local GetImageData_upvr = require(Parent.RobloxAppAssets).GetImageData
function any_extend_result1.render(arg1) -- Line 25
	--[[ Upvalues[6]:
		[1]: Constants_upvr_2 (readonly)
		[2]: getRbxthumbWithTypeSizeAndOptions_upvr (readonly)
		[3]: Constants_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: GetImageData_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local user = arg1.props.user
	local dotSize = arg1.props.dotSize
	local itemSize = arg1.props.itemSize
	local showBackground = arg1.props.showBackground
	local props = arg1.props
	if dotSize == nil then
		props = false
	else
		props = true
	end
	if user then
		if props then
		end
		local var7_result1 = getRbxthumbWithTypeSizeAndOptions_upvr(user.id, Constants_upvr.RbxthumbTypes.AvatarHeadShot, 48)
	end
	local module_2 = {}
	local Color3_fromRGB_result1 = Color3.fromRGB(209, 209, 209)
	module_2.BackgroundColor3 = Color3_fromRGB_result1
	if showBackground then
		Color3_fromRGB_result1 = 0
	else
		Color3_fromRGB_result1 = 1
	end
	module_2.BackgroundTransparency = Color3_fromRGB_result1
	module_2.BorderSizePixel = 0
	module_2.LayoutOrder = arg1.props.layoutOrder
	module_2.Size = UDim2.new(0, itemSize, 0, itemSize)
	local module = {
		Profile = Roact_upvr.createElement(ImageSetLabel_upvr, {
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Image = GetImageData_upvr(var7_result1) or var7_result1;
			Size = UDim2.new(0, itemSize, 0, itemSize);
			ZIndex = 1;
		});
	}
	local function INLINED() -- Internal function, doesn't exist in bytecode
		tbl_2.ZIndex = 2
		tbl_2.Size = UDim2.new(0, itemSize, 0, itemSize)
		tbl_2.ImageColor3 = props.maskColor
		tbl_2.Image = "rbxasset://textures/ui/LuaApp/graphic/gr-avatar-frame-36x36.png"
		tbl_2.BorderSizePixel = 0
		tbl_2.BackgroundTransparency = 1
		local tbl_2 = {}
		return Roact_upvr.createElement("ImageLabel", tbl_2)
	end
	if not showBackground or not INLINED() then
	end
	module.Mask = nil
	local function INLINED_2() -- Internal function, doesn't exist in bytecode
		tbl.ZIndex = 3
		tbl.Size = UDim2.new(0, dotSize, 0, dotSize)
		tbl.Position = UDim2.new(1, -dotSize, 1, -dotSize)
		tbl.Image = Constants_upvr_2.PresenceIndicatorImagesBySize[Constants_upvr_2:GetPresenceIndicatorSizeKey(dotSize)][user.presence]
		tbl.BorderSizePixel = 0
		tbl.BackgroundTransparency = 1
		local tbl = {}
		return Roact_upvr.createElement("ImageLabel", tbl)
	end
	if not showBackground or not props or not INLINED_2() then
	end
	module.Dot = nil
	return Roact_upvr.createElement("Frame", module_2, module)
end
return any_extend_result1