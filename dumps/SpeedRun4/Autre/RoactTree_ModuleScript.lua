-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:00:22
-- Luau version 6, Types version 3
-- Time taken: 0.004262 seconds

local Parent = script.Parent.Parent
local ReactRoblox_upvr = require(Parent.ReactRoblox)
local warnOnce_upvr = require(script.Parent.warnOnce)
local inspect_upvr = require(Parent.LuauPolyfill).util.inspect
return {
	mount = function(arg1, arg2, arg3) -- Line 30, Named "mount"
		--[[ Upvalues[3]:
			[1]: warnOnce_upvr (readonly)
			[2]: inspect_upvr (readonly)
			[3]: ReactRoblox_upvr (readonly)
		]]
		-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
		local var15_upvw
		if _G.__DEV__ and _G.__COMPAT_WARNINGS__ then
			warnOnce_upvr("mount", "Please use the createRoot API in ReactRoblox")
		end
		if arg2 ~= nil then
			local var16
			if typeof(arg2) ~= "Instance" then
				if arg1 then
					var16 = tostring(arg1.type)
				else
					var16 = "<unknown>"
				end
				error(string.format("Cannot mount element (`%s`) into a parent that is not a Roblox Instance (got type `%s`) \n%s", var16, typeof(arg2), (function() -- Line 46
					--[[ Upvalues[2]:
						[1]: arg2 (read and write)
						[2]: inspect_upvr (copied, readonly)
					]]
					if arg2 ~= nil then
						return inspect_upvr(arg2)
					end
					return ""
				end)()))
			end
		end
		local var18_upvw
		if _G.__ROACT_17_COMPAT_LEGACY_ROOT__ then
			var16 = "Folder"
			var18_upvw = ReactRoblox_upvr.createLegacyRoot(Instance.new(var16))
		else
			var18_upvw = ReactRoblox_upvr.createRoot(Instance.new("Folder"))
		end
		if arg2 == nil then
			local Folder_2 = Instance.new("Folder")
			Folder_2.Name = "Target"
			arg2 = Folder_2
			local var20_upvw = arg2
		end
		if var15_upvw == nil then
			if _G.__ROACT_17_COMPAT_LEGACY_ROOT__ then
				var15_upvw = "ReactLegacyRoot"
			else
				var15_upvw = "ReactRoot"
			end
		end
		if _G.__ROACT_17_INLINE_ACT__ then
			ReactRoblox_upvr.act(function() -- Line 81
				--[[ Upvalues[5]:
					[1]: var18_upvw (read and write)
					[2]: ReactRoblox_upvr (copied, readonly)
					[3]: var15_upvw (read and write)
					[4]: arg1 (readonly)
					[5]: var20_upvw (read and write)
				]]
				local tbl_3 = {}
				tbl_3[var15_upvw] = arg1
				var18_upvw:render(ReactRoblox_upvr.createPortal(tbl_3, var20_upvw))
			end)
		else
			local tbl_4 = {}
			tbl_4[var15_upvw] = arg1
			var18_upvw:render(ReactRoblox_upvr.createPortal(tbl_4, var20_upvw))
		end
		return {
			root = var18_upvw;
			parent = var20_upvw;
			key = var15_upvw;
		}
	end;
	update = function(arg1, arg2) -- Line 97, Named "update"
		--[[ Upvalues[2]:
			[1]: warnOnce_upvr (readonly)
			[2]: ReactRoblox_upvr (readonly)
		]]
		if _G.__DEV__ and _G.__COMPAT_WARNINGS__ then
			warnOnce_upvr("update", "Please use the createRoot API in ReactRoblox")
		end
		local key_upvr = arg1.key
		local parent_upvr = arg1.parent
		if _G.__ROACT_17_INLINE_ACT__ then
			ReactRoblox_upvr.act(function() -- Line 107
				--[[ Upvalues[5]:
					[1]: arg1 (readonly)
					[2]: ReactRoblox_upvr (copied, readonly)
					[3]: key_upvr (readonly)
					[4]: arg2 (readonly)
					[5]: parent_upvr (readonly)
				]]
				local tbl_6 = {}
				tbl_6[key_upvr] = arg2
				arg1.root:render(ReactRoblox_upvr.createPortal(tbl_6, parent_upvr))
			end)
			return arg1
		end
		local tbl = {}
		tbl[key_upvr] = arg2
		arg1.root:render(ReactRoblox_upvr.createPortal(tbl, parent_upvr))
		return arg1
	end;
	unmount = function(arg1) -- Line 121, Named "unmount"
		--[[ Upvalues[2]:
			[1]: warnOnce_upvr (readonly)
			[2]: ReactRoblox_upvr (readonly)
		]]
		if _G.__DEV__ and _G.__COMPAT_WARNINGS__ then
			warnOnce_upvr("unmount", "Please use the createRoot API in ReactRoblox")
		end
		if _G.__ROACT_17_INLINE_ACT__ then
			ReactRoblox_upvr.act(function() -- Line 129
				--[[ Upvalues[1]:
					[1]: arg1 (readonly)
				]]
				arg1.root:unmount()
			end)
		else
			arg1.root:unmount()
		end
	end;
}