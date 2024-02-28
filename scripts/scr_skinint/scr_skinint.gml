function scr_skinint(argument0) {
	with(obj_stats) {
		skinrainbow=false
	    switch(argument0) {
	        default: //default
	            colorhat=$8D97C2
	            colorskin=$EED6C4
	            colorhair=$473E38
	            colorshirt=$D7799C
	            colorstripe=$653662
	            colorpants=$5F5492
	            colorshoes=$353344
	        break;
	        case 1: //lemon lime
	            colorhat=$333333
	            colorskin=$EED6C4
	            colorhair=$46A485
	            colorshirt=$E8E275
	            colorstripe=$E3A479
	            colorpants=$16342B
	            colorshoes=$333333
	        break;
	        case 2: //edud
	            colorhat=$D7799C
	            colorskin=$EED6C4
	            colorhair=$353344
	            colorshirt=$8D97C2
	            colorstripe=$5F5492
	            colorpants=$653662
	            colorshoes=$473E38
	        break;
	        case 3: //nightmode
	            colorhat=$000000
	            colorskin=$EED6C4
	            colorhair=$4000000
	            colorshirt=$000000
	            colorstripe=$000000
	            colorpants=$000000
	            colorshoes=$000000
	        break;
	        case 4: //free dude
	            colorhat=$F08A4A
	            colorskin=$EED6C4
	            colorhair=$664642
	            colorshirt=$A3C7DD
	            colorstripe=$234C7A
	            colorpants=$9A8778
	            colorshoes=$473732
	        break;
	        case 5: //childish prankster
	            colorhat=$FF503D
	            colorskin=$FFEC03
	            colorhair=$FFEC03
	            if obj_stats.bluedude = false {
	                colorshirt=$FF503D
	                colorstripe=$FF503D
	            } else {
	                colorshirt=$8BC5D8
	                colorstripe=$8BC5D8
	            }
	            colorpants=$3359C9
	            colorshoes=$4C4C4C
	        break;
	        case 6: //supic
	            colorhat=$433634
	            colorskin=$FFD0A6
	            colorhair=$B58658
	            colorshirt=$E74D52
	            colorstripe=$433634
	            colorpants=$433634
	            colorshoes=$95898D
	        break;
	        case 7: //weirdo dude
	            colorhat=$836D61
	            colorskin=$F7DCE5
	            colorhair=$4F4B3F
	            colorshirt=$C06779
	            colorstripe=$80373D
	            colorpants=$71A7BB
	            colorshoes=$4A2C2A
	        break;
	        case 8: //week-old bubble gum
	            colorhat=$000000
	            colorskin=$FFE3B0
	            colorhair=$FF79BC
	            colorshirt=$000000
	            colorstripe=$FC7FFF
	            colorpants=$FC7FFF
	            colorshoes=$000000
	        break;
	        case 9: //sour patch mellon
	            colorhat=$6BFFA7
	            colorskin=$EED6C4
	            colorhair=$000000
	            colorshirt=$FF7ABC
	            colorstripe=$800303
	            colorpants=$000000
	            colorshoes=$000000
	        break;
	        case 10: //poop dude.
	            colorhat=$714722
	            colorskin=$EED6C4
	            colorhair=$714722
	            colorshirt=$714722
	            colorstripe=$714722
	            colorpants=$714722
	            colorshoes=$714722
	        break;
	        case 11: //kevin
	            colorhat=$000000
	            colorskin=$EED6C4
	            colorhair=$473E38
	            colorshirt=$E0AC7C
	            colorstripe=$653662
	            colorpants=$262F59
	            colorshoes=$000000
	        break;
	        case 12: //eyestrain
	            colorhat=$8C9CFF
	            colorskin=$FDDBCF
	            colorhair=$473E38
	            colorshirt=$E377B9
	            colorstripe=$9D285C
	            colorpants=$1850C7
	            colorshoes=$4A4D4A
	        break;
	        case 13: //pastele
	            colorhat=$92F0D0
	            colorskin=$EED6C4
	            colorhair=$473E38
	            colorshirt=$C8BFE7
	            colorstripe=$92F0D0
	            colorpants=$5F5492
	            colorshoes=$92F0D0
	        break;
	        case 14: //web freak
	            colorhat=$603154
	            colorskin=$CD9C78
	            colorhair=$75D3E8
	            colorshirt=$297665
	            colorstripe=$81D8BF
	            colorpants=$454360
	            colorshoes=$0C3F49
	        break;
	        case 15: //best friend
	            colorhat=$853F5A
	            colorskin=$744D4C
	            colorhair=$453240
	            colorshirt=$3A323F
	            colorstripe=$CEBEB9
	            colorpants=$7E6D6D
	            colorshoes=$3A323F
	        break;
	        case 16: //extra dudextral
	            colorhat=$CB4EEB
	            colorskin=$9BE693
	            colorhair=$983658
	            colorshirt=$273F3F
	            colorstripe=$89E2D8
	            colorpants=$273F3F
	            colorshoes=$6169D8
	        break;
	        case 17: //crescent
	            colorhat=$649BAF
	            colorskin=$FED138
	            colorhair=$649BAF
	            colorshirt=$000000
	            colorstripe=$000000
	            colorpants=$000000
	            colorshoes=$000000
	        break;
	        case 18: //???
	            colorhat=$C05064
	            colorskin=$EED6C4
	            colorhair=$85C7DD
	            colorshirt=$F9DDED
	            colorstripe=$B24A5C
	            colorpants=$615792
	            colorshoes=$C05064
			break;
			case 19: // rainbow dude
				scr_skinint(0); // default
				skinrainbow=true;
	        break;
	    }
	}



}
