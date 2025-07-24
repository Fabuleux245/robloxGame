-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 10:53:02
-- Luau version 6, Types version 3
-- Time taken: 0.001741 seconds

local InGameMenuDependencies = require(game:GetService("CorePackages").Packages.InGameMenuDependencies)
local Roact_upvr = InGameMenuDependencies.Roact
local Cryo_upvr = InGameMenuDependencies.Cryo
local UIBlox = InGameMenuDependencies.UIBlox
local Assets_upvr = require(script.Parent.Parent.Resources.Assets)
local function _(arg1) -- Line 20, Named "makeAssetImageComponent"
	--[[ Upvalues[3]:
		[1]: Roact_upvr (readonly)
		[2]: Assets_upvr (readonly)
		[3]: Cryo_upvr (readonly)
	]]
	return Roact_upvr.forwardRef(function(arg1_2, arg2) -- Line 21
		--[[ Upvalues[4]:
			[1]: Assets_upvr (copied, readonly)
			[2]: Cryo_upvr (copied, readonly)
			[3]: Roact_upvr (copied, readonly)
			[4]: arg1 (readonly)
		]]
		local var7 = Assets_upvr.Images[arg1_2.imageKey]
		local var8
		if typeof(var7) == "string" then
			var8 = {
				Image = var7;
			}
		else
			var8 = var7
		end
		local module_4 = {}
		module_4[Roact_upvr.Ref] = arg2
		return Roact_upvr.createElement(arg1, Cryo_upvr.Dictionary.join(Cryo_upvr.Dictionary.join(arg1_2, {
			imageKey = Cryo_upvr.None;
		}, var8, {
			BackgroundTransparency = 1;
		}), module_4))
	end)
end
local module_2 = {}
local ImageSetLabel_upvr = UIBlox.Core.ImageSet.ImageSetLabel
module_2.Label = Roact_upvr.forwardRef(function(arg1, arg2) -- Line 21
	--[[ Upvalues[4]:
		[1]: Assets_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetLabel_upvr (readonly)
	]]
	local var16 = Assets_upvr.Images[arg1.imageKey]
	local var17
	if typeof(var16) == "string" then
		var17 = {
			Image = var16;
		}
	else
		var17 = var16
	end
	local module_3 = {}
	module_3[Roact_upvr.Ref] = arg2
	return Roact_upvr.createElement(ImageSetLabel_upvr, Cryo_upvr.Dictionary.join(Cryo_upvr.Dictionary.join(arg1, {
		imageKey = Cryo_upvr.None;
	}, var17, {
		BackgroundTransparency = 1;
	}), module_3))
end)
local ImageSetButton_upvr = UIBlox.Core.ImageSet.ImageSetButton
module_2.Button = Roact_upvr.forwardRef(function(arg1, arg2) -- Line 21
	--[[ Upvalues[4]:
		[1]: Assets_upvr (readonly)
		[2]: Cryo_upvr (readonly)
		[3]: Roact_upvr (readonly)
		[4]: ImageSetButton_upvr (readonly)
	]]
	local var24 = Assets_upvr.Images[arg1.imageKey]
	local var25
	if typeof(var24) == "string" then
		var25 = {
			Image = var24;
		}
	else
		var25 = var24
	end
	local module = {}
	module[Roact_upvr.Ref] = arg2
	return Roact_upvr.createElement(ImageSetButton_upvr, Cryo_upvr.Dictionary.join(Cryo_upvr.Dictionary.join(arg1, {
		imageKey = Cryo_upvr.None;
	}, var25, {
		BackgroundTransparency = 1;
	}), module))
end)
return module_2