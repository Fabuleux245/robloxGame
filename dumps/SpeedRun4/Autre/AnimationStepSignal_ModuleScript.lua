-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:57:47
-- Luau version 6, Types version 3
-- Time taken: 0.001432 seconds

local tbl_upvr_2 = {}
local tbl_upvr = {}
local function Connect(arg1, arg2) -- Line 8
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	tbl_upvr_2[arg2] = true
	return {
		Disconnect = function() -- Line 11, Named "Disconnect"
			--[[ Upvalues[2]:
				[1]: tbl_upvr_2 (copied, readonly)
				[2]: arg2 (readonly)
			]]
			tbl_upvr_2[arg2] = nil
		end;
	}
end
tbl_upvr.Connect = Connect
local function Fire(arg1, arg2) -- Line 16
	--[[ Upvalues[1]:
		[1]: tbl_upvr_2 (readonly)
	]]
	for i, _ in tbl_upvr_2 do
		i(arg2)
	end
end
tbl_upvr.Fire = Fire
local module = {}
local RunService_upvr = game:GetService("RunService")
function module.Connect(arg1, arg2) -- Line 24
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: RunService_upvr (readonly)
	]]
	if _G.__OTTER_MOCK_ANIMATION_STEP_SIGNAL__ then
		return tbl_upvr:Connect(arg2)
	end
	return RunService_upvr.RenderStepped:Connect(arg2)
end
function module.Fire(arg1, arg2) -- Line 31
	--[[ Upvalues[1]:
		[1]: tbl_upvr (readonly)
	]]
	if _G.__OTTER_MOCK_ANIMATION_STEP_SIGNAL__ then
		tbl_upvr:Fire(arg2 or (1/60))
	else
		error("Cannot manually fire real animation step signal")
	end
end
return module