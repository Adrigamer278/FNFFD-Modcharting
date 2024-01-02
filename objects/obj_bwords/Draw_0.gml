draw_set_font(fnt_comic1)
draw_set_halign(fa_center);
draw_set_color(c_white)
switch(part){
case 1:
    draw_text(x,y,string_hash_to_newline(@"TYLER AND 
FUNNE"))
break;
case 2:
    draw_text(x,y,string_hash_to_newline("PRESENT"))
break;
case 3:
    draw_text(x,y,string_hash_to_newline("IN ASSOCIATION WITH"))
break;
case 4:
    draw_text(x,y,string_hash_to_newline("IN ASSOCIATION WITH"))
    draw_sprite(spr_youtube,0,x+10,y+40,)
    if !audio_is_playing(snd_gunkayy) {
            audio_play_sound(snd_gunkayy,9999,false)
    }
    break;
case 5:
    audio_stop_sound(snd_whehehe)
    /*I know its dumb that this is
    a switch statement and not like
    a text file or something but
    this is on screen for like 
    2 seconds who caaaaaaaaaaares
    */
    switch(randomtextvar){
    case 0:
    text[1]="like this"
    text[2]="like this"
    break;
    case 1:
    text[1]="why make a mod"
    text[2]="when you can make a whole game"
    break;
    case 2:
    text[1]="'REMEMBER NEWGROUNDS?'"
    text[2]="*dies*"
    break;
    case 3:
    text[1]="MR. SUS"
    text[2]="Cloud JR"
    break;
    case 4:
    text[1]="take a melody"
    text[2]="simple as can be"
    break;
    case 5:
    text[1]="S.N.U.H"
    text[2]="approved"
    break;
    case 6:
    text[1]="five nights"
    text[2]="at wegiels"
    break;
    case 7:
    text[1]="the"
    text[2]="winkle files"
    break;
    case 8:
    text[1]="like fnf"
    text[2]="but cooler"
    break;
    case 9:
    text[1]="gun in the bullet"
    text[2]="bullet in the gun"
    break;
    case 10:
    text[1]="call me tankman"
    text[2]="because this is ugh (meme)"
    break;
    case 11:
    text[1]="awaiting approval"
    text[2]="awaiting approval"
    break;
    case 12:
    text[1]="trans"
    text[2]="rights"
    break;
    case 13:
    text[1]="look at this trollface"
    text[2]=@"░░░░░▄▄▄▄▀▀▀▀▀▀▀▀▄▄▄▄▄▄░░░░░░░
░░░░░█░░░░▒▒▒▒▒▒▒▒▒▒▒▒░░▀▀▄░░░░
░░░░█░░░▒▒▒▒▒▒░░░░░░░░▒▒▒░░█░░░
░░░█░░░░░░▄██▀▄▄░░░░░▄▄▄░░░░█░░
░▄▀▒▄▄▄▒░█▀▀▀▀▄▄█░░░██▄▄█░░░░█░
█░▒█▒▄░▀▄▄▄▀░░░░░░░░█░░░▒▒▒▒▒░█
█░▒█░█▀▄▄░░░░░█▀░░░░▀▄░░▄▀▀▀▄▒█
░█░▀▄░█▄░█▀▄▄░▀░▀▀░▄▄▀░░░░█░░█░
░░█░░░▀▄▀█▄▄░█▀▀▀▄▄▄▄▀▀█▀██░█░░
░░░█░░░░██░░▀█▄▄▄█▄▄█▄████░█░░░
░░░░█░░░░▀▀▄░█░░░█░█▀██████░█░░
░░░░░▀▄░░░░░▀▀▄▄▄█▄█▄█▄█▄▀░░█░░
░░░░░░░▀▄▄░▒▒▒▒░░░░░░░░░░▒░░░█░
░░░░░░░░░░▀▀▄▄░▒▒▒▒▒▒▒▒▒▒░░░░█░
░░░░░░░░░░░░░░▀▄▄▄▄▄░░░░░░░░█░░"
    break;
    case 14:
    text[1]="hyperpop"
    text[2]="sucks WEINERS"
    break;
    case 15:
    text[1]="hive"
    text[2]="swap"
    break;
    case 16:
    text[1]="sows"
    text[2]="sows"
    break;
    case 17:
    text[1]="teacher: today we'll be doing homework"
    text[2]="kid named jeff:"
    break;
    case 18:
    text[1]="and bacon strips"
    text[2]="and bacon strips"
    break;
    case 19:
    text[1]="BOUNCY"
    text[2]="JUMPY DEATH"
    break;
    case 20:
    text[1]="BOLE TO"
    text[2]="IMPOSSIBLE"
    break;
    case 21:
    text[1]="funne"
    text[2]="IS MEAN ):<"
    break;
    case 22:
    text[1]="WELCOME"
    text[2]="TO HELL"
    break;
    case 23:
    text[1]="irony"
    text[2]="sux"
    break;
    case 24:
    text[1]="boyfriend"
    text[2]="is the best one"
    break;
    case 25:
    text[1]="pizza"
    text[2]="with the crust"
    break;
    case 26:
    text[1]="Minecraft"
    text[2]="AETHER BOSS"
    break;
    case 27:
    text[1]="STOP PUTTING MEMES"
    text[2]="IN YOUR FNF MODS"
    break;
    case 28:
    text[1]="you only have"
    text[2]="one dollar"
    break;
    case 29:
    text[1]="Mr. Douchebag"
    text[2]="mashups"
    break;
    case 30:
    text[1]="How It's Actually Made"
    text[2]="Chocolate Chip Cookies"
    break;
    case 31:
    text[1]="week 6 is"
    text[2]="the best fnf week"
    break;
    case 32:
    text[1]="casual"
    text[2]="and proud"
    break;
    case 33:
    text[1]="funny"
    text[2]="donut"
    break;
    case 34:
    text[1]="I want a week"
    text[2]="with a sock guy"
    break;
    case 35:
    text[1]="opperation"
    text[2]="steal disk 5"
    break;
    case 36:
    text[1]="Tyler"
    text[2]="is cool."
    break;
    case 37:
    text[1]="ITS CHRISTMAS"
    text[2]="ITS CHRISTMAS!"
    break;
    case 38:
    text[1]="i like"
    text[2]="bobo"
    break;
    case 39:
    text[1]="ooo"
    text[2]="ooo"
    break;
    case 40:
    text[1]="five nights"
    text[2]="at underdales's"
    break;
    case 41:
    text[1]="woohoo"
    text[2]="im a lamp"
    break;
    case 42:
    text[1]="hey."
    text[2]="you."
    break;
    case 43:
    text[1]="enjoy"
    text[2]="yourself"
    break;
    case 44:
    text[1]="Sick!!"
    text[2]="GET OFF MY SCREEN"
    break;
    case 45:
    text[1]="i should learn godot"
    text[2]="ill  do it later"
    break;
    case 46:
    text[1]="27$"
    text[2]="y'all are crazy"
    break;
    case 47:
    text[1]="yt has numa numa"
    text[2]="ng doesn't"
    break;
    case 48:
    text[1]="are you sure?"
    text[2]="charlie will miss you"
    break;
    case 49:
    text[1]="teh"
    text[2]="lazors"
    break;
    case 50:
    text[1]="sonci"
    text[2]="turns 30"
    break;
    case 51:
    text[1]="cd"
    text[2]="boy"
    break;
    case 52:
    text[1]="gunk"
    text[2]="the super star"
    break;
    case 53:
    text[1]="zoom"
    text[2]="quest"
    break;
    case 54:
    text[1]="newgrounds?"
    text[2]="more like n00bgrounds"
    break;
    case 55:
    text[1]="lol"
    text[2]="nothing 2 see here"
    break;
    case 56:
    text[1]="https://cdn.discordapp.com/attachments/838181752836456451/867943037148471337/unknown.png"
    text[2]="this image is funny"
    break;
    case 57:
    text[1]="wegiel"
    text[2]="weigel"
    break;
    case 58:
    text[1]="PIZZA!"
    text[2]="PIZZA!"
    break;
    case 59:
    text[1]="hi"
    text[2]="hi"
    break;
    case 60:
    text[1]="dont use the charter"
    text[2]="its scary"
    break;
    case 61:
    text[1]="pogo"
    text[2]="hammer"
    break;
    case 62:
    text[1]="AETHER"
    text[2]="GENESIS OF THE VOID"
    break;
    case 63:
    text[1]="1 3"
    text[2]="like if you get the joke"
    break;
    case 64:
    text[1]="sux"
    text[2]=""
    break;
    case 65:
    text[1]="LISA"
    text[2]="THE PAINFUL"
    break;
    case 66:
    text[1]="SPACE"
    text[2]="FUNERAL"
    break;
    case 67:
    text[1]="win"
    text[2]="big"
    break;
    case 68:
    text[1]="forever"
    text[2]="alone"
    break;
    case 69:
    text[1]="awesome"
    text[2]="awesome to the max"
    break;
    case 70:
    text[1]="bravo!"
    text[2]="bravo!"
    break;
    case 71:
    text[1]="pepsi"
    text[2]="idk"
    break;
    case 72:
    text[1]="you know who else"
    text[2]="plays fnf?"
    //nobody too important
    break;
    case 73:
    text[1]="ill be out of your hair"
    text[2]="forever"
    break;
    case 74:
    text[1]="time fades away"
    text[2]="like yesterday"
    break;
    case 75:
    text[1]="left"
    text[2]="right"
    break;
    case 76:
    text[1]="bleep"
    text[2]="bloorp"
    break;
    case 77:
    text[1]="pro tip"
    text[2]="git gud"
    break;
    case 78:
    text[1]="mondo"
    text[2]="mumo"
    break;
    case 79:
    text[1]="shout out"
    text[2]="to spirit"
    break;
    case 80:
    text[1]="sun"
    text[2]="vox"
    break;
    case 81:
    text[1]="ernies"
    text[2]="crazy deals"
    break;
    case 82:
    text[1]="did you see the perpetrator?"
    text[2]="yeah im right here"
    break;
    case 83:
    text[1]="Mr."
    text[2]="boom"
    break;
    case 84:
    text[1]="a o"
    text[2]="i i i i"
    break;
    case 85:
    text[1]="poppy"
    text[2]="fifi"
    break;
    case 86:
    text[1]="the only serious"
    text[2]="adam sandler movie"
    break;
    case 87:
    text[1]="seth from"
    text[2]="marble hornets"
    break;
    case 88:
    text[1]="reusable"
    text[2]="bomb buddy"
    break;
    case 89:
    text[1]="slender"
    text[2]="in gravity falls?"
    break;
    case 90:
    text[1]="beta"
    text[2]="1.7.3"
    break;
    case 91:
    text[1]="hey slick!"
    text[2]="whats up?"
    break;
    case 92:
    text[1]="writing these instead of"
    text[2]="working on the game"
    break;
    case 93:
    text[1]="the boys are back!"
    text[2]="... to kill you"
    break;
    case 94:
    text[1]="josh"
    text[2]="josh"
    break;
    case 95:
    text[1]="spoofy"
    text[2]="roofed"
    //hey I know this is going to date this code but if you had any dr chapter 2 songs in your 2021 spotifiy wrapped you have no life that game came out like a month ago
    break;
    case 96:
    text[1]="rubix"
    text[2]="cube"
    break;
    case 97:
    text[1]="cyber"
    text[2]="zone"
    break;
    case 98:
    text[1]="miku is to bf"
    text[2]="as charlie brown is to dude"
    break;
    case 99:
    text[1]="100TH LINE"
    text[2]="ULTRA RARE"
    break;
    case 100:
    text[1]="strad"
    text[2]="strom"
    break;
    case 101:
    text[1]="his name isn't Joey"
    text[2]="silly somethingawful"
    break;
    case 102:
    text[1]="gosh"
    text[2]="darnit"
    break;
    case 103:
    text[1]="I disagree with you"
    text[2]="im so cool"
    break;
    case 104:
    text[1]="very"
    text[2]="scary"
    break;
    case 105:
    text[1]="lag"
    text[2]="train"
    break;
    case 106:
    text[1]="the"
    text[2]="peeps"
    break;
    case 107:
    text[1]="kevin"
    text[2]="hart"
    break;
    case 108:
    text[1]="just programed downscroll"
    text[2]="you fuckers better be happy"
    break;
    case 109:
    text[1]="nimbasa"
    text[2]="core"
    break;
    case 110:
    text[1]="jumpscares"
    text[2]="stink!"
    break;
    case 111:
    text[1]="cant draw eyes"
    text[2]="so I draw dots"
    break;
    case 112:
    text[1]="DONT FEED"
    text[2]="THE MUSE"
    break;
    case 113:
    text[1]="you"
    text[2]="suck (:<"
    break;
    case 114:
    text[1]="serial"
    text[2]="madness"
    break;
    case 115:
    text[1]="cereal"
    text[2]="madness"
    break;
    case 116:
    text[1]="peppy"
    text[2]="pizza"
    break;
    case 117:
    text[1]="internet"
    text[2]="explorer"
    break;
    case 118:
    text[1]="hey watch this"
    text[2]="https://youtu.be/dFOZPyQoz18"
    break;
    case 119:
    text[1]="listen 2"
    text[2]="locked out of heaven"
    break;
    case 120:
    text[1]="17776"
    text[2]="-ampersand"
    break;
    case 121:
    text[1]="dude"
    text[2]="lady"
    break;
    case 122:
    text[1]="the"
    text[2]="awoglet how"
    break;
    case 123:
    text[1]="I've got"
    text[2]="the body of a pig"
    break
    case 124:
    text[1]="dude and lady are"
    text[2]="the fresno nightcrawlers"
    break;
    case 125:
    text[1]="green needle"
    text[2]="brain storm"
    break;
    case 126:
    text[1]="me talking with bit crush"
    text[2]="BVBBBVBVVVVBVVBVVV"
    break;
    case 127:
    text[1]="boneless"
    text[2]="pizza"
    break;
    case 128:
    text[1]="local"
    text[2]="icecream place"
    break;
    case 129:
    text[1]="427"
    text[2]="427"
    break;
    case 130:
    text[1]="schrodinger's"
    text[2]="nermal"
    break;
    case 131:
    text[1]="thwomp"
    text[2]="on a skateboard"
    break;
    case 132:
    text[1]="somebody stole my fucking soda"
    text[2]="can you even believe that"
    break;
    case 133:
    text[1]="LOOK HERE"
    text[2]="LISTEN"
    break;
    case 134:
    text[1]="index investing"
    text[2]="with cole"
    break;
    case 135:
    text[1]="I like how bf?"
    text[2]="Hold his microphone gay style"
    break;
    case 136:
    text[1]="hoo"
    text[2]="haa"
    break;
    case 137:
    text[1]="secret turning red"
    text[2]="island"
    break;
    case 138:
    text[1]="you look sad!"
    text[2]="please poke your#head into the future"
    break;
    case 139:
    text[1]="this game sucks"
    text[2]="dont play it"
    break;
    case 140:
    text[1]="mario"
    text[2]="get your shit together"
    break;
    case 141:
    text[1]="make like"
    text[2]="an apeman"
    break;
    case 142:
    text[1]="under"
    text[2]="construction"
    break;
    case 143:
    text[1]="chimp"
    text[2]="game"
    break;
    case 144:
    text[1]="yummer"
    text[2]="yummer"
    break;
    case 145:
    text[1]="family man"
    text[2]="online"
    break;
    case 146:
    text[1]="I AM"
    text[2]="ERROR"
    break;
    case 147:
    text[1]="turn that"
    text[2]="crap off"
    break;
    case 148:
    text[1]="stone"
    text[2]="cutter"
    break;
    case 149:
    text[1]="play him off,"
    text[2]="keyboard kat!"
    break;
    case 150:
    text[1]="USB"
    text[2]="optical duck mouse"
    break;
    case 151:
    text[1]="don't cry!"
    text[2]="CRAFT!"
    break;
    case 152:
    text[1]="grupheetie"
    text[2]="(:"
    break;
    case 153:
    text[1]="teachvee says"
    text[2]="hoilio"
    break;
    case 154:
    text[1]="PLEASE DONT"
    text[2]="reupload the music"
    break;
    case 155:
    text[1]="they did surgery"
    text[2]="on a grape"
    break;
    case 156:
    text[1]="INCOMING"
    text[2]="FUMP"
    break;
    case 157:
    text[1]="bug fixed"
    text[2]="i fixed the bug"
    break;
    case 158:
    text[1]="it could let in"
    text[2]="a giraffe?"
    break;
    case 159:
    text[1]="slug"
    text[2]="conspiracy"
    break;
    case 160:
    text[1]="theres an evil man"
    text[2]="behind you..."
    break;
    case 161:
    text[1]="special thanks"
    text[2]="to other guy"
    break;
    case 162:
    text[1]="INCOMING"
    text[2]="FLUMP"
    break;
    case 163:
    text[1]="they do"
    text[2]="they do"
    break;
    case 164:
    text[1]="jeff"
    text[2]="geoff"
    break;
    case 165:
    text[1]="yeah sure you"
    text[2]="'accidentally' did that"
    break;
    case 166:
    text[1]="hardware"
    text[2]="store"
    break;
    case 167:
    text[1]="my marbles"
    text[2]="they're everywhere"
    break;
    case 168:
    text[1]="down"
    text[2]="town"
    break;
    case 169:
    text[1]="WE RAN OVER"
    text[2]="OPRAH"
    break;
    case 170:
    text[1]="WOW NUMBER 7"
    text[2]="WAY TO GO CHAMP"
    break;
    case 171:
    text[1]="quest"
    text[2]="1/2"
    break;
    case 172: //this is a mother 3 reference, theres no arg
    text[1]="[FILE='."
    text[2]="-8e.txt']"
    break;
    case 173:
    text[1]="is it a beard"
    text[2]="or a smile"
    break;
    case 174:
    text[1]="become the"
    text[2]="karokate master"
    break;
    case 175:
    text[1]="there is no"
    text[2]="ARG"
    break;
    case 176:
    text[1]="easy"
    text[2]="money"
    break;
    case 177:
    text[1]="vanilia"
    text[2]="crazy cake"
    break;
    case 178:
    text[1]="SNACK"
    text[2]="BAR"
    break;
    case 179:
    text[1]="Hey!"
    text[2]="Wheres my phone!"
    break;
    case 180:
    text[1]="fancy"
    text[2]="meat computer"
    break;
    case 181:
    text[1]="chair"
    text[2]="dude"
    break;
    case 182:
    text[1]="six seasons"
    text[2]="and a movie"
    break;
    case 183:
    text[1]="lorem"
    text[2]="ipsum"
    break;
    case 184:
    text[1]="the enemies"
    text[2]="from skywire"
    break;
    case 185:
    text[1]="Droopy looked"
    text[2]="under a tree"
    break;
    case 186:
    text[1]="no one was"
    text[2]="there."
    break;
    case 187:
    text[1]="%$!&ING MAGNETS"
    text[2]="HOW DO THEY WORK?"
    break;
    case 188:
    text[1]="the gone part"
    text[2]="is my favorite part"
    break;
    case 189:
    text[1]="buddy"
    text[2]="333"
    break;
    case 190:
    text[1]="pizza!"
    text[2]="pizza!"
    break;
    case 191:
    text[1]="there once was"
    text[2]="a man from kentucky"
    break;
    case 192:
    text[1]="colbert"
    text[2]="bump"
    break;
    case 193:
    text[1]="home"
    text[2]="movies"
    break;
    case 194:
    text[1]="rock my"
    text[2]="text strings"
    break;
    case 195:
    text[1]="I'm home!"
    text[2]="THE END"
    break;
    case 196:
    text[1]="puts on cool glasses"
    text[2]="hmmm"
    break;
    case 197:
    text[1]="RED LIGHT"
    text[2]="GREEN LIGHT"
    break;
    case 198:
    text[1]="you dont have"
    text[2]="enough floppys"
    break;
    case 199: //LINE 200
    text[1]="haunted website"
    text[2]="much horror"
    break;
    case 200:
    text[1]="duck"
    text[2]="dynasty"
    break;
    case 201:
    text[1]="YOU CANNOT"
    text[2]="BEAT US"
    break;
    case 202:
    text[1]="I'm using"
    text[2]="tilt controls!"
    break;
    case 203:
    text[1]="purple blue"
    text[2]="green red"
    break;
    case 204:
    text[1]="THUMB"
    text[2]="WARS"
    break;
    case 205:
    text[1]="SONCI"
    text[2]="THE GROUNDHOG"
    break;
    case 206:
    text[1]="who are you"
    text[2]="hero dude?"
    break;
    case 207:
    text[1]="im indiana"
    text[2]="joe!"
    break;
    case 208:
    text[1]="hey ash,"
    text[2]="what'cha playing?"
    break;
    case 209:
    text[1]="Dominos"
    text[2]="Feat Hatsune Miku"
    break;
    case 210:
    text[1]="there is"
    text[2]="cd boy"
    break;
    case 211:
    text[1]="oh yo"
    text[2]="its a donut"
    break;
    case 212:
    text[1]="HERES ONE WALL"
    text[2]="YOU'LL NEVER CRAWL!"
    break;
    case 213:
    text[1]="Damn you!"
    text[2]="Muscle memory!"
    break;
    case 214:
    text[1]="best"
    text[2]="seller"
    break;
    case 215:
    text[1]="limited"
    text[2]="edition"
    break;
    case 216:
    text[1]="deletes your sys32"
    text[2]="as a joke"
    break;
    case 217:
    text[1]="cow"
    text[2]="tools"
    break;
    case 218:
    text[1]="Stay calm"
    text[2]="I'm here to help"
    break;
    case 219:
    text[1]="strong"
    text[2]="yet sensible"
    break;
    case 220:
    text[1]="just"
    text[2]="for you"
    break;
    case 221:
    text[1]="creature"
    text[2]="feature"
    break;
    case 222:
    text[1]="planet so small"
    text[2]="it could fit in#your hands"
    break;
    case 223:
    text[1]="P"
    text[2]="Go for perfect!"
    break;
    case 224:
    text[1]="explodes"
    text[2]="cutely"
    break;
    case 225:
    text[1]="press & hold control"
    text[2]="to skip long intros"
    break;
    case 226:
    text[1]="Cyan magenta"
    text[2]="yellow key"
    break;
    case 227:
    text[1]="cool boys"
    text[2]="united"
    break;
    case 228:
    text[1]="stylistic"
    text[2]="suck"
    break;
    case 229:
    text[1]="duels decide"
    text[2]="everything"
    break;
    case 230:
    text[1]="movie"
    text[2]="night"
    break;
    case 231:
    text[1]="I am made of blue skies"
    text[2]="and golden light"
    break;
    case 232:
    text[1]="lady with a big nose"
    text[2]=": - )"
    break;
    case 233:
    text[1]="cake"
    text[2]="and a %$!&ing party"
    break;
    case 234:
    text[1]="casino"
    text[2]="in my hair"
    break;
    case 235:
    text[1]="it'll look way better"
    text[2]="interpolated"
    break;
    case 236:
    text[1]="achievement"
    text[2]="unlocked!"
    break;
    case 237:
    text[1]="INTERGALATIC"
    text[2]="PLANETARY"
    break;
    case 238:
    text[1]="dope"
    text[2]="fish"
    break;
    case 239:
    text[1]="ass blast"
    text[2]="usa"
    break;
    case 240:
    text[1]="in the hurricane"
    text[2]="season show"
    break;
    case 241:
    text[1]="fleam does"
    text[2]="nothing"
    break;
    case 242:
    text[1]="YOU BROUGHT"
    text[2]="YOUR DOG?"
    break;
    case 243:
    text[1]="i like"
    text[2]="turtles"
    break;
    case 244:
    text[1]="hot-air"
    text[2]="balloon"
    break;
    case 245:
    text[1]="I AM"
    text[2]="TICKED OFF"
    break;
    case 246:
    text[1]="money radar"
    text[2]="activate!"
    break;
    case 247:
    text[1]="somethings wrong with--"
    text[2]="OWOWOWOWOWOWOWOW"
    break;
    case 248:
    text[1]="razor"
    text[2]="sharp"
    break;
    case 249:
    text[1]="cute"
    text[2]="and badass"
    break;
    case 250:
    text[1]="not associated"
    text[2]="with evil people"
    break;
    case 251:
    text[1]="not"
    text[2]="cool dude"
    break;
    case 252:
    text[1]="POWER LEVEL:"
    text[2]="fump"
    break;
    case 253:
    text[1]="no keygen"
    text[2]="needed"
    break;
    case 254:
    text[1]="oh"
    text[2]="nuts!"
    break;
    case 255:
    text[1]="lying 3"
    text[2]="lady"
    break;
    case 256:
    text[1]="YOU CAN'T COPYRIGHT"
    text[2]="THE PHRASE PORTAL 2"
    break;
    case 257:
    text[1]="sequel coming out"
    text[2]="next week"
    break;
    case 258:
    text[1]="physical"
    text[2]="exclusive"
    break;
    case 259:
    text[1]="making colors"
    text[2]="in the sky"
    break;
    case 260:
    text[1]="meat"
    text[2]="helmet"
    break;
    case 261:
    text[1]="RT FOR FREE"
    text[2]="CORENTHAL LETRE"
    break;
    case 262:
    text[1]="its kinda cheesy"
    text[2]="but whatever"
    break;
    case 263:
    text[1]="you dont know"
    text[2]="what that word means"
    break;
    case 264:
    text[1]="thats funny"
    text[2]="thank you"
    break;
    case 265:
    text[1]="lemon"
    text[2]="head"
    break;
    case 266:
    text[1]="text[1]"
    text[2]="text[2]"
    break;
    case 267:
    text[1]="i feel"
    text[2]="fantastic"
    break;
    case 268:
    text[1]="purple"
    text[2]="dude"
    break;
    case 269:
    text[1]="PLAY ME OUT"
    text[2]="PIANO MAN!"
    break;
    case 270:
    text[1]="tell me a"
    text[2]="duck story"
    break;
    case 271:
    text[1]="you just unlocked"
    text[2]="a secret song!"
    break;
    case 272:
    text[1]="it is"
    text[2]="fate"
    break;
    case 273:
    text[1]="yummy"
    text[2]="chips"
    break;
    case 274:
    text[1]="standard"
    text[2]="edition"
    break;
    case 275:
    text[1]="can i eat"
    text[2]="bug"
    break;
    case 276:
    text[1]="break;"
    text[2]="fast"
    break;
    case 277:
    text[1]="looks up from toilet"
    text[2]="willy wonka...."
    break;
    case 278:
    text[1]="aint got no iphone"
    text[2]="got a ds"
    break;
    case 279:
    text[1]="oh"
    text[2]="i didn't see you there"
    break;
    case 280:
    text[1]="my brother hates me"
    text[2]=":(" //-funne
    break;
    case 281:
    text[1]="got nominated once"
    text[2]="twice"
    break;
    case 282:
    text[1]="yeah"
    text[2]="man"
    break;
    case 283:
    text[1]="exploring"
    text[2]="his world"
    break;
    }
draw_text(x,y,string_hash_to_newline(text[1]))
break;
case 6:
    draw_text(x,y,string_hash_to_newline(text[1]))
    draw_text(x,y+20,string_hash_to_newline(text[2]))
break;
case 7:
    draw_text(x,y,string_hash_to_newline("FNF"))
break;
case 8:
    draw_text(x,y,string_hash_to_newline("FNF"))
    draw_text(x,y+20,string_hash_to_newline("FREE"))
break;
case 9:
    draw_text(x,y,string_hash_to_newline("FNF"))
    draw_text(x,y+20,string_hash_to_newline("FREE"))
    draw_text(x,y+40,string_hash_to_newline("DOWNLOAD"))
break;
}
draw_set_halign(fa_left);

/* */
/*  */
