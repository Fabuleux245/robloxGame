-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:29:35
-- Luau version 6, Types version 3
-- Time taken: 0.001159 seconds

local dependencies = require(script:FindFirstAncestor("FriendsLanding").AddFriends.dependencies)
local t = dependencies.t
local Roact_upvr = dependencies.Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("IgnoreAllFriendsRequestsMenu")
any_extend_result1.validateProps = t.strictInterface({
	open = t.boolean;
	onIgnoreAll = t.callback;
	width = t.optional(t.UDim);
	openPositionY = t.optional(t.UDim);
})
any_extend_result1.defaultProps = {
	openPositionY = UDim.new(0, 0);
}
local withLocalization_upvr = dependencies.withLocalization
local BaseMenu_upvr = dependencies.UIBlox.App.Menu.BaseMenu
function any_extend_result1.render(arg1) -- Line 23
	--[[ Upvalues[3]:
		[1]: withLocalization_upvr (readonly)
		[2]: Roact_upvr (readonly)
		[3]: BaseMenu_upvr (readonly)
	]]
	return withLocalization_upvr({
		ignoreAllLabel = "Feature.AddFriends.Action.IgnoreAll";
	})(function(arg1_2) -- Line 26
		--[[ Upvalues[3]:
			[1]: arg1 (readonly)
			[2]: Roact_upvr (copied, readonly)
			[3]: BaseMenu_upvr (copied, readonly)
		]]
		local var11
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var11 = var11(BaseMenu_upvr, tbl_3)
			tbl_3.position = UDim2.new(UDim.new(1, 0), arg1.props.openPositionY)
			tbl_3.width = arg1.props.width
			tbl_3.anchorPoint = Vector2.new(1, 0)
			tbl_3.buttonProps = tbl
			tbl[1] = tbl_2
			tbl_2.onActivated = arg1.props.onIgnoreAll
			tbl_2.text = arg1_2.ignoreAllLabel
			local tbl_2 = {}
			local tbl = {}
			local tbl_3 = {}
			var11 = Roact_upvr.createElement
			return var11
		end
		if not arg1.props.open or not INLINED() then
			var11 = nil
		end
		return var11
	end)
end
return any_extend_result1