-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:50:45
-- Luau version 6, Types version 3
-- Time taken: 0.001996 seconds

local module_2 = {}
local Cryo_upvr = require(script:FindFirstAncestor("AppChat").Parent.Cryo)
function module_2.init() -- Line 11
	--[[ Upvalues[1]:
		[1]: Cryo_upvr (readonly)
	]]
	local function generate_upvr(arg1) -- Line 12, Named "generate"
		local module = {}
		module.id = arg1
		module.title = string.format("default dog chat no. %d", arg1)
		module.thumbnails = {"rbxassetid://2610133241"}
		module.presenceImage = ""
		module.messages = {
			keys = {"messageId"};
			values = {
				messageId = {
					content = "a message placeholder 🎷🐛";
				};
			};
		}
		module.shortRelativeTime = "now+"..arg1
		module.alias = "(alias)"
		return module
	end
	local module_upvr = {}
	for i = 0, 200 do
		table.insert(module_upvr, generate_upvr(i))
	end
	return {
		getItemList = function() -- Line 38, Named "getItemList"
			--[[ Upvalues[1]:
				[1]: module_upvr (readonly)
			]]
			return module_upvr
		end;
		loadNext = function(arg1) -- Line 42, Named "loadNext"
			--[[ Upvalues[2]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: generate_upvr (readonly)
			]]
			return Cryo_upvr.List.join(arg1, {generate_upvr(arg1[#arg1].id + 1)})
		end;
		loadPrevious = function(arg1) -- Line 46, Named "loadPrevious"
			--[[ Upvalues[2]:
				[1]: Cryo_upvr (copied, readonly)
				[2]: generate_upvr (readonly)
			]]
			return Cryo_upvr.List.join({generate_upvr(arg1[1].id - 1)}, arg1)
		end;
	}
end
return module_2