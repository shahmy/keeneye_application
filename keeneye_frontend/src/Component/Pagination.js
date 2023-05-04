const Pagination = () =>{
    return (
        <footer class="d-flex mt-4">
              
            <nav class="ms-3">
                <ul class="pagination">
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item active" aria-current="page">
                    <span class="page-link">2</span>
                </li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                    <a class="page-link" href="#">Next</a>
                </li>
                </ul>
            </nav>
        
        </footer>
    );
}

export default Pagination;