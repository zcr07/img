var FindProxyForURL = function(init, profiles) {
    return function(url, host) {
        "use strict";
        var result = init, scheme = url.substr(0, url.indexOf(":"));
        do {
            result = profiles[result];
            if (typeof result === "function") result = result(url, host, scheme);
        } while (typeof result !== "string" || result.charCodeAt(0) === 43);
        return result;
    };
}("+10808", {
    "+10808": function(url, host, scheme) {
        "use strict";
        if (host === "127.0.0.1" || host === "::1" || host.indexOf(".") < 0) return "DIRECT";
        return "PROXY 127.0.0.1:10809";
    }
});