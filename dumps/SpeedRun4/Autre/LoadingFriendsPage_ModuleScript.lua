-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:45:26
-- Luau version 6, Types version 3
-- Time taken: 0.001622 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local any_extend_result1 = Roact_upvr.PureComponent:extend("LoadingFriendsPage")
local LoadingBar_upvr = require(CorePackages.Workspace.Packages.AppBlox).LoadingBar
function any_extend_result1.render(arg1) -- Line 14
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: LoadingBar_upvr (readonly)
	]]
	local ZIndex = arg1.props.ZIndex
	local var6_upvw = 0
	local function _() -- Line 20, Named "incrementLayoutOrder"
		--[[ Upvalues[1]:
			[1]: var6_upvw (read and write)
		]]
		var6_upvw += 1
		return var6_upvw
	end
	local module = {
		listLayout = Roact_upvr.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical;
			HorizontalAlignment = Enum.HorizontalAlignment.Center;
			VerticalAlignment = Enum.VerticalAlignment.Center;
			SortOrder = Enum.SortOrder.LayoutOrder;
		});
	}
	local tbl = {
		BackgroundTransparency = 1;
		Size = UDim2.new(0, 70, 0, 16);
	}
	var6_upvw += 1
	tbl.LayoutOrder = var6_upvw
	tbl.ZIndex = ZIndex
	module.loadingIndicator = Roact_upvr.createElement("Frame", tbl, {
		loadingBar = Roact_upvr.createElement(LoadingBar_upvr, {
			ZIndex = ZIndex;
		});
	})
	return Roact_upvr.createElement("Frame", {
		BackgroundTransparency = 1;
		Size = UDim2.new(1, 0, 1, 0);
		LayoutOrder = arg1.props.LayoutOrder;
		ZIndex = ZIndex;
	}, module)
end
return any_extend_result1