-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:54:17
-- Luau version 6, Types version 3
-- Time taken: 0.000661 seconds

local module_2_upvr = {}
module_2_upvr.__index = module_2_upvr
function module_2_upvr.new() -- Line 8
	--[[ Upvalues[1]:
		[1]: module_2_upvr (readonly)
	]]
	local BindableEvent_upvr = Instance.new("BindableEvent")
	local module = {
		FullscreenChanged = {
			Connect = function(arg1, arg2) -- Line 13, Named "Connect"
				--[[ Upvalues[1]:
					[1]: BindableEvent_upvr (readonly)
				]]
				return BindableEvent_upvr.Event:Connect(arg2)
			end;
			GoFullscreen = function() -- Line 16, Named "GoFullscreen"
				--[[ Upvalues[1]:
					[1]: BindableEvent_upvr (readonly)
				]]
				BindableEvent_upvr:Fire(true)
			end;
		};
	}
	setmetatable(module, {
		__index = module_2_upvr;
	})
	return module
end
function module_2_upvr.InFullScreen(arg1) -- Line 28
	return false
end
return module_2_upvr