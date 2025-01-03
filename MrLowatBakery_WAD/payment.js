// payment.js

// Sample profile object (this could come from a database or API in real scenarios)
const profile = {
    name: 'John Doe',
    email: 'johndoe@example.com',
    address: '123 Main St, Apt 4B, Cityville, State, 12345'
};

// Function to populate the address field with the customer's profile data
function populateProfileData() {
    const addressField = document.getElementById('address');

    if (profile && profile.address) {
        addressField.value = profile.address; // Auto-fill the address field
    }
}

// Run the function when the page loads
document.addEventListener('DOMContentLoaded', populateProfileData);
