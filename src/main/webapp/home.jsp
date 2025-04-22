<!DOCTYPE html> 
<html lang="en"> 
<head> 
    <meta charset="UTF-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Hospital Management System</title> 
    <!-- Bootstrap CSS --> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet"> 
    <!-- Custom CSS --> 
    <link rel="stylesheet" href="styles/home.css"> 
</head> 
<body class="body"> 
    <nav class="navbar navbar-expand-lg bg-body-tertiary"> 
        <div class="container-fluid"> 
            <!-- Logo and Brand Name --> 
            <a class="navbar-brand" href="#"> 
                <!-- Replace the src below with the path to your logo image --> 
                <img src="images/logo.jpg" alt="Hospital Logo" height="100px" width="100px"> 
                Hospital Management 
            </a> 
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation"> 
                <span class="navbar-toggler-icon"></span> 
            </button> 
            <div class="collapse navbar-collapse" id="navbarNav"> 
                <!-- Left-aligned Navbar Items --> 
                <ul class="navbar-nav ms-auto"> 
                    <li class="nav-item"> 
                        <a class="nav-link active" aria-current="page" href="#">Home</a> 
                    </li> 
                    <li class="nav-item"> 
                        <a class="nav-link" href="#">About Us</a> 
                    </li> 
                    <li class="nav-item"> 
                        <a class="nav-link ">Contact</a> 
                    </li> 
                </ul> 
 
                 
                <script src="https://unpkg.com/ionicons@5.5.2/dist/ionicons.js"></script> 
 
                <!-- Search Form with Ionicon --> 
                <form class="d-flex ms-auto mt-2 mt-lg-0 w-45"> 
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search"> 
                    <button class="btn search-btn" type="submit"> 
                        <ion-icon name="search-outline" class="bold-icon"></ion-icon> <!-- Add class for bold styling --> 
                    </button> 
                </form> 
                <ion-icon name="chatbubbles-outline" class="chat"></ion-icon> 
                <ion-icon name="notifications-outline" class="noti"></ion-icon> 
 
 
 
                <!-- Profile Dropdown --> 
                <ul class="navbar-nav ms-3"> 
                    <li class="nav-item dropdown"> 
                        <a class="nav-link dropdown-toggle" href="#" id="profileDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"> 
                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYzrKwzB9qf6z1LUGt9CMjPzC5zBy87WL6Fw&s" alt="Profile" class="rounded-circle" height="60px" width="60px"> <!-- Placeholder for profile icon --> 
                        </a> 
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="profileDropdown"> 
                            <li><a class="dropdown-item" href="UserHome.jsp">View Profile</a></li> 
                            <li><a class="dropdown-item" href="#">Settings</a></li> 
                            <li><a class="dropdown-item" href="#">Help</a></li> 
                            <li><hr class="dropdown-divider"></li> 
                            <li><a class="dropdown-item text-danger" href="login.jsp">Logout</a></li> 
                        </ul> 
                    </li> 
                </ul> 
            </div> 
        </div> 
    </nav> 
 
    <div id="carouselExampleSlidesOnly" class="carousel slide custom-carousel" data-bs-ride="carousel" data-bs-interval="5000"> 
        <div class="carousel-inner"> 
            <div class="carousel-item active"> 
                <img src="https://images.stockcake.com/public/b/a/a/baa7a5f4-3afb-4e09-b1e0-df685ce3b2a8_large/online-medical-consultation-stockcake.jpg" class="d-block w-100".jpg" class="d-block w-100" alt="picture" height="550px"> 
            </div> 
            <div class="carousel-item"> 
                <img src="https://cdn.grabon.in/gograbon/images/web-images/uploads/1618566499779/medicines-offers.jpg" class="d-block w-100" alt="doctor" height="550px"> 
            </div> 
            <div class="carousel-item"> 
                <img src="https://media.istockphoto.com/id/1295918628/photo/uses-laptop-while-talking-with-patient-stock-photo.jpg?s=612x612&w=0&k=20&c=W7VVhGtnI1nw2xMPCNWh4gl5hwWKElMJxdIETNkErFw=" class="d-block w-100" alt="patient" height="550px"> 
            </div> 
        </div> 
    </div> 
 
 
    <div class="grid text-center"> 
        <div class="g-col-6"> 
            <a class="item" aria-current="page" href="#"> 
                <img src="https://cdn.apollohospitals.com/hyderabad/2024/01/bookappt_icon.svg" alt="icon" width="64"> 
                Book Appointment</a></div> 
        <div class="g-col-6"> 
            <Consult class="item" aria-current="page" href="#"> 
                <img src="https://cdn.apollohospitals.com/hyderabad/2024/01/consultonline_icon.svg" alt="icon" width="64"> 
         
                Consult Online</div> 
       
        <div class="g-col-6"><a class="item" aria-current="page" href="#"> <img src="https://cdn.apollohospitals.com/hyderabad/2024/01/finddoctor_icon.svg" alt="icon" width="64">View Health Record</a></div> 
        <div class="g-col-6"><Buy class="item" aria-current="page" href="#"> 
             
                <img src="https://cdn.apollohospitals.com/hyderabad/2024/01/buymedicines_icon.svg" alt="icon" width="64"> 
             
                Buy Medicine</a> 
        </div> 
      </div> 
 
      <div class="container"> 
        <div class="row g-lg-5 g-3"> 
           <div class="col-md-12"> 
              <!-- <h4 class="sec_title">LOCATION</h4> --> 
              <h1 class="hp-title">Hospitals in Telangana</h1> 
              <p class="mb-3 mb-lg-3">The best hospital in India with over 10,000 beds across 73 hospitals, 5000+ pharmacies, over 300 clinics, 1100+ diagnostic centres and 200+ Telemedicine units.</p> 
                
              <div class="row justify-content-center mb-30"> 
                <div class="col-md-12 text-center"> 
                    <div class="row row-cols-3 row-cols-lg-4 g-3 g-lg-3 hsptl-locations"> 
                       <div class="col"> 
                          <a href="#" class="pg_widget"> 
                              
                          <img loading="lazy" src="https://cdn.apollohospitals.com/hyderabad/2024/07/jubllehills.svg" alt="icon"> 
                             <h5>Jubilee Hills</h5> 
                          </a> 
                                </div>       
                          <div class="col"> 
                          <a href="#" class="pg_widget"> 
                                                  <img loading="lazy" src="https://cdn.apollohospitals.com/hyderabad/2024/07/secunderabad.svg" alt="icon"> 
                             <h5>Secunderabad</h5> 
                          </a> 
                          </div> 
                           
                          <div class="col"> 
                          <a href="#" class="pg_widget"> 
                                                  <img loading="lazy" src="https://cdn.apollohospitals.com/hyderabad/2024/07/hyderabad.svg" alt="icon"> 
                             <h5>Hyderguda</h5> 
                          </a> 
                          </div> 
                          <div class="col"> 
                          <a href="#" class="pg_widget"> 
                            
                             <img loading="lazy" src="https://cdn.apollohospitals.com/hyderabad/2024/07/drdo.svg" alt="icon"> 
                             <h5>DRDO</h5> 
                          </a> 
                          </div> 
                          <div class="col"> 
                          <a href="#" class="pg_widget"> 
                                                  <img loading="lazy" src="https://cdn.apollohospitals.com/hyderabad/2024/07/karimnagar.svg" alt="icon"> 
                             <h5> Karimnagar</h5> 
                          </a> 
                          </div> 
                          <div class="col"> 
                          <a href="#" class="pg_widget"> 
                                                  <img loading="lazy" src="https://cdn.apollohospitals.com/hyderabad/2024/07/miryalaguda.svg" alt="icon"> 
                             <h5>Miryalaguda</h5> 
                          </a> 
                          </div> 
                          <div class="col"> 
                          <a href="#" class="pg_widget"> 
                                                  <img loading="lazy" src="https://cdn.apollohospitals.com/hyderabad/2024/07/warangal.svg" alt="icon"> 
                             <h5>Warangal</h5> 
                          </a> 
                       </div> 
                       <div class="col"> 
                          <a href="#" class="pg_widget"> 
                             <img loading="lazy" src="https://cdn.apollohospitals.com/hyderabad/images/Outreach-Clinics.png" alt="icon"> 
                             <h5>OutReach Clinics </h5> 
                          </a> 
                       </div> 
                     </div> 
                 </div> 
             </div> 
           </div>  
           
                <div id="hospital-loc-holder" class="location-info ms-lg-auto" style="display:none;"> 
                   <div class="card border-0 rounded-4 ah_shadow"> 
                      <img loading="lazy" src="https://cdn.apollohospitals.com/dev-apollohospitals/2023/06/apollo-hyderabad-2.jpg" class="card-img-top p-2 rounded-4 img-fluid" alt="Apollo Heart Institute Expertise"> 
                   </div> 
                   <div class="py-3"> 
                      <h5 class="card-title mb-3 fw-bold">Hospitals in Hyderabad</h5> 
                      <div> 
                         <div class="row g-3"> 
                            <div class="col-md-12"> 
                               <div class="d-flex mb-1"> 
                                  <div class="me-3"> <i class="fas fa-location-dot"></i> </div> 
                                  <div>Film Nagar, Jubilee Hills, Hyderabad, Telangana State, India. Toll No – 1860 500 1066</div> 
                               </div> 
                               <div class="py-2"> 
                                  <ul class="list-inline"> 
                                     <li class="list-inline-item"> 
                                        <i class="fa-solid fa-phone fs-6 pe-2"></i> + 91-40-2360 7777 / 5555 / 2000 
                                     </li> 
                                     <li class="list-inline-item"> <a href="#"></a> <a href="https://www.google.co.in/maps/search/Film Nagar, Jubilee Hills, Hyderabad, Telangana State, India. Toll No – 1860 500 1066"><i class="fa-solid fa-location-arrow"></i></a> </li> 
                                     <li class="list-inline-item"> <a href="#"></a> <a href="mailto:apollohealthcityhyd@apollohospitals.com"><i class="fa-solid fa-envelope"></i></a> </li> 
                                  </ul> 
                               </div> 
                               <!-- <a href="/hospital/hyderabad/?utm_campaign=hyderabad&amp;utm_source=home&amp;utm_medium=hospitals_in_india" class="text-warning text-decoration-none">Read More <i class="fa fa-long-arrow-right ps-2 small"></i> </a> --> 
                            </div> 
                         </div> 
                      </div> 
                   </div> 
                </div> 
             </div> 
        </div> 
      
 
    <!-- Bootstrap JS and dependencies --> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script> 
</body> 
</html>