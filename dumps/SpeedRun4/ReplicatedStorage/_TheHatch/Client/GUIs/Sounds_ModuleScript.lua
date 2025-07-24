-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-21 11:11:10
-- Luau version 6, Types version 3
-- Time taken: 0.002588 seconds

local SoundService_upvr = game:GetService("SoundService")
local tbl_upvr_2 = {
	hover = "rbxassetid://113689360542235";
	click = "rbxassetid://121599382015752";
	close = "rbxassetid://117813861539182";
	eggCompletion = "rbxassetid://76792378839432";
	eggButton = "rbxassetid://97905145002343";
	eggPlusOne = "rbxassetid://83497033244211";
	claim = "rbxassetid://102265987478332";
	notification = "rbxassetid://82852698917139";
}
local tbl_upvr = {}
local function _(arg1) -- Line 18, Named "create"
	--[[ Upvalues[2]:
		[1]: tbl_upvr (readonly)
		[2]: SoundService_upvr (readonly)
	]]
	if not tbl_upvr[arg1] then
		local Sound = Instance.new("Sound")
		Sound.Name = arg1
		Sound.SoundId = arg1
		Sound.Parent = SoundService_upvr
		tbl_upvr[arg1] = Sound
	end
	return tbl_upvr[arg1]
end
local function _() -- Line 29, Named "init"
	--[[ Upvalues[3]:
		[1]: tbl_upvr (readonly)
		[2]: tbl_upvr_2 (readonly)
		[3]: SoundService_upvr (readonly)
	]]
	if not next(tbl_upvr) then
		for _, v in tbl_upvr_2 do
			if not tbl_upvr[v] then
				local Sound_10 = Instance.new("Sound")
				Sound_10.Name = v
				Sound_10.SoundId = v
				Sound_10.Parent = SoundService_upvr
				tbl_upvr[v] = Sound_10
			end
		end
	end
end
return {
	assets = tbl_upvr_2;
	configure = function(arg1, arg2) -- Line 53, Named "configure"
		--[[ Upvalues[3]:
			[1]: tbl_upvr (readonly)
			[2]: tbl_upvr_2 (readonly)
			[3]: SoundService_upvr (readonly)
		]]
		if not next(tbl_upvr) then
			for _, v_5 in tbl_upvr_2 do
				if not tbl_upvr[v_5] then
					local Sound_5 = Instance.new("Sound")
					Sound_5.Name = v_5
					Sound_5.SoundId = v_5
					Sound_5.Parent = SoundService_upvr
					tbl_upvr[v_5] = Sound_5
				end
			end
		end
		if not tbl_upvr[arg1] then
			local Sound_6 = Instance.new("Sound")
			Sound_6.Name = arg1
			Sound_6.SoundId = arg1
			Sound_6.Parent = SoundService_upvr
			tbl_upvr[arg1] = Sound_6
		end
		local var26 = tbl_upvr[arg1]
		local speed = arg2.speed
		if not speed then
			speed = var26.PlaybackSpeed
		end
		var26.PlaybackSpeed = speed
		speed = arg2.volume
		local var28 = speed
		if not var28 then
			var28 = var26.Volume
		end
		var26.Volume = var28
		return var26
	end;
	play = function(arg1) -- Line 37, Named "play"
		--[[ Upvalues[3]:
			[1]: tbl_upvr (readonly)
			[2]: tbl_upvr_2 (readonly)
			[3]: SoundService_upvr (readonly)
		]]
		if not next(tbl_upvr) then
			for _, v_2 in tbl_upvr_2 do
				if not tbl_upvr[v_2] then
					local Sound_9 = Instance.new("Sound")
					Sound_9.Name = v_2
					Sound_9.SoundId = v_2
					Sound_9.Parent = SoundService_upvr
					tbl_upvr[v_2] = Sound_9
				end
			end
		end
		if not tbl_upvr[arg1] then
			local Sound_7 = Instance.new("Sound")
			Sound_7.Name = arg1
			Sound_7.SoundId = arg1
			Sound_7.Parent = SoundService_upvr
			tbl_upvr[arg1] = Sound_7
		end
		tbl_upvr[arg1]:Play()
	end;
	playStoppable = function(arg1) -- Line 43, Named "playStoppable"
		--[[ Upvalues[3]:
			[1]: tbl_upvr (readonly)
			[2]: tbl_upvr_2 (readonly)
			[3]: SoundService_upvr (readonly)
		]]
		if not next(tbl_upvr) then
			for _, v_3 in tbl_upvr_2 do
				if not tbl_upvr[v_3] then
					local Sound_2 = Instance.new("Sound")
					Sound_2.Name = v_3
					Sound_2.SoundId = v_3
					Sound_2.Parent = SoundService_upvr
					tbl_upvr[v_3] = Sound_2
				end
			end
		end
		if not tbl_upvr[arg1] then
			local Sound_3 = Instance.new("Sound")
			Sound_3.Name = arg1
			Sound_3.SoundId = arg1
			Sound_3.Parent = SoundService_upvr
			tbl_upvr[arg1] = Sound_3
		end
		tbl_upvr[arg1]:Play()
	end;
	stop = function(arg1) -- Line 48, Named "stop"
		--[[ Upvalues[3]:
			[1]: tbl_upvr (readonly)
			[2]: tbl_upvr_2 (readonly)
			[3]: SoundService_upvr (readonly)
		]]
		if not next(tbl_upvr) then
			for _, v_4 in tbl_upvr_2 do
				if not tbl_upvr[v_4] then
					local Sound_8 = Instance.new("Sound")
					Sound_8.Name = v_4
					Sound_8.SoundId = v_4
					Sound_8.Parent = SoundService_upvr
					tbl_upvr[v_4] = Sound_8
				end
			end
		end
		if not tbl_upvr[arg1] then
			local Sound_4 = Instance.new("Sound")
			Sound_4.Name = arg1
			Sound_4.SoundId = arg1
			Sound_4.Parent = SoundService_upvr
			tbl_upvr[arg1] = Sound_4
		end
		tbl_upvr[arg1]:Stop()
	end;
}