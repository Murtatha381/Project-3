// The url with data
const url = "/Users/iman/Desktop/Homework/Project-3/Html/data.json"

// Display the default plots
function init() {

    // Use D3 to select the dropdown menu
    let dropdownMenu = d3.select("#selDataset");

    // Fetch the JSON data and console log it
    d3.json(url).then((data) => {
        console.log(`Data: ${data}`);

        // An array of locations
        let countries = data.countries;

        // Iterate through the countries Array
        countries.forEach((country) => {
            // Append each country as an option to the drop down menu
            // This is adding each country to the html file as an option element with value = a country in the countries array
            dropdownMenu.append("option").text(country).property("value", country);
        });
        
        // Assign the first name to name variable
        let country = countries[0];

        // Call the functions to make the demographic panel, bar chart, and bubble chart
        demo(country);
        bar(country);
    });
}



