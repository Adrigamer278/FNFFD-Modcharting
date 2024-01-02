if pause=false or stayvisable=true {
    draw_sprite_ext(spr_textbox,0,0,0,1,1,0,c_white,0.5)
    draw_set_font(fnt_comic1)
    //text
    var s;
    for (s=1;s<=i;s++) {
        if s=1 { //reset values
            //general values
            var ns=0
            var tm=0
            var addy=0
            //effects values
            var wave=false
            var shake=false
            var crazyx=0
            var crazyy=0
            //color values
            scr_textboxcoloring();
        }
        //changing color might be abit weird when the main
        //identifier of what characters are talking is color but its funny
        //seeing dude play up three digit numbers in multiplication
        if string_char_at(txt[text],s+addy)="^" { //changing color
            switch(string_char_at(txt[text],s+addy+1)) {
                case "W": //default
                    scr_textboxcoloring();
                break;
                case "R": //red
                    color1 = make_colour_rgb(237,28,36)
                    color2 = make_colour_rgb(136,0,21)
                break;
                case "G": //green
                    color1 = make_colour_rgb(56,150,80)
                    color2 = make_colour_rgb(40,119,73)
                break;
                case "B": //blue
                    color1 = make_colour_rgb(54,92,226)
                    color2 = make_colour_rgb(62,37,199)
                break;
                case "Y": //yellow
                    color1 = make_colour_rgb(255,255,128)
                    color2 = make_colour_rgb(220,210,88)
                break;
                case "P": //purple
                    color1 = make_colour_rgb(190,146,239)
                    //color2 = make_colour_rgb(162,98,232)
                    color2 = make_colour_rgb(101,27,184)
                break;
                case "C": //cyan
                    color1 = make_colour_rgb(28,218,234)
                    color2 = make_colour_rgb(20,116,173)
                break;
                case "S": //gunk seafoam
                    color1 = make_colour_rgb(141,245,217)
                    color2 = make_colour_rgb(91,234,220)
                break;
                case "Q": //cd boy grey
                    color1 = make_colour_rgb(192,192,192)
                    color2 = make_colour_rgb(157,159,179)
                break;
                case "A": //cd boy orange
                    color1 = make_colour_rgb(255,184,113)
                    color2 = make_colour_rgb(189,90,34)
                break;
                case "Z": //cd boy red
                    color1 = make_colour_rgb(255,128,217)
                    color2 = make_colour_rgb(231,78,104)
                break;
                case "X": //cd boy green
                    color1 = make_colour_rgb(143,239,143)
                    color2 = make_colour_rgb(92,208,143)
                break;
                case "x": //cd boy blue
                    color1 = make_colour_hsv(160,97,136)
                    color2 = make_colour_hsv(164,91,103)
                break;
                case "1":
                    color1 = make_color_hsv(210,16,78)
                    color2 = make_color_hsv(0,12,100)
                break;
            }
            addy+=2
        }
        //special effects
        //"why are these such weird character?"
        //because I wanted them to be! live a little!!!
        if string_char_at(txt[text],s+addy)="✓" { 
            switch(string_char_at(txt[text],s+addy+1)) {
                case "W": //reset
                    wave=false
                    shake=false
                    crazyx=0
                    crazyy=0
                break;
                case "㋡": //wavey
                    wave=true
                break;
                case "♠": //shake
                    shake=true
                break;
                case "🐱": // nermal
                    var nermal=true
                break;
                case "𓈝":
                break;
            }
            addy+=2
        }
        //effects
        if wave=true {
            crazyy=(-2+(sin(current_time/100+s)*2))
        }
        if shake=true {
            crazyx=-1+random(2)
            crazyy=-1+random(2)
        }
        //next line
        if string_char_at(txt[text],s+addy) = "#" {
            ns+=10
            tm=s
        }
        //draw text shadow
        var xx;
        var yy;
        for (xx=0;xx<=7;xx++) {
            for (yy=0;yy<=7;yy++) {
                if xx != 0 && yy != 0 {
                    //text shadow
                    draw_set_color(c_black)
                    draw_set_font(font)
                    draw_text_transformed((textx+((s-tm)*5))*4+xx-4+crazyx,(138+ns)*4+yy-4+crazyy,string_hash_to_newline(string_char_at(txt[text],s+addy)),2,2,0)
                    draw_text_transformed((textx+((s-tm)*5))*4+xx-4+2+crazyx,(138+ns)*4+yy-4+2+crazyy,string_hash_to_newline(string_char_at(txt[text],s+addy)),2,2,0)
                    //name shadow
                    draw_set_font(namefont)
                    draw_text_transformed(textx*4+xx-4,113*4+yy-4,string_hash_to_newline(name),2,2,0)
                    draw_text_transformed(textx*4+xx-4+2,113*4+yy-4+2,string_hash_to_newline(name),2,2,0)
                    draw_set_color(c_white)
                } //235
            }
        }
        //draw words
        draw_set_font(font)
        draw_text_transformed_colour((textx+((s-tm)*5))*4+crazyx,(138+ns)*4+crazyy,string_hash_to_newline(string_char_at(txt[text],s+addy)),2,2,0,color1,color1,color2,color2,1)
        //draw name
        draw_set_font(namefont)
        draw_text_transformed_colour(textx*4,113*4,string_hash_to_newline(name),2,2,0,namecolor1,namecolor1,namecolor2,namecolor2,1)
    }
}

