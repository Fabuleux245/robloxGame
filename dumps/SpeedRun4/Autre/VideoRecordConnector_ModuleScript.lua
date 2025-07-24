-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:10
-- Luau version 6, Types version 3
-- Time taken: 0.000992 seconds

local Game_Options_upvr = settings():WaitForChild("Game Options")
local Parent = script.Parent.Parent.Parent
local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local any_extend_result1 = Roact_upvr.PureComponent:extend("VideoRecordConnector")
function any_extend_result1.init(arg1) -- Line 15
	--[[ Upvalues[1]:
		[1]: Game_Options_upvr (readonly)
	]]
	arg1.props.setVideoRecording(Game_Options_upvr.VideoRecording)
end
local ExternalEventConnection_upvr = require(Parent.Utility.ExternalEventConnection)
function any_extend_result1.render(arg1) -- Line 19
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: ExternalEventConnection_upvr (readonly)
		[3]: Game_Options_upvr (readonly)
	]]
	return Roact_upvr.createElement(ExternalEventConnection_upvr, {
		event = Game_Options_upvr:GetPropertyChangedSignal("VideoRecording");
		callback = function() -- Line 22, Named "callback"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: Game_Options_upvr (copied, readonly)
			]]
			arg1.props.setVideoRecording(Game_Options_upvr.VideoRecording)
		end;
	})
end
local SetVideoRecording_upvr = require(Parent.Actions.SetVideoRecording)
return InGameMenuDependencies.RoactRodux.UNSTABLE_connect2(nil, function(arg1) -- Line 28
	--[[ Upvalues[1]:
		[1]: SetVideoRecording_upvr (readonly)
	]]
	return {
		setVideoRecording = function(arg1_2) -- Line 30, Named "setVideoRecording"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetVideoRecording_upvr (copied, readonly)
			]]
			return arg1(SetVideoRecording_upvr(arg1_2))
		end;
	}
end)(any_extend_result1)