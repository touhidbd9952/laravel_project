<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Bidder_register;
use App\Models\Skbidderregister;
use App\Models\Product;  
use App\Models\Product_woner;
use App\Models\Bidder_request;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;

class BidderRegisterController extends Controller
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

    public function get_usercodeno()
    {
        $this->checkvaliduser();
        $usercodeno = '08100';
        $usercodeno .= rand(000,999);
        $bidder ="";
        $bidder = Bidder_register::where('usercodeno',$usercodeno)->get();
        if(count($bidder)>0)
        {
            $this->get_usercodeno();
        }
        else{
            return $usercodeno;
        }
    }
    public function get_userPass()
    {
        $this->checkvaliduser();
        $useridpart1 = rand(00,99);
        $useridpart2 = rand(00,99);
        $useridpart3 = rand(00,99);
        $userPass = $useridpart1.$useridpart2.$useridpart3; 
        return $userPass;
    }

    public function add_form()
    {
        $this->checkvaliduser();

        $usercodeno = '08100';
        $usercodeno .= rand(000,999);

        $biddercodeno ="";
        $bidder = Bidder_register::where('usercodeno',$usercodeno)->get();
        if(count($bidder)>0||$biddercodeno =="")
        {
            $biddercodeno = $this->get_usercodeno();
        }
        $userPass = $this->get_userPass();
        return view('backend.admin.bidder.add_bidder',compact('biddercodeno','userPass'));
    }

    
    //Bidder Store
    public function store(Request $request)
    {
        $this->checkvaliduser();
       //dd($request->all());

        //dd($biddercodeno);
        //validation  
        $request->validate([
            'name' => 'required|max:255',
            'username' => 'required|numeric|min:6|unique:bidder_registers',
            'password' => 'required|numeric|min:4|required_with:confirm_password|same:confirm_password',   
            'confirm_password' => 'required',
            'company_name' => 'max:255',
            'person_incharge' => 'max:255',
            'address' => 'required|max:500',
            'country' => 'required|max:255',
            'zip_code' => 'required|max:255',
            'email1' => 'required|max:255|email|unique:bidder_registers',
            'email2' => 'max:255',
            'phone1' => 'required|max:255|unique:bidder_registers',
            'phone2' => 'max:255',
            'fax' => 'max:255|unique:bidder_registers',
            'membership_with_other_auctioneers' => 'max:255',
        ]);

        
        // insert data
        $id = Bidder_register::insertGetId([
            'usercodeno' => $request->username,
            'name' => $request->name,
            'username' => $request->username,
            'password' => Hash::make($request->password),
            'company_name' => $request->company_name !=""? $request->company_name: "",
            'person_incharge' => $request->person_incharge,
            'address' => $request->address,
            'country' => $request->country,
            'zip_code' => $request->zip_code,
            'email1' => $request->email1,
            'email2' => $request->email2,
            'phone1' => $request->phone1,
            'phone2' => $request->phone2,
            'fax' => $request->fax,
            'membership_with_other_auctioneers' => $request->membership_with_other_auctioneers,
            'status' => $request->status,
            'permission' => $request->permission,
            'user_id' => Auth::user()->id, 
            'created_at'=>Carbon::now(),
        ]);
        if($id !="")
        {
            Skbidderregister::insertGetId([ 	
                'bidderregisterid' => $id,	
                'created_at'=> Carbon::now(),
            ]);
        }

        if($request->requestedid)
        {
            Bidder_request::find($request->requestedid)->delete();
            return Redirect()->route('bidder.requestview')->with('success','Saved Successfully');
        }

        return Redirect()->back()->with('success','Saved Successfully'); 
    }

    //All Bidder View
    public function view()
    {
        $this->checkvaliduser();
        //get all data from categories table
        $bidders = Bidder_register::where('permission','!=','black listed')->latest()->get();  
        return view('backend.admin.bidder.view_bidder', compact('bidders'));
    }

    //All Bidder View
    public function view_blacklisted()
    {
        $this->checkvaliduser();
        //get all data from categories table
        $bidders = Bidder_register::where('permission','=','black listed')->latest()->get();  
        return view('backend.admin.bidder.view_bidder_blacklisted', compact('bidders'));
    }


    //Bidder edit
    public function edit_profile($id)
    {
        $this->checkvaliduser();
        $bidder = Bidder_register::find($id);
        return view('backend.admin.bidder.edit_bidder', compact('bidder'));
    }

    //Bidder update
    public function update_profile(Request $request, $id)
    { 
        $this->checkvaliduser();  
        //validation  
        $request->validate([
            'name' => 'required|max:255',
            'company_name' => 'required|max:255',
            'person_incharge' => 'required|max:255',
            'address' => 'required|max:500',
            'country' => 'required|max:255',
            'zip_code' => 'required|max:255',
            'email1' => $request->oldemail1 != $request->email1?'required|max:255|email|unique:bidder_registers':'required|max:255|email',
            'email2' => 'max:255|email',
            'phone1' => $request->oldphone1 != $request->phone1?'required|max:255|unique:bidder_registers':'required|max:255',
            'phone2' => 'max:255',
            'fax' => $request->oldfax != $request->fax?'max:255|unique:bidder_registers':'max:255',
            'membership_with_other_auctioneers' => 'max:255',
        ]);
        //dd($request->all());
        
        Bidder_register::find($id)->update([
            'name' => $request->name,
            'company_name' => $request->company_name,
            'person_incharge' => $request->person_incharge,
            'address' => $request->address,
            'country' => $request->country,
            'zip_code' => $request->zip_code,
            'email1' => $request->email1,
            'email2' => $request->email2,
            'phone1' => $request->phone1,
            'phone2' => $request->phone2,
            'fax' => $request->fax,
            'membership_with_other_auctioneers' => $request->membership_with_other_auctioneers,
            'status' => $request->status,
            'permission' => $request->permission,
            'user_id' => Auth::user()->id, 
            'updated_at'=>Carbon::now(),
        ]);
        return Redirect()->back()->with('success','Profile updated successfully');
    }

    //edit credential
    public function edit_credential($id)
    {
        $this->checkvaliduser();
        $bidder = Bidder_register::find($id);
        return view('backend.admin.bidder.edit_bidder_crediential', compact('bidder'));
    }

    //Bidder update
    public function update_crediential(Request $request, $id)
    { 
        $this->checkvaliduser();  
        //validation  
        $request->validate([
            'password' => 'min:4|required_with:confirm_password|same:confirm_password',   
            'confirm_password' => 'required',
        ]);
        //dd($request->all());
        
        Bidder_register::find($id)->update([
            'password' => Hash::make($request->password),
            'user_id' => Auth::user()->id, 
            'updated_at'=>Carbon::now(),
        ]);
        return Redirect()->back()->with('success','Crediential updated successfully');
    }

    //Bidder only view details
    public function details_view($id,$pid)
    {
        $this->checkvaliduser();
        $bidder = Bidder_register::find($id);
        return view('backend.admin.bidder.details_view', compact('bidder','pid'));
    }

    //Bidder delete
    public function suspend_account($id)
    {
        $this->checkvaliduser();
        Product_woner::find($id)->update([
            'status' => 'inactive',
            'user_id' => Auth::user()->id, 
            'updated_at'=>Carbon::now(),
        ]);
        return Redirect()->back()->with('success','Account Suspended');
    }

    //Member Request View
    public function requestview()
    {
        $this->checkvaliduser();
        $bidderrequests = Bidder_request::latest()->get();  
        return view('backend.admin.bidder.view_bidder_register_request', compact('bidderrequests'));
    }
    public function view_request_details($id)
    {
        $this->checkvaliduser();
        
        $usercodeno = '08100';
        $usercodeno .= rand(000,999);

        $biddercodeno ="";
        $bidder = Bidder_register::where('usercodeno',$usercodeno)->get();
        if(count($bidder)>0||$biddercodeno =="")
        {
            $biddercodeno = $this->get_usercodeno();
        }
        $userPass = $this->get_userPass();

        $bidder = Bidder_request::find($id);
        $requestedid = $id;
        return view('backend.admin.bidder.add_new_bidder', compact('bidder','requestedid','biddercodeno','userPass'));
    }

    

}
