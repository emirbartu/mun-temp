import React from 'react';
import './App.css';
import DropdownButton from './components/DropdownButton';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>MUN Temp React App</h1>
        <DropdownButton />
        <p>
          This is a converted React application with a single button dropdown.
        </p>
      </header>
    </div>
  );
}

export default App;
