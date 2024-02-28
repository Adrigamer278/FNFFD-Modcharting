image_speed=0
image_index=0
y=61
defY = y;

validMods = []
for (mInd=0;mInd<array_length(obj_stats.loadedMods);mInd++) {
	var modData = obj_stats.loadedMods[mInd]

	if array_length(modData.menuWknds)=0 {
		continue;
	}
	
	array_push(validMods,modData)
}

curMod = 0;
sel=0