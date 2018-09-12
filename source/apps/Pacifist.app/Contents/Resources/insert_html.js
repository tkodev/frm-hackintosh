function downloadHTML(url) {
    try {
        var request = new XMLHttpRequest();
        
        if (!request) {
            return "<h1>Error initializing XMLHttpRequest</h1>";
        }

        request.open('GET', url, false);
        request.send(null);
        
        if (request.status != 200 && request.status != 0) {
            return "Failed with status " + request.status;
        }
        
        var response = request.responseText;
        
        if (response.length > 0) {
            var begin = response.indexOf('>', response.indexOf('<body')) + 1;
            var end = response.lastIndexOf('</body>');
            var body = response.substring(begin, end);
            
            return body;
        }
 
        return "Unknown error";
    } catch(err) {
        return "<h1>Error: " + err.description + "</h1>";
    }
}
