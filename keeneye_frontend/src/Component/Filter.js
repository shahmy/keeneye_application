import React from 'react';

const Filter = ({products}) =>{
    return (
    <header class="d-sm-flex align-items-center border-bottom mb-4 pb-3">
        <strong class="d-block py-2">{products} Items found </strong>
        <div class="ms-auto ">
            <select class="form-select d-inline-block w-auto me-1">
            <option value="0">Best match</option>
            <option value="1">Recommended</option>
            <option value="2">High rated</option>
            <option value="3">Randomly</option>
            </select>
            <div class="btn-group">
            <a href="#" class="btn btn-light" data-bs-toggle="tooltip" title="List view"> 
            <i class="fa fa-bars"></i>
            </a>
            <a href="#" class="btn btn-light active" data-bs-toggle="tooltip" title="Grid view"> 
            <i class="fa fa-th"></i>
            </a>
            </div> 
        </div>
    </header>
    );
}

export default Filter;