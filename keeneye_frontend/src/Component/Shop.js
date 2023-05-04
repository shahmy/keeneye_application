import React from "react";
import { useState, useEffect } from "react";
import Breadcrumb from "./Breadcrumb";
import SideBar from "./SideBar";
import Filter from "./Filter";
import Pagination from "./Pagination";
import ProductGrid from "./ProductGrid";

const BASE_URL = 'http://127.0.0.1:8000';

const API_LIST_PRODUCTS = BASE_URL+'/api/frontend/list-products';
const API_LIST_CATEGORIES = BASE_URL+'/api/frontend/list-categories';

const Shop = () => {

    const [products, setProducts] = useState([]);
    const [categories, setCategories] = useState([]);
    const [pagination, setPagination] = useState([]);

  const listProducts = async () => {
    const response = await fetch(API_LIST_PRODUCTS);
    const data = await response.json();
    setProducts(data.data);
    console.log(data);
  }

  const listCategories = async () => {
    const response = await fetch(API_LIST_CATEGORIES);
    const data = await response.json();
    setCategories(data.data);
  }



  useEffect(() => {
    listProducts();
    listCategories();
  }, []);

    return (
        <div className="home-section">
          
                <Breadcrumb />
            
                <section class="padding-y">
                <div class="container">
                
                <div class="row">

                   <SideBar categories = {categories} /> 
                    
                    <main class="col-lg-9">
                    
                    <Filter products = {products.length} />
                
                    
                    <div class="row">

                    {products.map((product) => (
                            <ProductGrid product={product} />
                    ))}
                    
                    </div> 
                
                    <hr />
                  

                <Pagination  />


                </main>
                </div> 

                </div> 
                </section>
             
                    
        </div>
      
       
    );
}

export default Shop;