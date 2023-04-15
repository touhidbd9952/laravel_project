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
                                    <li class="breadcrumb-item active" aria-current="page">Fabricator Product Video List</li>
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
                    Fabricator Product Video List
                    <a href="{{url('productvideo/addmore/' . $product->id)}}"  style="float: right;">Add New</a>
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
                                    <th>Title</th>
                                    <th>Category</th>
                                    <th>Status</th>
                                    <th>Created at</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>

                            @foreach($productvideos as $pv)
                                <tr>
                                    <td>{{ $productvideos->firstitem()+$loop->index }}</td>
                                    <td>{{ $pv->product->title}}</td>
                                    <td>{{ $pv->product->category->title}}</td>
                                    <td>{{ $pv->publish_status }}</td>
                                    <td>{{ $pv->created_at }}</td>
                                    <td>
                                        <a href="{{url('productvideo/edit/'.$pv->id)}}" class="btn btn-success">Edit</a>
                                        <a href="{{url('productvideo/delete/'.$pv->id)}}" class="btn btn-danger" onclick="return confirm('Are you shure want to delete')">Delete</a>
                                    </td>
                                    
                                </tr>
                            @endforeach
                                
                            </tbody>
                            
                        </table>

                        {{ $productvideos->links() }}

                    </div>

                </div>
            </div>

        </div>
    </div>
</div>





@endsection


