local f = CreateFrame("Frame")
local t = 1.25

local function Timer(s, e)
	t = t - e
	if t <= 0 then
		Screenshot()
		t = 1.25
		f:SetScript("OnUpdate", nil)
	end
end
local function Schedule()
	f:SetScript("OnUpdate", Timer)
end

f:SetScript("OnEvent", Schedule)
f:RegisterEvent("PLAYER_LEVEL_UP")
f:RegisterEvent("ACHIEVEMENT_EARNED")
