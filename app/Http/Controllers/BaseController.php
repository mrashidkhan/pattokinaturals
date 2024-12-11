<?php

namespace App\Http\Controllers;
use App\Models\Discount;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\User;
use Hash;
use Illuminate\Support\Facades\Auth;




class BaseController extends Controller
{
    public function home(){
        $products=Product::get();
        $new_products=Product::limit(6)->latest()->get();
        return view('front.home',compact('products','new_products'));
    }

    public function shop(){
           $products=Product::get();
        return view('front.shop', compact('products'));
    }

    public function aboutus(){
        return view('front.aboutus');
    }

    public function contactus(){
        return view('front.contactus');
    }


    public function cart(){
        return view('front.cart');
    }

public function productview(Request $request){
    $id = $request->id;
    $product = Product::with('discounts')->find($id);
    $category_id=$product->category_id;
    $related_products = Product::where('category_id',$category_id)->get();

    return view('front.productview1', compact('product','related_products'));
}

public function user_login(){

    return view('front.login');
}
public function logout()
{
    Auth::logout();
    return redirect()->route('user_login');
}

public function user_store(Request $request)
{
    $data = array(
        'name'     => $request->first_name . ' ' . $request->last_name,
        'email'    => $request->email,
        'password' => Hash::make($request->password),
        'role'     => 'user'
    );

    $user = User::create($data);

    return redirect()->route('user_login');
}
public function loginCheck(Request $request)
{
    $data = [
        'email' => $request->email,
        'password' => $request->password,
    ];
    if (Auth::attempt($data)) {
        return redirect()->route('home');
    }
    return back()->withErrors(['message' => 'Invalid email or password']);
}



}

