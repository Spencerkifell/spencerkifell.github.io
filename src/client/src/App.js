import './App.css';
import React from 'react';
import {BrowserRouter, Routes, Route} from 'react-router-dom'
import { LandingPage } from './Components/Pages/LandingPage/LandingPage';
import { NavBar } from './Components/NavBar/NavBar';

function App() {
  return (
    <div className='w-screen h-screen bg-zinc-900'>
      <NavBar/>
      <BrowserRouter>
        <Routes>
            <Route path="/" element={<LandingPage/>}/>
        </Routes>
      </BrowserRouter>
    </div>
  );
}

export default App;
