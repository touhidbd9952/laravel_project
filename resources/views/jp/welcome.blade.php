@extends('layouts.fontend_master')

@section('content')
 
 
 <!-- Swiper -->
 <!-- Breadcrumbs-->
 <section class="section swiper-slider_style-1">
  <div class="swiper-container swiper-slider swiper-slider_height-1" data-loop="true" data-autoplay="false" data-simulate-touch="false" data-additional-slides="0" data-custom-prev="#swiper-prev" data-custom-next="#swiper-next" data-custom-slide-effect="interLeaveEffect">
    <div class="swiper-wrapper">
      @foreach($sliders as $slider)
        
      <div class="swiper-slide context-light">
        <div class="slide-inner" style="background-image: url({{$slider->slider_image}});">
          <div class="swiper-slide-caption">
            <div class="shell">
            <?php  
              if(session()->get('language')=='en')
              {
            ?>
              <h1 data-caption-animate="fadeInUpSmall" style="color: #fff;">{{$slider->title}}</h1>
              <div class="object-decorated">
                <?php 
                  if($slider->subtitle != "")
                  {
                ?>
                <span class="object-decorated__divider" data-caption-animate="fadeInRightSmall" data-caption-delay="300"></span>
                <h4 data-caption-animate="fadeInRightSmall" data-caption-delay="550" style="color: #fff;">{{$slider->subtitle}}</h4>
             <?php 
                  }
              }
              else {
              ?>
              <h1 data-caption-animate="fadeInUpSmall" style="color: #fff;">{{$slider->title_jp}}</h1>
              <div class="object-decorated"><span class="object-decorated__divider" data-caption-animate="fadeInRightSmall" data-caption-delay="300"></span>
                <h4 data-caption-animate="fadeInRightSmall" data-caption-delay="550" style="color: #fff;">{{$slider->subtitle_jp}}</h4>
              <?php   
              }
             ?>   
              </div>
            </div>
          </div>
        </div>
      </div>
      @endforeach

     

      

    </div>
    <div class="swiper-pagination"></div>
  </div>
  <div class="swiper-navigation swiper-navigation_modern">
    <div class="swiper-button-prev" id="swiper-prev"></div>
    <div class="swiper-button-next" id="swiper-next"></div>
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
        <h2 style="text-align: center;">ウッディ水陸両用機器（WAE）</h2>
      </div>
      <?php 
      }
      ?>
    
    <!-- Owl Carousel-->
    <div class="row">
      
      @foreach($categories as $cat)
      <div class="col-md-4" style="margin-top: 25px;margin-bottom: 25px;">
        <a class="thumb-corporate" href="{{route('amphibious',[$cat->id])}}">
          <div class="thumb-corporate__inner"><img src="{{ asset($cat->image) }}" alt="" width="370" height="303"/>
          </div>
          <p class="thumb-corporate__title">{{ $cat->title_jp }}</p>
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
            <p>{{$p->short_des}}</p>
            <a class="button button-xs button-darker" href="{{route('amphibious_items')}}">続きを読みます</a>
          </div>
        </div>
      </div>
      @endforeach

      

    </div>
  </div>
</section>


  @endsection