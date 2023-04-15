<div class="rd-navbar-wrap">
    <nav class="rd-navbar rd-navbar-creative" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-sm-device-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fullwidth" data-md-device-layout="rd-navbar-fixed" data-lg-device-layout="rd-navbar-fullwidth" data-lg-layout="rd-navbar-fullwidth" data-stick-up-clone="false" data-md-stick-up-offset="150px" data-lg-stick-up-offset="60px" data-md-stick-up="true" data-lg-stick-up="true">
      <div class="rd-navbar-aside-outer rd-navbar-content-outer">
        <div class="rd-navbar-content__toggle rd-navbar-fullwidth--hidden" data-rd-navbar-toggle=".rd-navbar-content"><span></span></div>
        <div class="rd-navbar-aside rd-navbar-content" style="font-size: 16px;">
          <div class="rd-navbar-aside__item">
            <ul class="rd-navbar-items-list">
              <?php  
                if(session()->get('language')=='en')
                {
              ?>
              <li>
                <div class="unit unit-spacing-xxs unit-horizontal">
                  <div class="unit__left"><span class="icon icon-sm icon-primary fl-bigmug-line-trophy55"></span></div>
                  <div class="unit__body">
                    <p>Number #1 Supplier in Africa & Asia</p>
                  </div>
                </div>
              </li>
              <?php     
                }
                else 
                {
                ?>
              <li>
                <div class="unit unit-spacing-xxs unit-horizontal">
                  <div class="unit__left"><span class="icon icon-sm icon-primary fl-bigmug-line-trophy55"></span></div>
                  <div class="unit__body">
                    <p>アフリカとアジアでナンバーワンのサプライヤー</p>
                  </div>
                </div>
              </li>
              <?php    
                }
              ?> 


               


            </ul>
          </div>
          <div class="rd-navbar-aside__item">
            <ul class="rd-navbar-items-list">
              <?php  
                if(session()->get('language')=='en')
                {
              ?>
              <li>
                <div class="unit unit-spacing-xxs unit-horizontal">
                  <div class="unit__left"><span class="text-primary">Phone:</span></div>
                  <div class="unit__body"><a href="callto:#">+81-(0)3-5700-4622</a></div>
                </div>
              </li>
              <?php     
                }
                else {
                ?>
                <li>
                  <div class="unit unit-spacing-xxs unit-horizontal">
                    <div class="unit__left"><span class="text-primary">電話:</span></div>
                    <div class="unit__body"><a href="callto:#">+81-(0)3-5700-4622</a></div>
                  </div>
                </li>
                <?php    
                }
                ?> 

                <!--===== Language =======---> 
              <li>
                <div class="unit unit-spacing-xxs unit-horizontal">
                  
                  <div class="unit__body">
                    <p>
                      Language<?php if(session()->get('language')=='jp'){?>(言語)<?php }?>:
                      <?php  
                        if(session()->get('language')=='en')
                        {
                      ?>
                      <a href="javascript:" onclick="change_language('jp')">Japanese</a>
                      <?php     
                        }
                        else {
                       ?>
                       <a href="javascript:" onclick="change_language('en')">English</a> 
                       <?php    
                        }
                      ?> 
                    </p>
                  </div>
                </div>
              </li>

            </ul>
          </div>
        </div>
      </div>
      <div class="rd-navbar-main-outer" style="box-shadow: 0px 10px 30px #ece5e5;">
        <div class="rd-navbar-main">
          <!-- RD Navbar Panel -->
          <div class="rd-navbar-panel">
            <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
            <!-- RD Navbar Brand-->
            <div class="rd-navbar-brand">
              <a class="brand" href="https://woodyengineering.com/">
                <div class="brand__name">
                  <img src="{{ asset('fontend') }}/images/woody-logo.png" alt="" width="123" height="47"/>
                  
                </div>
              </a>
            </div>
          </div>
          <!-- RD Navbar Nav -->
          <div class="rd-navbar-nav-wrap">
            <?php 
              $categorylist = App\Models\Category::where('publish_status','publish')->get(); 
            ?>

            <!-- RD Navbar Nav-->
            <?php  
              if(session()->get('language')=='en')
              {
            ?>

           <div class="rd-navbar-main-item"><a class="button button-xs button-lighter" href="{{route('contactus')}}">Get a quote</a></div>
            <ul class="rd-navbar-nav">
              <li><a href="{{url('/')}}">Home</a></li>
              <li><a href="{{route('aboutus')}}">About Us</a></li>
              {{-- <li><a href="{{url('amphibious_items')}}">Amphibious</a></li> --}}
              <li>
                <a href="javascript:">Products</a>
                <!-- RD Navbar Dropdown -->
                <ul class="rd-navbar-dropdown">
                  @foreach($categorylist as $cm)
                    <li>
                        <a href="{{route('amphibious',[$cm->id])}}">{{ $cm->title}}</a>
                    </li>
                    @endforeach
                </ul>
                <!-- END RD Navbar Dropdown -->
            </li>
              <li><a href="{{route('contactus')}}">Contacts</a></li>
      
            </ul>
            <?php     

            }
            else {
            ?>

            <div class="rd-navbar-main-item"><a class="button button-xs button-lighter" href="{{route('contactus')}}">製品お見積り</a></div>
            <ul class="rd-navbar-nav">
              <li><a href="{{url('/')}}">ホーム</a></li>
              <li><a href="{{route('aboutus')}}">会社概要</a></li>
              {{-- <li><a href="{{route('amphibious_items')}}">水陸両用</a></li> --}}
              <li>
                <a href="javascript:">製品</a>
                <!-- RD Navbar Dropdown -->
                <ul class="rd-navbar-dropdown">
                  @foreach($categorylist as $cm)
                    <li>
                        <a href="{{route('amphibious',[$cm->id])}}">{{ $cm->title_jp}}</a>
                    </li>
                    @endforeach
                </ul>
                <!-- END RD Navbar Dropdown -->
            </li>
              <li><a href="{{route('contactus')}}">お問合せ</a></li>
      
            </ul>
          <?php   
            }
          ?> 
          </div>
        </div>
      </div>
    </nav>
  </div>

  <script>
    function change_language(lan)
    {
      $.ajax({
            type:'GET',
            url: '/change_language/'+lan,
            dataType:'json',
            success:function(response){
              location.reload();
            }
        })
    }
  </script>