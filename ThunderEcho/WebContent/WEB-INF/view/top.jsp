<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- navbar-->
    <header class="header">
      <nav class="navbar navbar-expand-lg">
        <div class="search-area">
          <div class="search-area-inner d-flex align-items-center justify-content-center">
            <div class="close-btn"><i class="icon-close"></i></div>
            <form action="#">
              <div class="form-group">
                <input type="search" name="search" id="search" placeholder="What are you looking for?">
                <button type="submit" class="submit"><i class="icon-search"></i></button>
              </div>
            </form>
          </div>
        </div>
        <div class="container-fluid">  
          <!-- Navbar Header  --><a href="index.html" class="navbar-brand"><img src="https://d19m59y37dris4.cloudfront.net/hub/1-4-0/img/logo.png" alt="..."></a>
          <button type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler navbar-toggler-right"><i class="fa fa-bars"></i></button>
          <!-- Navbar Collapse -->
          <div id="navbarCollapse" class="collapse navbar-collapse">
            <ul class="navbar-nav mx-auto">
              <li class="nav-item dropdown"><a id="navbarHomeLink" href="index.html" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link active">Home<i class="fa fa-angle-down"></i></a>
                <ul aria-labelledby="navbarDropdownHomeLink" class="dropdown-menu">
                  <li><a href="index.html" class="dropdown-item">Classic Home</a></li>
                  <li><a href="index2.html" class="dropdown-item">Parallax sections</a></li>
                  <li><a href="index3.html" class="dropdown-item">Video background                     </a></li>
                </ul>
              </li>
              <li class="nav-item"><a href="category.html" class="nav-link">Shop</a>
              </li>
              <!-- Megamenu-->
              <li class="nav-item dropdown menu-large"><a href="#" data-toggle="dropdown" class="nav-link">Template<i class="fa fa-angle-down"></i></a><!-- 드롭다운 큰거 -->
                <div class="dropdown-menu megamenu">
                  <div class="row">
                    <div class="col-lg-9">
                      <div class="row">
                        <div class="col-lg-3"><strong class="text-uppercase">Introduction</strong>
                          <ul class="list-unstyled">
                            <li><a href="index.html">Classic homepage</a></li>
                            <li><a href="index2.html">Parallax sections <span class="badge badge-success ml-2">New</span></a></li>
                            <li><a href="index3.html">Video background  <span class="badge badge-success ml-2">New</span></a></li>
                          </ul><strong class="text-uppercase">Air Eco</strong>
                          <ul class="list-unstyled">                                                   
                            <li><a href="category.html">Category - left sidebar</a></li>
                            <li><a href="category-right.html">Category - right sidebar</a></li>
                            <li><a href="category-full.html">Category - full width</a></li>
                            <li><a href="detail.html">Product detail</a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3"><strong class="text-uppercase">Order process</strong>
                          <ul class="list-unstyled">
                            <li><a href="cart.html">Shopping cart</a></li>
                            <li><a href="checkout1.html">Checkout 1 - Address</a></li>
                            <li><a href="checkout2.html">Checkout 2 - Delivery</a></li>
                            <li><a href="checkout3.html">Checkout 3 - Payment</a></li>
                            <li><a href="checkout4.html">Checkout 4 - Review             </a></li>
                            <li><a href="checkout5.html">Checkout 5 - Confirmation             </a></li>
                          </ul><strong class="text-uppercase">Blog</strong>
                          <ul class="list-unstyled">                                                   
                            <li><a href="blog.html">Blog</a></li>
                            <li><a href="post.html">Post                                                                                           </a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3"><strong class="text-uppercase">Pages</strong>
                          <ul class="list-unstyled">
                            <li><a href="contact.html">Contact</a></li>
                            <li><a href="about.html">About us</a></li>
                            <li><a href="text.html">Text page</a></li>
                            <li><a href="faq.html">FAQ  <span class="badge badge-success ml-2">New</span></a></li>
                            <li><a href="coming-soon.html">Coming soon  <span class="badge badge-success ml-2">New</span></a></li>
                            <li><a href="404.html">Error 404</a></li>
                            <li><a href="500.html">Error 500</a></li>
                          </ul>
                        </div>
                        <div class="col-lg-3"><strong class="text-uppercase">Customer</strong>
                          <ul class="list-unstyled">
                            <li><a href="customer-login.html">Login/sign up</a></li>
                            <li><a href="customer-orders.html">Orders</a></li>
                            <li><a href="customer-order.html">Order detail</a></li>
                            <li><a href="customer-addresses.html">Addresses</a></li>
                            <li><a href="customer-account.html">Profile</a></li>
                          </ul>
                        </div>
                      </div>
                      <div class="row services-block">
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="item d-flex align-items-center">
                            <div class="icon"><i class="icon-truck text-primary"></i></div>
                            <div class="text"><span class="text-uppercase">Free shipping &amp; return</span><small>Free Shipping over $300</small></div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="item d-flex align-items-center">
                            <div class="icon"><i class="icon-coin text-primary"></i></div>
                            <div class="text"><span class="text-uppercase">Money back guarantee</span><small>30 Days Money Back</small></div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="item d-flex align-items-center">
                            <div class="icon"><i class="icon-headphones text-primary"></i></div>
                            <div class="text"><span class="text-uppercase">020-800-456-747</span><small>24/7 Available Support</small></div>
                          </div>
                        </div>
                        <div class="col-xl-3 col-lg-6 d-flex">
                          <div class="item d-flex align-items-center">
                            <div class="icon"><i class="icon-secure-shield text-primary"></i></div>
                            <div class="text"><span class="text-uppercase">Secure Payment</span><small>Secure Payment</small></div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-3 text-center product-col hidden-lg-down"><a href="detail.html" class="product-image"><img src="https://d19m59y37dris4.cloudfront.net/hub/1-4-0/img/shirt.png" alt="..." class="img-fluid"></a>
                      <h6 class="text-uppercase product-heading"><a href="detail.html">Lose Oversized Shirt</a></h6>
                      <ul class="rate list-inline">
                        <li class="list-inline-item"><i class="fa fa-star-o text-primary"></i></li>
                        <li class="list-inline-item"><i class="fa fa-star-o text-primary"></i></li>
                        <li class="list-inline-item"><i class="fa fa-star-o text-primary"></i></li>
                        <li class="list-inline-item"><i class="fa fa-star-o text-primary"></i></li>
                        <li class="list-inline-item"><i class="fa fa-star-o text-primary"></i></li>
                      </ul><strong class="price text-primary">$65.00</strong><a href="#" class="btn btn-template wide">Add to cart</a>
                    </div>
                  </div>
                </div>
              </li>
              <!-- /Megamenu end-->
              <!-- Multi level dropdown    -->
              <li class="nav-item dropdown"><a id="navbarDropdownMenuLink" href="http://example.com" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link">Dropdown<i class="fa fa-angle-down"></i></a>
                <ul aria-labelledby="navbarDropdownMenuLink" class="dropdown-menu">
                  <li><a href="#" class="dropdown-item">Action</a></li>
                  <li><a href="#" class="dropdown-item">Another action</a></li>
                  <li class="dropdown-submenu"><a id="navbarDropdownMenuLink2" href="http://example.com" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link">Dropdown link<i class="fa fa-angle-down"></i></a>
                    <ul aria-labelledby="navbarDropdownMenuLink2" class="dropdown-menu">
                      <li><a href="#" class="dropdown-item">Action</a></li>
                      <li class="dropdown-submenu"><a id="navbarDropdownMenuLink3" href="http://example.com" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link">
                           
                          Another action<i class="fa fa-angle-down"></i></a>
                        <ul aria-labelledby="navbarDropdownMenuLink3" class="dropdown-menu">
                          <li><a href="#" class="dropdown-item">Action</a></li>
                          <li><a href="#" class="dropdown-item">Action</a></li>
                          <li><a href="#" class="dropdown-item">Action</a></li>
                          <li><a href="#" class="dropdown-item">Action</a></li>
                        </ul>
                      </li>
                      <li><a href="#" class="dropdown-item">Something else here</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <!-- Multi level dropdown end-->
              <li class="nav-item"><a href="blog.html" class="nav-link">Blog </a>
              </li>
              <li class="nav-item"><a href="contact.html" class="nav-link">Contact</a>
              </li>
            </ul>
            <div class="right-col d-flex align-items-lg-center flex-column flex-lg-row">
            <!-- 우상단 간격조절 -->
            </div>
          </div>
        </div>
      </nav>
    </header>