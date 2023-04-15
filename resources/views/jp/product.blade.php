@extends('layouts.fontend_master')

@section('content')
 
 
 <!-- Swiper -->
 <!-- Breadcrumbs-->
 <?php 
  $base_url = Session::get('base_url');
 ?>
 <section class="breadcrumbs-custom bg-image" style="background-image: url({{$base_url}}/fontend/images/bg-image-1.jpg);">
  <div class="shell">
    <h2 class="breadcrumbs-custom__title">製作製品</h2>
    <ul class="breadcrumbs-custom__path">
      <li><a href="{{url('/')}}">ホーム</a></li>
      <li class="active">製作製品</li>
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
          <div class="thumb-corporate__inner">
            <img src="{{ asset($p->thumbnail_image) }}" alt="" width="370" height="303"/>
          </div>
          <p class="thumb-corporate__title">{{$p->title_jp}}</p>
        </a>
      </div>

      @endforeach
      
    </div>
  </div>
</section>




<!--====================== Our Projects ========================================-->
<section class="section section-md bg-white text-center">
  <div class="shell-fullwidth">
    <h2>製品事例</h2>
    <!-- Owl Carousel-->
    <div class="owl-carousel owl-carousel_style-2 wow fadeIn" data-items="1" data-sm-items="2" data-md-items="3" data-lg-items="4" data-dots="true" data-nav="true" data-loop="true" data-stage-padding="0" data-sm-stage-padding="20" data-md-stage-padding="0" data-sm-margin="15" data-lg-margin="0" data-mouse-drag="false">
      @foreach($our_projects as $p)
      <div class="thumb-janez">
        <figure class="thumb-janez__image-wrap">
          <img src="{{ asset($p->thumbnail_image) }}" alt="" width="481" height="383"/>
        </figure>
        <div class="thumb-janez__content bg-gray-dark">
          <div class="thumb-janez__content-inner">
            <h5><a href="#">{{$p->title_jp}}</a></h5>
            <p>{{$p->short_des_jp}}</p>
            <a class="button button-xs button-darker" href="javascript:">続きを読みます</a>
          </div>
        </div>
      </div>
      @endforeach

      

    </div>
  </div>
</section>


  @endsection