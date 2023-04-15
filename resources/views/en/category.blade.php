@extends('layouts.fontend_master')

@section('content')
 
 
 <!-- Swiper -->
 <!-- Breadcrumbs-->
 <?php 
  $base_url = Session::get('base_url');
 ?>
 <section class="breadcrumbs-custom bg-image" style="background-image: url({{$base_url}}/fontend/images/bg-image-1.jpg)">
    <div class="shell">
      <h2 class="breadcrumbs-custom__title">Amphibious</h2>
      <ul class="breadcrumbs-custom__path">
        <li><a href="{{url('/')}}">Home</a></li>
        <li class="active">Amphibious</li>
      </ul>
    </div>
  </section>

<!--============================= Category View ======================================-->
<section class="section section-md bg-white">
  <div class="container-fluid">
    
      <?php 
      if(count($categories)>0) 
      { 
      ?>
      <div class="shell-fullwidth">
        <h2 style="text-align: center;">Woody Amphibious Equipment(WAE)</h2>
      </div>
      <?php 
      }
      ?>
    
    <!-- Owl Carousel-->
    <div class="row">
      
      @foreach($categories as $cat)
      <div  class="col-md-4" style="margin-top: 25px;margin-bottom: 25px;">
        <a class="thumb-corporate" href="{{route('amphibious',[$cat->id])}}">
          <div class="thumb-corporate__inner"><img src="{{ asset($cat->image) }}" alt="{{$cat->title}}" width="370" height="303"/>
          </div>
          <p class="thumb-corporate__title">{{ $cat->title }}</p>
        </a>
      </div>
      @endforeach
    
    </div>
  </div>
</section>





  @endsection