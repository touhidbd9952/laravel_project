<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\Product_multiple_image;
use App\Models\Category;
use App\Models\Brand;
use App\Models\Product_woner;
use App\Models\Auction;
use App\Models\AuctionHistory;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class ActionProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function checkvaliduser()
    {
        $validuser = "";
        $validuser = Session::get('validuser');  
        if($validuser =="" || $validuser ==0)
        { 
            echo '<div style="width:300px;padding:20px;min-height:100px;margin:0 auto;border:1px solid #ccc;text-align:center;margin-top:15%;"><br>Token Missing or Invalid';
            echo '<br><br>Go to &nbsp;<a href="'.route('home').'">Dashboard</a>&nbsp; and set user token number</div>';exit;
        }
        //$this->checkvaliduser();
    }
    public function add_form($id)
    { 
        $this->checkvaliduser();  
        $productimages = Product_multiple_image::where('product_id',$id)->get();
        if(count($productimages)==0)
        {
            $products = Product::latest()->where('auction_product',0)->where('final_result','unsold')->paginate(25);
            $emsg = "Image Required. Please add multiple images";
            return view('backend.admin.product.view_product_unsold',compact('products','emsg'));
        }
        $product = Product::with('category')->with('brand')->findOrFail($id); 
        $auction =  Auction::where('status',1)->get(); 
        
        
        return view('backend.admin.auction.add_auction', compact('product','auction'));
    }
    public function store(Request $request)
    {
        $this->checkvaliduser();
        //validation  
        $request->validate([
            "product_id" => 'required',
            'product_no' => 'required',
            'entry_fee' => 'numeric',
            'inspection_fee' => 'numeric',
            'other_fee' => 'numeric',
            'auction_charge' => 'numeric',
            'yard_charge' => 'numeric',
            'extra_charge' => 'numeric',
            'releasing_charge' => 'numeric',

            "bid_start_price"=>'required|numeric',
            "bid_increase_decrease_price"=>'required|numeric',
            "auction_id"=>'required',
        ]);
        
        $auction =  Auction::where('id',$request->auction_id)->get(); 

        $auc_year = Carbon::parse($auction[0]->end_time_of_auction)->format('y');
        $auc_month = Carbon::parse($auction[0]->end_time_of_auction)->format('m');
        $auc_day = Carbon::parse($auction[0]->end_time_of_auction)->format('d');
        $auc_num = $auc_year.$auc_month.$auc_day; 
        
        $product_sub_no = substr($request->product_no,0,6); 
        if($product_sub_no == $auc_num)
        {
            $auc_num = $request->product_no;
        }
        else
        {
            $total_added_in_current_auction = Product::where('product_no','like',$auc_num.'%')->get();  
            $totalaucpro = count($total_added_in_current_auction) + 1;
            $auc_num = $auc_num.'0000'.$totalaucpro; 
        }
        
         

        //add auction
        Product::find($request->product_id)->update([
            'product_no' => $auc_num,
            'auction_id'=> $request->auction_id,
            'auction_date'=> Carbon::now(),
            'auction_product'=>1,
            'entry_fee' => str_replace("," , "" ,$request->entry_fee),
            'inspection_fee' => str_replace("," , "" ,$request->inspection_fee),
            'other_fee' => str_replace("," , "" ,$request->other_fee),
            'auction_charge' => str_replace("," , "" ,$request->auction_charge),
            'yard_charge' => str_replace("," , "" ,$request->yard_charge),
            'extra_charge' =>str_replace("," , "" ,$request->extra_charge),
            'releasing_charge' => str_replace("," , "" ,$request->releasing_charge),
            'bid_start_price' => str_replace("," , "" ,$request->bid_start_price),
            'bid_increase_decrease_price' => str_replace("," , "" ,$request->bid_increase_decrease_price),
            'start_time_of_auction' => $auction[0]->start_time_of_auction,
            'end_time_of_auction' => $auction[0]->end_time_of_auction,
            'auction_start' => Carbon::parse($auction[0]->start_time_of_auction)->format('Y-m-d H:i:s'),
            'auction_end' => Carbon::parse($auction[0]->end_time_of_auction)->format('Y-m-d H:i:s'),
            'user_id'=> Auth::user()->id,
            'updated_at'=> Carbon::now(),
        ]); 

        return Redirect()->route('product.view_unsold')->with('success','Product added in auction Successfully');
    }

    //view current auction product
    public function view()
    {
        $this->checkvaliduser();
        $products = Product::where('status','active')->where('auction_product',1)->where('final_result','unsold')->orderby('category_id','asc')->get();
        //dd($products);
        $final_result = 'unsold';
        return view('backend.admin.auction.view_auction_product',compact('products','final_result'));
    }

    //edit auction product
    public function edit($id)
    { 
        $this->checkvaliduser();
        //get product info by id
        $product = Product::findOrFail($id); 
        $categories = Category::where('status','active')->get(); 
        $brands = Brand::where('status','active')->get(); 
        $product_woners = Product_woner::where('status','active')->get(); 
        $auction =  Auction::where('id',$product->auction_id)->get(); 

        return view('backend.admin.auction.edit_auction_product',compact('product','categories','brands','product_woners','auction'));
    }
    //update auction product
    public function update(Request $request, $id)
    {
        $this->checkvaliduser();
        //validation  
        $request->validate([
            'entry_fee' => 'numeric',
            'inspection_fee' => 'numeric',
            'other_fee' => 'numeric',
            'auction_charge' => 'numeric',
            'yard_charge' => 'numeric',
            'extra_charge' => 'numeric',
            'releasing_charge' => 'numeric',

            "bid_start_price"=>'required|numeric',
            "bid_increase_decrease_price"=>'required|numeric',
            "auction_id"=>'required',
        ]);

        $auction =  Auction::where('id',$request->auction_id)->get(); 
        //Update data
        Product::find($id)->update([
            'auction_id'=> $request->auction_id,
            'auction_product'=>1,
            'entry_fee' => str_replace("," , "" ,$request->entry_fee),
            'inspection_fee' => str_replace("," , "" ,$request->inspection_fee),
            'other_fee' => str_replace("," , "" ,$request->other_fee),
            'auction_charge' => str_replace("," , "" ,$request->auction_charge),
            'yard_charge' => str_replace("," , "" ,$request->yard_charge),
            'extra_charge' => str_replace("," , "" ,$request->extra_charge),
            'releasing_charge' => str_replace("," , "" ,$request->releasing_charge),
            'bid_start_price' => str_replace("," , "" ,$request->bid_start_price),
            'bid_increase_decrease_price' => str_replace("," , "" ,$request->bid_increase_decrease_price),

            'start_time_of_auction' => $auction[0]->start_time_of_auction,
            'end_time_of_auction' => $auction[0]->end_time_of_auction,
            'auction_start' => Carbon::parse($auction[0]->start_time_of_auction)->format('Y-m-d H:i:s'),
            'auction_end' => Carbon::parse($auction[0]->end_time_of_auction)->format('Y-m-d H:i:s'),
            
            'user_id'=> Auth::user()->id,
            'updated_at'=> Carbon::now(),
        ]);

        return Redirect()->back()->with('success','Updated Successfully');
    }

    //view_old auction product
    public function view_old()
    {
        $this->checkvaliduser();
        $products = Product::where('status','active')->where('auction_product',1)->where('final_result','sold')->orderby('category_id','asc')->paginate(25);
        $final_result = 'sold';
        return view('backend.admin.auction.view_auction_product',compact('products','final_result'));
    }

    //delete from auction
    public function remove($id)
    {
        $this->checkvaliduser();
        //dd($request->all());
        Product::find($id)->update([
           
            'auction_max_autobid_amount'=>0,
            'auction_max_bid_amount'=>0,
            'auction_max_bidder_id'=>0,
            'auction_2ndmax_bid_amount'=>0,
            'auction_2ndmax_bidder_id'=>0,
            
            //'bid_start_price' =>0.00,
            //'bid_increase_decrease_price'=>0.00,
            'higest_bidding_price' => 0,
            'auction_date' => null,
            'start_time_of_auction' =>"",
            'end_time_of_auction' =>"",
            'auction_start' => null,
            'auction_end' => null,

            'auction_product'=>0,
            //'auction_charge' => 0,
            //'yard_charge' => 0,
            //'extra_charge' => 0,
            //'entry_fee' => 0,
            //'inspection_fee' => 0,
            //'other_fee' => 0,
            'bid_system' => 'bid',
            'total_bids' =>0,
            'bidders'=>"",
            'bidding_result' => "",
            'final_result' => 'unsold',
            
            'user_id'=> Auth::user()->id,
            'updated_at'=> Carbon::now(),
        ]);

        AuctionHistory::where('product_id',$id)->update([
            'product_return'=>1,
            'bid_time'=>NULL,
            'updated_at'=> Carbon::now(),
        ]);

        return Redirect()->back()->with('success','Removed from auction Successfully');
    }

    //auction_history
    public function view_auction_history()
    {
        $timenow = Carbon::now();
        //$auctions = Auction::where('auction_end','<',$timenow)->OrderBy('id','desc')->get(); 
        $auctions = Auction::OrderBy('id','desc')->get(); 
        return view('backend.admin.product.history',compact('auctions'));
    }
    public function auction_history($id)
    {
        $auction = Auction::findOrFail($id);  //dd($auction->id);
        $products = "";
        if($auction->id)
        {
            $products = Product::where('auction_id',$auction->id)->where('auction_product', 1)->where('final_result','sold')->get();  //dd($auctionproducts);
        }
        return view('backend.admin.product.view_product_sold',compact('products'));
    }
    




}
