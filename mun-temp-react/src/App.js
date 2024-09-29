import React from 'react';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>MUN Temp</h1>
        <nav>
          <ul>
            <li><a href="#home">Home</a></li>
            <li><a href="#committees">Committees</a></li>
            <li><a href="#team">Team</a></li>
          </ul>
        </nav>
      </header>
      <main>
        <section id="home">
          <h2>Welcome to MUN Temp</h2>
          <p>A responsive organization website template</p>
        </section>
        <section id="committees">
          <h2>Committees</h2>
          {/* Add committee components here */}
        </section>
        <section id="team">
          <h2>Our Team</h2>
          {/* Add team member components here */}
        </section>
      </main>
      <footer>
        <p>&copy; 2023 MUN Temp. All rights reserved.</p>
      </footer>
    </div>
  );
}

export default App;
