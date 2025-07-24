-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:44:17
-- Luau version 6, Types version 3
-- Time taken: 0.002245 seconds

local CorePackages = game:GetService("CorePackages")
local Roact_upvr = require(CorePackages.Packages.Roact)
local t = require(CorePackages.Packages.t)
if require(game:GetService("CoreGui"):WaitForChild("RobloxGui").Modules.Common.Flags.FFlagEnableNewBlockingModal) then
	return require(script.Parent.BlockingModalContainerFunc)
end
local any_extend_result1 = Roact_upvr.PureComponent:extend("BlockingModalContainer")
any_extend_result1.defaultProps = {
	screenSize = Vector2.new(1000, 1000);
	blockingUtility = require(CorePackages.Workspace.Packages.BlockingUtility);
	cancelTextKey = "Feature.SettingsHub.Action.Cancel";
	blockTextKey = "Feature.SettingsHub.Action.Block";
	titleKey = "Feature.SettingsHub.Heading.BlockUser";
	bodyKey = "Feature.SettingsHub.Message.BlockConfirmation";
}
any_extend_result1.validateProps = t.interface({
	analytics = t.optional(t.table);
	blockTextKey = t.optional(t.string);
	blockingUtility = t.optional(t.table);
	bodyKey = t.optional(t.string);
	cancelTextKey = t.optional(t.string);
	closeModal = t.callback;
	player = t.interface({
		DisplayName = t.string;
		Name = t.string;
		UserId = t.number;
	});
	translator = t.optional(t.table);
	titleKey = t.optional(t.string);
	source = t.optional(t.string);
})
function any_extend_result1.init(arg1) -- Line 44
	arg1.state = {
		screenSize = Vector2.new(1000, 1000);
	}
	function arg1.action() -- Line 49
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		if arg1.props.blockingUtility:BlockPlayerAsync(arg1.props.player) then
			arg1.props.analytics:action("SettingsHub", "blockUser", {
				blockeeUserId = arg1.props.player.UserId;
				source = arg1.props.source;
			})
		end
		arg1.props.closeModal()
	end
	function arg1.setScreenSize(arg1_2) -- Line 62
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		arg1:setState({
			screenSize = Vector2.new(arg1_2.X, arg1_2.Y);
		})
	end
end
local ActionModal_upvr = require(script.Parent.ActionModal)
function any_extend_result1.render(arg1) -- Line 69
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: ActionModal_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		ZIndex = 2;
		[Roact_upvr.Change.AbsoluteSize] = function(arg1_3) -- Line 74
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			arg1.setScreenSize(arg1_3.AbsoluteSize)
		end;
	}, {
		BlockingModal = Roact_upvr.createElement(ActionModal_upvr, {
			title = arg1.props.translator:FormatByKey(arg1.props.titleKey, {
				DisplayName = arg1.props.player.DisplayName;
			});
			body = arg1.props.translator:FormatByKey(arg1.props.bodyKey, {
				DISPLAY_NAME = arg1.props.player.DisplayName;
				RBX_NAME = arg1.props.player.Name;
			});
			cancelText = arg1.props.translator:FormatByKey(arg1.props.cancelTextKey);
			actionText = arg1.props.translator:FormatByKey(arg1.props.blockTextKey);
			cancel = arg1.props.closeModal;
			action = arg1.action;
			screenSize = arg1.state.screenSize;
		});
	})
end
return any_extend_result1