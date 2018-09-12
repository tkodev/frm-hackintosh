var scripts= document.getElementsByTagName('script');
var path= scripts[scripts.length-1].src.split('?')[0];      // remove any ?query
var mydir= path.split('/').slice(0, -1).join('/')+'/';  // remove last filename part of path

function insertGraphics(lores, hires, width, height, tag_class, alt) {
	var lo_class;
	var hi_class;

	if (tag_class.length == 0) {
		lo_class = 'lores';
		hi_class = 'hires';
	} else {
		lo_class = tag_class + ' lores';
		hi_class = tag_class + ' hires';
	}

    document.write('<img class="' + lo_class + '" src="' + lores + '" height="' + height + '" width="' + width + '" alt="' + alt + '" />');
    document.write('<img class="' + hi_class + '" src="' + hires + '" height="' + height + '" width="' + width + '" alt="' + alt + '" />');
}

function insertAppIcon(size, tag_class) {
	insertGraphics(mydir + '../gfx/Pacifist_' + size + '.png', mydir + '../gfx/Pacifist_' + size * 2 + '.png', size, size, tag_class, 'Pacifist Icon');
}

function insertHeaderAppIcon() {
	insertAppIcon(64, 'header_icon');
}
