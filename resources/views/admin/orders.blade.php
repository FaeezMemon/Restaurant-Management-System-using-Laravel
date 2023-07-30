<x-app-layout>
</x-app-layout>

<!DOCTYPE html>
<html lang="en">
  <head>
    @include('admin.admincss')
    </head>
  <body>
    <div class="container-scroller">
      @include('admin.navbar')
      <div class="container">

    <h2>Customer Orders</h2>
    <form action="{{url('/search')}}"method="get">
        @csrf
        <input type="text"name="search"style="color:blue">
        <input type="Submit"value="Search"class="btn btn-success">
        {{-- <input type="Download"value="Download"class="btn btn-success"> --}}
        <a href="{{url('export')}}" class="btn btn-success"> Download</a>

    </form>
    <table>
        <tr align="center">
            <td style="padding:30px">Name</td>
            <td style="padding:30px">Phone</td>
            <td style="padding:30px">Address</td>
            <td style="padding:30px">Food Name</td>
            <td style="padding:30px">Price</td>
            <td style="padding:30px">Quantity</td>
            <td style="padding:30px">Total Amount</td>
        </tr>

        @foreach ($data as $data)
        <tr align="center"style="background-color:black">
            <td>{{$data->name}}</td>
            <td>{{$data->phone}}</td>
            <td>{{$data->address}}</td>
            <td>{{$data->foodname}}</td>
            <td>{{$data->price}}Rs</td>
            <td>{{$data->quantity}}</td>
            <td>{{$data->price * $data->quantity}}Rs</td>
        </tr>
        @endforeach
    </table>
      </div>
  </div>
    @include('admin.adminscript')
     </body>
</html>
