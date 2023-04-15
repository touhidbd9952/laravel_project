<aside class="left-sidebar" data-sidebarbg="skin5">
    <!-- Sidebar scroll-->
    <div class="scroll-sidebar">
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
            <ul id="sidebarnav" class="pt-4">

                <li class="sidebar-item"> 
                    <a class="sidebar-link waves-effect waves-dark sidebar-link"
                        href="{{ route('home') }}" aria-expanded="false"><i
                            class="mdi mdi-view-dashboard"></i>
                            <span class="hide-menu">Dashboard</span>
                    </a>
                </li>


                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)"
                        aria-expanded="false">
                        <i class="mdi mdi-receipt"></i>
                        <span class="hide-menu">Slider </span>
                    </a>
                    <ul aria-expanded="false" class="collapse  first-level">
                        <li class="sidebar-item">
                            <a href="{{ route('slider.add_form') }}" class="sidebar-link">
                                <i class="mdi mdi-note-outline"></i>
                                <span class="hide-menu"> Add Slider</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="{{ route('slider.view') }}" class="sidebar-link">
                                <i class="mdi mdi-note-plus"></i>
                                <span class="hide-menu"> View Slider
                                </span>
                            </a>
                        </li>
                    </ul>
                </li>



                <li class="sidebar-item">
                    <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)"
                        aria-expanded="false">
                        <i class="mdi mdi-receipt"></i>
                        <span class="hide-menu">Category </span>
                    </a>
                    <ul aria-expanded="false" class="collapse  first-level">
                        <li class="sidebar-item">
                            <a href="{{ route('category.add_form') }}" class="sidebar-link">
                                <i class="mdi mdi-note-outline"></i>
                                <span class="hide-menu"> Add Category</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="{{ route('category.view') }}" class="sidebar-link">
                                <i class="mdi mdi-note-plus"></i>
                                <span class="hide-menu"> View Category
                                </span>
                            </a>
                        </li>
                    </ul>
                </li>



                <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark"
                        href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-receipt"></i><span
                            class="hide-menu">Product </span></a>
                    <ul aria-expanded="false" class="collapse  first-level">
                        <li class="sidebar-item">
                            <a href="{{ route('product.add_form') }}" class="sidebar-link">
                                <i class="mdi mdi-note-outline"></i>
                                <span class="hide-menu"> Add Product</span>
                            </a>
                        </li>
                        <li class="sidebar-item">
                            <a href="{{ route('product.view') }}" class="sidebar-link">
                                <i class="mdi mdi-note-plus"></i>
                                <span class="hide-menu"> View Product
                                </span>
                            </a>
                        </li>
                    </ul>
                </li>

                

            <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark"
                href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-receipt"></i><span
                    class="hide-menu">Our Project </span></a>
            <ul aria-expanded="false" class="collapse  first-level">
                <li class="sidebar-item">
                    <a href="{{ route('project.add_form') }}" class="sidebar-link">
                        <i class="mdi mdi-note-outline"></i>
                        <span class="hide-menu"> Add Project</span>
                    </a>
                </li>
                <li class="sidebar-item">
                    <a href="{{ route('project.view') }}" class="sidebar-link">
                        <i class="mdi mdi-note-plus"></i>
                        <span class="hide-menu"> View Project
                        </span>
                    </a>
                </li>
            </ul>
        </li>

        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark"
            href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-receipt"></i><span
                class="hide-menu">Product Enquiry </span></a>
        <ul aria-expanded="false" class="collapse  first-level">
            <li class="sidebar-item">
                <a href="{{ route('product.enquiry') }}" class="sidebar-link">
                    <i class="mdi mdi-note-plus"></i>
                    <span class="hide-menu"> View Enquiry
                    </span>
                </a>
            </li>
        </ul>
    </li>

        <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark"
            href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-receipt"></i><span
                class="hide-menu">Admin Account </span></a>
        <ul aria-expanded="false" class="collapse  first-level">
            <li class="sidebar-item">
                <a href="{{ route('admin.add_form') }}" class="sidebar-link">
                    <i class="mdi mdi-note-outline"></i>
                    <span class="hide-menu"> Add Account</span>
                </a>
            </li>
            <li class="sidebar-item">
                <a href="{{ route('admin.view') }}" class="sidebar-link">
                    <i class="mdi mdi-note-plus"></i>
                    <span class="hide-menu"> View Account
                    </span>
                </a>
            </li>
        </ul>
    </li>

            </ul>
        </nav>
        <!-- End Sidebar navigation -->
    </div>
    <!-- End Sidebar scroll-->
</aside>