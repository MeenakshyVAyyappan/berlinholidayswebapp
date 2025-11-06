// src/pages/LoginPage.jsx
import React, { useState } from 'react';
import { useHistory } from 'react-router-dom'; // For redirection

const LoginPage = () => {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [error, setError] = useState('');
  const history = useHistory(); // For redirecting to the admin dashboard

  // Handle the login logic
  const handleSubmit = (e) => {
    e.preventDefault();

    // Simple validation (you can integrate with API here)
    if (email === 'admin@berlinholidays.com' && password === 'admin123') {
      history.push('/admin/dashboard'); // Redirect to admin dashboard on successful login
    } else {
      setError('Invalid credentials');
    }
  };

  return (
    <div className="login-page">
      <div className="login-container">
        <h2>Admin Login</h2>
        <form onSubmit={handleSubmit}>
          <div>
            <label>Email</label>
            <input
              type="email"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
              required
            />
          </div>
          <div>
            <label>Password</label>
            <input
              type="password"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
              required
            />
          </div>
          {error && <div className="error-message">{error}</div>}
          <button type="submit">Login</button>
        </form>
      </div>
    </div>
  );
};

export default LoginPage;
