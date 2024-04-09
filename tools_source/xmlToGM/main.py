import os
import xml.etree.ElementTree as XMLTree
from PIL import Image
from pathlib import Path

generalPath = input("Input image or xml path (aka drag it here): ")
generalPath = generalPath.removeprefix("\'").removesuffix("\'").removeprefix("\"").removesuffix("\"")

if not (os.path.isfile(generalPath)):
    exit("not a valid path!")

xmlPath= generalPath.endswith(".xml") and generalPath or ""
imagePath= generalPath.endswith(".png") and generalPath or ""

if xmlPath=="" and imagePath=="":
    exit("not a valid path!")

fileName = Path(xmlPath!="" and xmlPath or imagePath).stem

generalPath = Path(generalPath).parent.absolute().as_posix()

print(fileName)
print(generalPath)

if xmlPath=="": xmlPath=generalPath+"/"+fileName+".xml"
if imagePath=="": imagePath=generalPath+"/"+fileName+".png"

allFrames = {}

if os.path.isfile(xmlPath):
    xmlRoot = XMLTree.parse(xmlPath).getroot()
    for textureData in xmlRoot.iter('SubTexture'):
        animName = textureData.attrib.get("name")[:-4]
        if allFrames.get(animName) == None:
            allFrames[animName]=[]

        allFrames[animName].append({
            "x": textureData.attrib.get("x") or 0,
            "y": textureData.attrib.get("y") or 0,
            "w": textureData.attrib.get("width") or 0,
            "h": textureData.attrib.get("height") or 0,
            "frameX": textureData.attrib.get("frameX") or 0,
            "frameY": textureData.attrib.get("frameY") or 0,
            "frameWidth": textureData.attrib.get("frameWidth") or 0,
            "frameHeight": textureData.attrib.get("frameHeight") or 0,
        })

    print(allFrames)

    for name, data in allFrames.items():
        biggestX=0 # these are frame sizes
        biggestY=0

        for frameData in data:
            if frameData.get("w").isnumeric():
                biggestX = int(frameData.get("w"))>biggestX and int(frameData.get("w")) or biggestX
            
            if frameData.get("h").isnumeric():
                biggestY = int(frameData.get("h"))>biggestY and int(frameData.get("h")) or biggestY

        animImage = Image.new(mode="RGBA", size=(biggestX*len(data), biggestY))
        textureImage = Image.open(imagePath).copy()

        i = 0

        mainPath = Path(__file__).parent.absolute().as_posix()
        for frameData in data:            
            x=int(frameData.get("x")) or 0
            y=int(frameData.get("y")) or 0
            w=x+(int(frameData.get("w")) or biggestX)
            h=y+(int(frameData.get("h")) or biggestY)

            imageContent = textureImage.crop((x,y,w,h))
            
            animImage.paste(imageContent,(biggestX*i,biggestY-(h-y)))
            i+=1
        
        animImage.save(mainPath+"/"+name+"-EXPORT.png")