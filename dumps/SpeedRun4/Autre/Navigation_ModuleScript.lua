-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:03:23
-- Luau version 6, Types version 3
-- Time taken: 0.001372 seconds

local CorePackages = game:GetService("CorePackages")
local Cryo_upvr = require(CorePackages.Packages.Cryo)
return require(CorePackages.Packages.Rodux).createReducer({
	currentPage = nil;
	currentTag = "";
}, {
	[require(script.Parent.Parent.Actions.SetCurrentPage).name] = function(arg1, arg2) -- Line 16
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		local module = {}
		local var7
		if arg2.page == nil then
			var7 = Cryo_upvr.None
		else
			var7 = arg2.page
		end
		module.currentPage = var7
		return Cryo_upvr.Dictionary.join(arg1, module)
	end;
	[require(script.Parent.Parent.Actions.SetCurrentTag).name] = function(arg1, arg2) -- Line 21
		--[[ Upvalues[1]:
			[1]: Cryo_upvr (readonly)
		]]
		return Cryo_upvr.Dictionary.join(arg1, {
			currentTag = arg2.tag;
		})
	end;
})