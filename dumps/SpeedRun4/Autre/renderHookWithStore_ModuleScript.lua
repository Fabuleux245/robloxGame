-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:18:36
-- Luau version 6, Types version 3
-- Time taken: 0.001547 seconds

local Parent = script:FindFirstAncestor("RoactUtils").Parent
local ReactRoblox_upvr = require(Parent.ReactRoblox)
local React_upvr = require(Parent.React)
local RoactRodux_upvr = require(Parent.RoactRodux)
local act_upvr = ReactRoblox_upvr.act
return function(arg1, arg2, arg3) -- Line 12, Named "renderHookWithStore"
	--[[ Upvalues[4]:
		[1]: React_upvr (readonly)
		[2]: RoactRodux_upvr (readonly)
		[3]: ReactRoblox_upvr (readonly)
		[4]: act_upvr (readonly)
	]]
	local tbl_upvr = {}
	local function var7_upvr(arg1_2) -- Line 15
		--[[ Upvalues[2]:
			[1]: tbl_upvr (readonly)
			[2]: arg2 (readonly)
		]]
		tbl_upvr.current = arg2(arg1_2)
		return nil
	end
	local function createRootElement_upvr(arg1_3) -- Line 20, Named "createRootElement"
		--[[ Upvalues[4]:
			[1]: React_upvr (copied, readonly)
			[2]: var7_upvr (readonly)
			[3]: arg1 (readonly)
			[4]: RoactRodux_upvr (copied, readonly)
		]]
		local any_createElement_result1 = React_upvr.createElement(var7_upvr, arg1_3)
		if arg1 ~= nil then
			local tbl = {}
			tbl.store = arg1
			any_createElement_result1 = React_upvr.createElement(RoactRodux_upvr.StoreProvider, tbl, {
				Wrapper = any_createElement_result1;
			})
		end
		return any_createElement_result1
	end
	local any_createRoot_result1_upvr = ReactRoblox_upvr.createRoot(Instance.new("Frame"))
	act_upvr(function() -- Line 35
		--[[ Upvalues[3]:
			[1]: any_createRoot_result1_upvr (readonly)
			[2]: createRootElement_upvr (readonly)
			[3]: arg3 (readonly)
		]]
		local var13 = arg3
		if not var13 then
			var13 = {}
		end
		any_createRoot_result1_upvr:render(createRootElement_upvr(var13))
	end)
	return {
		result = tbl_upvr;
		rerender = function(arg1_4) -- Line 39, Named "rerender"
			--[[ Upvalues[3]:
				[1]: act_upvr (copied, readonly)
				[2]: any_createRoot_result1_upvr (readonly)
				[3]: createRootElement_upvr (readonly)
			]]
			act_upvr(function() -- Line 40
				--[[ Upvalues[3]:
					[1]: any_createRoot_result1_upvr (copied, readonly)
					[2]: createRootElement_upvr (copied, readonly)
					[3]: arg1_4 (readonly)
				]]
				any_createRoot_result1_upvr:render(createRootElement_upvr(arg1_4))
			end)
		end;
		cleanup = function() -- Line 45, Named "cleanup"
			--[[ Upvalues[1]:
				[1]: any_createRoot_result1_upvr (readonly)
			]]
			any_createRoot_result1_upvr:unmount()
		end;
	}
end