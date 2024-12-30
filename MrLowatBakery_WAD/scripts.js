// ------------- Register form validation
function validateRegisterForm(e) {
  const email = document.getElementById('email').value;
  const username = document.getElementById('username').value;
  const password = document.getElementById('password').value;
  const confirmPassword = document.getElementById('confirmPassword').value;
  const address = document.getElementById('address').value;
  const tel = document.getElementById('tel').value;
  const dob = document.getElementById('dob').value;
  const accept = document.getElementById('accept').checked;

  let errorMessages = [];

  // Email validation
  if (!email.includes('@')) {
      errorMessages.push('Please enter a valid email address.');
  }

  // Password validation
  if (password.length < 6) {
      errorMessages.push('Password must be at least 6 characters long.');
  }
  if (password !== confirmPassword) {
      errorMessages.push('Passwords do not match.');
  }

  // Required fields validation
  if (!username || !address || !tel || !dob) {
      errorMessages.push('All fields are required.');
  }

  // Telephone validation
  const telRegex = /^[0-9]{3}-[0-9]{7}$/;
  if (!telRegex.test(tel)) {
      errorMessages.push('Telephone must be in the format 01X-0000000.');
  }

  // Terms and conditions validation
  if (!accept) {
      errorMessages.push('You must accept the Terms and Conditions.');
  }

  // Show error messages if any
  if (errorMessages.length > 0) {
      e.preventDefault(); // Prevent form submission
      alert(errorMessages.join('\n'));
  }
}

// ------------- Login form validation
function validateLoginForm(e) {
  const email = document.getElementById('email').value;
  const password = document.getElementById('password').value;

  let errorMessages = [];

  // Email validation
  if (!email.includes('@')) {
      errorMessages.push('Please enter a valid email address.');
  }

  // Password validation
  if (!password) {
      errorMessages.push('Please enter your password.');
  }

  // Show error messages if any
  if (errorMessages.length > 0) {
      e.preventDefault(); // Prevent form submission
      alert(errorMessages.join('\n'));
  }
}

// Event listeners for forms
document.addEventListener('DOMContentLoaded', function () {
  const registerForm = document.getElementById('registerForm');
  const loginForm = document.getElementById('loginForm');

  if (registerForm) {
      registerForm.addEventListener('submit', validateRegisterForm);
  }

  if (loginForm) {
      loginForm.addEventListener('submit', validateLoginForm);
  }
});

// ------------- Forgot password form validation

document.addEventListener("DOMContentLoaded", () => {
    // Validation for Forgot Password Form
    const forgotPasswordForm = document.getElementById("forgotPasswordForm");
    if (forgotPasswordForm) {
      forgotPasswordForm.addEventListener("submit", (e) => {
        e.preventDefault();
        const email = document.getElementById("email").value;
  
        if (!validateEmail(email)) {
          alert("Please enter a valid email address.");
          return;
        }
  
        // Simulate sending a password reset email
        alert(`A password reset link has been sent to ${email}.`);
        forgotPasswordForm.reset();
      });
    }
  
    // Utility Function for Email Validation
    function validateEmail(email) {
      const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      return emailRegex.test(email);
    }
  });
  
