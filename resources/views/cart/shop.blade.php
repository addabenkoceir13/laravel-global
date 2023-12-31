<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Shop') }}
        </h2>
    </x-slot>

    <div class="container py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        @if ($message = Session::get('success'))
            <div class="alert alert-success alert-block">
                <button type="button" class="close" data-dismiss="alert">×</button>
                <strong>{{ $message }}</strong>
            </div>
        @endif
        <div class="row">
            @foreach ($products as $product)
                <div class="col-md-4">
                    <div class="card mb-2" style="width: 18rem;">
                        <img src="{{ $product->image}}" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">{{ $product->name }}</h5>
                            <h5 class="card-title"><strong>{{ $product->price }}$</strong></h5>
                            <p class="card-text">{{ $product->description }}</p>
                            <a href="{{ route('add-to-cart', $product->id)}}" class="btn btn-primary">Go somewhere</a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
        </div>
    </div>
</x-app-layout>
