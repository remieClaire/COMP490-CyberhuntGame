depth = -999;

//sequential event parameter
callback = undefined;

//text parameters
textbox_width = 214;
textbox_height = 70;
//margins from edges of box
border = 8;
//space between text vertically
vert_line_sep = 12;
//overall width of a line of text
line_width = textbox_width - border*2;
textb_spr = spr_blueBox;
textb_img = 0;
text_img_spd = 0; //used if char has talking animation, but kept to prevent confusion

//the text
page = 0;
page_number = 0;
text[0] = "";
//the typing effect
text_length[0] = string_length(text[0]); //returns number of characters in string
draw_char = 0; //dictates how many characters being drawn of our string
text_spd = 1;

setup = false; //checks if a setup is done