<script>
    // Logout function
    function logout() {
        alert('Logged out successfully!');
        window.location.href = 'index.html'; // Redirect to homepage
    }

    // Function to show Profile Section
    function showProfile() {
        resetSections();
        document.querySelector('.profile-content').style.display = 'block';
    }

    // Function to show Orders Section
    function showOrders() {
        resetSections();
        document.querySelector('.orders-content').style.display = 'block';
    }

    // Function to show Products Section
    function showProducts() {
        resetSections();
        document.querySelector('.products-content').style.display = 'block';
    }

    // Function to show Users Section
    function showUsers() {
        resetSections();
        document.querySelector('.users-content').style.display = 'block';
    }

    // Reset all sections visibility
    function resetSections() {
        const sections = document.querySelectorAll('.section-content');
        sections.forEach(section => {
            section.style.display = 'none';
        });
    }

    // Display Menu Section first
    window.onload = function() {
        resetSections();
        document.querySelector('.menu-content').style.display = 'block';
    }
</script>