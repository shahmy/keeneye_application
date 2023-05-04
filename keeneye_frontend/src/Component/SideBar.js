import React from 'react';

const SideBar = ({categories}) =>{
    return(
        <aside class="col-lg-3">
                
                <button class="btn btn-outline-secondary mb-3 w-100  d-lg-none" data-bs-toggle="collapse" data-bs-target="#aside_filter">Show filter</button>
                
        
                <div id="aside_filter" class="collapse card d-lg-block mb-5">
                
                    <article class="filter-group">
                    <header class="card-header">
                    <a href="#" class="title" data-bs-toggle="collapse" data-bs-target="#collapse_aside1">
                    <i class="icon-control fa fa-chevron-down"></i>   Product Categories 
                    </a>
                    </header>
                    <div class="collapse show" id="collapse_aside1">
                    <div class="card-body">
                    <ul class="list-menu">

                        {categories.map((category) => (
                            <li><a href="#">{category.name} <b class="badge rounded-pill bg-gray-dark float-end">{category.products.length}</b></a></li>
                        ))}

                        
                    </ul>
                    </div> 
                    </div> 
                    </article> 
                
                
                </div> 
                
                
                    </aside>
    );
}

export default SideBar;