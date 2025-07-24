-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:06:26
-- Luau version 6, Types version 3
-- Time taken: 0.001185 seconds

local dependencies = require(script:FindFirstAncestor("SocialLibraries").dependencies)
local Roact_upvr = dependencies.Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("CheckIcon")
any_extend_result1.defaultProps = {
	checked = false;
	onActivated = function() -- Line 11, Named "onActivated"
	end;
}
local Images_upvr = require(script.Parent.Images)
local UIBlox_upvr = dependencies.UIBlox
function any_extend_result1.render(arg1) -- Line 14
	--[[ Upvalues[3]:
		[1]: Images_upvr (readonly)
		[2]: UIBlox_upvr (readonly)
		[3]: Roact_upvr (readonly)
	]]
	local var7_upvr
	local function INLINED() -- Internal function, doesn't exist in bytecode
		var7_upvr = Images_upvr.checkFill
		return var7_upvr
	end
	if not arg1.props.checked or not INLINED() then
		var7_upvr = Images_upvr.checkStroke
	end
	return UIBlox_upvr.Style.withStyle(function(arg1_2) -- Line 16
		--[[ Upvalues[3]:
			[1]: Roact_upvr (copied, readonly)
			[2]: var7_upvr (readonly)
			[3]: arg1 (readonly)
		]]
		return Roact_upvr.createElement("Frame", {
			BackgroundTransparency = 1;
			BorderSizePixel = 0;
			Size = UDim2.new(0, 17, 0, 17);
		}, {
			Button = Roact_upvr.createElement("ImageButton", {
				AutoButtonColor = false;
				BackgroundTransparency = 1;
				BorderSizePixel = 0;
				Image = var7_upvr.Image;
				ImageRectOffset = var7_upvr.ImageRectOffset;
				ImageRectSize = var7_upvr.ImageRectSize;
				ImageColor3 = arg1_2.Theme.UIDefault.Color;
				ScaleType = Enum.ScaleType.Slice;
				Size = UDim2.new(1, 0, 1, 0);
				SliceCenter = var7_upvr.SliceCenter;
				[Roact_upvr.Event.MouseButton1Click] = arg1.props.onActivated;
			});
		})
	end)
end
return any_extend_result1