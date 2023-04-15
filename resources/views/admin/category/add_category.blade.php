@extends('layouts.admin_master')

@section('content')

<!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row">
                    <div class="col-12 d-flex no-block align-items-center">
                        <h4 class="page-title">Category</h4>
                        <div class="ms-auto text-end">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="{{url('/')}}">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Category Add Form</li>
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
                    <h5 class="card-title">
                        Category Add Form
                        <a href="{{route('category.view')}}"  style="float: right;">View</a>
                    </h5>    
                </div>

                <div class="card-body">
                    
                    @if(session('success'))
                               
                                <div class="alert alert-success alert-dismissible fade show">
                                    <strong>Success!</strong> {{ session('success') }}
                                    <button type="button" class="close" data-dismiss="alert" style="float:right;">&times;</button>
                                </div>
                    @endif


                    <form action="{{route('category.store')}}"  method="POST" enctype="multipart/form-data" class="form-horizontal">

                        @csrf

                    <div class="card-body">
                        
                        <div class="form-group row">
                            <label for="title"
                                class="col-sm-3 text-end control-label col-form-label">Title</label>
                            <div class="col-sm-6">
                                <input type="text"  name="title" class="form-control @error('title') is-invalid @enderror"
                                    placeholder="Title Here">
                                @error('title')
                                    <span class="text-danger"> {{$message}}  </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="title"
                                class="col-sm-3 text-end control-label col-form-label">Title (JP)</label>
                            <div class="col-sm-6">
                                <input type="text"  name="title_jp" class="form-control @error('title_jp') is-invalid @enderror"
                                    placeholder="Title In Japanese Here">
                                @error('title_jp')
                                    <span class="text-danger"> {{$message}}  </span>
                                @enderror
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="description"
                                class="col-sm-3 text-end control-label col-form-label">Description</label>
                            <div class="col-sm-6">
                                <textarea  name="description" class="form-control @error('description') is-invalid @enderror"
                                    placeholder="Description Here"></textarea>
                                @error('description')
                                    <span class="text-danger"> {{$message}}  </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="description"
                                class="col-sm-3 text-end control-label col-form-label">Description (JP)</label>
                            <div class="col-sm-6">
                                <textarea  name="description_jp" class="form-control @error('description_jp') is-invalid @enderror"
                                    placeholder="Description In Japanese Here"></textarea>
                                @error('description_jp')
                                    <span class="text-danger"> {{$message}}  </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="fname"
                                class="col-sm-3 text-end control-label col-form-label">Category Image</label>
                            <div class="col-sm-6">
                                <input type="file"  name="image" id="imgInp"  class="form-control @error('image') is-invalid @enderror" 
                                onchange="loadFile(event)">
                                    <img src="{{asset('fontend/images/category-image-size.jpg')}}" id="output" style="width: 300px;height:auto;margin-top:10px;border: 1px solid #ccc;">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="fname"
                                class="col-sm-3 text-end control-label col-form-label">Publish status</label>
                            <div class="col-sm-6">
                                <select name="publish_status" class="form-control @error('publish_status') is-invalid @enderror">
                                    <option value="publish">Publish</option>
                                    <option value="unpublish">Unpublish</option>
                                </select>
                                @error('publish_status')
                                    <span class="text-danger"> {{$message}}  </span>
                                @enderror
                            </div>
                        </div>
                        
                       
                    </div>
                    <div class="border-top">
                        <div class="card-body">
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </div>
                </form>

                </div>
            </div>

        </div>
    </div>
</div>

<script>
    var loadFile = function(event) {
      var output = document.getElementById('output');
      output.src = URL.createObjectURL(event.target.files[0]);
      output.onload = function() {
        URL.revokeObjectURL(output.src) // free memory
      }
    };
  </script>
  
@endsection


