-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:47:15
-- Luau version 6, Types version 3
-- Time taken: 0.001747 seconds

local Roact_upvr = require(script:FindFirstAncestor("AppBlox").Parent.Roact)
local any_extend_result1 = Roact_upvr.Component:extend("LoadingBar")
function any_extend_result1.init(arg1) -- Line 16
	--[[ Upvalues[1]:
		[1]: Roact_upvr (readonly)
	]]
	arg1.barRef = Roact_upvr.createRef()
end
local Rect_new_result1_upvr = Rect.new(1, 0, 2, 3)
function any_extend_result1.render(arg1) -- Line 20
	--[[ Upvalues[2]:
		[1]: Roact_upvr (readonly)
		[2]: Rect_new_result1_upvr (readonly)
	]]
	return Roact_upvr.createElement("ImageLabel", {
		Image = "rbxasset://textures/ui/LuaApp/9-slice/gr-loading-indicator.png";
		ScaleType = "Slice";
		SliceCenter = Rect_new_result1_upvr;
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		ZIndex = arg1.props.ZIndex;
		[Roact_upvr.Ref] = arg1.barRef;
	})
end
local RunService_upvr = game:GetService("RunService")
local Workspace_upvr = game:GetService("Workspace")
function any_extend_result1.didMount(arg1) -- Line 34
	--[[ Upvalues[2]:
		[1]: RunService_upvr (readonly)
		[2]: Workspace_upvr (readonly)
	]]
	arg1.connection = RunService_upvr.RenderStepped:Connect(function() -- Line 35
		--[[ Upvalues[2]:
			[1]: Workspace_upvr (copied, readonly)
			[2]: arg1 (readonly)
		]]
		local DistributedGameTime = Workspace_upvr.DistributedGameTime
		local current = arg1.barRef.current
		local var10 = (1 - math.cos(2 * DistributedGameTime * 5.026548245743669)) * 7.5
		current.Size = UDim2.new(0, var10 + 4, 0, 4)
		current.Position = UDim2.new(0.5, math.cos(DistributedGameTime * 5.026548245743669) * 40 - var10 / 2 - 2, 0.5, 0)
	end)
end
function any_extend_result1.willUnmount(arg1) -- Line 48
	arg1.connection:Disconnect()
end
return any_extend_result1