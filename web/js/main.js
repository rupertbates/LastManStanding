var fixtures;

var jqxhr = $.getJSON("js/fixtures.json",
    function (json) {
        fixtures = json;
        setupKnockout();

    }).error(function (msg) {
        alert("error" + msg);
    });

setupKnockout = function(){
    var SimpleListModel = function(items) {
        this.items = ko.observableArray(items);
        this.itemToAdd = ko.observable("");
        this.addItem = function() {
            if (this.itemToAdd() != "") {
                this.items.push(this.itemToAdd()); // Adds the item. Writing to the "items" observableArray causes any associated UI to update.
                this.itemToAdd(""); // Clears the text box, because it's bound to the "itemToAdd" observable
            }
        }.bind(this);  // Ensure that "this" is always this view model
    };

    ko.applyBindings(new SimpleListModel(fixtures.days));
}

