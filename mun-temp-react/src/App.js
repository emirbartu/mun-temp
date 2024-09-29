import React from 'react';
import { ChakraProvider, Box } from '@chakra-ui/react';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import Navbar from './components/Navbar';
import Home from './components/Home';
import Team from './components/Team';
import Committees from './components/Committees';
import Sponsors from './components/Sponsors';

function App() {
  return (
    <ChakraProvider>
      <Router>
        <Box>
          <Navbar />
          <Routes>
            <Route path="/" element={<Home />} />
            <Route path="/team" element={<Team />} />
            <Route path="/committees" element={<Committees />} />
            <Route path="/sponsors" element={<Sponsors />} />
          </Routes>
        </Box>
      </Router>
    </ChakraProvider>
  );
}

export default App;
