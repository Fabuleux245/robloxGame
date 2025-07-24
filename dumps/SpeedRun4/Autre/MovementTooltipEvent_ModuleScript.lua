-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:05:26
-- Luau version 6, Types version 3
-- Time taken: 0.001603 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local module = {
	Name = "MovementTooltipEvent";
}
local var3_upvw
local VRFTUXToolTips_upvr = require(script.Parent.Parent.Parent.Components.Tooltips.VRFTUXToolTips)
local renderWithCoreScriptsStyleProvider_upvr = require(script.Parent.Parent.Parent.Parent.Common.renderWithCoreScriptsStyleProvider)
local CoreGui_upvr = game:GetService("CoreGui")
function module.StartEvent() -- Line 24
	--[[ Upvalues[5]:
		[1]: Roact_upvr (readonly)
		[2]: VRFTUXToolTips_upvr (readonly)
		[3]: renderWithCoreScriptsStyleProvider_upvr (readonly)
		[4]: var3_upvw (read and write)
		[5]: CoreGui_upvr (readonly)
	]]
	var3_upvw = Roact_upvr.mount(renderWithCoreScriptsStyleProvider_upvr({Roact_upvr.createElement(VRFTUXToolTips_upvr, {
		tooltipButtons = {{
			Text = "Turn";
			Controller = Enum.UserCFrame.RightHand;
			ButtonKeycode = Enum.KeyCode.ButtonR3;
		}, {
			Text = "Move";
			Controller = Enum.UserCFrame.LeftHand;
			ButtonKeycode = Enum.KeyCode.ButtonL3;
		}, {
			Text = "Jump";
			Controller = Enum.UserCFrame.RightHand;
			ButtonKeycode = Enum.KeyCode.ButtonA;
		}};
	})}), CoreGui_upvr:FindFirstChild("FTUXMenu"), "MovementTooltip")
end
function module.StopEvent() -- Line 55
	--[[ Upvalues[2]:
		[1]: var3_upvw (read and write)
		[2]: Roact_upvr (readonly)
	]]
	if var3_upvw then
		Roact_upvr.unmount(var3_upvw)
	end
end
return module