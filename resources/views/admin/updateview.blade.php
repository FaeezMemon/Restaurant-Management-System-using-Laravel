<x-app-layout>
</x-app-layout>
    <!DOCTYPE html>
<html lang="en">
  <head>
    <base href="/public">
    @include('admin.admincss')
    </head>
  <body>
    <div class="container-scroller">
    @include('admin.navbar')

    <div class="container" align="center" style="padding-top: 100px">
   <!-- <div style="position: relative;  top:60px; right:-150px"> -->
        <form action="{{url('/update',$data->id)}}"method="post"enctype="multipart/form-data">

            @csrf

            <div style="padding: 15px">
                <label>Title:</label>
                <input style="color:blue"type="text"name="title"value="{{$data->Title}}"required>
            </div>

            <div style="padding: 15px">
                <label>Price:</label>
                <input style="color:blue" type="num"name="price"value="{{$data->Price}}"required>
            </div>


            <div style="padding: 15px">
                <label>Description:</label>
                <input style="color:blue" type="text"name="description"value="{{$data->Description}}"required>
            </div>

            <div style="padding: 15px">
                <label>Previous Image:</label>
                <img height="200px"width="200px"src="/foodimage/{{$data->Image}}">
            </div>

            <div style="padding: 15px">
                <label>Latest Image:</label>
                <input type="file"name="image"required>
            </div>

            <div style="padding: 15px">
                <input style="color:blue" type="Submit" value="Save">
            </div>

        </form>

            <div>

    </div>
    @include('admin.adminscript')
     </body>
</html>
