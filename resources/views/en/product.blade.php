@extends('layouts.fontend_master')

@section('content')
 

<?php 
  $base_url = Session::get('base_url');
 ?>
 <!-- Swiper -->
 <!-- Breadcrumbs-->
 
 
 <section class="breadcrumbs-custom bg-image" style="background-image: url({{$base_url}}/fontend/images/bg-image-1.jpg);">
  <div class="shell">
    <h2 class="breadcrumbs-custom__title">Amphibious Product</h2>
    <ul class="breadcrumbs-custom__path">
      <li><a href="{{url('/')}}">Home</a></li>
      <li class="active">Amphibious Product</li>
    </ul>
  </div>
</section>

<!--=============================Selected Categories Product show ======================================-->
<section class="section section-md bg-white">
  <div class="container-fluid">
    <!-- Owl Carousel-->
    <div class="row">
      
      @foreach($products as $p)
      <div class="col-md-4" style="margin-top: 25px;margin-bottom: 25px;">
        <a class="thumb-corporate" href="{{route('amphibious.view',[$p->id])}}">
          <div class="thumb-corporate__inner"><img src="{{ asset($p->thumbnail_image) }}" alt="" style="width: 370px;height: 303;"/>
          </div>
          <p class="thumb-corporate__title">{{$p->title}}</p>
        </a>
      </div>
      @endforeach
    
    </div>
  </div>
</section>




<!--====================== Our Projects ========================================-->
<section class="section section-md bg-white text-center">
  <div class="shell-fullwidth">
    <h2>Our Projects</h2>
    <!-- Owl Carousel-->
    <div class="owl-carousel owl-carousel_style-2 wow fadeIn" data-items="1" data-sm-items="2" data-md-items="3" data-lg-items="4" data-dots="true" data-nav="true" data-loop="true" data-stage-padding="0" data-sm-stage-padding="20" data-md-stage-padding="0" data-sm-margin="15" data-lg-margin="0" data-mouse-drag="false">
      @foreach($our_projects as $op)
      <div class="thumb-janez">
        <figure class="thumb-janez__image-wrap">
          <img src="{{ asset($op->thumbnail_image) }}" alt="" width="481" height="383"/>
        </figure>
        <div class="thumb-janez__content bg-gray-dark">
          <div class="thumb-janez__content-inner">
            <h5><a href="#">{{$op->title}}</a></h5>
            <p>{{$op->short_des}}</p>
            <a class="button button-xs button-darker" href="javascript:">read more</a>
          </div>
        </div>
      </div>
      @endforeach
    </div>
  </div>
</section>


  @endsection