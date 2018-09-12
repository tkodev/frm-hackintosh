function sys_version() {
    var regexp = /Mac\s+OS\s+X\s+([0-9]+)_([0-9]+)/;
    
    var results = regexp.exec(navigator.userAgent);
    
    var major=results[1];
    var minor=results[2];

    return major + "." + minor;
}
