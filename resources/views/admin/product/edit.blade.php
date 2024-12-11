@extends('admin.layout.layout')
@section('content')
<div class="row">
    <div class="col-md-12 col-sm-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Form Design <small>Different form elements</small></h2>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <br>
                <form id="demo-form2" action="{{route('product.update', $product->id)}}" class="form-horizontal form-label-left" method="post" enctype="multipart/form-data" novalidate>
                    @csrf
                    <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="subcategory">
                            Category <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                            <select name="category_id" id="subcategory" class="form-control" required>
                                <option value="">Select Category</option>
                                @foreach($categories as $categorie)
                                    <option value="{{ $categorie->id }}" @if($product->category_id==$categorie->id) selected @endif>
                                        {{ $categorie->name }}
                                    </option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="product-name">
                            Product Name <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                            <input type="text" class="form-control" name="name" value="{{ $product->name }}" placeholder="Enter Product Name" required>
                        </div>
                    </div>

                    <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 label-align" for="product-price">
                            Product Price <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6">
                            <input type="number" class="form-control" name="price" value="{{ $product->price }}" placeholder="Enter Product Price" required>
                        </div>
                    </div>

                    <div class="item form-group">
                        <label class="col-form-label col-md-3 col-sm-3 col-xs-12" for="first-name">
                            Product Image <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-sm-12">
                            <input type="file" class="form-control" name="image">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-3 col-sm-3 col-xs-12"></div>
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <!-- Display the product image if it exists -->
                            @if($product->image)
                                <img style="height: 80px; width: 80px;" src="{{ asset('uploads/' .$product->image) }}" alt="Product Image">
                            @endif
                        </div>
                    </div>

                    <div class="ln_solid"></div>

                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 offset-md-3">
                            <input type="submit" class="btn btn-success" value="Submit">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@endsection
