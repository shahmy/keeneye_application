
import React from 'react';

const ProductGrid = ({ product }) => {
  return (
    <div class="col-lg-4 col-md-6 col-sm-6" key={product.id}>
        <figure class="card card-product-grid">
        <div class="img-wrap">
            {product.images.map((image) => (
                < img src={image.image} />
            ))}
            {/* <img src="assets/images/items/10.webp"/>  */}
            {/* <img src={product.images[0].image} /> */}
        </div>
        <figcaption class="info-wrap border-top">
        <div class="price-wrap">
        <strong class="price">${product.price}</strong>
        </div> 
        <p class="title mb-2">{product.name}</p>
        
    
        </figcaption>
        </figure>
    </div>
  )};

export default ProductGrid;