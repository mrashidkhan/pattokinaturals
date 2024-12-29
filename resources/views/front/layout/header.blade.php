<head>
    <meta charset="utf-8">
    <title>Pattoki | Naturals</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, shrink-to-fit=no">
    <meta name="keywords" content="organic, natural products, Pattoki, Pakistan, skincare, health, wellness">
    <meta name="description" content="Pattoki Naturals offers a wide range of organic and natural products sourced locally from Pattoki, Pakistan. Quality products for your health and wellness.">

    <!-- Favicon -->
    <link href="{{ asset('favicon.ico') }}" rel="icon" type="image/x-icon">
    <link href="{{ asset('favicon.png') }}" rel="alternate icon" type="image/png">

    <!-- Bootstrap 5 and other libraries -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Lora:wght@600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="{{ asset('lib/animate/animate.min.css') }}" rel="stylesheet">
    <link href="{{ asset('lib/owlcarousel/assets/owl.carousel.min.css') }}" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">
    {{-- <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Handle the plus button click
            document.querySelectorAll('.btn-plus').forEach(button => {
                button.addEventListener('click', function() {
                    const itemId = this.getAttribute('data-id');
                    const quantityInput = this.closest('.input-group').querySelector('.quantity-input');
                    let quantity = parseInt(quantityInput.value) || 0;
                    quantity++;
                    quantityInput.value = quantity;

                    // Update the cart session via AJAX
                    updateCart(itemId, quantity);
                });
            });

            // Handle the minus button click
            document.querySelectorAll('.btn-minus').forEach(button => {
                button.addEventListener('click', function() {
                    const itemId = this.getAttribute('data-id');
                    const quantityInput = this.closest('.input-group').querySelector('.quantity-input');
                    let quantity = parseInt(quantityInput.value) || 0;

                    if (quantity > 0) {
                        quantity--;
                        quantityInput.value = quantity;

                        // Update the cart session via AJAX
                        updateCart(itemId, quantity);
                    }
                });
            });

            function updateCart(itemId, quantity) {
                fetch(`/cart/update/${itemId}`, {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                        'X-CSRF-TOKEN': '{{ csrf_token() }}' // Include CSRF token for security
                    },
                    body: JSON.stringify({ quantity: quantity })
                })
                .then(response => response.json())
                .then(data => {
                    // Optionally, you can update the total price displayed
                    const totalPriceCell = document.querySelector('.total-price[data-price="' + itemId + '"]');
                    const price = parseFloat(totalPriceCell.getAttribute('data-price'));
                    totalPriceCell.innerHTML = 'Rs' + (price * quantity).toFixed(2);
                })
                .catch(error => console.error('Error updating cart:', error));
            }
        });
    </script> --}}



</head>

<body>
    <!-- Navbar Start -->
    <div class="container-fluid fixed-top px-0 wow fadeIn" data-wow-delay="0.1s">
        <!-- Top Bar Start -->
        <div class="top-bar row gx-0 align-items-center bg-success text-white d-none d-md-flex">
            <div class="col-md-6 px-5 text-start">
                <small><i class="fa fa-map-marker-alt me-2 text-warning"></i>Rosa Tibba Pattoki 55300, Kasur, Pakistan</small>
                <small class="ms-4"><i class="fa fa-envelope me-2"></i>pattokinaturals@gmail.com</small>
            </div>
            <div class="col-md-6 px-5 text-end">
                <span class="navbar-text fw-bold text-warning">Free shipping over Rs.5,000/-</span>
            </div>
        </div>
        <!-- Top Bar End -->
        <marquee class="bg-success text-white py-1">
            Discount Offer! <i class="text-white">First 100 customers will get Rs.500 discount each</i>
        </marquee>
        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg navbar-light bg-white py-2 px-lg-5">
            <a href="{{ route('home') }}" class="navbar-brand ms-4 ms-lg-0">
                <img src="{{ asset('img/logo.png') }}" alt="Pattoki Naturals Logo" class="img-fluid me-3" style="height: 50px;">
            </a>
            <button class="navbar-toggler me-4" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-2 p-lg-0">
                    <a href="{{ route('home') }}" class="nav-item nav-link text-success fw-bold" aria-label="Home">Home</a>
                    <a href="{{ route('shop') }}" class="nav-item nav-link text-success" aria-label="Products">Shop</a>
                    <a href="{{ route('aboutus') }}" class="nav-item nav-link text-success" aria-label="About Us">About Us</a>
                    <a href="{{ route('my.orders') }}" class="nav-item nav-link text-success" aria-label="My Orders">My Orders</a>

                    <a href="{{ route('contactus') }}" class="nav-item nav-link text-success" aria-label="Contact Us">Contact Us</a>
                    <a href="{{ route('cart.view') }}" class="nav-item nav-link text-success" aria-label="Cart"><i class="bi bi-cart fs-6"></i> Cart</a>
                    @if (Auth::check())
                        <a href="{{ route('user_logout') }}" class="nav-item nav-link text-success" aria-label="Log Out"><i class="fas fa-sign-out-alt"></i> Log Out</a>
                    @else
                        <a href="{{ route('user_login') }}" class="nav-item nav-link text-success" aria-label="Log In"><i class="fas fa-sign-in-alt"></i> Login</a>
                    @endif
                    @if (Auth::check())
                <span class="navbar-text text-success me-3">
                    Welcome, {{ Auth::user()->name }} <!-- Display the authenticated user's name -->
                </span>
                @endif

                </div>
            </div>
        </nav>
        <!-- Navbar End -->
    </div>
    <!-- Navbar End -->

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
