-- FNF FD CHART EXPOTER (aka SwowsToJson)
-- USING LUNE!!
-- By minz
-- do whatever you want with this

local fs = require("@lune/fs")
local stdio = require("@lune/stdio")
local net = require("@lune/net")

local chartPath = stdio.prompt("text", "Put chart path here (drag the file, should paste its path)") or "";
chartPath = chartPath:gsub("\"","");

if not fs.isFile(chartPath) then stdio.ewrite("WARNING: Non valid file!!\n"); stdio.prompt("text","Press enter to close") return; end;

local songName = stdio.prompt("text", "Input song name (for json song property)")

local chart = string.split(fs.readFile(chartPath),"\n")

local fnfChart = {
	song={
		notes = {},
		events = {};
		song=songName or "i, robot",
		speed=1,
		bpm=120,
		player1= "bf", -- dude
		player2= "dad", -- strad
		player3 = "gf", -- lady
		needsVoices = false, -- all fnffd songs doesnt have vocals separated
		validScore = true
	}
}

local function makeSection()
	return {
		sectionNotes={},
		lengthInSteps= 16,
		mustHitSection= false
	}
end

local bpm=tonumber(chart[2]) or 120;
local notespeed=tonumber(chart[3]) or 1.2;
local notes=tonumber(chart[4]) or 4;

fnfChart.song.bpm = bpm;
fnfChart.song.speed = notespeed;
fnfChart.song.keyCount = notes;

local crochet = ((60/bpm)*1000) * 4
local stepCrochet = crochet / 4 / 4;

local fnfSpeedMult = 2

--[[

	# NOTE TYPES
	 1 -> NORMAL
	 2 -> ALT (BUDDY)
	 3  -> BOMBS / HURT NOTES
	 4 -> Camera Dude
	 5 -> Camera Strad
	 6 -> Camera Center
	 7 -> Taunt
	 8 -> HOLD
	 9 -> ALT HOLD
	 10 -> EVENT
	 
	
	# DATA STORING
	 
	 THE FIRST 4 LINES ARE
		1 -> SONG NUMBER (NOT NAME) UNUSED IN WKND4+
		2 -> SONG BPM
		3 -> NOTE SPEED
		4 -> KEY COUNT
	 
	 THE GAMES PARSES DATA LIKE THIS
		FIRST WE GET THE AMOUNT OF STEPCROCHETS THAT CAN BE ON THE SONG (songlong)
		AND WE STORE ALL POSSIBLE NOTES IN THOSE STEPCROCHETS ON THE CHART
		IF THE VALUE IS BIGGER THAN 0 -> THERE'S A NOTE THERE
		THE VALUE IS THE NOTE TYPE (See # NOTE TYPES)
		
		THIS MAKES THE CHART REALLY LONG
		IMAGINE MY SONGLONG IS 20
		THEN THE DAD LEFT STRUMS NOTES ARE BETWEEN -> 1 - 20
		THEN THE DAD DOWN STRUMS NOTES ARE BETWEEN -> 21 - 40
		ETC...
]]

function round(num, numDecimalPlaces) : number
	local mult = 10^(numDecimalPlaces or 0)
	return math.floor(num * mult + 0.5) / mult
end

local songlong = round((#chart-4)/((notes or 4)*2),0)
-- first way: (length-4) / keys*2 (chart file line count and notes needed)
-- second way: round(((audio_sound_length() / 60)*bpm*4)) (song length + bpm needed)

local ln = 5 -- start line

function file_text_readln(file) : boolean
	ln+=1
	return (ln > #chart)
end

function file_text_read_real(file) : string|number
	return tonumber(chart[ln]); -- real stands for number
end

--[[
spacex=44
spacey=48
spaceyd=352
apartg=234
apartb=32
]]

spacey=48

local lastNote={}
function createNote(yPos,noteData,isSustain) : {number|string}

	if isSustain then
		if not lastNote[noteData] then return end -- why would you spawn a hold with no note
		lastNote[noteData][3]+=stepCrochet

		return lastNote[noteData]
	end

	local strumTime= 60*(yPos/(bpm*4*48*notespeed))*1000

	-- round to 10 is to avoid .99999999999 or .0000000001
	-- should also fix section stuff
	local note={round(strumTime,10),noteData,0}
	lastNote[noteData]=note

	return note;
end

local storedEventStrums={}

function addEvents(strumTime,events) : nil
	if storedEventStrums[strumTime] then -- do not create mutliple strum events
		-- add event to prev event table
		table.move(events,1,#events,#storedEventStrums[strumTime],storedEventStrums[strumTime])
		return
	end

	storedEventStrums[strumTime] = events
	table.insert(fnfChart.song.events,{strumTime,events})
end

function createEvent(name,value1,value2) : {string|number}
	return {name or "",value1 or "",value2 or ""}
end

local finishedReading:boolean = false;

local event:number = 0

local noteTypeCases={
	-- BUDDY NOTES
	[2] = function(note)
		note[4] = "GF Sing"
	end,
	[9] = function(note)
		note[4] = "GF Sing"
	end,

	-- BOMB!
	[3] = function(note)
		note[4] = "Hurt Note"
	end,

	-- EVENTS
	[4] = function(note)
		addEvents(note[1],{createEvent("Camera","BF")})
		return true
	end,
	[5] = function(note)
		addEvents(note[1],{createEvent("Camera","Dad")})
		return true
	end,
	[6] = function(note)
		addEvents(note[1],{createEvent("Camera","Center")})
		return true
	end,
	[7] = function(note)
		addEvents(note[1],{createEvent("Hey!",note[2] > 3 and "BF" or "Both")})
		return true
	end,
	
	-- events....
	[10] = function(note,eventNum)
		addEvents(note[1],{createEvent("Event",eventNum)})
		return true,true
	end,
	
	-- weeknd4
	[11] = function(note,eventNum)
		addEvents(note[1],{createEvent("Event",eventNum)})
		return true,true
	end,
	[12] = function(note,eventNum)
		addEvents(note[1],{createEvent("Event",eventNum)})
		return true,true
	end,
}

for bb=0 , (notes*2)-1 do
	for b=0 , songlong - 1 do
		if b==0 then
			event = 0
		end
		local noteType = file_text_read_real() or 0
		finishedReading = file_text_readln()

		if finishedReading then break end

		if noteType>0 then
			local note = createNote((b*(spacey*notespeed)),bb,(noteType==8 or noteType==9))
			if not note then continue end
			local isEvent,addToEvent=noteType>=10,false;

			if noteTypeCases[noteType] then
				isEvent,addToEvent = noteTypeCases[noteType](note,event)
			end

			if addToEvent then -- real event
				event+=1;
			end

			if not isEvent and note[3]==0 then
				local sectionNum = math.floor(note[1] / crochet) + 1;
				
				if sectionNum > #fnfChart.song.notes then
					for i=#fnfChart.song.notes+1,sectionNum do
						table.insert(fnfChart.song.notes,makeSection());
					end
				end

				table.insert(fnfChart.song.notes[sectionNum].sectionNotes,note)
			end
		end
	end
	if finishedReading then break end
end

fnfChart.song.speed*=fnfSpeedMult

table.sort(fnfChart.song.events,function(val1,val2)
	return val1[1]<val2[1]
end)

for q,section in fnfChart.song.notes do
	local sectionTime = q*crochet - crochet;

	local latestCamera = false;

	for _,event in fnfChart.song.events do
		if event[1]>sectionTime then
			break;
		end

		for _,subEvent in event[2] do
			if subEvent[1] == "Camera" then
				latestCamera = subEvent[2] == "BF" or subEvent[2] == "Center";
			end
		end
	end

	section.mustHitSection = latestCamera;

	if latestCamera then
		for _,note in section.sectionNotes do -- invert
			note[2] = note[2]>=notes and note[2]-notes or note[2]+notes;
		end
	end

	table.sort(section.sectionNotes,function(val1,val2)
		return val1[1]<val2[1]
	end)
end

-- replace {} with [] since it fucks with psych (changes empty map to array)
fs.writeFile("exportedChart.json", net.jsonEncode(fnfChart):gsub("\"sectionNotes\":{}","\"sectionNotes\":[]"))

stdio.write("Done!\nFile should be located under this program folder!!\n")
stdio.prompt("text", "Press enter to exit")