-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:26
-- Luau version 6, Types version 3
-- Time taken: 0.001289 seconds

local CorePackages = game:GetService("CorePackages")
local any_extend_result1 = require(CorePackages.Packages.Roact).Component:extend("RCCProfilerDataCompleteListener")
local getClientReplicator_upvr = require(script.Parent.Parent.Parent.Util.getClientReplicator)
function any_extend_result1.didMount(arg1) -- Line 12
	--[[ Upvalues[1]:
		[1]: getClientReplicator_upvr (readonly)
	]]
	local var3_result1 = getClientReplicator_upvr()
	if var3_result1 then
		arg1.completeSignal = var3_result1.RCCProfilerDataComplete:Connect(function(arg1_2, arg2) -- Line 15
			--[[ Upvalues[1]:
				[1]: arg1 (readonly)
			]]
			if arg1.props.waitingForRecording then
				if not arg1_2 then
					warn(arg2)
					arg1.props.dispatchSetRCCProfilerState(false)
					return
				end
				arg1.props.dispatchSetRCCProfilerState(false, arg2)
			end
		end)
	end
end
function any_extend_result1.willUnmount(arg1) -- Line 28
	if arg1.completeSignal then
		arg1.completeSignal:Disconnect()
		arg1.completeSignal = nil
	end
end
function any_extend_result1.render(arg1) -- Line 35
	return nil
end
local SetRCCProfilerState_upvr = require(script.Parent.Parent.Parent.Actions.SetRCCProfilerState)
return require(CorePackages.Packages.RoactRodux).UNSTABLE_connect2(function(arg1, arg2) -- Line 39, Named "mapStateToProps"
	return {
		waitingForRecording = arg1.MicroProfiler.waitingForRecording;
	}
end, function(arg1) -- Line 45, Named "mapDispatchToProps"
	--[[ Upvalues[1]:
		[1]: SetRCCProfilerState_upvr (readonly)
	]]
	return {
		dispatchSetRCCProfilerState = function(arg1_3, arg2) -- Line 47, Named "dispatchSetRCCProfilerState"
			--[[ Upvalues[2]:
				[1]: arg1 (readonly)
				[2]: SetRCCProfilerState_upvr (copied, readonly)
			]]
			arg1(SetRCCProfilerState_upvr(arg1_3, arg2))
		end;
	}
end)(any_extend_result1)