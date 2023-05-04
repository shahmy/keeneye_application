import React from 'react';
import { useState, useEffect } from "react";
import Header from './Component/Header'; //Include Header
import Footer from './Component/Footer'; //Include Footer
import Shop from './Component/Shop'; //Include Shop


const App = () => {

  return (
    <div className="App">
          <Header />
           <Shop/>
          <Footer />
    </div>
  );
}

export default App;