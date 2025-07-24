-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:51:54
-- Luau version 6, Types version 3
-- Time taken: 0.001973 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local ControllerShortcutKeycodes = require(script.Parent.Common.ControllerShortcutKeycodes)
local t = require(CorePackages.Packages.t)
local tbl_2_upvr = {
	back = "CoreScripts.TopBar.Back";
	confirm = "InGame.InspectMenu.Action.Confirm";
	favorite = "InGame.InspectMenu.Action.Favorite";
	unfavorite = "InGame.InspectMenu.Action.Unfavorite";
	tryOn = "InGame.InspectMenu.Action.TryOn";
	takeOff = "InGame.InspectMenu.Action.TakeOff";
}
local any_extend_result1 = Roact_upvr.PureComponent:extend("InspectAndBuyControllerBar")
any_extend_result1.validateProps = t.strictInterface({
	showTryOn = t.boolean;
	showFavorite = t.boolean;
	isFavorited = t.boolean;
})
local RobloxTranslator_upvr = require(CorePackages.Workspace.Packages.RobloxTranslator)
local TryOn_upvr = ControllerShortcutKeycodes.TryOn
local Favorite_upvr = ControllerShortcutKeycodes.Favorite
local CoreGui_upvr = game:GetService("CoreGui")
local ControllerBar_upvr = require(CorePackages.Packages.UIBlox).App.Bar.ControllerBar
function any_extend_result1.render(arg1) -- Line 31
	--[[ Upvalues[7]:
		[1]: RobloxTranslator_upvr (readonly)
		[2]: tbl_2_upvr (readonly)
		[3]: TryOn_upvr (readonly)
		[4]: Favorite_upvr (readonly)
		[5]: Roact_upvr (readonly)
		[6]: CoreGui_upvr (readonly)
		[7]: ControllerBar_upvr (readonly)
	]]
	local tbl = {{
		text = RobloxTranslator_upvr:FormatByKey(tbl_2_upvr.confirm);
		keyCode = Enum.KeyCode.ButtonA;
	}}
	local var15
	if arg1.props.showTryOn then
		local tbl_3 = {}
		local function INLINED() -- Internal function, doesn't exist in bytecode
			var15 = RobloxTranslator_upvr:FormatByKey(tbl_2_upvr.takeOff)
			return var15
		end
		if not arg1.props.tryingOn or not INLINED() then
			var15 = RobloxTranslator_upvr:FormatByKey(tbl_2_upvr.tryOn)
		end
		tbl_3.text = var15
		var15 = TryOn_upvr
		tbl_3.keyCode = var15
		table.insert(tbl, 1, tbl_3)
	end
	if arg1.props.showFavorite then
		local tbl_4 = {}
		local function INLINED_2() -- Internal function, doesn't exist in bytecode
			var15 = RobloxTranslator_upvr:FormatByKey(tbl_2_upvr.unfavorite)
			return var15
		end
		if not arg1.props.isFavorited or not INLINED_2() then
			var15 = RobloxTranslator_upvr:FormatByKey(tbl_2_upvr.favorite)
		end
		tbl_4.text = var15
		var15 = Favorite_upvr
		tbl_4.keyCode = var15
		table.insert(tbl, 1, tbl_4)
	end
	return Roact_upvr.createElement(Roact_upvr.Portal, {
		target = CoreGui_upvr;
	}, {
		InspectAndBuyControllerBar = Roact_upvr.createElement("ScreenGui", {
			DisplayOrder = 1;
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
		}, {
			ControllerBar = Roact_upvr.createElement(ControllerBar_upvr, {
				leftHint = {
					text = RobloxTranslator_upvr:FormatByKey(tbl_2_upvr.back);
					keyCode = Enum.KeyCode.ButtonB;
				};
				rightHints = tbl;
			});
		});
	})
end
return any_extend_result1