-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 09:41:38
-- Luau version 6, Types version 3
-- Time taken: 0.000931 seconds

return function(arg1) -- Line 11
	local storage_upvr = arg1.storage
	if not storage_upvr then
		return nil
	end
	return {
		update = function(arg1_2) -- Line 18, Named "update"
			--[[ Upvalues[1]:
				[1]: storage_upvr (readonly)
			]]
			return storage_upvr:setItem(arg1_2)
		end;
		get = function() -- Line 22, Named "get"
			--[[ Upvalues[1]:
				[1]: storage_upvr (readonly)
			]]
			return storage_upvr:getItem()
		end;
		bindToStorage = function(arg1_3) -- Line 26, Named "bindToStorage"
			--[[ Upvalues[1]:
				[1]: storage_upvr (readonly)
			]]
			return storage_upvr:bindAndFire(arg1_3)
		end;
	}
end