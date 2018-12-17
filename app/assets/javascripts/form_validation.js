document.addEventListener("turbolinks:load", function() {
  $("#new_user").validate({
    rules: {
      'user[email]': {
        required: true,
        email: true
      },
      'user[password]': {
        required: true,
        minlength: 6
      },
      'user[password_confirmation]': {
        required: true,
        minlength: 6
      },
      'user[first_name]': {
        required: true
      },
      'user[last_name]': {
        required: true
      },
    },
    messages: {
      'user[email]': "Please enter a valid email address",
      'user[password]': {
        required: "Please provide a password",
        minlength: "Your password must be at least 6 characters long"
      },
      'user[password_confirmation]': {
        required: "Please confirm your password",
      },
      'user[first_name]': "First Name is required",
      'user[last_name]': "Last Name is required",
    }
  });
});
