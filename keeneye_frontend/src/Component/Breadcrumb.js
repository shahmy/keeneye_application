const Breadcrumb = () =>{
    return(
        <section class="bg-primary py-5">
            <div class="container">
                <h2 class="text-white">Men's wear</h2>
                <ol class="breadcrumb ondark mb-0">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item"><a href="#">Library</a></li>
                <li class="breadcrumb-item active" aria-current="page">Data</li>
                </ol>
            </div> 
        </section>
    );
}

export default Breadcrumb;