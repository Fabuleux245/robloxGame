-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:51
-- Luau version 6, Types version 3
-- Time taken: 0.002431 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local UIBlox = InGameMenuDependencies.UIBlox
local t = InGameMenuDependencies.t
local Parent = script.Parent.Parent
local FFlagLuaMenuPerfImprovements_upvr = require(Parent.Flags.FFlagLuaMenuPerfImprovements)
local any_extend_result1 = Roact_upvr.PureComponent:extend("MoreButton")
local tbl = {
	onActivated = t.callback;
	LayoutOrder = t.integer;
}
local var9
local function INLINED() -- Internal function, doesn't exist in bytecode
	var9 = t.number
	return var9
end
if not FFlagLuaMenuPerfImprovements_upvr or not INLINED() then
	var9 = nil
end
tbl.userId = var9
any_extend_result1.validateProps = t.strictInterface(tbl)
function any_extend_result1.init(arg1) -- Line 25
	--[[ Upvalues[1]:
		[1]: FFlagLuaMenuPerfImprovements_upvr (readonly)
	]]
	if FFlagLuaMenuPerfImprovements_upvr then
		function arg1.onActivated() -- Line 27
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.props.onActivated(arg1.props.userId)
		end
	end
end
local withStyle_upvr = UIBlox.Core.Style.withStyle
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
local Assets_upvr = require(Parent.Resources.Assets)
function any_extend_result1.render(arg1) -- Line 33
	--[[ Upvalues[5]:
		[1]: withStyle_upvr (readonly)
		[2]: FFlagLuaMenuPerfImprovements_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetButton_upvr (readonly)
		[5]: Assets_upvr (readonly)
	]]
	return withStyle_upvr(function(arg1_2) -- Line 34
		--[[ Upvalues[5]:
			[1]: arg1 (readonly)
			[2]: FFlagLuaMenuPerfImprovements_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: ImageSetButton_upvr (copied, readonly)
			[5]: Assets_upvr (copied, readonly)
		]]
		local onActivated_2 = arg1.props.onActivated
		local var16
		if var16 then
			local function INLINED_2() -- Internal function, doesn't exist in bytecode
				var16 = arg1.onActivated
				return var16
			end
			if not arg1.props.onActivated or not INLINED_2() then
				var16 = nil
			end
			onActivated_2 = var16
		end
		return Roact_upvr.createElement(ImageSetButton_upvr, {
			Size = UDim2.new(0, 36, 0, 36);
			BackgroundTransparency = 1;
			Image = Assets_upvr.Images.MoreActions;
			ImageColor3 = arg1_2.Theme.IconEmphasis.Color;
			LayoutOrder = arg1.props.LayoutOrder;
			[Roact_upvr.Event.Activated] = onActivated_2;
		})
	end)
end
return any_extend_result1