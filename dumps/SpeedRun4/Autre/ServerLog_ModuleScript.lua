-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:01:16
-- Luau version 6, Types version 3
-- Time taken: 0.001381 seconds

local Roact_upvr = require(game:GetService("CorePackages").Packages.Roact)
local any_extend_result1 = Roact_upvr.Component:extend("ServerLog")
function any_extend_result1.init(arg1) -- Line 15
	function arg1.initServerLogData() -- Line 16
		--[[ Upvalues[1]:
			[1]: arg1 (readonly)
		]]
		return arg1.props.ServerLogData:getLogData()
	end
end
local LogOutput_upvr = require(script.Parent.LogOutput)
local CommandLineHeight_upvr = require(script.Parent.Parent.Parent.Constants).LogFormatting.CommandLineHeight
local DevConsoleCommandLine_upvr = require(script.Parent.DevConsoleCommandLine)
function any_extend_result1.render(arg1) -- Line 21
	--[[ Upvalues[4]:
		[1]: Roact_upvr (readonly)
		[2]: LogOutput_upvr (readonly)
		[3]: CommandLineHeight_upvr (readonly)
		[4]: DevConsoleCommandLine_upvr (readonly)
	]]
	return Roact_upvr.createElement("Frame", {
		Size = arg1.props.size;
		BackgroundTransparency = 1;
		LayoutOrder = arg1.props.layoutOrder;
	}, {
		Scroll = Roact_upvr.createElement(LogOutput_upvr, {
			size = UDim2.new(1, 0, 1, -(CommandLineHeight_upvr + 4));
			targetSignal = arg1.props.ServerLogData:Signal();
			initLogOutput = arg1.initServerLogData;
		});
		CommandLine = Roact_upvr.createElement(DevConsoleCommandLine_upvr, {
			pos = UDim2.new(0, 0, 1, -CommandLineHeight_upvr);
			height = CommandLineHeight_upvr;
		});
	})
end
return require(script.Parent.Parent.DataConsumer)(any_extend_result1, "ServerLogData")