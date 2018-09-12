function insertMailto(textContent, subject) {
    mailme(subject);
    document.write(textContent);
    endmailme();
}

function mailme(subject) {
	document.write('<a href="mailto:');
	
    printaddress();
    
    if (subject) {
        document.write('?subject=' + subject);
    }
    
    document.write('" &onMouseOver="sendmesomemail();">');
}

function myaddress() {
    var seg4="charlessoft";
	var seg2="support";
	var seg1=String.fromCharCode(64);
	var seg3=".com";
	
    return seg2+seg1+seg4+seg3;
}

function mailOther(seg3,seg1,seg2) {
	document.write('<a href="mailto:');
	printOtherAddress(seg3,seg1,seg2);
	document.write('">');
}

function printaddress() {
	document.write(myaddress());
}

function printPPAddress() {
	var seg3=".com";
	var seg2="paypal";
	var seg1=String.fromCharCode(64);
	var seg4="charlessoft";
	var addy=seg2+seg1+seg4+seg3;
	document.write(addy);
}

function printOtherAddress(seg3,seg1,seg2) {
	var youknowwhat=String.fromCharCode(64);
	var anotherthing=String.fromCharCode(46);
	var addy=seg1+youknowwhat+seg2+anotherthing+seg3;
	document.write(addy);
}

function endmailme() {
	document.write('</a>');
}

function sendmesomemail() {
	window.status='Send me some e-mail!';
}
