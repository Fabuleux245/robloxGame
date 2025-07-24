-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 08:58:50
-- Luau version 6, Types version 3
-- Time taken: 0.002244 seconds

local Parent = script.Parent.Parent
local React_upvr = require(Parent.React)
local Otter_upvr = require(Parent.Otter)
return function(arg1, arg2, arg3) -- Line 13, Named "useMotor"
	--[[ Upvalues[2]:
		[1]: React_upvr (readonly)
		[2]: Otter_upvr (readonly)
	]]
	local any_useRef_result1_upvr = React_upvr.useRef(nil)
	local any_useRef_result1 = React_upvr.useRef(nil)
	if not any_useRef_result1_upvr.current then
		local var6_upvw
		if typeof(arg1) == "number" then
			var6_upvw = Otter_upvr.createSingleMotor(arg1)
		else
			var6_upvw = Otter_upvr.createGroupMotor(arg1)
		end
		function any_useRef_result1.current(arg1_2) -- Line 26
			--[[ Upvalues[1]:
				[1]: var6_upvw (read and write)
			]]
			var6_upvw:setGoal(arg1_2)
		end
		any_useRef_result1_upvr.current = var6_upvw
	end
	local tbl = {}
	tbl[1] = arg2
	tbl[2] = arg3
	React_upvr.useEffect(function() -- Line 34
		--[[ Upvalues[3]:
			[1]: any_useRef_result1_upvr (readonly)
			[2]: arg3 (readonly)
			[3]: arg2 (readonly)
		]]
		local var9_upvw
		local var10_upvw
		if any_useRef_result1_upvr.current then
			if arg3 then
				var9_upvw = any_useRef_result1_upvr.current:onComplete(arg3)
			end
			var10_upvw = any_useRef_result1_upvr.current:onStep(arg2)
		end
		return function() -- Line 43
			--[[ Upvalues[2]:
				[1]: var9_upvw (read and write)
				[2]: var10_upvw (read and write)
			]]
			if var9_upvw then
				var9_upvw()
			end
			if var10_upvw then
				var10_upvw()
			end
		end
	end, tbl)
	React_upvr.useEffect(function() -- Line 54
		--[[ Upvalues[1]:
			[1]: any_useRef_result1_upvr (readonly)
		]]
		return function() -- Line 55
			--[[ Upvalues[1]:
				[1]: any_useRef_result1_upvr (copied, readonly)
			]]
			if any_useRef_result1_upvr.current then
				any_useRef_result1_upvr.current:destroy()
				any_useRef_result1_upvr.current = nil
			end
		end
	end, {any_useRef_result1_upvr.current})
	return any_useRef_result1.current
end