-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:48:16
-- Luau version 6, Types version 3
-- Time taken: 0.004521 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local UIBlox = require(CorePackages.Packages.UIBlox)
local Parent = script.Parent.Parent
local any_extend_result1 = Roact_upvr.PureComponent:extend("DropDownButton")
any_extend_result1.validateProps = t.strictInterface({
	contentVisible = t.boolean;
	buttonTransparency = t.any;
	text = t.string;
	layoutOrder = t.optional(t.integer);
	icon = t.union(t.string, t.table);
	lastButton = t.boolean;
	forceShowOptions = t.boolean;
	screenSizeX = t.number;
	screenSizeY = t.number;
	onActivated = t.optional(t.callback);
	onDecline = t.optional(t.callback);
	onDismiss = t.optional(t.callback);
	animatingAccept = t.optional(t.boolean);
	animatingDecline = t.optional(t.boolean);
	animatingPercentage = t.optional(t.number);
})
function any_extend_result1.init(arg1) -- Line 45
	arg1.state = {
		isHovered = false;
		isPressed = false;
		sizeX = 100;
		absolutePosX = 0;
		absolutePosY = 0;
	}
end
function any_extend_result1.getColorBackgroundAnimation(arg1, arg2) -- Line 55
	if arg1.props.animatingPercentage == nil then
		return 0, 0
	end
	local var9 = arg1.state.sizeX - arg2.DropDownRightOptionSize
	if arg1.props.animatingDecline then
		var9 -= arg2.DropDownRightOptionSize
	end
	local var10 = arg1.state.sizeX - arg2.DropDownRightOptionSize
	local var11 = arg2.DropDownRightOptionSize + var10 * arg1.props.animatingPercentage
	var9 -= var10 * arg1.props.animatingPercentage * 0.5
	if arg1.state.sizeX < var9 + var11 then
		var9 -= var9 + var11 - arg1.state.sizeX
	end
	return var9, var11
end
local WithLayoutValues_upvr = require(Parent.Connection.LayoutValues).WithLayoutValues
local withStyle_upvr = UIBlox.Style.withStyle
local Colors_upvr = require(CorePackages.Workspace.Packages.Style).Colors
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
local IconButton_upvr = require(Parent.PresentationCommon.IconButton)
local Images_upvr = UIBlox.App.ImageSet.Images
function any_extend_result1.render(arg1) -- Line 76
	--[[ Upvalues[7]:
		[1]: WithLayoutValues_upvr (readonly)
		[2]: withStyle_upvr (readonly)
		[3]: Colors_upvr (readonly)
		[4]: Roact_upvr (readonly)
		[5]: ImageSetLabel_upvr (readonly)
		[6]: IconButton_upvr (readonly)
		[7]: Images_upvr (readonly)
	]]
	return WithLayoutValues_upvr(function(arg1_2) -- Line 77
		--[[ Upvalues[7]:
			[1]: withStyle_upvr (copied, readonly)
			[2]: arg1 (readonly)
			[3]: Colors_upvr (copied, readonly)
			[4]: Roact_upvr (copied, readonly)
			[5]: ImageSetLabel_upvr (copied, readonly)
			[6]: IconButton_upvr (copied, readonly)
			[7]: Images_upvr (copied, readonly)
		]]
		return withStyle_upvr(function(arg1_3) -- Line 78
			--[[ Upvalues[7]:
				[1]: arg1 (copied, readonly)
				[2]: arg1_2 (readonly)
				[3]: Colors_upvr (copied, readonly)
				[4]: Roact_upvr (copied, readonly)
				[5]: ImageSetLabel_upvr (copied, readonly)
				[6]: IconButton_upvr (copied, readonly)
				[7]: Images_upvr (copied, readonly)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			local tbl = {
				Transparency = 1;
				Color = Color3.new(1, 1, 1);
			}
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [23] 17. Error Block 104 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [23] 17. Error Block 104 end (CF ANALYSIS FAILED)
		end)
	end)
end
return require(CorePackages.Packages.RoactRodux).connect(function(arg1) -- Line 295, Named "mapStateToProps"
	return {
		screenSizeX = arg1.screenSize.X;
		screenSizeY = arg1.screenSize.Y;
	}
end, nil)(any_extend_result1)