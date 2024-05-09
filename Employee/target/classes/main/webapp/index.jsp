<!DOCTYPE html>
<html>
<head>
  <title>Login page</title>
  <style>
    /* CSS for linear gradient background color */
    body {
      margin: 0;
      padding: 0;
      background-image: url('images/wallhaven-4731e0_1920x1080.png'); /* Add your image URL here */
      background-size: cover;
      font-family: Arial, sans-serif;
    }

    .gradient-background {
      /* Linear Gradient */
      background: linear-gradient(to right, #ff7e5f, #feb47b);
      /* Height and width for the element */
      height: 100%;
      width: 100%;
      /* Optional: Padding for content */
      padding: 20px;
      /* Optional: Text color */
      color: #ffffff;
    }

    .center-div {
      display: flex;
      justify-content: center; /* Horizontal centering */
      align-items: center; /* Vertical centering */
      height: 100vh; /* Set height as needed */
    }

    /* Button Styles */
    .button {
      display: inline-block;
      padding: 10px 20px;
      font-size: 16px;
      cursor: pointer;
      border: none;
      border-radius: 20px;
      transition: background-color 0.3s ease;
    }

    /* Login Button Styles */
    .login-btn {
      background-color: #007bff; /* Blue color */
      color: #fff; /* White text */
    }

    .login-btn:hover {
      background-color: #0056b3; /* Darker blue on hover */
    }

    /* Register Button Styles */
    .register-btn {
      background-color: #28a745; /* Green color */
      color: #fff; /* White text */
    }

    .register-btn:hover {
      background-color: #218838; /* Darker green on hover */
    }
  </style>
</head>
<body>
  <div class="gradient-background center-div">
    <center>
      <h1>Login To Employee</h1>
      <form action="req1" method="get">
        <table border="2">
          <tr>
            <td>Username:</td>
            <td><input type="text" name="username"></td>
          </tr>
          <tr>
            <td>Password:</td>
            <td><input type="password" name="password"></td>
          </tr>
        </table>
        <div class="button login-btn">
          <input type="submit" name="login" value="Login">
        </div>
      </form>

      <form action="req3" method="post">
        <table>
          <tr>
            <td>New Users!!!</td>
          </tr>
          <tr>
            <td>
              <input class="button register-btn" type="submit" name="r1" value="Register">
            </td>
          </tr>
        </table>
      </form>
    </center>
  </div>
</body>
</html>
