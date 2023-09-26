
// Function to load CSV data
function loadCSV(url, callback) {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState === 4 && xhr.status === 200) {
            callback(xhr.responseText);
        }
    };
    xhr.open("GET", url, true);
    xhr.send();
}

// Function to populate the drop-down menu
function populateDropdown(csvData) {
    var lines = csvData.split("\n");
    var dropdown = document.getElementById("dropdown");

    for (var i = 1; i < lines.length; i++) {
        var parts = lines[i].split(",");
        var value = parts[0]; 

        var option = document.createElement("option");
        option.value = value;
        option.text = value;
        dropdown.appendChild(option);
    }
}

// Load the CSV file and populate the drop-down menu
loadCSV("../Resources/percentages_df.csv", populateDropdown);





