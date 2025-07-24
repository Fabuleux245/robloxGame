-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:03
-- Luau version 6, Types version 3
-- Time taken: 0.001584 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local t = InGameMenuDependencies.t
local any_extend_result1 = Roact_upvr.PureComponent:extend("BlurredModalPortal")
any_extend_result1.validateProps = t.strictInterface({
	Enabled = t.boolean;
	[Roact_upvr.Children] = t.optional(t.table);
})
local CoreGui_upvr = game:GetService("CoreGui")
local Constants_upvr = require(script:FindFirstAncestor("InGameMenu").Resources.Constants)
function any_extend_result1.render(arg1) -- Line 20
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: CoreGui_upvr (readonly)
		[3]: Constants_upvr (readonly)
	]]
	return Roact_upvr.createElement(Roact_upvr.Portal, {
		target = CoreGui_upvr;
	}, {
		InGameMenuModalBlur = Roact_upvr.createElement("ScreenGui", {
			OnTopOfCoreBlur = true;
			Enabled = arg1.props.Enabled;
			IgnoreGuiInset = true;
			DisplayOrder = Constants_upvr.DisplayOrder.BlurredModalPortal;
		}, arg1.props[Roact_upvr.Children]);
	})
end
local VRService_upvr = game:GetService("VRService")
local RunService_upvr = game:GetService("RunService")
function any_extend_result1.didUpdate(arg1, arg2) -- Line 34
	--[[ Upvalues[2]:
		[1]: VRService_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	if VRService_upvr.VREnabled then
	else
		local Enabled = arg1.props.Enabled
		if arg2.Enabled ~= Enabled then
			RunService_upvr:SetRobloxGuiFocused(Enabled)
		end
	end
end
return any_extend_result1