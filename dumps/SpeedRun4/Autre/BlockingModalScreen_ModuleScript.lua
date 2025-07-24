-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:18
-- Luau version 6, Types version 3
-- Time taken: 0.001911 seconds

local CoreGui_upvr = game:GetService("CoreGui")
local RobloxGui = CoreGui_upvr:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local any_extend_result1 = Roact_upvr.PureComponent:extend("BlockingModalScreen")
local tbl = {
	closeModal = t.callback;
	player = t.interface({
		DisplayName = t.string;
		Name = t.string;
		UserId = t.number;
	});
	translator = t.optional(t.table);
}
local any_optional_result1 = t.optional(t.string)
tbl.source = any_optional_result1
if require(RobloxGui.Modules.Common.Flags.FFlagEnableNewBlockingModal) then
	any_optional_result1 = t.optional(t.callback)
else
	any_optional_result1 = nil
end
tbl.onBlockingSuccess = any_optional_result1
any_extend_result1.validateProps = t.interface(tbl)
local FFlagCSFocusWrapperRefactor_upvr = require(CorePackages.Workspace.Packages.SharedFlags).FFlagCSFocusWrapperRefactor
local FocusRoot_upvr = FocusNavigationUtils.FocusRoot
local FocusNavigationCoreScriptsWrapper_upvr = FocusNavigationUtils.FocusNavigationCoreScriptsWrapper
local FocusNavigableSurfaceIdentifierEnum_upvr = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local BlockingModalContainer_upvr = require(script.Parent.BlockingModalContainer)
local renderWithCoreScriptsStyleProvider_upvr = require(RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)
function any_extend_result1.render(arg1) -- Line 35
	--[[ Upvalues[8]:
		[1]: Roact_upvr (readonly)
		[2]: FFlagCSFocusWrapperRefactor_upvr (readonly)
		[3]: FocusRoot_upvr (readonly)
		[4]: FocusNavigationCoreScriptsWrapper_upvr (readonly)
		[5]: FocusNavigableSurfaceIdentifierEnum_upvr (readonly)
		[6]: BlockingModalContainer_upvr (readonly)
		[7]: CoreGui_upvr (readonly)
		[8]: renderWithCoreScriptsStyleProvider_upvr (readonly)
	]]
	local var17 = Roact_upvr
	if FFlagCSFocusWrapperRefactor_upvr then
		var17 = FocusRoot_upvr
	else
		var17 = FocusNavigationCoreScriptsWrapper_upvr
	end
	if FFlagCSFocusWrapperRefactor_upvr then
		local tbl_2 = {
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
			isIsolated = true;
			isAutoFocusRoot = true;
		}
	else
	end
	return renderWithCoreScriptsStyleProvider_upvr({Roact_upvr.createElement(Roact_upvr.Portal, {
		target = CoreGui_upvr;
	}, {
		BlockingModalScreen = Roact_upvr.createElement("ScreenGui", {
			IgnoreGuiInset = true;
			AutoLocalize = false;
			DisplayOrder = 6;
		}, {
			BlockingModalContainer = var17.createElement(var17, {
				selectionGroupName = "BlockingModalScreen"..tostring(arg1.props.player.UserId);
				focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum_upvr.CentralOverlay;
			}, {
				BlockingModalContainerWrapper = Roact_upvr.createElement(BlockingModalContainer_upvr, arg1.props);
			});
		});
	})})
end
return any_extend_result1