// Utility Function for Email Validation
function validateEmail(email) {
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return emailRegex.test(email);
}

// Utility Function for Password Validation
function validatePassword(password) {
  const passwordPattern = /^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{6,8}$/;
  return passwordPattern.test(password);
}

// Registration Form Validation
function validateRegisterForm(e) {
  const email = document.getElementById('email').value;
  const username = document.getElementById('username').value;
  const password = document.getElementById('password').value;
  const confirmPassword = document.getElementById('confirmPassword').value;
  const address = document.getElementById('address').value;
  const tel = document.getElementById('tel').value;
  const accept = document.getElementById('accept').checked;

  const errorMessages = [];

  // Email Validation
  if (!validateEmail(email)) {
      errorMessages.push('Please enter a valid email address.');
  }

  // Password Validation
  if (!password) {
      errorMessages.push('Please enter your password.');
  } else if (!validatePassword(password)) {
      errorMessages.push(
          'Password must be 6-8 characters long, contain at least one uppercase letter, one numeric digit, one special character, and no spaces.'
      );
  }

  // Confirm Password Validation
  if (password !== confirmPassword) {
      errorMessages.push('Passwords do not match.');
  }

  // Required Fields Validation
  if (!username || !address || !tel || !dob) {
      errorMessages.push('All fields are required.');
  }

  // Telephone Validation
  const telRegex = /^01[0-9]-[0-9]{7}$/;
  if (!telRegex.test(tel)) {
      errorMessages.push('Telephone must be in the format 01X-0000000.');
  }

  // Terms and Conditions Validation
  if (!accept) {
      errorMessages.push('You must accept the Terms and Conditions.');
  }

  // Show Error Messages if Any
  if (errorMessages.length > 0) {
      e.preventDefault(); // Prevent form submission
      alert(errorMessages.join('\n'));
  }
}

// Login Form Validation
function validateLoginForm(e) {
  const email = document.getElementById('email').value;
  const password = document.getElementById('password').value;

  const errorMessages = [];

  // Email Validation
  if (!validateEmail(email)) {
      errorMessages.push('Please enter a valid email address.');
  }

  // Password Validation
  if (!password) {
      errorMessages.push('Please enter your password.');
  }

  // Show Error Messages if Any
  if (errorMessages.length > 0) {
      e.preventDefault(); // Prevent form submission
      alert(errorMessages.join('\n'));
  }
}

// Forgot Password Form Validation
function validateForgotPasswordForm(e) {
  const email = document.getElementById('email').value;

  if (!validateEmail(email)) {
      e.preventDefault();
      alert('Please enter a valid email address.');
  } else {
      // Simulate sending a password reset email
      alert(`A password reset link has been sent to ${email}.`);
  }
}

// Event Listeners for Forms
document.addEventListener('DOMContentLoaded', () => {
  const registerForm = document.getElementById('registerForm');
  const loginForm = document.getElementById('loginForm');
  const forgotPasswordForm = document.getElementById('forgotPasswordForm');

  if (registerForm) {
      registerForm.addEventListener('submit', validateRegisterForm);
  }

  if (loginForm) {
      loginForm.addEventListener('submit', validateLoginForm);
  }

  if (forgotPasswordForm) {
      forgotPasswordForm.addEventListener('submit', validateForgotPasswordForm);
  }
});
