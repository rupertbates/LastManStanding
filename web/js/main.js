var fixtures;

var jqxhr = $.getJSON("js/fixtures.json",
    function (json) {
        fixtures = json
    }).error(function (msg) {
        alert("error" + msg);
    });

