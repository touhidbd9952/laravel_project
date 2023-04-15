@extends('layouts.admin_master')

@section('content')

<!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Product</h4>
                        <div class="ms-auto text-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Fabricator Product List</li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->

<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            
            <div class="card">
                <div class="card-header">
                    Fabricator Product List
                    <a href="{{route('product.add_form')}}"  style="float: right;">Add New</a>
                </div>

                <div class="card-body">
                    @if(session('success'))
                        <div class="alert alert-success alert-dismissible fade show">
                            <strong>Success!</strong> {{ session('success') }}
                            <button type="button" class="close" data-dismiss="alert" style="float:right;">&times;</button>
                        </div>
                    @endif

                    <div class="table-responsive">
                        <table id="zero_config" class="table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th>SL</th>
                                    <th>Image</th>
                                    <th>Title</th>
                                    <th>Category</th>
                                    <th>Status</th>
                                    <th>Created at</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>

                            @foreach($products as $b)
                                <tr>
                                    <td>{{ $products->firstitem()+$loop->index }}</td>
                                    <td><img src="{{asset($b->thumbnail_image)}}"  style="width: 60px;height:auto;"></td>
                                    <td>{{ $b->title}}</td>
                                    <td>{{ $b->category->title}}</td>
                                    <td>{{ $b->publish_status }}</td>
                                    <td>{{ $b->created_at }}</td>
                                    <td>
                                        <a href="{{url('product/imageview/'.$b->id)}}" class="btn btn-success">Multi Image</a>
                                        <a href="{{url('product/videoview/'.$b->id)}}" class="btn btn-success">Video</a>
                                        <a href="{{url('product/edit/'.$b->id)}}" class="btn btn-success">Edit</a>
                                        <a href="{{url('product/delete/'.$b->id)}}" class="btn btn-danger" onclick="return confirm('Are you shure want to delete')">Delete</a>
                                    </td>
                                    
                                </tr>
                            @endforeach
                                
                            </tbody>
                            
                        </table>

                        {{ $products->links() }}

                    </div>

                </div>
            </div>

        </div>
    </div>
</div>





@endsection


