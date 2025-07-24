-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:01:05
-- Luau version 6, Types version 3
-- Time taken: 0.003454 seconds

local Parent = script.Parent.Parent
local function _(arg1) -- Line 6, Named "getScreenComponent"
	if not arg1 then
		return nil
	end
	if type(arg1) == "table" and arg1.screen then
		return arg1.screen
	end
	return arg1
end
local invariant_upvr = require(Parent.utils.invariant)
local isValidScreenComponent_upvr = require(Parent.utils.isValidScreenComponent)
return function(arg1) -- Line 36
	--[[ Upvalues[2]:
		[1]: invariant_upvr (readonly)
		[2]: isValidScreenComponent_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	local var26
	if next(arg1) == nil then
		var26 = false
	else
		var26 = true
	end
	invariant_upvr(var26, "Please specify at least one route when configuring a navigator.")
	var26 = nil
	local var27
	for i, v in arg1, var26 do
		if not v then
			var27 = nil
		elseif type(v) == "table" and v.screen then
			var27 = v.screen
		else
			var27 = v
		end
		if type(v) ~= "table" then
			local _ = false
			-- KONSTANTWARNING: Skipped task `defvar` above
		else
		end
		if not isValidScreenComponent_upvr(var27) then
			if true then
				if type(v.getScreen) ~= "function" then
				else
				end
			end
		end
		invariant_upvr(true, "The component for route '%s' must be a Roact component or table with 'getScreen'.".." For example:\n\nlocal MyScreen = require(script.Parent.MyScreen)\n...\n%s = MyScreen,\n}\n\nYou can also use a navigator:\n\nlocal MyNavigator = require(script.Parent.MyNavigator)\n...\n%s = MyNavigator,\n}", i, i, i)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		if true then
			local var29 = true
			if v.screen ~= nil then
				if v.getScreen ~= nil then
					var29 = false
				else
					var29 = true
				end
			end
			invariant_upvr(var29, "Route '%s' should declare a screen or a getScreen, not both.", i)
		end
	end
	return arg1
end